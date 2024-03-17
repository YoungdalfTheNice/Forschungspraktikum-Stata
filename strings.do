*** Strings in Numerischen Wert ***


** tabulate str_anderes_siegel_num**
** numlabel, add . Es werden die Numerischen Werte in einer Tabelle mit angezeigt!**  

encode str_anderes_siegel, generate (str_anderes_siegel_num)
encode str_sf_u_and, generate(str_sf_u_and_num)
encode str_sf_o_and, generate(str_sf_o_and_num)
encode str_sf_inf_anders, generate(str_sf_inf_anders_num)
encode str_kh_e_and, generate(str_kh_e_and_num)
encode str_kh_k_and, generate(str_kh_k_and_num)
encode str_branche_and, generate(str_branche_and_num)
encode str_stellung, generate(str_stellung_num)

*Add Numlabel

numlabel, add


*** str_anderes_siegel_num ***

tabulate str_anderes_siegel_num 
recode str_anderes_siegel_num (5=.) (8=.)

generate Fairtrade = str_anderes_siegel_num
recode Fairtrade (.=.) (1=1) (2=2) (3=2) (4=1) (6=1) (7=1) 

generate Wochenmarkt = str_anderes_siegel_num
recode Wochenmarkt(.=.) (1=1) (2=1) (3=1) (4=1) (6=2) (7=2)

generate andere_Siegel = str_anderes_siegel_num
recode andere_Siegel (.=.) (1=2) (4=2) (2=1) (3=1) (6=1) (7=1) 

label values Fairtrade Wochenmarkt andere_Siegel AUSWAHL


*** str_sf_u_and_num ***

tabulate str_sf_u_and_num
recode str_sf_u_and_num (6=.)

**Verwandt 
generate sf_verwandt_u = str_sf_u_and_num 
recode sf_verwandt_u (1=2) (2=1) (3=1) (4=1) (5=1)
label values sf_verwandt_u AUSWAHL
generate SF_VERW_U = 1 if sf_verwandt_u==1 | sf_u_verw== 1
replace SF_VERW_U = 2  if sf_verwandt_u==2 | sf_u_verw==2
replace SF_VERW_U = . if sf_verwandt_u==. & sf_u_verw==.


**Alleine
generate sf_alleine_u = str_sf_u_and_num
recode sf_alleine_u (.=.) (1=1) (2=1) (3=2) (4=1) (5=1)

**Bekannte
generate sf_bekannt_u = str_sf_u_and_num
recode sf_bekannt_u (1=1) (2=1) (3=1) (4=2) (5=1)
label values sf_bekannt_u sf_u_bek AUSWAHL
generate SF_BEKA_U= 1 if sf_u_bek==1 | sf_bekannt_u==1
replace SF_BEKA_U = 2  if sf_u_bek==2 | sf_bekannt_u==2
replace SF_BEKA_U = . if sf_u_bek==. & sf_bekannt_u==.

**weitere Personen
generate sf_weit_pers_u = str_sf_u_and_num
recode sf_weit_pers_u (.=.) (1=1) (2=1) (3=1) (4=1) (5=2)
label values sf_u_pers sf_weit_pers_u AUSWAHL
generate SF_WEIT_PERS_U=1 if sf_weit_pers_u==1 | sf_u_pers==1
replace SF_WEIT_PERS_U=2 if sf_weit_pers_u==2 | sf_u_pers==2
replace SF_WEIT_PERS_U=. if sf_weit_pers_u==. & sf_u_pers==.

label values SF_VERW_U SF_BEKA_U sf_alleine_u SF_WEIT_PERS_U AUSWAHL

*** man könnte die überflüssigen Variablen jetzt auch noch löschen
*drop sf_verwandt_u sf_bekannt_u sf_weit_pers_u sf_u_bek sf_u_pers sf_u_verw

*** str_sf_o_and_num *** 
tabulate str_sf_o_and_num

*restaurant
generate sf_o_restaurant = str_sf_o_and_num
recode sf_o_restaurant (.=.) (1=2) (2=2) (3=2) (4=1)

*zuhause
generate sf_zuhause_o = str_sf_o_and_num
recode sf_zuhause_o (.=.) (1=1) (2=1) (3=1) (4=2)
label values sf_zuhause_o AUSWAHL
generate SF_HOME_O = 1 if sf_zuhause_o==1 | sf_o_zuhaus==1
replace SF_HOME_O = 2 if sf_o_zuhaus==2 | sf_zuhause_o==2
replace SF_HOME_O =. if sf_o_zuhaus==. & sf_zuhause_o==.

label values SF_HOME_O sf_o_restaurant AUSWAHL

*drop sf_zuhause_o

*** str_sf_inf_anders_num ***

tabulate str_sf_inf_anders_num 


*Lebensmittelerzeuger
generate sf_inf_marerz_n = str_sf_inf_anders_num
recode sf_inf_marerz_n (.=.) (1=1) (2=1) (3=1) (4=2)
label values sf_inf_marerz_n AUSWAHL
generate SF_INF_MARERZ = 1 if sf_inf_marerz_n==1 | sf_inf_marerz==1
replace SF_INF_MARERZ = 2 if sf_inf_marerz_n==2 | sf_inf_marerz==2
replace SF_INF_MARERZ =. if sf_inf_marerz_n==. & sf_inf_marerz==.

*Presse
generate sf_inf_pres = str_sf_inf_anders_num
recode sf_inf_pres (.=.) (1=2) (2=2) (3=2) (4=1)
label values sf_inf_pres AUSWAHL

*Massenmedien
generate SF_INF_MASMED = 1 if sf_inf_pres==1 | sf_inf_web==1
replace SF_INF_MASMED = 2 if sf_inf_pres==2 | sf_inf_web==2
replace SF_INF_MASMED = . if sf_inf_pres==. & sf_inf_web==.

label values SF_INF_MARERZ SF_INF_MASMED AUSWAHL



*** str_kh_e_and_num ***
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



*** str_kh_k_and_num***

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



*** str_branche_and_num ***
**12= Arbeitsunfähig/Rentnerin => allg. ohne Arbeit**
**13= nicht zuordbar**


tabulate str_branche_and_num
*recode str_branche_and_num (.=.) (1=5) (2=1) (3=12) (4=7)(5=2)(6=7)(7=7)(8=13)(9=5) (10=4)(11=4)(12=5)(13=5)(14=7)(15=13)(16=13)(17=7)(18=12)(19=5)(20=) und so weiter und so fort :( !



*** str_stellung_num***
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



*Remove Numlabel
numlabel, remove