use "C:\Users\janni\Desktop\Forschungspraktikum\original.dta", clear

br

*** überflüssigen Variablen löschen ***
drop serial ref questnnr mode started mailsent lastdata finished q_viewer lastpage maxpage missing missrel deg_time

drop time*



*** Umbenennen von Variablen ***

rename uv01_01 uv_mob_bike
ren uv01_02 uv_mob_öpnv
ren uv01_03 uv_mob_auto

ren (uv02 uv03 uv04 uv05 uv06 uv07) (uv_eek uv_eco uv_donate uv_engage uv_biolabel uv_gütesiegel)

ren (uv07_01 uv07_02 uv07_03 uv07_04 uv07_05 uv07_06 uv07_06a uv08_01 uv08_02 uv08_03 uv08_04 uv08_05 uv08_06 uv08_07 ///
uv08_08 uv08_09 uv08_10 uv08_11 uv08_12 uv08_13 uv09 uv10) (eubio debio naturland bioland demeter anderes_siegel ///  
str_anderes_siegel uv_le_regio uv_le_saiso uv_le_pesti uv_le_gas uv_le_synthdü uv_le_überd uv_le_futterm uv_le_fruchtf ///
uv_le_gewächsh uv_le_günstig uv_le_quanti uv_le_quali uv_le_andere uv_fleisch uv_vegetarisch)

ren (uk*) (uk_mob uk_eek uk_eco uk_donate uk_engage)

ren (bs*) (bs_gas bs_pesti bs_grundw bs_gas_regio bs_gas_saiso bs_gas_nregio bs_futter bs_dünger bs_überd bs_gewächsh bs_tier)

ren (ae*) (ae_verantwortung ae_rohstoffe ae_wachstum ae_lebensstandard ae_wirtschaftswachstum)

ren (sf*) (sf_u sf_u_part sf_u_verw sf_u_freu sf_u_bek sf_u_koll sf_u_pers sf_u_and str_sf_u_and sf_o sf_o_zuhaus sf_o_arbeit sf_o_fam sf_o_freu sf_o_Anlässe sf_o_gast sf_o_gäste sf_o_sport sf_o_and str_sf_o_and sf_inf sf_inf_web sf_inf_marerz sf_inf_frbk sf_inf_parver sf_inf_koll sf_inf_anders str_sf_inf_anders)

ren (kh*) (kh_ke_preis kh_ke_pack kh_ke_design kh_ke_label kh_ke_kaufsit kh_ke_botsch kh_ke_unt kh_ke_marke kh_ke_angebot kh_ke_quali kh_ke_herkunft kh_ke_and kh_e kh_e_disc kh_e_superm kh_e_biodis kh_e_biofh kh_e_wochm kh_e_online kh_e_and str_kh_e_and kh_k kh_k_gesund kh_k_geschmack kh_k_tierh kh_k_nachh kh_k_gefühl kh_k_alltag kh_k_reli kh_k_umf kh_k_and str_kh_k_and)

ren (mi*) (mi_ideen mi_neustart mi_umwprod mi_freimarkt mi_zukunft mi_neukultur mi_chancen mi_familie mi_gleich mi_quali mi_plural mi_probleme mi_karriere mi_engage mi_wachst mi_wohl mi_abrutsch)

ren (pd*) (sex age familienstand abschluss nation nation_deu nation_tür nation_pol nation_syr nation_rum nation_ita nation_kro nation_and branche str_branche_and stellung str_stellung income)



*** "nicht beantwortet" und "Keine Angabe" als Missing setzen. Alle Variablen, deren Wert bei -1 nicht "Keine Angabe" meint auf einen anderen Wert umparken. Bei uv_gütesiegel ist -2 "Keine Angabe" ***

recode uv_gütesiegel(-2=0)
recode sf_u(-1=-2)
recode sf_o(-1=-2)
recode sf_inf(-1=-2)
recode uv_gütesiegel(-1=-2)
recode uv_le_saiso(-1=.) (-9=.)
recode uv_mob_bike(-1=.) (-9=.)
recode uv_mob_öpnv(-1=.) (-9=.)
recode uv_mob_auto(-1=.) (-9=.)
recode uv_eek(-1=.) (-9=.)
recode uv_eco(-1=.) (-9=.)
recode uv_donate(-1=.) (-9=.)
recode uv_engage(-1=.) (-9=.)
recode uv_biolabel(-1=.) (-9=.)
recode uv_gütesiegel(-1=.) (-9=.)
recode eubio(-1=.) (-9=.)
recode debio(-1=.) (-9=.)
recode naturland(-1=.) (-9=.)
recode bioland(-1=.) (-9=.)
recode demeter(-1=.) (-9=.)
recode anderes_siegel(-1=.) (-9=.)
recode nation_and(-1=.) (-9=.)
recode uv_le_regio(-1=.) (-9=.)
recode uk_engage(-1=.) (-9=.)
recode uv_le_pesti(-1=.) (-9=.)
recode uv_le_gas(-1=.) (-9=.)
recode uv_le_synthdü(-1=.) (-9=.)
recode uv_le_überd(-1=.) (-9=.)
recode uv_le_futterm(-1=.) (-9=.)
recode uv_le_fruchtf(-1=.) (-9=.)
recode uv_le_gewächsh(-1=.) (-9=.)
recode uv_le_günstig(-1=.) (-9=.)
recode uv_le_quanti(-1=.) (-9=.)
recode uv_le_quali(-1=.) (-9=.)
recode uv_le_andere(-1=.) (-9=.)
recode uv_fleisch(-1=.) (-9=.)
recode uv_vegetarisch(-1=.) (-9=.)
recode uk_mob(-1=.) (-9=.)
recode uk_eek(-1=.) (-9=.)
recode uk_eco(-1=.) (-9=.)
recode uk_donate(-1=.) (-9=.)
recode branche(-1=.) (-9=.)
recode bs_gas(-1=.) (-9=.)
recode bs_pesti(-1=.) (-9=.)
recode bs_grundw(-1=.) (-9=.)
recode bs_gas_regio(-1=.) (-9=.)
recode bs_gas_saiso(-1=.) (-9=.)
recode bs_gas_nregio(-1=.) (-9=.)
recode bs_futter(-1=.) (-9=.)
recode bs_dünger(-1=.) (-9=.)
recode bs_überd(-1=.) (-9=.)
recode bs_gewächsh(-1=.) (-9=.)
recode bs_tier(-1=.) (-9=.)
recode ae_verantwortung(-1=.) (-9=.)
recode ae_rohstoffe(-1=.) (-9=.)
recode ae_wachstum(-1=.) (-9=.)
recode ae_lebensstandard(-1=.) (-9=.)
recode ae_wirtschaftswachstum(-1=.) (-9=.)
recode sf_u(-1=.) (-9=.)
recode sf_u_part(-1=.) (-9=.)
recode sf_u_verw(-1=.) (-9=.)
recode sf_u_freu(-1=.) (-9=.)
recode sf_u_bek(-1=.) (-9=.)
recode sf_u_koll(-1=.) (-9=.)
recode sf_u_pers(-1=.) (-9=.)
recode sf_u_and(-1=.) (-9=.)
recode stellung(-1=.) (-9=.)
recode sf_o(-1=.) (-9=.)
recode sf_o_zuhaus(-1=.) (-9=.)
recode sf_o_arbeit(-1=.) (-9=.)
recode sf_o_fam(-1=.) (-9=.)
recode sf_o_freu(-1=.) (-9=.)
recode sf_o_Anlässe(-1=.) (-9=.)
recode sf_o_gast(-1=.) (-9=.)
recode sf_o_gäste(-1=.) (-9=.)
recode sf_o_sport(-1=.) (-9=.)
recode sf_o_and(-1=.) (-9=.)
recode income(-1=.) (-9=.)
recode sf_inf(-1=.) (-9=.)
recode sf_inf_web(-1=.) (-9=.)
recode sf_inf_marerz(-1=.) (-9=.)
recode sf_inf_frbk(-1=.) (-9=.)
recode sf_inf_parver(-1=.) (-9=.)
recode sf_inf_koll(-1=.) (-9=.)
recode sf_inf_anders(-1=.) (-9=.)
recode kh_ke_preis(-1=.) (-9=.)
recode kh_ke_pack(-1=.) (-9=.)
recode kh_ke_design(-1=.) (-9=.)
recode kh_ke_label(-1=.) (-9=.)
recode kh_ke_kaufsit(-1=.) (-9=.)
recode kh_ke_botsch(-1=.) (-9=.)
recode kh_ke_unt(-1=.) (-9=.)
recode kh_ke_marke(-1=.) (-9=.)
recode kh_ke_angebot(-1=.) (-9=.)
recode kh_ke_quali(-1=.) (-9=.)
recode kh_ke_herkunft(-1=.) (-9=.)
recode kh_ke_and(-1=.) (-9=.)
recode kh_e(-1=.) (-9=.)
recode kh_e_disc(-1=.) (-9=.)
recode kh_e_superm(-1=.) (-9=.)
recode kh_e_biodis(-1=.) (-9=.)
recode kh_e_biofh(-1=.) (-9=.)
recode kh_e_wochm(-1=.) (-9=.)
recode kh_e_online(-1=.) (-9=.)
recode kh_e_and(-1=.) (-9=.)
recode kh_k (-1=.) (-9=.)
recode kh_k_gesund(-1=.) (-9=.)
recode kh_k_geschmack(-1=.) (-9=.)
recode kh_k_tierh(-1=.) (-9=.)
recode kh_k_nachh(-1=.) (-9=.)
recode kh_k_gefühl(-1=.) (-9=.)
recode kh_k_alltag(-1=.) (-9=.)
recode kh_k_reli(-1=.) (-9=.)
recode kh_k_umf(-1=.) (-9=.)
recode kh_k_and(-1=.) (-9=.)
recode mi_ideen(-1=.) (-9=.) (5=.)
recode mi_neustart(-1=.) (-9=.) (5=.)
recode mi_umwprod(-1=.) (-9=.) (5=.)
recode mi_freimarkt(-1=.) (-9=.) (5=.)
recode mi_zukunft(-1=.) (-9=.) (5=.)
recode mi_neukultur(-1=.) (-9=.) (5=.)
recode mi_chancen(-1=.) (-9=.) (5=.)
recode mi_familie(-1=.) (-9=.) (5=.)
recode mi_gleich(-1=.) (-9=.) (5=.)
recode mi_quali(-1=.) (-9=.) (5=.)
recode mi_plural(-1=.) (-9=.) (5=.)
recode mi_probleme(-1=.) (-9=.) (5=.)
recode mi_karriere(-1=.) (-9=.) (5=.)
recode mi_engage(-1=.) (-9=.) (5=.)
recode mi_wachst(-1=.) (-9=.) (5=.)
recode mi_wohl(-1=.) (-9=.) (5=.)
recode mi_abrutsch(-1=.) (-9=.) (5=.)
recode sex(-1=.) (-9=.)
recode age(-1=.) (-9=.)
recode familienstand(-1=.) (-9=.)
recode abschluss(-1=.) (-9=.)
recode nation(-1=.) (-9=.)
recode nation_deu(-1=.) (-9=.)
recode nation_tür(-1=.) (-9=.)
recode nation_pol(-1=.) (-9=.)
recode nation_syr(-1=.) (-9=.)
recode nation_rum(-1=.) (-9=.)
recode nation_ita(-1=.) (-9=.)
recode nation_kro(-1=.) (-9=.)

