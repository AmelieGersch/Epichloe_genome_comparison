#Amelie 27/09/19

#all minmap2 alignment with Ety like reference specie

#command structure : minimap2 options target query
#file structure : query target (into the file)

#Ety_Ecl
minimap2 -cx asm20 --cs ~/fungalgenome/genome_data/E.typhina_1756/Ety1756_Epichloe_typhina_1756_33870766_v3.fna
+   ~/fungalgenome/genome_data/E.clarkii_1605_22/Ecl1605_22_Epichloe_clarkii_1605_22_45646793_v1.fna
+   > ~/fungalgenome/all_genome_comparaison/minimap2_results/Ety_reference/Ety_Ecl.paf
#Ety_Eam
minimap2 -cx asm20 --cs ~/fungalgenome/genome_data/E.typhina_1756/Ety1756_Epichloe_typhina_1756_33870766_v3.fna ~/fungalgenome/genome_data/E.amarillans_NFe708/Eam708_Epichloe_amarillans_NFE702_38224169_v2.fna > ~/fungalgenome/all_genome_comparaison/minimap2_results/Ety_reference/Ety_Eam.paf
#Ety_Eel728
minimap2 -cx asm20 --cs ~/fungalgenome/genome_data/E.typhina_1756/Ety1756_Epichloe_typhina_1756_33870766_v3.fna ~/fungalgenome/genome_data/E.elymi_NFe728/Eel728_Epichloe_elymi_NFe728_34206040_v2.fna > ~/fungalgenome/all_genome_comparaison/minimap2_results/Ety_reference/Ety_Eel728.paf
#Ety_Eel732
minimap2 -cx asm20 --cs ~/fungalgenome/genome_data/E.typhina_1756/Ety1756_Epichloe_typhina_1756_33870766_v3.fna ~/fungalgenome/genome_data/E.elymi_NFe732/Eel732_Epichloe_elymi_NFE732_33820330_v2.fna > ~/fungalgenome/all_genome_comparaison/minimap2_results/Ety_reference/Ety_Eel732.paf
#Ety_Efe
minimap2 -cx asm20 --cs ~/fungalgenome/genome_data/E.typhina_1756/Ety1756_Epichloe_typhina_1756_33870766_v3.fna ~/fungalgenome/genome_data/E.festucae_Fl1/EfeFl1_Epichloe_festucae_Fl1_35023690_v2.fna > ~/fungalgenome/all_genome_comparaison/minimap2_results/Ety_reference/Ety_Efe.paf
