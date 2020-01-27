# Amelie 29/08/19
# run all genome comparaison on minimap2

#!usr/bin/bash

# make results directories
#mkdir   #here minimap2_results
#mkdir   #here Rplots

#in fungalgenome directory

#targetname_queryname.paf
#file structure : query target (into the file) 

# run minimap2
#Ecl_Eel728.paf
minimap2 -cx asm20 --cs genome_data/E.clarkii_1605_22/Ecl1605_22_Epichloe_clarkii_1605_22_45646793_v1.fna genome_data/E.elymi_NFe728/Eel728_Epichloe_elymi_NFe728_34206040_v2.fna > all_genome_comparaison/minimap2_results/Ecl_Eel728.paf
#Ecl_Eam.paf
minimap2 -cx asm20 --cs genome_data/E.clarkii_1605_22/Ecl1605_22_Epichloe_clarkii_1605_22_45646793_v1.fna genome_data/E.amarillans_NFe708/Eam708_Epichloe_amarillans_NFE702_38224169_v2.fna > all_genome_comparaison/minimap2_results/Ecl_Eam.paf
#Ecl_Eel732.paf
minimap2 -cx asm20 --cs genome_data/E.clarkii_1605_22/Ecl1605_22_Epichloe_clarkii_1605_22_45646793_v1.fna genome_data/E.elymi_NFe732/Eel732_Epichloe_elymi_NFE732_33820330_v2.fna > all_genome_comparaison/minimap2_results/Ecl_Eel732.paf
#Ecl_Ety.paf
minimap2 -cx asm20 --cs genome_data/E.clarkii_1605_22/Ecl1605_22_Epichloe_clarkii_1605_22_45646793_v1.fna genome_data/E.typhina_1756/Ety1756_Epichloe_typhina_1756_33870766_v3.fna > all_genome_comparaison/minimap2_results/Ecl_Ety.paf
#Ecl_Efe.paf
minimap2 -cx asm20 --cs genome_data/E.clarkii_1605_22/Ecl1605_22_Epichloe_clarkii_1605_22_45646793_v1.fna genome_data/E.festucae_Fl1/EfeFl1_Epichloe_festucae_Fl1_35023690_v2.fna > all_genome_comparaison/minimap2_results/Ecl_Efe.paf
#Eam_Eel728.paf
minimap2 -cx asm20 --cs genome_data/E.amarillans_NFe708/Eam708_Epichloe_amarillans_NFE702_38224169_v2.fna genome_data/E.elymi_NFe728/Eel728_Epichloe_elymi_NFe728_34206040_v2.fna > all_genome_comparaison/minimap2_results/Eam_Eel728.paf
#Eam_Eel732.paf
minimap2 -cx asm20 --cs genome_data/E.amarillans_NFe708/Eam708_Epichloe_amarillans_NFE702_38224169_v2.fna genome_data/E.elymi_NFe732/Eel732_Epichloe_elymi_NFE732_33820330_v2.fna > all_genome_comparaison/minimap2_results/Eam_Eel732.paf
#Eam_Efe.paf
minimap2 -cx asm20 --cs genome_data/E.amarillans_NFe708/Eam708_Epichloe_amarillans_NFE702_38224169_v2.fna genome_data/E.festucae_Fl1/EfeFl1_Epichloe_festucae_Fl1_35023690_v2.fna > all_genome_comparaison/minimap2_results/Eam_Efe.paf
#Eam_Ety.paf
minimap2 -cx asm20 --cs genome_data/E.amarillans_NFe708/Eam708_Epichloe_amarillans_NFE702_38224169_v2.fna genome_data/E.typhina_1756/Ety1756_Epichloe_typhina_1756_33870766_v3.fna > all_genome_comparaison/minimap2_results/Eam_Ety.paf
#Efe_Eel728.paf
minimap2 -cx asm20 --cs genome_data/E.festucae_Fl1/EfeFl1_Epichloe_festucae_Fl1_35023690_v2.fna genome_data/E.elymi_NFe728/Eel728_Epichloe_elymi_NFe728_34206040_v2.fna > all_genome_comparaison/minimap2_results/Efe_Eel728.paf
#Efe_Eel732.paf
minimap2 -cx asm20 --cs genome_data/E.festucae_Fl1/EfeFl1_Epichloe_festucae_Fl1_35023690_v2.fna genome_data/E.elymi_NFe732/Eel732_Epichloe_elymi_NFE732_33820330_v2.fna > all_genome_comparaison/minimap2_results/Efe_Eel732.paf
#Efe_Ety.paf
minimap2 -cx asm20 --cs genome_data/E.festucae_Fl1/EfeFl1_Epichloe_festucae_Fl1_35023690_v2.fna genome_data/E.typhina_1756/Ety1756_Epichloe_typhina_1756_33870766_v3.fna > all_genome_comparaison/minimap2_results/Efe_Ety.paf
#Ety_Eel728.paf
minimap2 -cx asm20 --cs genome_data/E.typhina_1756/Ety1756_Epichloe_typhina_1756_33870766_v3.fna genome_data/E.elymi_NFe728/Eel728_Epichloe_elymi_NFe728_34206040_v2.fna > all_genome_comparaison/minimap2_results/Ety_Eel728.paf
#Ety_Eel732.paf
minimap2 -cx asm20 --cs genome_data/E.typhina_1756/Ety1756_Epichloe_typhina_1756_33870766_v3.fna genome_data/E.elymi_NFe732/Eel732_Epichloe_elymi_NFE732_33820330_v2.fna > all_genome_comparaison/minimap2_results/Ety_Eel732.paf
#Eel728_Eel732.paf
minimap2 -cx asm20 --cs genome_data/E.elymi_NFe728/Eel728_Epichloe_elymi_NFe728_34206040_v2.fna genome_data/E.elymi_NFe732/Eel732_Epichloe_elymi_NFE732_33820330_v2.fna > all_genome_comparaison/minimap2_results/Eel728_Eel732.paf