recode uv_gütesiegel(-2=.)
recode sf_u(-2=0)
recode sf_o(-2=0)
recode sf_inf(-2=0)

** was war mit 4? 
recode uv_eco (2=3)(3=5)

recode ae_wirtschaftswachstum (1=6)(2=7)(3=8)(4=9)(5=10)(10=1)(9=2)(8=3)(7=4)(6=5)
recode ae_rohstoffe (1=6)(2=7)(3=8)(4=9)(5=10)(6=5)(7=4)(8=3)(9=2)(10=1)



***  Labels definieren ***
label define MOBILITY 1"täglich" 2"3 - 5 x die Woche" 3"1 - 2 x die Woche" 4"monatlich" 5"nie" -1"Keine Angabe" -9"nicht beantwortet"
label values uv_mob_* MOBILITY

label define EEK 1"trifft zu" 2"trifft eher zu" 3"teils, teils" 4"trifft eher weniger zu" 5"trifft nicht zu"
label values uv_eek EEK

label define ECO 1"Ja, ausschließlich" 2"Ja, zum Teil" 3"Nein" 4"Weiß ich nicht"
label values uv_eco ECO

label define DONATE_ENGAGE 1"regelmäßig" 2"oft" 3"gelegentlich" 4"selten" 5"nie"
label values uv_donate uv_engage DONATE_ENGAGE

label define HÄUFIGKEIT 1"nie" 2"selten" 3"gelegentlich" 4"oft" 5"immer"
label values uv_biolabel uv_fleisch uv_vegetarisch  HÄUFIGKEIT

label define AUSWAHL 1"nicht gewählt" 2"ausgewählt"
label values anderes_siegel eubio debio naturland bioland demeter sf_u_part sf_u_verw sf_u_freu sf_u_bek sf_u_koll sf_u_pers sf_u_and sf_o_zuhaus sf_o_arbeit sf_o_fam sf_o_freu sf_o_Anlässe sf_o_gast sf_o_gäste sf_o_sport sf_o_and sf_inf_web sf_inf_marerz sf_inf_frbk sf_inf_parver sf_inf_koll sf_inf_anders kh_e_disc kh_e_superm kh_e_biodis kh_e_biofh kh_e_wochm kh_e_online kh_e_and kh_k_gesund kh_k_geschmack kh_k_tierh kh_k_nachh kh_k_gefühl kh_k_alltag kh_k_reli kh_k_umf kh_k_and nation_deu nation_tür nation_pol nation_syr nation_rum nation_ita nation_kro nation_and AUSWAHL

label define ZUSTIMMUNG 1"Stimme zu" 2"Stimme eher zu" 3"Teils, teils" 4"Stimme eher nicht zu" 5"Stimme nicht zu"
label values uk_mob uk_eek uk_eco uk_donate uk_engage ae* ZUSTIMMUNG

label define BOOLEAN 1"wahr" 2"falsch"
label values bs* BOOLEAN

label define MI_ZUSTIMMUNG 1"Stimme zu" 2"Stimme eher zu" 3"Stimme eher nicht zu" 4"Stimme nicht zu" 5"Weiß nicht"
label values mi* ZUSTIMMUNG

label define SEX 1"männlich" 2"weiblich" 3"divers"
label values sex SEX

label define AGE 1"<18"2"18-25"3"26-35"4"36-45"5"46-55"6"56-65"7"66-75"8"76-85"9">85"
label values age AGE

label define FAMILIENSTAND 1"ledig" 2"nicht eheliche Partnerschaft" 3"Ehe" 4"verheiratet, aber getrennt lebend" 5"geschieden" 6"verwitwet" 
label values familienstand FAMILIENSTAND

label define ABSCHLUSS 1"Kein Schulabschluss"2"Grund-/Hauptschulabschluss"3"Realschule (Mittlere Reife)"4"Fachhochschulreife"5"in Ausbildung"6"Abgeschlossene Ausbildung"13"Allgmeine Hochschulreife"7"Fachhochschulabschluss"8"Hochschule (Bachelor)"9"Hochschule (Master)"10"Hochschule (Promotion)"12"Hochschule (Diplom)"11"Andere" 
label values abschluss ABSCHLUSS

label define BRANCHE 1"gesetzgebende Körperschaft, Verwaltungsbedienstete und Führungskräfte" 2"Akademische Berufe/ Wissenschaftler"3"Techniker und gleichrangige nichttechnische Berufe"4"Bürokräfte und verwandte Berufe"5"Dienstleistungsberufe und Verkäufer"6"Fachkräfte in Land- und Forstwirtschaft und Fischerei"7"Handwerks- und verwandte Berufe"8"Bediener von Anlagen und Maschinen und Montageberufe"9"Hilfsarbeitskräfte"10"Angehörige der regulären Streitkräfte, Soldaten" 11"Andere"
label values branche BRANCHE

label define STELLUNG 1"Schüler/in"2"Student/in"3"Arbeiter/in"4"Beamte/r, Richter/in, Berufssoldat/in, Lehrer/in"5"Angestellte/r"9" Selbstständige/r, Freiberufliche/r"6"Rentner/in, Pensionär/in"7"nicht erwerbstätig"8"Andere"
label values stellung STELLUNG

label define INCOME 1"<450" 2"450-999"3"1000-1499"4"1500-1999"5"2000- 2499"6"2500- 2999"7"3000- 3499"8"3500- 3999"9"4000- 4499"10"4500- 4999"11"5000- 5499"12"5500- 5999"13">6000" 
label values income INCOME



