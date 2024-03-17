use"C:\Users\janni\Desktop\version1.2.dta"

** UMWELTVERHALTEN**
gen UVMOB = uv01_01 + uv01_02 + uv01_03
 *** Nicht vergessen: Beispiel MOB: uv07_06a = string und nicht numerisch, kann also nicht aufgenommen werden! ***
gen UVBekGüt = uv07_01 + uv07_02 + uv07_03 + uv07_04 + uv07_05 + uv07_06 

gen UVLebEig = uv08_01 + uv08_02 + uv08_03 + uv08_04 + uv08_05 + uv08_06 + uv08_07 + uv08_08 + uv08_09 + uv08_10 + uv08_11 + uv08_12 + uv08_13

gen UV = uv02 + uv03 + uv04 + uv05 + uv06 + uv09 + uv10 + UVMOB + UVBekGüt + UVLebEig

**UMWELTKOGNITION**
gen UK = uk01 + uk02 + uk03 + uk04 + uk05

**LEBENSMITTELRZEUGUNG UND UMWELT**
gen BS = bs01 + bs02 + bs03 + bs04 + bs05 + bs06 + bs07 + bs08 + bs09 + bs10 + bs11

** ALLGEMEINE EINSTELLUNG**
gen AE = ae01 + ae02 + ae03 + ae04 + ae05

** SOZIALE FAKTOREN UND KONSUMVERHALTEN**
gen UMF = sf01_01 + sf01_02 + sf01_03 + sf01_04 + sf01_05 + sf01_06 + sf01_07

gen ORT = sf02_09 + sf02_01 + sf02_02 + sf02_03 + sf02_04 + sf02_05 + sf02_06 + sf02_07

gen INFO = sf03_01 + sf03_02 + sf03_03 + sf03_04 + sf03_05 + sf03_06

gen SF = UMF + ORT + INFO

** KAUFHANDLUNGEN**
gen KEnt= kh01_01 + kh01_02 + kh01_03 + kh01_04 + kh01_05 + kh01_06 + kh01_07 + kh01_08 + kh01_09 + kh01_10 + kh01_12 + kh01_11

gen Eink = kh02_01 + kh02_02 + kh02_05 + kh02_06 + kh02_03 + kh02_04 + kh02_07

gen Kon = kh03_01 + kh03_02 + kh03_03 + kh03_04 + kh03_05 + kh03_07 + kh03_08 + kh03_09 + kh03_06

** MERKMALE DER BEFRAGTEN**
gen MI = mi01_01 + mi01_02 + mi01_03 + mi01_04 + mi01_05 + mi01_06 + mi01_07 + mi01_08 + mi01_09 + mi01_10 + mi01_11 + mi01_12 + mi01_13 + mi01_14 + mi01_15 + mi01_16 + mi01_17