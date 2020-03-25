/* 

NON-COMMERCIAL

Files under here are licensed under CC BY-NC 4.0 (Non-Commercial): https://creativecommons.org/licenses/by-nc/4.0/
Please remove the below lines and recompile the project to use in a commercial setting.

*/


include "../external/signature-base/yara/apt_aa19_024a.yar"
include "../external/signature-base/yara/apt_agent_btz.yar"
include "../external/signature-base/yara/apt_apt10.yar"
include "../external/signature-base/yara/apt_apt10_redleaves.yar"
include "../external/signature-base/yara/apt_apt12_malware.yar"
include "../external/signature-base/yara/apt_apt17_mal_sep17.yar"
include "../external/signature-base/yara/apt_apt17_malware.yar"
include "../external/signature-base/yara/apt_apt19.yar"
include "../external/signature-base/yara/apt_apt28.yar"
include "../external/signature-base/yara/apt_apt29_grizzly_steppe.yar"
include "../external/signature-base/yara/apt_apt3_bemstour.yar"
include "../external/signature-base/yara/apt_apt30_backspace.yar"
include "../external/signature-base/yara/apt_apt34.yar"
include "../external/signature-base/yara/apt_apt37.yar"
include "../external/signature-base/yara/apt_apt41.yar"
include "../external/signature-base/yara/apt_apt6_malware.yar"
include "../external/signature-base/yara/apt_ar18_165a.yar"
include "../external/signature-base/yara/apt_area1_phishing_diplomacy.yar"
include "../external/signature-base/yara/apt_aus_parl_compromise.yar"
include "../external/signature-base/yara/apt_babyshark.yar"
include "../external/signature-base/yara/apt_backdoor_ssh_python.yar"
include "../external/signature-base/yara/apt_backspace.yar"
include "../external/signature-base/yara/apt_beepservice.yar"
include "../external/signature-base/yara/apt_between-hk-and-burma.yar"
include "../external/signature-base/yara/apt_bigbang.yar"
include "../external/signature-base/yara/apt_blackenergy.yar"
include "../external/signature-base/yara/apt_blackenergy_installer.yar"
include "../external/signature-base/yara/apt_bluetermite_emdivi.yar"
include "../external/signature-base/yara/apt_bronze_butler.yar"
include "../external/signature-base/yara/apt_buckeye.yar"
include "../external/signature-base/yara/apt_carbon_paper_turla.yar"
include "../external/signature-base/yara/apt_casper.yar"
include "../external/signature-base/yara/apt_cheshirecat.yar"
include "../external/signature-base/yara/apt_cloudduke.yar"
include "../external/signature-base/yara/apt_cmstar.yar"
include "../external/signature-base/yara/apt_cn_pp_zerot.yar"
include "../external/signature-base/yara/apt_cobaltstrike.yar"
include "../external/signature-base/yara/apt_cobaltstrike_evasive.yar"
include "../external/signature-base/yara/apt_codoso.yar"
include "../external/signature-base/yara/apt_coreimpact_agent.yar"
include "../external/signature-base/yara/apt_danti_svcmondr.yar"
include "../external/signature-base/yara/apt_darkcaracal.yar"
include "../external/signature-base/yara/apt_darkhydrus.yar"
include "../external/signature-base/yara/apt_deeppanda.yar"
include "../external/signature-base/yara/apt_derusbi.yar"
include "../external/signature-base/yara/apt_dnspionage.yar"
include "../external/signature-base/yara/apt_donotteam_ytyframework.yar"
include "../external/signature-base/yara/apt_dragonfly.yar"
include "../external/signature-base/yara/apt_dtrack.yar"
include "../external/signature-base/yara/apt_dubnium.yar"
include "../external/signature-base/yara/apt_duqu1_5_modules.yar"
include "../external/signature-base/yara/apt_duqu2.yar"
include "../external/signature-base/yara/apt_dustman.yar"
include "../external/signature-base/yara/apt_emissary.yar"
include "../external/signature-base/yara/apt_eqgrp.yar"
include "../external/signature-base/yara/apt_eqgrp_apr17.yar"
include "../external/signature-base/yara/apt_eternalblue_non_wannacry.yar"
include "../external/signature-base/yara/apt_exile_rat.yar"
include "../external/signature-base/yara/apt_fakem_backdoor.yar"
include "../external/signature-base/yara/apt_fancybear_computrace_agent.yar"
include "../external/signature-base/yara/apt_fancybear_dnc.yar"
include "../external/signature-base/yara/apt_fancybear_osxagent.yar"
include "../external/signature-base/yara/apt_fidelis_phishing_plain_sight.yar"
include "../external/signature-base/yara/apt_fin7.yar"
include "../external/signature-base/yara/apt_fin7_backdoor.yar"
include "../external/signature-base/yara/apt_flame2_orchestrator.yar"
include "../external/signature-base/yara/apt_foudre.yar"
include "../external/signature-base/yara/apt_four_element_sword.yar"
include "../external/signature-base/yara/apt_freemilk.yar"
include "../external/signature-base/yara/apt_furtim.yar"
include "../external/signature-base/yara/apt_fvey_shadowbroker_dec16.yar"
include "../external/signature-base/yara/apt_fvey_shadowbroker_jan17.yar"
include "../external/signature-base/yara/apt_ghostdragon_gh0st_rat.yar"
include "../external/signature-base/yara/apt_glassRAT.yar"
include "../external/signature-base/yara/apt_golddragon.yar"
include "../external/signature-base/yara/apt_greenbug.yar"
include "../external/signature-base/yara/apt_greyenergy.yar"
include "../external/signature-base/yara/apt_grizzlybear_uscert.yar"
include "../external/signature-base/yara/apt_hackingteam_rules.yar"
include "../external/signature-base/yara/apt_ham_tofu_chches.yar"
include "../external/signature-base/yara/apt_hatman.yar"
include "../external/signature-base/yara/apt_hellsing_kaspersky.yar"
include "../external/signature-base/yara/apt_hidden_cobra.yar"
include "../external/signature-base/yara/apt_hiddencobra_bankshot.yar"
include "../external/signature-base/yara/apt_hiddencobra_wiper.yar"
include "../external/signature-base/yara/apt_hizor_rat.yar"
include "../external/signature-base/yara/apt_hkdoor.yar"
include "../external/signature-base/yara/apt_icefog.yar"
include "../external/signature-base/yara/apt_indetectables_rat.yar"
include "../external/signature-base/yara/apt_industroyer.yar"
include "../external/signature-base/yara/apt_inocnation.yar"
include "../external/signature-base/yara/apt_irongate.yar"
include "../external/signature-base/yara/apt_irontiger.yar"
include "../external/signature-base/yara/apt_irontiger_trendmicro.yar"
include "../external/signature-base/yara/apt_ism_rat.yar"
include "../external/signature-base/yara/apt_kaspersky_duqu2.yar"
include "../external/signature-base/yara/apt_keyboys.yar"
include "../external/signature-base/yara/apt_keylogger_cn.yar"
include "../external/signature-base/yara/apt_khrat.yar"
include "../external/signature-base/yara/apt_korplug_fast.yar"
include "../external/signature-base/yara/apt_kwampirs.yar"
include "../external/signature-base/yara/apt_laudanum_webshells.yar"
include "../external/signature-base/yara/apt_lazarus_applejeus.yar"
include "../external/signature-base/yara/apt_lazarus_dec17.yar"
include "../external/signature-base/yara/apt_lazarus_jun18.yar"
include "../external/signature-base/yara/apt_leviathan.yar"
include "../external/signature-base/yara/apt_lotusblossom_elise.yar"
include "../external/signature-base/yara/apt_magichound.yar"
include "../external/signature-base/yara/apt_microcin.yar"
include "../external/signature-base/yara/apt_middle_east_talosreport.yar"
include "../external/signature-base/yara/apt_miniasp.yar"
include "../external/signature-base/yara/apt_minidionis.yar"
include "../external/signature-base/yara/apt_mofang.yar"
include "../external/signature-base/yara/apt_molerats_jul17.yar"
include "../external/signature-base/yara/apt_monsoon.yar"
include "../external/signature-base/yara/apt_moonlightmaze.yar"
include "../external/signature-base/yara/apt_ms_platinum.yara"
include "../external/signature-base/yara/apt_muddywater.yar"
include "../external/signature-base/yara/apt_naikon.yar"
include "../external/signature-base/yara/apt_nanocore_rat.yar"
include "../external/signature-base/yara/apt_ncsc_report_04_2018.yar"
include "../external/signature-base/yara/apt_netwire_rat.yar"
include "../external/signature-base/yara/apt_nk_gen.yar"
include "../external/signature-base/yara/apt_oilrig.yar"
include "../external/signature-base/yara/apt_oilrig_chafer_mar18.yar"
include "../external/signature-base/yara/apt_oilrig_oct17.yar"
include "../external/signature-base/yara/apt_oilrig_rgdoor.yar"
include "../external/signature-base/yara/apt_olympic_destroyer.yar"
include "../external/signature-base/yara/apt_onhat_proxy.yar"
include "../external/signature-base/yara/apt_op_cleaver.yar"
include "../external/signature-base/yara/apt_op_cloudhopper.yar"
include "../external/signature-base/yara/apt_op_honeybee.yar"
include "../external/signature-base/yara/apt_op_shadowhammer.yar"
include "../external/signature-base/yara/apt_op_wocao.yar"
include "../external/signature-base/yara/apt_passcv.yar"
include "../external/signature-base/yara/apt_passthehashtoolkit.yar"
include "../external/signature-base/yara/apt_patchwork.yar"
include "../external/signature-base/yara/apt_plead_downloader.yar"
include "../external/signature-base/yara/apt_plugx.yar"
include "../external/signature-base/yara/apt_poisonivy.yar"
include "../external/signature-base/yara/apt_poisonivy_gen3.yar"
include "../external/signature-base/yara/apt_poseidon_group.yar"
include "../external/signature-base/yara/apt_poshspy.yar"
include "../external/signature-base/yara/apt_prikormka.yar"
include "../external/signature-base/yara/apt_project_m.yar"
include "../external/signature-base/yara/apt_project_sauron.yara"
include "../external/signature-base/yara/apt_project_sauron_extras.yar"
include "../external/signature-base/yara/apt_promethium_neodymium.yar"
include "../external/signature-base/yara/apt_putterpanda.yar"
include "../external/signature-base/yara/apt_quarkspwdump.yar"
include "../external/signature-base/yara/apt_quasar_rat.yar"
include "../external/signature-base/yara/apt_quasar_vermin.yar"
include "../external/signature-base/yara/apt_rancor.yar"
include "../external/signature-base/yara/apt_reaver_sunorcal.yar"
include "../external/signature-base/yara/apt_rehashed_rat.yar"
include "../external/signature-base/yara/apt_revenge_rat.yar"
include "../external/signature-base/yara/apt_rocketkitten_keylogger.yar"
include "../external/signature-base/yara/apt_rokrat.yar"
include "../external/signature-base/yara/apt_royalroad.yar"
include "../external/signature-base/yara/apt_ruag.yar"
include "../external/signature-base/yara/apt_rwmc_powershell_creddump.yar"
include "../external/signature-base/yara/apt_sakula.yar"
include "../external/signature-base/yara/apt_saudi_aramco_phish.yar"
include "../external/signature-base/yara/apt_scanbox_deeppanda.yar"
include "../external/signature-base/yara/apt_scarcruft.yar"
include "../external/signature-base/yara/apt_seaduke_unit42.yar"
include "../external/signature-base/yara/apt_sednit_delphidownloader.yar"
include "../external/signature-base/yara/apt_servantshell.yar"
include "../external/signature-base/yara/apt_shadowpad.yar"
include "../external/signature-base/yara/apt_shamoon.yar"
include "../external/signature-base/yara/apt_shamoon2.yar"
include "../external/signature-base/yara/apt_shellcrew_streamex.yar"
include "../external/signature-base/yara/apt_silence.yar"
include "../external/signature-base/yara/apt_skeletonkey.yar"
include "../external/signature-base/yara/apt_slingshot.yar"
include "../external/signature-base/yara/apt_snaketurla_osx.yar"
include "../external/signature-base/yara/apt_snowglobe_babar.yar"
include "../external/signature-base/yara/apt_sofacy.yar"
include "../external/signature-base/yara/apt_sofacy_cannon.yar"
include "../external/signature-base/yara/apt_sofacy_dec15.yar"
include "../external/signature-base/yara/apt_sofacy_fysbis.yar"
include "../external/signature-base/yara/apt_sofacy_hospitality.yar"
include "../external/signature-base/yara/apt_sofacy_jun16.yar"
include "../external/signature-base/yara/apt_sofacy_oct17_camp.yar"
include "../external/signature-base/yara/apt_sofacy_xtunnel_bundestag.yar"
include "../external/signature-base/yara/apt_sofacy_zebrocy.yar"
include "../external/signature-base/yara/apt_sphinx_moth.yar"
include "../external/signature-base/yara/apt_stonedrill.yar"
include "../external/signature-base/yara/apt_strider.yara"
include "../external/signature-base/yara/apt_stuxnet.yar"
include "../external/signature-base/yara/apt_stuxshop.yar"
include "../external/signature-base/yara/apt_suckfly.yar"
include "../external/signature-base/yara/apt_sysscan.yar"
include "../external/signature-base/yara/apt_ta17_293A.yar"
include "../external/signature-base/yara/apt_ta17_318A.yar"
include "../external/signature-base/yara/apt_ta17_318B.yar"
include "../external/signature-base/yara/apt_ta18_074A.yar"
include "../external/signature-base/yara/apt_ta18_149A.yar"
include "../external/signature-base/yara/apt_ta459.yar"
include "../external/signature-base/yara/apt_telebots.yar"
include "../external/signature-base/yara/apt_terracotta.yar"
include "../external/signature-base/yara/apt_terracotta_liudoor.yar"
include "../external/signature-base/yara/apt_threatgroup_3390.yar"
include "../external/signature-base/yara/apt_thrip.yar"
include "../external/signature-base/yara/apt_tick_datper.yar"
include "../external/signature-base/yara/apt_tick_weaponized_usb.yar"
include "../external/signature-base/yara/apt_tidepool.yar"
include "../external/signature-base/yara/apt_tophat.yar"
include "../external/signature-base/yara/apt_triton.yar"
include "../external/signature-base/yara/apt_triton_mal_sshdoor.yar"
include "../external/signature-base/yara/apt_turbo_campaign.yar"
include "../external/signature-base/yara/apt_turla.yar"
include "../external/signature-base/yara/apt_turla_gazer.yar"
include "../external/signature-base/yara/apt_turla_mosquito.yar"
include "../external/signature-base/yara/apt_turla_neuron.yar"
include "../external/signature-base/yara/apt_turla_png_dropper_nov18.yar"
include "../external/signature-base/yara/apt_uboat_rat.yar"
include "../external/signature-base/yara/apt_unit78020_malware.yar"
include "../external/signature-base/yara/apt_uscert_ta17-1117a.yar"
include "../external/signature-base/yara/apt_venom_linux_rootkit.yar"
include "../external/signature-base/yara/apt_volatile_cedar.yar"
include "../external/signature-base/yara/apt_vpnfilter.yar"
include "../external/signature-base/yara/apt_waterbear.yar"
include "../external/signature-base/yara/apt_waterbug.yar"
include "../external/signature-base/yara/apt_webmonitor_rat.yar"
include "../external/signature-base/yara/apt_webshell_chinachopper.yar"
include "../external/signature-base/yara/apt_wildneutron.yar"
include "../external/signature-base/yara/apt_wilted_tulip.yar"
include "../external/signature-base/yara/apt_win_plugx.yar"
include "../external/signature-base/yara/apt_winnti.yar"
include "../external/signature-base/yara/apt_winnti_br.yar"
include "../external/signature-base/yara/apt_winnti_burning_umbrella.yar"
include "../external/signature-base/yara/apt_winnti_hdroot.yar"
include "../external/signature-base/yara/apt_winnti_linux.yar"
include "../external/signature-base/yara/apt_winnti_ms_report_201701.yar"
include "../external/signature-base/yara/apt_woolengoldfish.yar"
include "../external/signature-base/yara/apt_xrat.yar"
include "../external/signature-base/yara/apt_zxshell.yar"
include "../external/signature-base/yara/cn_pentestset_scripts.yar"
include "../external/signature-base/yara/cn_pentestset_tools.yar"
include "../external/signature-base/yara/cn_pentestset_webshells.yar"
include "../external/signature-base/yara/crime_andromeda_jun17.yar"
include "../external/signature-base/yara/crime_antifw_installrex.yar"
include "../external/signature-base/yara/crime_atm_dispenserxfs.yar"
include "../external/signature-base/yara/crime_atm_javadipcash.yar"
include "../external/signature-base/yara/crime_atm_xfsadm.yar"
include "../external/signature-base/yara/crime_atm_xfscashncr.yar"
include "../external/signature-base/yara/crime_bad_patch.yar"
include "../external/signature-base/yara/crime_badrabbit.yar"
include "../external/signature-base/yara/crime_bernhard_pos.yar"
include "../external/signature-base/yara/crime_bluenoroff_pos.yar"
include "../external/signature-base/yara/crime_buzus_softpulse.yar"
include "../external/signature-base/yara/crime_cmstar.yar"
include "../external/signature-base/yara/crime_cn_campaign_njrat.yar"
include "../external/signature-base/yara/crime_cn_group_btc.yar"
include "../external/signature-base/yara/crime_cobalt_gang_pdf.yar"
include "../external/signature-base/yara/crime_cobaltgang.yar"
include "../external/signature-base/yara/crime_corkow_dll.yar"
include "../external/signature-base/yara/crime_credstealer_generic.yar"
include "../external/signature-base/yara/crime_cryptowall_svg.yar"
include "../external/signature-base/yara/crime_dexter_trojan.yar"
include "../external/signature-base/yara/crime_dridex_xml.yar"
include "../external/signature-base/yara/crime_emotet.yar"
include "../external/signature-base/yara/crime_enfal.yar"
include "../external/signature-base/yara/crime_envrial.yar"
include "../external/signature-base/yara/crime_eternalrocks.yar"
include "../external/signature-base/yara/crime_fareit.yar"
include "../external/signature-base/yara/crime_fireball.yar"
include "../external/signature-base/yara/crime_floxif_flystudio.yar"
include "../external/signature-base/yara/crime_goldeneye.yar"
include "../external/signature-base/yara/crime_hermes_ransom.yar"
include "../external/signature-base/yara/crime_kasper_oct17.yar"
include "../external/signature-base/yara/crime_kins_dropper.yar"
include "../external/signature-base/yara/crime_kr_malware.yar"
include "../external/signature-base/yara/crime_kraken_bot1.yar"
include "../external/signature-base/yara/crime_kriskynote.yar"
include "../external/signature-base/yara/crime_locky.yar"
include "../external/signature-base/yara/crime_loki_bot.yar"
include "../external/signature-base/yara/crime_mal_grandcrab.yar"
include "../external/signature-base/yara/crime_mal_nitol.yar"
include "../external/signature-base/yara/crime_mal_ransom_wadharma.yar"
include "../external/signature-base/yara/crime_malumpos.yar"
include "../external/signature-base/yara/crime_malware_generic.yar"
include "../external/signature-base/yara/crime_malware_set_oct16.yar"
include "../external/signature-base/yara/crime_mikey_trojan.yar"
include "../external/signature-base/yara/crime_mirai.yar"
include "../external/signature-base/yara/crime_mywscript_dropper.yar"
include "../external/signature-base/yara/crime_nansh0u.yar"
include "../external/signature-base/yara/crime_nkminer.yar"
include "../external/signature-base/yara/crime_nopetya_jun17.yar"
include "../external/signature-base/yara/crime_ole_loadswf_cve_2018_4878.yar"
include "../external/signature-base/yara/crime_parallax_rat.yar"
include "../external/signature-base/yara/crime_phish_gina_dec15.yar"
include "../external/signature-base/yara/crime_ransom_germanwiper.yar"
include "../external/signature-base/yara/crime_ransom_lockergoga.yar"
include "../external/signature-base/yara/crime_ransom_robinhood.yar"
include "../external/signature-base/yara/crime_rombertik_carbongrabber.yar"
include "../external/signature-base/yara/crime_ryuk_ransomware.yar"
include "../external/signature-base/yara/crime_shifu_trojan.yar"
include "../external/signature-base/yara/crime_snarasite.yar"
include "../external/signature-base/yara/crime_teledoor.yar"
include "../external/signature-base/yara/crime_trickbot.yar"
include "../external/signature-base/yara/crime_upatre_oct15.yar"
include "../external/signature-base/yara/crime_wannacry.yar"
include "../external/signature-base/yara/crime_xbash.yar"
include "../external/signature-base/yara/crime_zeus_panda.yar"
include "../external/signature-base/yara/exploit_cve_2014_4076.yar"
include "../external/signature-base/yara/exploit_cve_2015_1674.yar"
include "../external/signature-base/yara/exploit_cve_2015_1701.yar"
include "../external/signature-base/yara/exploit_cve_2015_2426.yar"
include "../external/signature-base/yara/exploit_cve_2015_2545.yar"
include "../external/signature-base/yara/exploit_cve_2015_5119.yar"
include "../external/signature-base/yara/exploit_cve_2017_11882.yar"
include "../external/signature-base/yara/exploit_cve_2017_8759.yar"
include "../external/signature-base/yara/exploit_cve_2017_9800.yar"
include "../external/signature-base/yara/exploit_cve_2018_0802.yar"
include "../external/signature-base/yara/exploit_cve_2018_16858.yar"
include "../external/signature-base/yara/exploit_rtf_ole2link.yar"
include "../external/signature-base/yara/exploit_shitrix.yar"
include "../external/signature-base/yara/exploit_uac_elevators.yar"
include "../external/signature-base/yara/gen_ace_with_exe.yar"
include "../external/signature-base/yara/gen_armitage.yar"
include "../external/signature-base/yara/gen_autocad_lsp_malware.yar"
include "../external/signature-base/yara/gen_b374k_extra.yar"
include "../external/signature-base/yara/gen_bad_pdf.yar"
include "../external/signature-base/yara/gen_case_anomalies.yar"
include "../external/signature-base/yara/gen_cert_payloads.yar"
include "../external/signature-base/yara/gen_chaos_payload.yar"
include "../external/signature-base/yara/gen_cmd_script_obfuscated.yar"
include "../external/signature-base/yara/gen_cn_hacktool_scripts.yar"
include "../external/signature-base/yara/gen_cn_hacktools.yar"
include "../external/signature-base/yara/gen_cn_webshells.yar"
include "../external/signature-base/yara/gen_crime_bitpaymer.yar"
include "../external/signature-base/yara/gen_crimson_rat.yar"
include "../external/signature-base/yara/gen_crunchrat.yar"
include "../external/signature-base/yara/gen_dde_in_office_docs.yar"
include "../external/signature-base/yara/gen_deviceguard_evasion.yar"
include "../external/signature-base/yara/gen_dropper_pdb.yar"
include "../external/signature-base/yara/gen_elf_file_anomalies.yar"
include "../external/signature-base/yara/gen_empire.yar"
include "../external/signature-base/yara/gen_enigma_protector.yar"
include "../external/signature-base/yara/gen_exploit_cve_2017_10271_weblogic.yar"
include "../external/signature-base/yara/gen_faked_versions.yar"
include "../external/signature-base/yara/gen_floxif.yar"
include "../external/signature-base/yara/gen_gen_cactustorch.yar"
include "../external/signature-base/yara/gen_google_anomaly.yar"
include "../external/signature-base/yara/gen_gpp_cpassword.yar"
include "../external/signature-base/yara/gen_hawkeye.yar"
include "../external/signature-base/yara/gen_hta_anomalies.yar"
include "../external/signature-base/yara/gen_impacket_tools.yar"
include "../external/signature-base/yara/gen_invoke_mimikatz.yar"
include "../external/signature-base/yara/gen_invoke_psimage.yar"
include "../external/signature-base/yara/gen_invoke_thehash.yar"
include "../external/signature-base/yara/gen_javascript_powershell.yar"
include "../external/signature-base/yara/gen_kerberoast.yar"
include "../external/signature-base/yara/gen_kirbi_mimkatz.yar"
include "../external/signature-base/yara/gen_loaders.yar"
include "../external/signature-base/yara/gen_macro_ShellExecute_action.yar"
include "../external/signature-base/yara/gen_macro_staroffice_suspicious.yar"
include "../external/signature-base/yara/gen_mal_backnet.yar"
include "../external/signature-base/yara/gen_mal_link.yar"
include "../external/signature-base/yara/gen_mal_scripts.yar"
include "../external/signature-base/yara/gen_malware_MacOS_plist_suspicious.yar"
include "../external/signature-base/yara/gen_malware_set_qa.yar"
include "../external/signature-base/yara/gen_merlin_agent.yar"
include "../external/signature-base/yara/gen_metasploit_loader_rsmudge.yar"
include "../external/signature-base/yara/gen_metasploit_payloads.yar"
include "../external/signature-base/yara/gen_mimikittenz.yar"
include "../external/signature-base/yara/gen_mimipenguin.yar"
include "../external/signature-base/yara/gen_nopowershell.yar"
include "../external/signature-base/yara/gen_osx_backdoor_bella.yar"
include "../external/signature-base/yara/gen_osx_evilosx.yar"
include "../external/signature-base/yara/gen_osx_pyagent_persistence.yar"
include "../external/signature-base/yara/gen_p0wnshell.yar"
include "../external/signature-base/yara/gen_pirpi.yar"
include "../external/signature-base/yara/gen_powerkatz.yar"
include "../external/signature-base/yara/gen_powershdll.yar"
include "../external/signature-base/yara/gen_powershell_empire.yar"
include "../external/signature-base/yara/gen_powershell_invocation.yar"
include "../external/signature-base/yara/gen_powershell_obfuscation.yar"
include "../external/signature-base/yara/gen_powershell_suite.yar"
include "../external/signature-base/yara/gen_powershell_susp.yar"
include "../external/signature-base/yara/gen_powershell_toolkit.yar"
include "../external/signature-base/yara/gen_powersploit_dropper.yar"
include "../external/signature-base/yara/gen_ps_empire_eval.yar"
include "../external/signature-base/yara/gen_ps_osiris.yar"
include "../external/signature-base/yara/gen_ps1_shellcode.yar"
include "../external/signature-base/yara/gen_pua.yar"
include "../external/signature-base/yara/gen_pupy_rat.yar"
include "../external/signature-base/yara/gen_python_encoded_adware"
include "../external/signature-base/yara/gen_python_pty_shell.yar"
include "../external/signature-base/yara/gen_python_pyminifier_encoded_payload.yar"
include "../external/signature-base/yara/gen_python_reverse_shell.yara"
include "../external/signature-base/yara/gen_rar_exfil.yar"
include "../external/signature-base/yara/gen_rats_malwareconfig.yar"
include "../external/signature-base/yara/gen_recon_keywords.yar"
include "../external/signature-base/yara/gen_redsails.yar"
include "../external/signature-base/yara/gen_regsrv32_issue.yar"
include "../external/signature-base/yara/gen_rottenpotato.yar"
include "../external/signature-base/yara/gen_sfx_with_microsoft_copyright.yar"
include "../external/signature-base/yara/gen_sharpcat.yar"
include "../external/signature-base/yara/gen_shikataganai.yar"
include "../external/signature-base/yara/gen_sign_anomalies.yar"
include "../external/signature-base/yara/gen_susp_cmd_var_expansion.yar"
include "../external/signature-base/yara/gen_susp_hacktool.yar"
include "../external/signature-base/yara/gen_susp_lnk.yar"
include "../external/signature-base/yara/gen_susp_lnk_files.yar"
include "../external/signature-base/yara/gen_susp_obfuscation.yar"
include "../external/signature-base/yara/gen_susp_office_dropper.yar"
include "../external/signature-base/yara/gen_susp_sfx.yar"
include "../external/signature-base/yara/gen_susp_strings_in_ole.yar"
include "../external/signature-base/yara/gen_susp_wer_files.yar"
include "../external/signature-base/yara/gen_susp_xor.yar"
include "../external/signature-base/yara/gen_suspicious_InPage_dropper.yar"
include "../external/signature-base/yara/gen_suspicious_strings.yar"
include "../external/signature-base/yara/gen_sysinternals_anomaly.yar"
include "../external/signature-base/yara/gen_tempracer.yar"
include "../external/signature-base/yara/gen_thumbs_cloaking.yar"
include "../external/signature-base/yara/gen_transformed_strings.yar"
include "../external/signature-base/yara/gen_tscookie_rat.yar"
include "../external/signature-base/yara/gen_unicorn_obfuscated_powershell.yar"
include "../external/signature-base/yara/gen_unspecified_malware.yar"
include "../external/signature-base/yara/gen_url_persitence.yar"
include "../external/signature-base/yara/gen_url_to_local_exe.yar"
include "../external/signature-base/yara/gen_vhd_anomaly.yar"
include "../external/signature-base/yara/gen_win_privesc.yar"
include "../external/signature-base/yara/gen_winpayloads.yar"
include "../external/signature-base/yara/gen_winshells.yar"
include "../external/signature-base/yara/gen_wmi_implant.yar"
include "../external/signature-base/yara/gen_xor_hunting.yar"
include "../external/signature-base/yara/gen_xtreme_rat.yar"
include "../external/signature-base/yara/gen_ysoserial_payloads.yar"
include "../external/signature-base/yara/general_officemacros.yar"
include "../external/signature-base/yara/generic_cryptors.yar"
include "../external/signature-base/yara/generic_dumps.yar"
include "../external/signature-base/yara/generic_exe2hex_payload.yar"
include "../external/signature-base/yara/mal_avemaria_rat.yar"
include "../external/signature-base/yara/mal_cryp_rat.yar"
include "../external/signature-base/yara/pua_cryptocoin_miner.yar"
include "../external/signature-base/yara/pua_xmrig_monero_miner.yar"
include "../external/signature-base/yara/pup_lightftp.yar"
include "../external/signature-base/yara/spy_equation_fiveeyes.yar"
include "../external/signature-base/yara/spy_querty_fiveeyes.yar"
include "../external/signature-base/yara/spy_regin_fiveeyes.yar"
include "../external/signature-base/yara/thor-hacktools.yar"
include "../external/signature-base/yara/thor-webshells.yar"
include "../external/signature-base/yara/threat_lenovo_superfish.yar"
include "../external/signature-base/yara/vul_cve_2020_0688.yar"
include "../external/signature-base/yara/vul_cve_2020_1938.yar"
include "../external/signature-base/yara/vul_drivecrypt.yar"
include "../external/signature-base/yara/vul_jquery_fileupload_cve_2018_9206.yar"
include "../external/signature-base/vendor/yara/airbnb_binaryalert.yar"


/* Excluded due to syntax errors:

general_cloaking.yar
generic_anomalies.yar
thor_inverse_matches.yar
yara_mixed_ext_vars.yar

*/