*** Strings in numerischen Wert. Die folgenden Strings werden einzelnt encodet, damit sie als Wert erscheinen. Daraufhin können sie recodet werden und die einzelnen Stringangaben kategorisiert und je nachdem den bereits vorhandenen Variablen hinzugefügt werden.***

encode str_anderes_siegel, generate (str_anderes_siegel_num)
encode str_sf_u_and, generate(str_sf_u_and_num)
encode str_sf_o_and, generate(str_sf_o_and_num)
encode str_sf_inf_anders, generate(str_sf_inf_anders_num)
encode str_kh_e_and, generate(str_kh_e_and_num)
encode str_kh_k_and, generate(str_kh_k_and_num)
encode str_branche_and, generate(str_branche_and_num)
encode str_stellung, generate(str_stellung_num)

numlabel, add

** str_anderes_siegel_num **
tabulate str_anderes_siegel_num 
recode str_anderes_siegel_num (5=.) (8=.)
generate Fairtrade = str_anderes_siegel_num
recode Fairtrade (.=.) (1=1) (2=2) (3=2) (4=1) (6=1) (7=1) 
generate Wochenmarkt = str_anderes_siegel_num
recode Wochenmarkt(.=.) (1=1) (2=1) (3=1) (4=1) (6=2) (7=2)
generate andere_Siegel = str_anderes_siegel_num
recode andere_Siegel (.=.) (1=2) (4=2) (2=1) (3=1) (6=1) (7=1) 
label values Fairtrade Wochenmarkt andere_Siegel AUSWAHL


** str_sf_u_and_num **
tabulate str_sf_u_and_num
recode str_sf_u_and_num (6=.)

* verwandt 
generate sf_verwandt_u = str_sf_u_and_num 
recode sf_verwandt_u (1=2) (2=1) (3=1) (4=1) (5=1)
label values sf_verwandt_u AUSWAHL
generate SF_VERW_U = 1 if sf_verwandt_u==1 | sf_u_verw== 1
replace SF_VERW_U = 2  if sf_verwandt_u==2 | sf_u_verw==2
replace SF_VERW_U = . if sf_verwandt_u==. & sf_u_verw==.

* alleine
generate sf_alleine_u = str_sf_u_and_num
recode sf_alleine_u (.=.) (1=1) (2=1) (3=2) (4=1) (5=1)

* bekannte
generate sf_bekannt_u = str_sf_u_and_num
recode sf_bekannt_u (1=1) (2=1) (3=1) (4=2) (5=1)
label values sf_bekannt_u sf_u_bek AUSWAHL
generate SF_BEKA_U= 1 if sf_u_bek==1 | sf_bekannt_u==1
replace SF_BEKA_U = 2  if sf_u_bek==2 | sf_bekannt_u==2
replace SF_BEKA_U = . if sf_u_bek==. & sf_bekannt_u==.

* weitere Personen
generate sf_weit_pers_u = str_sf_u_and_num
recode sf_weit_pers_u (.=.) (1=1) (2=1) (3=1) (4=1) (5=2)
label values sf_u_pers sf_weit_pers_u AUSWAHL
generate SF_WEIT_PERS_U=1 if sf_weit_pers_u==1 | sf_u_pers==1
replace SF_WEIT_PERS_U=2 if sf_weit_pers_u==2 | sf_u_pers==2
replace SF_WEIT_PERS_U=. if sf_weit_pers_u==. & sf_u_pers==.
label values SF_VERW_U SF_BEKA_U sf_alleine_u SF_WEIT_PERS_U AUSWAHL


** str_sf_o_and_num ** 
tabulate str_sf_o_and_num

* restaurant
generate sf_o_restaurant = str_sf_o_and_num
recode sf_o_restaurant (.=.) (1=2) (2=2) (3=2) (4=1)

* zuhause
generate sf_zuhause_o = str_sf_o_and_num
recode sf_zuhause_o (.=.) (1=1) (2=1) (3=1) (4=2)
label values sf_zuhause_o AUSWAHL
generate SF_HOME_O = 1 if sf_zuhause_o==1 | sf_o_zuhaus==1
replace SF_HOME_O = 2 if sf_o_zuhaus==2 | sf_zuhause_o==2
replace SF_HOME_O =. if sf_o_zuhaus==. & sf_zuhause_o==.
label values SF_HOME_O sf_o_restaurant AUSWAHL


** str_sf_inf_anders_num **
tabulate str_sf_inf_anders_num 

* Lebensmittelerzeuger
generate sf_inf_marerz_n = str_sf_inf_anders_num
recode sf_inf_marerz_n (.=.) (1=1) (2=1) (3=1) (4=2)
label values sf_inf_marerz_n AUSWAHL
generate SF_INF_MARERZ = 1 if sf_inf_marerz_n==1 | sf_inf_marerz==1
replace SF_INF_MARERZ = 2 if sf_inf_marerz_n==2 | sf_inf_marerz==2
replace SF_INF_MARERZ =. if sf_inf_marerz_n==. & sf_inf_marerz==.

* Presse
generate sf_inf_pres = str_sf_inf_anders_num
recode sf_inf_pres (.=.) (1=2) (2=2) (3=2) (4=1)
label values sf_inf_pres AUSWAHL

* Massenmedien
generate SF_INF_MASMED = 1 if sf_inf_pres==1 | sf_inf_web==1
replace SF_INF_MASMED = 2 if sf_inf_pres==2 | sf_inf_web==2
replace SF_INF_MASMED = . if sf_inf_pres==. & sf_inf_web==.

label values SF_INF_MARERZ SF_INF_MASMED AUSWAHL


** str_kh_e_and_num **
tabulate str_kh_e_and_num

* Gemüsehändler
generate kh_e_GemHänd = str_kh_e_and_num
recode kh_e_GemHänd (.=.)(1=2)(2=2)(3=1)(4=2)(5=2)(6=1)(7=2)(8=2)(9=2)(10=2)(11=1)(12=2)(13=2)(14=2)(15=1)(16=1)(17=2)

* Foodsharing
generate kh_e_FoSha = str_kh_e_and_num
recode kh_e_FoSha (.=.) (1=1) (2=1) (3=1) (4=1) (5=1) (6=1) (7=1) (8=1) (9=1) (10=1) (11=2) (12=1)(13=1) (14=2) (15=1) (16=1) (17=1)

* Eigenanbau
generate kh_e_EigBau = str_kh_e_and_num
recode kh_e_EigBau(.=.)(1=1)(2=1)(3=1)(4=1)(5=1)(6=1)(7=1)(8=1)(9=1)(10=1)(11=1)(12=1)(13=1)(14=1)(15=1)(16=2)(17=1)

* Großhändler
generate kh_e_GroHänd = str_kh_e_and_num
recode kh_e_GroHänd (.=.) (1=1) (2=1) (3=1) (4=1) (5=1) (6=2) (7=1) (8=1) (9=1) (10=1) (11=1) (12=1)(13=1) (14=1) (15=1) (16=1) (17=1)

* Drogeriemarkt
generate kh_e_DrogMa = str_kh_e_and_num
recode kh_e_DrogMa(.=.) (1=1) (2=1) (3=2) (4=1) (5=1) (6=1) (7=1) (8=1) (9=1) (10=1) (11=1) (12=1)(13=1) (14=1) (15=1) (16=1) (17=1)

* Unverpacktladen
generate kh_e_UnVerPa = str_kh_e_and_num
recode kh_e_UnVerPa(.=.) (1=1) (2=1) (3=1) (4=1) (5=1) (6=1) (7=1) (8=1) (9=1) (10=1) (11=1) (12=1)(13=1) (14=1) (15=2) (16=1) (17=1)

label values kh_e_GemHänd kh_e_GemHänd kh_e_FoSha kh_e_EigBau kh_e_GroHänd kh_e_DrogMa kh_e_UnVerPa AUSWAHL


** str_kh_k_and_num**
tabulate str_kh_k_and_num

* sie bessere Inhaltsstoffe, weniger Chemikalien haben
generate kh_k_inhalt = str_kh_k_and_num
recode kh_k_inhalt (.=.)(1=2)(2=1)(3=2)(4=1)(5=1)(6=2)

* besser Umwelt
generate kh_k_umwelt =str_kh_k_and_num
recode kh_k_umwelt (.=.)(1=1)(2=2)(3=1)(4=1)(5=2)(6=1)