#E.amarillans_NFe708/Eam708_Epichloe_amarillans_NFE702_38224169_v2.fna
#E.clarkii_1605_22/Ecl1605_22_Epichloe_clarkii_1605_22_45646793_v1.fna
#E.elymi_NFe728/Eel728_Epichloe_elymi_NFe728_34206040_v2.fna
#E.elymi_NFe732/Eel732_Epichloe_elymi_NFE732_33820330_v2.fna
#E.festucae_Fl1/EfeFl1_Epichloe_festucae_Fl1_35023690_v2.fna
#E.typhina_1756/Ety1756_Epichloe_typhina_1756_33870766_v3.fna


# run R plots
# usage :Rscript R_script_for_dotplot.R <inputfile> <outputfile>
cd all_genome_comparaison
#Ecl_Eel728_plot.pdf
Rscript R_script_for_dotplot.R minimap2_results/Ecl_Eel728.paf Rplots/Ecl_Eel728_plot.pdf
#Ecl_Eam_plot.pdf
Rscript R_script_for_dotplot.R minimap2_results/Ecl_Eam.paf Rplots/Ecl_Eam_plot.pdf
#Ecl_Eel732_plot.pdf
Rscript R_script_for_dotplot.R minimap2_results/Ecl_Eel732.paf Rplots/Ecl_Eel732_plot.pdf
#Ecl_Ety_plot.pdf
Rscript R_script_for_dotplot.R minimap2_results/Ecl_Ety.paf Rplots/Ecl_Ety_plot.pdf
#Ecl_Efe_plot.pdf
Rscript R_script_for_dotplot.R minimap2_results/Ecl_Efe.paf Rplots/Ecl_Efe_plot.pdf
#Eam_Eel728_plot.pdf
Rscript R_script_for_dotplot.R minimap2_results/Eam_Eel728.paf Rplots/Eam_Eel728_plot.pdf
#Eam_Eel732_plot.pdf
Rscript R_script_for_dotplot.R minimap2_results/Eam_Eel732.paf Rplots/Eam_Eel732_plot.pdf
#Eam_Efe_plot.pdf
Rscript R_script_for_dotplot.R minimap2_results/Eam_Efe.paf Rplots/Eam_Efe_plot.pdf
#Eam_Ety_plot.pdf
Rscript R_script_for_dotplot.R minimap2_results/Eam_Ety.paf Rplots/Eam_Ety_plot.pdf
#Efe_Eel728_plot.pdf
Rscript R_script_for_dotplot.R minimap2_results/Efe_Eel728.paf Rplots/Efe_Eel728_plot.pdf
#Efe_Eel732_plot.pdf
Rscript R_script_for_dotplot.R minimap2_results/Efe_Eel732.paf Rplots/Efe_Eel732_plot.pdf
#Efe_Ety_plot.pdf
Rscript R_script_for_dotplot.R minimap2_results/Efe_Ety.paf Rplots/Efe_Ety_plot.pdf
#Ety_Eel728_plot.pdf
Rscript R_script_for_dotplot.R minimap2_results/Ety_Eel728.paf Rplots/Ety_Eel728_plot.pdf
#Ety_Eel732_plot.pdf
Rscript R_script_for_dotplot.R minimap2_results/Ety_Eel732.paf Rplots/Ety_Eel732_plot.pdf
#Eel728_Eel732_plot.pdf
Rscript R_script_for_dotplot.R minimap2_results/Eel728_Eel732.paf Rplots/Eel728_Eel732_plot.pdf
