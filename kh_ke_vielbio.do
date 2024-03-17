

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