* politische Gründe
generate kh_k_politik = str_kh_k_and_num
recode kh_k_politik (.=.)(1=1)(2=1)(3=1)(4=2)(5=1)(6=1)

label values kh_k_inhalt kh_k_politik kh_k_umwelt AUSWAHL


** str_branche_and_num, die Recodierung wurde an der ISCO-08 Berufscodierung orientiert** 

tabulate str_branche_and_num 
recode str_branche_and_num (.=.) (1=5) (2=1) (3=.)(4=7)(5=2)(6=7)(7=7)(8=3)(9=5) (10=4)(11=4)(12=5)(13=5)(14=7)(15=5)(16=5)(17=7)(18=.)(19=5)(20=5) (21=5)(22=5) (23=2) (24=2)(25=5)(26=5)(27=3)(28=2)(29=2) (30=2) (31=2)(32=.)(33=.)(34=.) (35=5)(36=3) (37=4) (38=2) (39=2) (40=4)(41=4)(42=.)(43=5)(44=9)(45=2) (46=4)

label values str_branche_and_num BRANCHE
recode branche (11=.)

generate BRANCHE = 1 if branche ==1 | str_branche_and_num ==1
replace BRANCHE = 2 if branche ==2 | str_branche_and_num ==2
replace BRANCHE = 3 if branche ==3 | str_branche_and_num ==3
replace BRANCHE = 4 if branche ==4 | str_branche_and_num ==4
replace BRANCHE = 5 if branche ==5 | str_branche_and_num ==5
replace BRANCHE = 6 if branche ==6 | str_branche_and_num ==6
replace BRANCHE = 7 if branche ==7 | str_branche_and_num ==7
replace BRANCHE = 8 if branche ==8 | str_branche_and_num ==8
replace BRANCHE = 9 if branche ==9 | str_branche_and_num ==9
replace BRANCHE = . if branche ==. & str_branche_and_num ==.
label values BRANCHE BRANCHE
*1. BRANCHE = Variable; 2. BRANCHE = Labels


** str_stellung_num**
tabulate str_stellung_num
recode str_stellung_num (.=.) (1=6) (2=6) (3=1)
label values str_stellung_num STELLUNG
generate STELLUNG = 1 if stellung ==1 | str_stellung_num ==1
replace STELLUNG = 2 if stellung ==2 | str_stellung_num ==2
replace STELLUNG = 3 if stellung ==3 | str_stellung_num ==3
replace STELLUNG = 4 if stellung ==4 | str_stellung_num ==4
replace STELLUNG = 5 if stellung ==5 | str_stellung_num ==5
replace STELLUNG = 6 if stellung ==6 | str_stellung_num ==6
replace STELLUNG = 7 if stellung ==7 | str_stellung_num ==7
replace STELLUNG = 9 if stellung ==9 | str_stellung_num ==9
replace STELLUNG = . if stellung ==. & str_stellung_num ==.
label values STELLUNG STELLUNG
*1. STELLUNG = Variable; 2. STELLUNG = Labels

numlabel, remove


*** Erstellung neuer Variablen ***

*für Indexbildung des BS-Parts *

gen bs_gas_c = 1 if bs_gas == 2
replace bs_gas_c = 0 if bs_gas == 1

gen bs_pesti_c = 1 if bs_pesti == 1
replace bs_pesti_c = 0 if bs_pesti == 2 

gen bs_grundw_c = 1 if bs_grundw == 2
replace bs_grundw_c = 0 if bs_grundw == 1

gen bs_gas_regio_c = 1 if bs_gas_regio == 1
replace bs_gas_regio_c = 0 if bs_gas_regio == 2

gen bs_gas_saiso_c = 1 if bs_gas_saiso == 1
replace bs_gas_saiso_c = 0 if bs_gas_saiso == 2

gen bs_gas_nregio_c = 1 if bs_gas_nregio == 1
replace bs_gas_nregio_c = 0 if bs_gas_nregio == 2

gen bs_dünger_c = 1 if bs_dünger == 2
replace bs_dünger_c = 0 if bs_dünger == 1

gen bs_überd_c = 1 if bs_überd == 2
replace bs_überd_c = 0 if bs_überd == 1

gen bs_tier_c = 1 if bs_tier == 2
replace bs_tier_c = 0 if bs_tier == 1

gen BS_gas = bs_gas_c + bs_gas_regio_c + bs_gas_saiso_c + bs_gas_nregio_c + bs_tier_c


** Indexvariable BS_I **
* kann hier nicht auch die BS gas verwendet werden?
gen BS_I = bs_gas_c + bs_pesti_c + bs_grundw_c + bs_gas_regio_c + bs_gas_saiso_c + bs_gas_nregio_c + bs_dünger_c + bs_überd_c + bs_tier_c


*** überflüssige Variablen löschen ***
drop nation nation_deu nation_tür nation_pol nation_syr nation_rum nation_ita nation_kro nation_and 


*** Lebensmitteleigenschaften mit und ohne Gewichtung ***

** mit Gewichtung **
gen uv_le_regio_mg = uv_le_regio
gen uv_le_saiso_mg = uv_le_saiso
gen uv_le_pesti_mg = uv_le_pesti
gen uv_le_gas_mg = uv_le_gas 
gen uv_le_synthdü_mg = uv_le_synthdü
gen uv_le_überd_mg = uv_le_überd
gen uv_le_futterm_mg = uv_le_futterm
gen uv_le_fruchtf_mg = uv_le_fruchtf 
gen uv_le_gewächsh_mg = uv_le_gewächsh 
gen uv_le_günstig_mg = uv_le_günstig
gen uv_le_quanti_mg = uv_le_quanti 
gen uv_le_quali_mg = uv_le_quali 
gen uv_le_andere_mg = uv_le_andere

recode uv_le_regio_mg (.=0)(1= 1)(2=1) (3=1) (4=1) (5=1)
recode uv_le_saiso_mg (.=0) (1=2) (2=2) (3=2) (4=2) (5=2)
recode uv_le_pesti_mg (.=0) (1=3) (2=3) (3=3) (4=3) (5=3)
recode uv_le_gas_mg (.=0) (1=3) (2=3) (3=3) (4=3) (5=3)
recode uv_le_synthdü_mg (.=0) (1=2) (2=2) (3=2) (4=2) (5=2)
recode uv_le_überd_mg (.=0) (1=2) (2=2) (3=2) (4=2) (5=2)
recode uv_le_futterm_mg (.=0) (1=2) (2=2) (3=2) (4=2) (5=2)
recode uv_le_fruchtf_mg (.=0) (1=1) (2=1) (3=1) (4=2) (5=1)
recode uv_le_gewächsh_mg (.=0) (1=3) (2=3) (3=3) (4=3) (5=3)
recode uv_le_günstig_mg (.=0) (1=0) (2=0) (3=0) (4=0) (5=0)
recode uv_le_quanti_mg (.=0)(1=0) (2=0) (3=0) (4=0) (5=0)
recode uv_le_quali_mg (.=0)(1=0) (2=0) (3=0) (4=0) (5=0)
recode uv_le_andere_mg (.=0)(1=0) (2=0) (3=0) (4=0) (5=0)

gen uv_le_mg =  uv_le_regio_mg + uv_le_saiso_mg + uv_le_pesti_mg + uv_le_gas_mg + uv_le_synthdü_mg + uv_le_überd_mg + uv_le_futterm_mg + uv_le_fruchtf_mg + uv_le_gewächsh_mg + uv_le_günstig_mg + uv_le_quanti_mg + uv_le_quali_mg + uv_le_andere_mg

** ohne Gewichtung **
gen uv_le_regio_og = uv_le_regio
gen uv_le_saiso_og = uv_le_saiso
gen uv_le_pesti_og = uv_le_pesti
gen uv_le_gas_og = uv_le_gas 
gen uv_le_synthdü_og = uv_le_synthdü
gen uv_le_überd_og = uv_le_überd
gen uv_le_futterm_og = uv_le_futterm
gen uv_le_fruchtf_og = uv_le_fruchtf 
gen uv_le_gewächsh_og = uv_le_gewächsh 
gen uv_le_günstig_og = uv_le_günstig
gen uv_le_quanti_og = uv_le_quanti 
gen uv_le_quali_og = uv_le_quali 
gen uv_le_andere_og = uv_le_andere

