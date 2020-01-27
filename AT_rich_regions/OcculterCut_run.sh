#Amelie 02/09/19
#identify all AT-rich region in the genome
#use it for each genome

#!usr/bin/bash

#commmand line :
#OcculterCut -f genome.fna

#we need to have a directory per genome

cd fungalgenome/AT_rich_regions
#Eam
mkdir Eam_OC
cd Eam_OC
OcculterCut -f ~/fungalgenome/genome_data/E.amarillans_NFe708/Eam708_Epichloe_amarillans_NFE702_38224169_v2.fna
cd ..
#Ecl
mkdir Ecl_OC
cd Ecl_OC
OcculterCut -f ~/fungalgenome/genome_data/E.clarkii_1605_22/Ecl1605_22_Epichloe_clarkii_1605_22_45646793_v1.fna
cd ..
#Eel728
mkdir Eel728_OC
cd Eel728_OC
OcculterCut -f ~/fungalgenome/genome_data/E.elymi_NFe728/Eel728_Epichloe_elymi_NFe728_34206040_v2.fna
cd ..
#Eel732
mkdir Eel732_OC
cd Eel732_OC
OcculterCut -f ~/fungalgenome/genome_data/E.elymi_NFe732/Eel732_Epichloe_elymi_NFE732_33820330_v2.fna
cd ..
#Efe
mkdir Efe_OC
cd Efe_OC
OcculterCut -f ~/fungalgenome/genome_data/E.festucae_Fl1/EfeFl1_Epichloe_festucae_Fl1_35023690_v2.fna
cd ..
#Ety
mkdir Ety_OC
cd Ety_OC
OcculterCut -f ~/fungalgenome/genome_data/E.typhina_1756/Ety1756_Epichloe_typhina_1756_33870766_v3.fna
cd ..


#use clean_OC.sh to select At-rich region in all files creates

#Eam
cd Eam_OC
bash ~/fungalgenome/AT_rich_regions/clean_OC.sh
cd ..
#Ecl
cd Ecl_OC
bash ~/fungalgenome/AT_rich_regions/clean_OC.sh
cd ..
#Eel728
cd Eel728_OC
bash ~/fungalgenome/AT_rich_regions/clean_OC.sh
cd ..
#Eel732
cd Eel732_OC
bash ~/fungalgenome/AT_rich_regions/clean_OC.sh
cd ..
#Efe
cd Efe_OC
bash ~/fungalgenome/AT_rich_regions/clean_OC.sh
cd ..
#Ety
cd Ety_OC
bash ~/fungalgenome/AT_rich_regions/clean_OC.sh
cd ..
