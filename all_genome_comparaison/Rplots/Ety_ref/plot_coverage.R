#Amelie 27/09/19

#plot coverage
#coverage by query sequence
#from pafr package

#targetname_queryname_plot_cover.pdf

library(pafr)
library(ggplot2)
library(svglite)

#Notes to include in new version
#
# remove mitochondrial genome
# no_mito <- subset(prim_alignment, tname != "Ety1756_m")
#
# Make label have only chromosome number, not full name
# it removes Ety1756_ in original names
# no_mito$tname <- sub("Ety1756_", "", no_mito$tname)
#
# In plot_coverage use argeument 'direct_label=FALSE' to stop over-writting chromosome
# names (Ety)
#
# Get the width and height of the current garph (usually in inches (pouces))
#
# par('din')
# (set width and height for final plots in ggsave)


# function relevent for all comparaisons
# with modifications for good version for inkscape
plot_for_inkscape <- function(alignment_two_genomes,name_for_save) {
ali <- read_paf(alignment_two_genomes)
prim_alignment <- filter_secondary_alignments(ali)
nrow(ali) - nrow(prim_alignment)
no_mito <- subset(prim_alignment, tname != "Ety1756_m")
no_mito$tname <- sub("Ety1756_", "", no_mito$tname)
plot_coverage(no_mito, fill='qname', direct_label=FALSE) + scale_fill_brewer(palette="Set1")
ggsave(name_for_save, width=7, height=7)
}

#for Ety_Eam
A <- "~/fungalgenome/all_genome_comparaison/minimap2_results/Ety_reference/Ety_Eam.paf"
B <- "~/fungalgenome/all_genome_comparaison/Rplots/Ety_ref/Ety_Eam_plot_cover.svg"
plot_for_inkscape(A,B)

#for Ety_Ecl
A <- "~/fungalgenome/all_genome_comparaison/minimap2_results/Ety_reference/Ety_Ecl.paf"
B <- "~/fungalgenome/all_genome_comparaison/Rplots/Ety_ref/Ety_Ecl_plot_cover.svg"
plot_for_inkscape(A,B)

#for Ety_Eel728
A <- "~/fungalgenome/all_genome_comparaison/minimap2_results/Ety_reference/Ety_Eel728.paf"
B <- "~/fungalgenome/all_genome_comparaison/Rplots/Ety_ref/Ety_Eel728_plot_cover.svg"
plot_for_inkscape(A,B)

#for Ety_Eel732
A <- "~/fungalgenome/all_genome_comparaison/minimap2_results/Ety_reference/Ety_Eel732.paf"
B <- "~/fungalgenome/all_genome_comparaison/Rplots/Ety_ref/Ety_Eel732_plot_cover.svg"
plot_for_inkscape(A,B)

#for Ety_Efe
A <- "~/fungalgenome/all_genome_comparaison/minimap2_results/Ety_reference/Ety_Efe.paf"
B <- "~/fungalgenome/all_genome_comparaison/Rplots/Ety_ref/Ety_Efe_plot_cover.svg"
plot_for_inkscape(A,B)