recode uv_le_regio_og (.=0) (1= 1)(2=1) (3=1) (4=1) (5=1)
recode uv_le_saiso_og (.=0)(1=1) (2=1) (3=1) (4=1) (5=1)
recode uv_le_pesti_og (.=0)(1=1) (2=1) (3=1) (4=1) (5=1)
recode uv_le_gas_og (.=0)(1=1) (2=1) (3=1) (4=1) (5=1)
recode uv_le_synthdü_og (.=0)(1=1) (2=1) (3=1) (4=1) (5=1)
recode uv_le_überd_og (.=0)(1=1) (2=1) (3=1) (4=1) (5=1)
recode uv_le_futterm_og (.=0)(1=1) (2=1) (3=1) (4=1) (5=1)
recode uv_le_fruchtf_og (.=0)(1=1) (2=1) (3=1) (4=1) (5=1)
recode uv_le_gewächsh_og (.=0)(1=1) (2=1) (3=1) (4=1) (5=1)
recode uv_le_günstig_og (.=0)(1=0) (2=0) (3=0) (4=0) (5=0)
recode uv_le_quanti_og (.=0)(1=0) (2=0) (3=0) (4=0) (5=0)
recode uv_le_quali_og (.=0)(1=0) (2=0) (3=0) (4=0) (5=0)
recode uv_le_andere_og (.=0)(1=0) (2=0) (3=0) (4=0) (5=0)

gen uv_le_og= uv_le_regio_og + uv_le_saiso_og + uv_le_pesti_og + uv_le_gas_og + uv_le_synthdü_og + uv_le_überd_og + uv_le_futterm_og + uv_le_fruchtf_og + uv_le_gewächsh_og + uv_le_günstig_og + uv_le_quanti_og + uv_le_quali_og + uv_le_andere_og



*** Besprechung 29.06.2020 *** KEINE AHNUNG welcher Bezug das war? 
gen sf_u0 = (sf_u == 0)
gen uv_engage_häufig = (uv_engage == 1 2)
replace uv_engage_häufig = (uv_engage == 1 &2)
replace uv_engage_häufig = (uv_engage ==2)

gen uv_engage_häufigst = (uv_engage ==1)
gen uv_engage_viel = uv_engage_häufig + uv_engage_häufigst
gen mi_eng_true = (mi_eng == 1)
gen uv_vegetarier = (uv_fleisch == 1)
gen uv_veggie = (uv_vegetarisch ==1)
gen uv_vegan = uv_veggie + uv_vegetarier
gen uv_paläo = 1 if uv_veggie ==1 & uv_vegetarier >=1
replace uv_paläo = 1 if uv_veggie ==1 & uv_vegetarier !=1

gen stellung_student = (stellung == 1)
replace stellung_student = (stellung ==2)
gen stellung_selbst = (stellung == 9)
gen branche_akad = (branche==2)
gen branche_agrar = (branche == 6)
gen branche_führ = (branche ==1)
gen ehe = (familienstand == 3)


***  Mobilität ***
gen UVMOB = (uv_mob_bike + uv_mob_öpnv + uv_mob_auto)/3
replace UVMOB=round(UVMOB, 1.0)

*** Invertieren ***

gen UV_MOB_BIKE = uv_mob_bike *-1
gen UV_MOB_ÖPNV = uv_mob_öpnv *-1
gen UV_MOB_AUTO = uv_mob_auto *-1
gen UV_MOB = UVMOB *-1
gen UV_EEK = uv_eek *-1
gen UV_ECO = uv_eco *-1
gen UV_DONATE = uv_donate *-1
gen UV_ENGAGE = uv_engage *-1
gen UV_BIOLABEL = uv_biolabel *-1
gen UV_FLEISCH = uv_fleisch *-1
gen UV_VEGETARISCH = uv_vegetarisch *-1

gen UK_MOB = uk_mob *-1
gen UK_EEK = uk_eek *-1
gen UK_ECO = uk_eco *-1
gen UK_DONATE = uk_donate *-1
gen UK_ENGAGE = uk_engage *-1

gen AE_VERANTWORTUNG = ae_verantwortung *-1
gen AE_ROHSTOFFE = ae_rohstoffe *-1
gen AE_WACHSTUM = ae_wachstum *-1
gen AE_LEBENSSTANDARD = ae_lebensstandard *-1
gen AE_WIRTSCHAFTSWACHSTUM = ae_wirtschaftswachstum *-1

gen MI_ideen = mi_ideen *-1
gen MI_neustart= mi_neustart *-1
gen MI_umwprod = mi_umwprod *-1
gen MI_freimarkt = mi_freimarkt *-1
gen MI_zukunft = mi_zukunft *-1
gen MI_neukultur = mi_neukultur *-1
gen MI_chancen = mi_chancen *-1
gen MI_familie= mi_familie*-1
gen MI_gleich= mi_gleich *-1
gen MI_quali = mi_quali *-1
gen MI_plural = mi_plural *-1
gen MI_probleme = mi_probleme*-1
gen MI_karriere= mi_karriere *-1
gen MI_engage = mi_engage *-1
gen MI_wachst = mi_wachst *-1
gen MI_wohl = mi_wohl *-1
gen MI_abrutsch= mi_abrutsch *-1




*** Kategorisierung der Kaufhäufigkeit eines Gütesiegels***
gen wenigbio = uv_biolabel
recode wenigbio (1=1) (2=1) (3=0) (4=0) (5=0) 
gen gelegbio = uv_biolabel
recode gelegbio (1=0) (2=0) (3=1) (4=0) (5=0)
gen vielbio = uv_biolabel
recode vielbio (1=0) (2=0) (3=0) (4=1) (5=1)

*** Dummies ***
** Produkteigenschaften **
gen uv_le_günstig_OG = uv_le_günstig
recode uv_le_günstig_OG (.=0)(1=1) (2=1) (3=1) (4=1) (5=1)
gen uv_le_quali_OG = uv_le_quali
recode uv_le_quali_OG (.=0)(1=1) (2=1) (3=1) (4=1) (5=1)
gen uv_le_quanti_OG = uv_le_quanti
recode uv_le_quanti_OG (.=0)(1=1) (2=1) (3=1) (4=1) (5=1)
gen uv_le_andere_OG = uv_le_andere
recode uv_le_andere_OG (.=0)(1=1) (2=1) (3=1) (4=1) (5=1)

** Alter **
gen bis18 = age
recode bis18 (1=1) (2=0) (3=0) (4=0) (5=0) (6=0) (7=0) (8=0)
gen bis25 = age
recode bis25 (1=0) (2=1) (3=0) (4=0) (5=0) (6=0) (7=0) (8=0)
gen bis35 = age
recode bis35 (1=0) (2=0) (3=1) (4=0) (5=0) (6=0) (7=0) (8=0)
gen bis45 =age
recode bis45 (1=0) (2=0) (3=0) (4=1) (5=0) (6=0) (7=0) (8=0)
gen bis55 = age
recode bis55 (1=0) (2=0) (3=0) (4=0) (5=1) (6=0) (7=0) (8=0)
gen bis65 = age
recode bis65 (1=0) (2=0) (3=0) (4=0) (5=0) (6=1) (7=0) (8=0)
gen bis75 =age
recode bis75 (1=0) (2=0) (3=0) (4=0) (5=0) (6=0) (7=1) (8=0)
gen bis85 = age
recode bis85 (1=0) (2=0) (3=0) (4=0) (5=0) (6=0) (7=0) (8=1)


** Einkommmen

gen income450 = income
recode income450 (1=1) (2=0) (3=0) (4=0) (5=0) (6=0) (7=0) (8=0) (9=0) (10=0) (11=0) (12=0) (13=0)

gen income1000 = income
recode income1000 (1=0) (2=1) (3=0) (4=0) (5=0) (6=0) (7=0) (8=0) (9=0) (10=0) (11=0) (12=0) (13=0)

gen income1500 = income
recode income1500 (1=0) (2=0) (3=1) (4=0) (5=0) (6=0) (7=0) (8=0) (9=0) (10=0) (11=0) (12=0) (13=0)

gen income2000 = income
recode income2000 (1=0) (2=0) (3=0) (4=1) (5=0) (6=0) (7=0) (8=0) (9=0) (10=0) (11=0) (12=0) (13=0)

gen income2500 = income
recode income2500 (1=0) (2=0) (3=0) (4=0) (5=1) (6=0) (7=0) (8=0) (9=0) (10=0) (11=0) (12=0) (13=0)

gen income3000 = income
recode income3000 (1=0) (2=0) (3=0) (4=0) (5=0) (6=1) (7=0) (8=0) (9=0) (10=0) (11=0) (12=0) (13=0)

