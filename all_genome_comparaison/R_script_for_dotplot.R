# Amélie August 2019
# making dotplots for Epichloe genome mapping

# install libraries
library(pafr)
library(ggplot2)

args <- commandArgs(trailingOnly = TRUE)
infile <- args[1]
outfile <- args[2]

ali <- read_paf(infile)
dotplot(ali)
ggsave(outfile)

#move a nd go where I want
setwd("/home/amelie/fungalgenome/")
infile <- "minimap2_results/Eam_Eel728.paf"
outfile <- "Rplots/test.pdf"
ali <- read_paf(infile)
ali <- filter_secondary_alignments(ali)
ali = subset(ali, alen > 2e4 & mapq > 50)
dotplot(ali)+ theme_bw()
ggsave(outfile)
#say where I am
#getwd()



