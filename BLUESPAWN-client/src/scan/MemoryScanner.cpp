#include "scan/MemoryScanner.h"

#include "common/wrappers.hpp"
#include "util/filesystem/FileSystem.h"
#include "util/processes/ProcessUtils.h"
#include "util/configurations/Registry.h"
#include "hunt/Hunt.h"
#include "user/bluespawn.h"

#include "scan/YaraScanner.h"
#include "scan/FileScanner.h"
#include "scan/RegistryScanner.h"

std::unordered_map<std::reference_wrapper<Detection>, Association> MemoryScanner::GetAssociatedDetections(
	IN CONST Detection& detection){

	if(detection.type != DetectionType::ProcessDetection || detection.DetectionStale){
		return {};
	}

	ProcessDetectionData data{ std::get<ProcessDetectionData>(detection.data) };
	if(!data.BaseAddress || !data.MemorySize){
		return {};
	}

	std::unordered_map<std::reference_wrapper<Detection>, Association> detections{};

	if(data.ImageName){
		if(data.type == ProcessDetectionType::MaliciousImage){
			detections.emplace(Bluespawn::detections.AddDetection(Detection{
				FileDetectionData{ *data.ImageName }
			}), Association::Certain);
		} else{
			FILETIME time{};
			GetSystemTimeAsFileTime(&time);
			detections.emplace(Bluespawn::detections.AddDetection(Detection{
				FileDetectionData{ *data.ImageName },
				DetectionContext{ time, std::nullopt, detection.context->FirstEvidenceTime, L"This image appears to "
				    "have been modified to behave maliciously, so while it's possible this file is malicious, this "
			        "detection was created to serve as an IoC" }
			}), Association::Moderate);
		}
	}

	if(Bluespawn::aggressiveness > Aggressiveness::Normal && data.ProcessHandle){
		auto memory{ Utils::Process::ReadProcessMemory(*data.ProcessHandle, *data.BaseAddress, *data.MemorySize) };
		if(memory){
			auto strings = FileScanner::ExtractStrings(memory, 8);
			auto filenames = FileScanner::ExtractFilePaths(strings);
			for(auto& filename : filenames){
				detections.emplace(Bluespawn::detections.AddDetection(Detection{
					FileDetectionData{ filename }
				}), Association::Moderate);
			}

			auto keynames = RegistryScanner::ExtractRegistryKeys(strings);
			for(auto keyname : keynames){
				detections.emplace(Bluespawn::detections.AddDetection(Detection{
					RegistryDetectionData{ Registry::RegistryKey{ keyname } }
				}), Association::Moderate);
			}
		}
	}

	return detections;
}

bool MemoryScanner::PerformQuickScan(IN CONST std::wstring& in){ 
	return false; 
}

#define PAGE_EXECUTABLE(prot) \
    (prot & 0xF0)
#define PAGE_WRITECOPY(prot) \
    (prot == 0x80 || prot == 0x08)
#define PAGE_WRITEABLE(prot) \
    (prot & 0xCC)

Certainty MemoryScanner::ScanDetection(IN CONST Detection& detection){
	if(detection.type != DetectionType::ProcessDetection || detection.DetectionStale){
		return Certainty::None;
	}

	ProcessDetectionData data{ std::get<ProcessDetectionData>(detection.data) };
	if(!data.BaseAddress || !data.MemorySize || !data.ProcessHandle){
		return Certainty::None;
	}

	Certainty certainty{ Certainty::None }; 

	if(Bluespawn::aggressiveness == Aggressiveness::Intensive){
		auto& scanner{ YaraScanner::GetInstance() };
		auto scan{ scanner.ScanMemory(MemoryWrapper<>{ *data.BaseAddress, *data.MemorySize, *data.ProcessHandle }) };
		for(auto& rule : scan.vKnownBadRules){
			LOG_INFO(2, L"Memory at " << *data.BaseAddress << L" in process with PID " << GetProcessId(*data.ProcessHandle)
					 << L" violates yara rule " << rule);
			certainty = certainty + Certainty::Moderate;
		}
	}
	
	MEMORY_BASIC_INFORMATION info{};
	if(VirtualQueryEx(*data.ProcessHandle, *data.BaseAddress, &info, sizeof(info))){

		bool wc{ PAGE_WRITECOPY(info.AllocationProtect) };
		if(PAGE_EXECUTABLE(info.AllocationProtect) && !wc){
			certainty = certainty + Certainty::Moderate;
			LOG_INFO(3, L"Allocation at " << *data.BaseAddress << L" in process with PID " << GetProcessId(*data.ProcessHandle)
					 << L" has suspicious permissions " << std::hex << info.Protect);
		}
		
		auto addr{ reinterpret_cast<PCHAR>(*data.BaseAddress) };
		while(addr < reinterpret_cast<PCHAR>(*data.BaseAddress) + *data.MemorySize){
			if(VirtualQueryEx(*data.ProcessHandle, addr, &info, sizeof(info))){
				if(PAGE_EXECUTABLE(info.Protect) && (PAGE_WRITEABLE(info.Protect) || !wc)){
					LOG_INFO(3, L"Page at " << reinterpret_cast<PVOID64>(addr) << L" in process with PID " << 
							 GetProcessId(*data.ProcessHandle) << L" has suspicious permissions " << std::hex << info.Protect);
					certainty = certainty + Certainty::Moderate;
				}
				addr += info.RegionSize;
			} else return certainty;
		}
	} else{
		LOG_WARNING(L"Failed to analyze memory protections for memory at " << *data.BaseAddress << L" in process with PID "
					<< GetProcessId(*data.ProcessHandle) << L" with error 0x" << std::hex << GetLastError());
	}
	
	return certainty;
}