gen income3500 = income
recode income3500 (1=0) (2=0) (3=0) (4=0) (5=0) (6=0) (7=1) (8=0) (9=0) (10=0) (11=0) (12=0) (13=0)

gen income4000 = income
recode income4000 (1=0) (2=0) (3=0) (4=0) (5=0) (6=0) (7=0) (8=1) (9=0) (10=0) (11=0) (12=0) (13=0)

gen income4500 = income
recode income4500  (1=0) (2=0) (3=0) (4=0) (5=0) (6=0) (7=0) (8=0) (9=1) (10=0) (11=0) (12=0) (13=0)

gen income5000 = income
recode income5000  (1=0) (2=0) (3=0) (4=0) (5=0) (6=0) (7=0) (8=0) (9=0) (10=1) (11=0) (12=0) (13=0)

gen income5500 = income
recode income5500 (1=0) (2=0) (3=0) (4=0) (5=0) (6=0) (7=0) (8=0) (9=0) (10=0) (11=1) (12=0) (13=0)

gen income6000 = income
recode income6000 (1=0) (2=0) (3=0) (4=0) (5=0) (6=0) (7=0) (8=0) (9=0) (10=0) (11=0) (12=1) (13=0)

gen income6500 = income
recode income6500 (1=0) (2=0) (3=0) (4=0) (5=0) (6=0) (7=0) (8=0) (9=0) (10=0) (11=0) (12=0) (13=1)


** sex
 gen m_sex = sex
 recode m_sex (1=1) (2=0) (3=0)
 gen w_sex = sex
 recode w_sex (1=0) (2=1) (3=0)
 gen d_sex =sex
 recode d_sex (1=0) (2=0) (3=1)
 
** familienstand 
 gen ledig = familienstand
 recode ledig (1=1) (2=0) (3=0) (4=0) (5=0) (6=0)
 gen partner = familienstand
 recode partner (1=0) (2=1) (3=0) (4=0) (5=0) (6=0)
 gen EHE = familienstand
 recode EHE (1=0) (2=0) (3=1) (4=0) (5=0) (6=0)
 gen ehegetrennt = familienstand
 recode ehegetrennt (1=0) (2=0) (3=0) (4=1) (5=0) (6=0)
 gen geschieden= familienstand
 recode geschieden (1=0) (2=0) (3=0) (4=0) (5=1) (6=0)
 gen verwitwet = familienstand
 recode verwitwet (1=0) (2=0) (3=0) (4=0) (5=0) (6=1)
 
** abschluss
gen haupt_abschluss = abschluss
recode haupt_abschluss (1=1) (2=0) (3=0) (4=0) (5=0) (6=0) (7=0) (8=0) (9=0) (10=0) (11=0) 
gen mr_abschluss = abschluss
recode mr_abschluss (1=0) (2=1) (3=0) (4=0) (5=0) (6=0) (7=0) (8=0) (9=0) (10=0) (11=0) 
gen fhr_abschluss = abschluss
recode fhr_abschluss (1=0) (2=0) (3=1) (4=0) (5=0) (6=0) (7=0) (8=0) (9=0) (10=0) (11=0) 
gen inAusbild_abschluss = abschluss
recode inAusbild_abschluss (1=0) (2=0) (3=0) (4=1) (5=0) (6=0) (7=0) (8=0) (9=0) (10=0) (11=0) 
gen abAusbild_abschluss = abschluss
recode abAusbild_abschluss (1=0) (2=0) (3=0) (4=0) (5=1) (6=0) (7=0) (8=0) (9=0) (10=0) (11=0) 
gen Fachabi_abschluss = abschluss
recode Fachabi_abschluss (1=0) (2=0) (3=0) (4=0) (5=0) (6=1) (7=0) (8=0) (9=0) (10=0) (11=0) 
gen ba_abschluss = abschluss
recode ba_abschluss (1=0) (2=0) (3=0) (4=0) (5=0) (6=0) (7=1) (8=0) (9=0) (10=0) (11=0)
gen ma_abschluss = abschluss
recode ma_abschluss (1=0) (2=0) (3=0) (4=0) (5=0) (6=0) (7=0) (8=1) (9=0) (10=0) (11=0) 
gen dr_abschluss = abschluss
recode dr_abschluss (1=0) (2=0) (3=0) (4=0) (5=0) (6=0) (7=0) (8=0) (9=1) (10=0) (11=0) 
gen dip_abschluss = abschluss
recode dip_abschluss (1=0) (2=0) (3=0) (4=0) (5=0) (6=0) (7=0) (8=0) (9=0) (10=1) (11=0) 
gen abi_abschluss = abschluss
recode abi_abschluss (1=0) (2=0) (3=0) (4=0) (5=0) (6=0) (7=0) (8=0) (9=0) (10=0) (11=1)
 
** BRANCHE nach ISCO-08 Berufscodierung
gen  ISCO1 = BRANCHE
 recode ISCO1 (1=1) (2=0) (3=0) (4=0) (5=0) (6=0) (7=0) (8=0) (9=0)
gen ISCO2 = BRANCHE
 recode ISCO2 (1=0) (2=1) (3=0) (4=0) (5=0) (6=0) (7=0) (8=0) (9=0)
 gen  ISCO3 = BRANCHE
 recode ISCO3 (1=0) (2=0) (3=1) (4=0) (5=0) (6=0) (7=0) (8=0) (9=0)
gen ISCO4 = BRANCHE
 recode ISCO4 (1=0) (2=0) (3=0) (4=1) (5=0) (6=0) (7=0) (8=0) (9=0)
gen  ISCO5 = BRANCHE
 recode ISCO5 (1=0) (2=0) (3=0) (4=0) (5=1) (6=0) (7=0) (8=0) (9=0)
gen ISCO6 = BRANCHE
 recode ISCO6 (1=0) (2=0) (3=0) (4=0) (5=0) (6=1) (7=0) (8=0) (9=0)
gen  ISCO7 = BRANCHE
 recode ISCO7 (1=0) (2=0) (3=0) (4=0) (5=0) (6=0) (7=1) (8=0) (9=0)
gen ISCO8 = BRANCHE
 recode ISCO8 (1=0) (2=0) (3=0) (4=0) (5=0) (6=0) (7=0) (8=1) (9=0) 
gen ISCO9 = BRANCHE
 recode ISCO9 (1=0) (2=0) (3=0) (4=0) (5=0) (6=0) (7=0) (8=0) (9=1) 
 
** STELLUNG
gen Schüler = STELLUNG
recode Schüler (1=1) (2=0) (3=0) (4=0) (5=0) (6=0) (7=0)
gen Student = STELLUNG
recode Student (1=0) (2=1) (3=0) (4=0) (5=0) (6=0) (7=0)
gen Arbeiter = STELLUNG
recode Arbeiter (1=0) (2=0) (3=1) (4=0) (5=0) (6=0) (7=0)
gen Beamte = STELLUNG
recode Beamte (1=0) (2=0) (3=0) (4=1) (5=0) (6=0) (7=0)
gen Pension = STELLUNG
recode Pension (1=0) (2=0) (3=0) (4=0) (5=1) (6=0) (7=0)
gen arbeitslos = STELLUNG
recode arbeitslos (1=0) (2=0) (3=0) (4=0) (5=0) (6=1) (7=0)
gen selbstständig = STELLUNG
recode selbstständig (1=0) (2=0) (3=0) (4=0) (5=0) (6=0) (7=1)


*** UMWELTVERHALTEN *** 

gen UV = UV_MOB + UV_EEK + UV_ECO + UV_DONATE + UV_ENGAGE
gen UVPLUS = UV_MOB + UV_EEK + UV_ECO + UV_DONATE + UV_ENGAGE + UV_FLEISCH + UV_VEGETARISCH 


*** UMWELTKOGNITION ***
gen UK = UK_MOB + UK_EEK + UK_ECO + UK_DONATE + UK_ENGAGE
gen UKPLUS = UK_MOB + UK_EEK + UK_ECO + UK_DONATE + UK_ENGAGE


*** ALLGEMEINE EINSTELLUNG ***
gen AEPLUS =  AE_VERANTWORTUNG + AE_ROHSTOFFE + AE_WACHSTUM + AE_LEBENSSTANDARD + AE_WIRTSCHAFTSWACHSTUM

gen UKAEPLUS = UKPLUS + AEPLUS

