#Amelie 16/10/19

#plot coverage for complete analysis with Ety in all other genomes
#easy to understand, green is chr1 Ety in all other genome
#filtering out alignmens smaller than 20,000 bp

library(pafr)
library(ggplot2)
library(svglite)

plot_for_inkscape <- function(alignment_two_genomes,name_for_save) {
ali <- read_paf(alignment_two_genomes)
prim_alignment <- filter_secondary_alignments(ali)
#good_alignment <- subset(ali, alen >= 2e4)
nrow(ali) - nrow(prim_alignment)
no_mito <- subset(prim_alignment, tname != "Ety1756_m")
plot_coverage(no_mito, target=FALSE, fill='tname', direct_label=FALSE)+ labs(fill="Ety chromosome") + scale_fill_brewer(palette="Set1") + theme(legend.position = "none") + ggtitle(name_for_save)
}

#in Eam
A <- "~/fungalgenome/all_genome_comparaison/minimap2_results/Ety_reference/Ety_Eam.paf"
B <- "Ety in Eam"
p1 <- plot_for_inkscape(A,B)

#in Ecl
A <- "~/fungalgenome/all_genome_comparaison/minimap2_results/Ety_reference/Ety_Ecl.paf"
B <- "Ety in Ecl"
p2 <- plot_for_inkscape(A,B)

#in Efe
A <- "~/fungalgenome/all_genome_comparaison/minimap2_results/Ety_reference/Ety_Efe.paf"
B <- "Ety in Efe"
p3 <- plot_for_inkscape(A,B)

#in Eel728
A <- "~/fungalgenome/all_genome_comparaison/minimap2_results/Ety_reference/Ety_Eel728.paf"
B <- "Ety in Eel728"
p4 <- plot_for_inkscape(A,B)

#for keep the legend one time
plot_for_inkscape <- function(alignment_two_genomes,name_for_save) {
ali <- read_paf(alignment_two_genomes)
prim_alignment <- filter_secondary_alignments(ali)
#good_alignment <- subset(ali, alen >= 2e4)
nrow(ali) - nrow(prim_alignment)
no_mito <- subset(prim_alignment, tname != "Ety1756_m")
plot_coverage(no_mito, target=FALSE, fill='tname', direct_label=FALSE)+ labs(fill="Ety chromosome") + scale_fill_brewer(palette="Set1") + ggtitle(name_for_save)
}

#in Eel732
A <- "~/fungalgenome/all_genome_comparaison/minimap2_results/Ety_reference/Ety_Eel732.paf"
B <- "Ety in Eel732"
p5 <- plot_for_inkscape(A,B)


#one file with all plots

library(cowplot)
plot_grid(p1, p2, p3, p4, p5, label_size=12)
ggsave("~/fungalgenome/all_genome_comparaison/Rplots/Ety_ref/Ety_in_all_other/Ety_in_all_other_plot.svg")
