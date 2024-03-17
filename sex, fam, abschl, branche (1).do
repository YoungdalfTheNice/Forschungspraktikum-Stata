
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


 
 