*** Attitude Behaviour Gap***
gen UV_I = UV/5
gen UK_I = UK/5
gen UVPLUS_I = UVPLUS/7
gen UKPLUS_I = UKPLUS/5
gen AEPLUS_I = AEPLUS/5
gen UKAEPLUS_I = UKAEPLUS/10
gen ABGPLUS = UKAEPLUS_I - UVPLUS_I
gen ABG = UK_I - UV_I

*** Wahlgrundvariablen aus Konsum ***


gen kh_k_gesund_i = 1 if kh_k_gesund == 2 & vielbio ==1
replace kh_k_gesund_i = 0 if kh_k_gesund != 2 & vielbio == 1

gen kh_k_umf_i = 1 if kh_k_umf == 2 & vielbio ==1
replace kh_k_umf_i = 0 if kh_k_umf != 2 & vielbio == 1

gen kh_k_gefühl_i = 1 if kh_k_gefühl == 2 & vielbio ==1
replace kh_k_gefühl_i = 0 if kh_k_gefühl != 2 & vielbio == 1

gen kh_k_geschmack_i = 1 if kh_k_geschmack == 2 & vielbio ==1
replace kh_k_geschmack_i = 0 if kh_k_geschmack != 2 & vielbio == 1

gen kh_k_tierh_i = 1 if kh_k_tierh == 2 & vielbio ==1
replace kh_k_tierh_i= 0 if kh_k_tierh != 2 & vielbio == 1

gen kh_k_nachh_i = 1 if kh_k_nachh == 2 & vielbio ==1
replace kh_k_nachh_i= 0 if kh_k_nachh != 2 & vielbio == 1

gen kh_k_alltag_i = 1 if kh_k_alltag == 2 & vielbio ==1
replace kh_k_alltag_i = 0 if kh_k_alltag != 2 & vielbio == 1

gen kh_k_and_i = 1 if kh_k_and == 2 & vielbio ==1
replace kh_k_and_i = 0 if kh_k_and != 2 & vielbio == 1


*** vielbio --> Lebensmitteleigenschaften ***


gen uv_le_gas_i = 5 if uv_le_gas == 1 & vielbio ==1
replace uv_le_gas_i = 4 if uv_le_gas == 2 & vielbio ==1
replace uv_le_gas_i = 3 if uv_le_gas == 3 & vielbio ==1
replace uv_le_gas_i = 2 if uv_le_gas == 4 & vielbio ==1
replace uv_le_gas_i = 1 if uv_le_gas == 5 & vielbio ==1
replace uv_le_gas_i = 0 if uv_le_gas== . & vielbio ==1

gen uv_le_pesti_i = 5 if uv_le_pesti == 1 & vielbio ==1
replace uv_le_pesti_i = 4 if uv_le_pesti == 2 & vielbio ==1
replace uv_le_pesti_i = 3 if uv_le_pesti == 3 & vielbio ==1
replace uv_le_pesti_i = 2 if uv_le_pesti == 4 & vielbio ==1
replace uv_le_pesti_i = 1 if uv_le_pesti == 5 & vielbio ==1
replace uv_le_pesti_i = 0 if uv_le_pesti== . & vielbio ==1

gen uv_le_synthdü_i = 5 if uv_le_synthdü == 1 & vielbio ==1
replace uv_le_synthdü_i = 4 if uv_le_synthdü == 2 & vielbio ==1
replace uv_le_synthdü_i = 3 if uv_le_synthdü == 3 & vielbio ==1
replace uv_le_synthdü_i = 2 if uv_le_synthdü == 4 & vielbio ==1
replace uv_le_synthdü_i = 1 if uv_le_synthdü == 5 & vielbio ==1
replace uv_le_synthdü_i = 0 if uv_le_synthdü== . & vielbio ==1

gen uv_le_überd_i = 5 if uv_le_überd== 1 & vielbio ==1
replace uv_le_überd_i = 4 if uv_le_überd== 2 & vielbio ==1
replace uv_le_überd_i = 3 if uv_le_überd== 3 & vielbio ==1
replace uv_le_überd_i = 2 if uv_le_überd== 4 & vielbio ==1
replace uv_le_überd_i = 1 if uv_le_überd== 5 & vielbio ==1
replace uv_le_überd_i = 0 if uv_le_überd== . & vielbio ==1

gen uv_le_quali_i = 5 if uv_le_quali== 1 & vielbio ==1
replace uv_le_quali_i = 4 if uv_le_quali== 2 & vielbio ==1
replace uv_le_quali_i = 3 if uv_le_quali== 3 & vielbio ==1
replace uv_le_quali_i = 2 if uv_le_quali== 4 & vielbio ==1
replace uv_le_quali_i = 1 if uv_le_quali== 5 & vielbio ==1
replace uv_le_quali_i = 0 if uv_le_quali== . & vielbio ==1


gen uv_le_günstig_i = 5 if uv_le_günstig== 1 & vielbio ==1
replace uv_le_günstig_i = 4 if uv_le_günstig== 2 & vielbio ==1
replace uv_le_günstig_i = 3 if uv_le_günstig== 3 & vielbio ==1
replace uv_le_günstig_i = 2 if uv_le_günstig== 4 & vielbio ==1
replace uv_le_günstig_i = 1 if uv_le_günstig== 5 & vielbio ==1
replace uv_le_günstig_i = 0 if uv_le_günstig== . & vielbio ==1

gen uv_le_regio_i = 5 if uv_le_regio == 1 & vielbio==1
replace uv_le_regio_i = 4 if uv_le_regio == 2 & vielbio==1
replace uv_le_regio_i = 3 if uv_le_regio == 3 & vielbio==1
replace uv_le_regio_i = 2 if uv_le_regio == 4 & vielbio==1
replace uv_le_regio_i = 1 if uv_le_regio == 5 & vielbio==1
replace uv_le_regio_i = 0 if uv_le_regio == . & vielbio==1

gen uv_le_saiso_i = 5 if uv_le_saiso == 1 & vielbio==1
replace uv_le_saiso_i = 4 if uv_le_saiso == 2 & vielbio==1
replace uv_le_saiso_i = 3 if uv_le_saiso == 3 & vielbio==1
replace uv_le_saiso_i = 2 if uv_le_saiso == 4 & vielbio==1
replace uv_le_saiso_i = 1 if uv_le_saiso == 5 & vielbio==1
replace uv_le_saiso_i = 0 if uv_le_saiso == . & vielbio==1

gen uv_le_futterm_i = 5 if uv_le_futterm == 1 & vielbio==1
replace uv_le_futterm_i = 4 if uv_le_futterm == 2 & vielbio==1
replace uv_le_futterm_i = 3 if uv_le_futterm == 3 & vielbio==1
replace uv_le_futterm_i = 2 if uv_le_futterm == 4 & vielbio==1
replace uv_le_futterm_i = 1 if uv_le_futterm == 5 & vielbio==1
replace uv_le_futterm_i = 0 if uv_le_futterm == . & vielbio==1


gen uv_le_gewächsh_i  = 5 if uv_le_gewächsh == 1 & vielbio==1
replace uv_le_gewächsh_i  = 4 if uv_le_gewächsh == 2 & vielbio==1
replace uv_le_gewächsh_i  = 3 if uv_le_gewächsh == 3 & vielbio==1
replace uv_le_gewächsh_i  = 2 if uv_le_gewächsh == 4 & vielbio==1
replace uv_le_gewächsh_i  = 1 if uv_le_gewächsh == 5 & vielbio==1
replace uv_le_gewächsh_i  = 0 if uv_le_gewächsh == . & vielbio==1

gen uv_le_quanti_i = 5 if uv_le_gewächsh == 1 & vielbio==1
replace uv_le_quanti_i = 4 if uv_le_gewächsh == 2 & vielbio==1
replace uv_le_quanti_i = 3 if uv_le_gewächsh == 3 & vielbio==1
replace uv_le_quanti_i = 2 if uv_le_gewächsh == 4 & vielbio==1
replace uv_le_quanti_i = 1 if uv_le_gewächsh == 5 & vielbio==1
replace uv_le_quanti_i = 0 if uv_le_gewächsh == . & vielbio==1


*** Das selbe für Konsumentscheidungen

gen kh_ke_preis_i = 5 if kh_ke_preis == 1 & vielbio ==1
replace kh_ke_preis_i = 4 if kh_ke_preis == 2 & vielbio ==1
replace kh_ke_preis_i = 3 if kh_ke_preis == 3 & vielbio ==1
replace kh_ke_preis_i = 2 if kh_ke_preis == 4 & vielbio ==1
replace kh_ke_preis_i = 1 if kh_ke_preis == 5 & vielbio ==1
replace kh_ke_preis_i = 0 if kh_ke_preis== . & vielbio ==1 

