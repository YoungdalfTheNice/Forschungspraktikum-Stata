	*** Mit Gewichtung***

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
 
 
*** Ohne Gewichtung***

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


recode uv_le_regio_og (1= 1)(2=1) (3=1) (4=1) (5=1)
recode uv_le_saiso_og (1=1) (2=1) (3=1) (4=1) (5=1)
recode uv_le_pesti_og (1=1) (2=1) (3=1) (4=1) (5=1)
recode uv_le_gas_og (1=1) (2=1) (3=1) (4=1) (5=1)
recode uv_le_synthdü_og (1=1) (2=1) (3=1) (4=1) (5=1)
recode uv_le_überd_og (1=1) (2=1) (3=1) (4=1) (5=1)
recode uv_le_futterm_og (1=1) (2=1) (3=1) (4=1) (5=1)
recode uv_le_fruchtf_og (1=1) (2=1) (3=1) (4=1) (5=1)
recode uv_le_gewächsh_og (1=1) (2=1) (3=1) (4=1) (5=1)
recode uv_le_günstig_og (1=0) (2=0) (3=0) (4=0) (5=0)
recode uv_le_quanti_og (1=0) (2=0) (3=0) (4=0) (5=0)
recode uv_le_quali_og (1=0) (2=0) (3=0) (4=0) (5=0)
recode uv_le_andere_og (1=0) (2=0) (3=0) (4=0) (5=0)

gen uv_le_og= uv_le_regio_og + uv_le_saiso_og + uv_le_pesti_og + uv_le_gas_og + uv_le_synthdü_og + uv_le_überd_og + uv_le_futterm_og + uv_le_fruchtf_og + uv_le_gewächsh_og + uv_le_günstig_og + uv_le_quanti_og + uv_le_quali_og + uv_le_andere_og

 
 