gen kh_ke_pack_i = 5 if kh_ke_pack == 1 & vielbio ==1
replace kh_ke_pack_i = 4 if kh_ke_pack == 2 & vielbio ==1
replace kh_ke_pack_i = 3 if kh_ke_pack == 3 & vielbio ==1
replace kh_ke_pack_i = 2 if kh_ke_pack == 4 & vielbio ==1
replace kh_ke_pack_i = 1 if kh_ke_pack == 5 & vielbio ==1
replace kh_ke_pack_i = 0 if kh_ke_pack== . & vielbio ==1 

gen kh_ke_design_i = 5 if kh_ke_design == 1 & vielbio ==1
replace kh_ke_design_i = 4 if kh_ke_design == 2 & vielbio ==1
replace kh_ke_design_i = 3 if kh_ke_design == 3 & vielbio ==1
replace kh_ke_design_i = 2 if kh_ke_design == 4 & vielbio ==1
replace kh_ke_design_i = 1 if kh_ke_design == 5 & vielbio ==1
replace kh_ke_design_i = 0 if kh_ke_design== . & vielbio ==1 

gen kh_ke_label_i = 5 if kh_ke_label == 1 & vielbio ==1
replace kh_ke_label_i = 4 if kh_ke_label == 2 & vielbio ==1
replace kh_ke_label_i = 3 if kh_ke_label == 3 & vielbio ==1
replace kh_ke_label_i = 2 if kh_ke_label == 4 & vielbio ==1
replace kh_ke_label_i = 1 if kh_ke_label == 5 & vielbio ==1
replace kh_ke_label_i = 0 if kh_ke_label== . & vielbio ==1 

gen kh_ke_kaufsit_i = 5 if kh_ke_kaufsit == 1 & vielbio ==1
replace kh_ke_kaufsit_i = 4 if kh_ke_kaufsit == 2 & vielbio ==1
replace kh_ke_kaufsit_i = 3 if kh_ke_kaufsit == 3 & vielbio ==1
replace kh_ke_kaufsit_i = 2 if kh_ke_kaufsit == 4 & vielbio ==1
replace kh_ke_kaufsit_i = 1 if kh_ke_kaufsit == 5 & vielbio ==1
replace kh_ke_kaufsit_i = 0 if kh_ke_kaufsit == . & vielbio ==1
 
gen kh_ke_botsch_i = 5 if kh_ke_botsch == 1 & vielbio ==1
replace kh_ke_botsch_i = 4 if kh_ke_botsch == 2 & vielbio ==1
replace kh_ke_botsch_i = 3 if kh_ke_botsch == 3 & vielbio ==1
replace kh_ke_botsch_i = 2 if kh_ke_botsch == 4 & vielbio ==1
replace kh_ke_botsch_i = 1 if kh_ke_botsch == 5 & vielbio ==1
replace kh_ke_botsch_i = 0 if kh_ke_botsch == . & vielbio ==1 

gen kh_ke_unt_i = 5 if kh_ke_unt == 1 & vielbio ==1
replace kh_ke_unt_i = 4 if kh_ke_unt == 2 & vielbio ==1
replace kh_ke_unt_i = 3 if kh_ke_unt == 3 & vielbio ==1
replace kh_ke_unt_i = 2 if kh_ke_unt == 4 & vielbio ==1
replace kh_ke_unt_i = 1 if kh_ke_unt == 5 & vielbio ==1
replace kh_ke_unt_i = 0 if kh_ke_unt == . & vielbio ==1 

gen kh_ke_marke_i = 5 if kh_ke_marke == 1 & vielbio ==1
replace kh_ke_marke_i = 4 if kh_ke_marke == 2 & vielbio ==1
replace kh_ke_marke_i = 3 if kh_ke_marke == 3 & vielbio ==1
replace kh_ke_marke_i = 2 if kh_ke_marke == 4 & vielbio ==1
replace kh_ke_marke_i = 1 if kh_ke_marke == 5 & vielbio ==1
replace kh_ke_marke_i = 0 if kh_ke_marke == . & vielbio ==1 

gen kh_ke_angebot_i = 5 if kh_ke_angebot == 1 & vielbio ==1
replace kh_ke_angebot_i = 4 if kh_ke_angebot == 2 & vielbio ==1
replace kh_ke_angebot_i = 3 if kh_ke_angebot == 3 & vielbio ==1
replace kh_ke_angebot_i = 2 if kh_ke_angebot == 4 & vielbio ==1
replace kh_ke_angebot_i = 1 if kh_ke_angebot == 5 & vielbio ==1
replace kh_ke_angebot_i = 0 if kh_ke_angebot== . & vielbio ==1 

gen kh_ke_quali_i = 5 if kh_ke_quali == 1 & vielbio ==1
replace kh_ke_quali_i = 4 if kh_ke_quali == 2 & vielbio ==1
replace kh_ke_quali_i = 3 if kh_ke_quali == 3 & vielbio ==1
replace kh_ke_quali_i = 2 if kh_ke_quali == 4 & vielbio ==1
replace kh_ke_quali_i = 1 if kh_ke_quali == 5 & vielbio ==1
replace kh_ke_quali_i = 0 if kh_ke_quali == . & vielbio ==1 

gen kh_ke_herkunft_i = 5 if kh_ke_herkunft == 1 & vielbio ==1
replace kh_ke_herkunft_i = 4 if kh_ke_herkunft == 2 & vielbio ==1
replace kh_ke_herkunft_i = 3 if kh_ke_herkunft == 3 & vielbio ==1
replace kh_ke_herkunft_i = 2 if kh_ke_herkunft == 4 & vielbio ==1
replace kh_ke_herkunft_i = 1 if kh_ke_herkunft == 5 & vielbio ==1
replace kh_ke_herkunft_i = 0 if kh_ke_herkunft== . & vielbio ==1 

sum kh_ke_preis_i kh_ke_pack_i kh_ke_design_i kh_ke_label_i kh_ke_kaufsit_i kh_ke_botsch_i  kh_ke_unt_i kh_ke_marke_i kh_ke_angebot kh_ke_quali_i kh_ke_herkunft_i

*** Dummy-Variable für H3 ***

gen vielbio_nachh = 1 if vielbio == 1 & kh_k_nachh == 2 
replace vielbio_nachh = 0 if vielbio == 1 & kh_k_nachh != 2

*** Template für H3 ***

gen bs_gas_e = uv_le_gas_i if bs_gas == 2
replace bs_gas_e = 0 if bs_gas == 1

gen bs_pesti_e = uv_le_pesti_i if bs_pesti == 1
replace bs_pesti_e = 0 if bs_pesti == 2

gen bs_dünger_e = uv_le_synthdü_i if bs_dünger == 2
replace bs_dünger_e = 0 if bs_dünger == 1

gen bs_überd_e = uv_le_überd_i if bs_überd == 2
replace bs_überd_e = 0 if bs_überd == 1

gen sum_gas = bs_gas_e - uv_le_gas_i
gen sum_gas_i = uv_le_gas_i if sum_gas == 0 & vielbio ==1
replace sum_gas_i = -1*uv_le_gas_i if sum_gas != 0 & vielbio ==1

gen sum_pesti = bs_pesti_e - uv_le_pesti_i
gen sum_pesti_i = uv_le_pesti_i if sum_pesti == 0 & vielbio ==1
replace sum_pesti_i = -1*uv_le_pesti_i if sum_pesti != 0 & vielbio ==1

gen sum_dünger = bs_dünger_e - uv_le_synthdü_i
gen sum_dünger_i = uv_le_synthdü_i if sum_dünger == 0 & vielbio ==1
replace sum_dünger_i = -1*uv_le_synthdü_i if sum_dünger != 0 & vielbio ==1

gen sum_überd = bs_überd_e - uv_le_überd_i
gen sum_überd_i = uv_le_überd_i if sum_überd == 0 & vielbio ==1
replace sum_überd_i = -1*uv_le_überd_i if sum_überd != 0 & vielbio ==1

gen sum_bs = sum_gas_i+sum_pesti_i+sum_dünger_i+sum_überd_i if vielbio_nachh ==1
replace sum_bs = . if vielbio_nachh !=1

**-------------------------------------------------------------------------------






















