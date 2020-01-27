#Amelie 12/09/19

#in ~/fungalgenome/all_genome_comparaison/count_breakpoints

library(pafr)
ali <-read_paf("~/fungalgenome/all_genome_comparaison/minimap2_results/Eam_Eel728.paf")
dotplot(ali, label_seqs=TRUE, order_by="qstart")


# Count the number of apparent break-points between query and reference genomes
# in a .paf file representing a genome-alignment.
#
#Arguments:
#  ali = a genome alinment as returned by read_paf
#  min_len = minumum length of an alignment-block to include (filters output
            small hits that may result of false matches)
#  mapq = minimum mapping quality score for alignment-block (again, removes low
#         quality alignments)
# Returns:
#  a vector with number of breakpoints inferred from each query chromosome

count_bp <- function(ali, min_len = 2e4, mapq = 50){
   ali <- ali[order(ali$qname, ali$qstart, ali$qlen),]
   ali <- subset(ali, alen >= min_len & mapq >= mapq)
   chroms <- split(ali, ali$qname)
   sapply(chroms, function(x) sum(diff(as.numeric(as.factor(x$tname))) !=
   0))
 }
count_bp(ali)

#return the number of breakpoints
sum(count_bp(ali))


#for Eam_Eel732
ali <-read_paf("~/fungalgenome/all_genome_comparaison/minimap2_results/Eam_Eel732.paf")
dotplot(ali, label_seqs=TRUE, order_by="qstart")
count_bp <- function(ali, min_len = 2e4, mapq = 50){
   ali <- ali[order(ali$qname, ali$qstart, ali$qlen),]
   ali <- subset(ali, alen >= min_len & mapq >= mapq)
   chroms <- split(ali, ali$qname)
   sapply(chroms, function(x) sum(diff(as.numeric(as.factor(x$tname))) !=
   0))
 }
count_bp(ali)
sum(count_bp(ali))

#for Eam_Efe
ali <-read_paf("~/fungalgenome/all_genome_comparaison/minimap2_results/Eam_Efe.paf")
dotplot(ali, label_seqs=TRUE, order_by="qstart")
count_bp <- function(ali, min_len = 2e4, mapq = 50){
   ali <- ali[order(ali$qname, ali$qstart, ali$qlen),]
   ali <- subset(ali, alen >= min_len & mapq >= mapq)
   chroms <- split(ali, ali$qname)
   sapply(chroms, function(x) sum(diff(as.numeric(as.factor(x$tname))) !=
   0))
 }
count_bp(ali)
sum(count_bp(ali))

#for Eam_Ety
ali <-read_paf("~/fungalgenome/all_genome_comparaison/minimap2_results/Eam_Ety.paf")
dotplot(ali, label_seqs=TRUE, order_by="qstart")
count_bp <- function(ali, min_len = 2e4, mapq = 50){
   ali <- ali[order(ali$qname, ali$qstart, ali$qlen),]
   ali <- subset(ali, alen >= min_len & mapq >= mapq)
   chroms <- split(ali, ali$qname)
   sapply(chroms, function(x) sum(diff(as.numeric(as.factor(x$tname))) !=
   0))
 }
count_bp(ali)
sum(count_bp(ali))

#for Ecl_Eam
ali <-read_paf("~/fungalgenome/all_genome_comparaison/minimap2_results/Ecl_Eam.paf")
dotplot(ali, label_seqs=TRUE, order_by="qstart")
count_bp <- function(ali, min_len = 2e4, mapq = 50){
   ali <- ali[order(ali$qname, ali$qstart, ali$qlen),]
   ali <- subset(ali, alen >= min_len & mapq >= mapq)
   chroms <- split(ali, ali$qname)
   sapply(chroms, function(x) sum(diff(as.numeric(as.factor(x$tname))) !=
   0))
 }
count_bp(ali)
sum(count_bp(ali))

#for Ecl_Eel728
ali <-read_paf("~/fungalgenome/all_genome_comparaison/minimap2_results/Ecl_Eel728.paf")
dotplot(ali, label_seqs=TRUE, order_by="qstart")
count_bp <- function(ali, min_len = 2e4, mapq = 50){
   ali <- ali[order(ali$qname, ali$qstart, ali$qlen),]
   ali <- subset(ali, alen >= min_len & mapq >= mapq)
   chroms <- split(ali, ali$qname)
   sapply(chroms, function(x) sum(diff(as.numeric(as.factor(x$tname))) !=
   0))
 }
count_bp(ali)
sum(count_bp(ali))

#for Ecl_Eel732
ali <-read_paf("~/fungalgenome/all_genome_comparaison/minimap2_results/Ecl_Eel732.paf")
dotplot(ali, label_seqs=TRUE, order_by="qstart")
count_bp <- function(ali, min_len = 2e4, mapq = 50){
   ali <- ali[order(ali$qname, ali$qstart, ali$qlen),]
   ali <- subset(ali, alen >= min_len & mapq >= mapq)
   chroms <- split(ali, ali$qname)
   sapply(chroms, function(x) sum(diff(as.numeric(as.factor(x$tname))) !=
   0))
 }
count_bp(ali)
sum(count_bp(ali))

#for Ecl_Efe
ali <-read_paf("~/fungalgenome/all_genome_comparaison/minimap2_results/Ecl_Efe.paf")
dotplot(ali, label_seqs=TRUE, order_by="qstart")
count_bp <- function(ali, min_len = 2e4, mapq = 50){
   ali <- ali[order(ali$qname, ali$qstart, ali$qlen),]
   ali <- subset(ali, alen >= min_len & mapq >= mapq)
   chroms <- split(ali, ali$qname)
   sapply(chroms, function(x) sum(diff(as.numeric(as.factor(x$tname))) !=
   0))
 }
count_bp(ali)
sum(count_bp(ali))

#for Ecl_Ety
ali <-read_paf("~/fungalgenome/all_genome_comparaison/minimap2_results/Ecl_Ety.paf")
dotplot(ali, label_seqs=TRUE, order_by="qstart")
count_bp <- function(ali, min_len = 2e4, mapq = 50){
   ali <- ali[order(ali$qname, ali$qstart, ali$qlen),]
   ali <- subset(ali, alen >= min_len & mapq >= mapq)
   chroms <- split(ali, ali$qname)
   sapply(chroms, function(x) sum(diff(as.numeric(as.factor(x$tname))) !=
   0))
 }
count_bp(ali)
sum(count_bp(ali))

#for Eel728_Eel732
ali <-read_paf("~/fungalgenome/all_genome_comparaison/minimap2_results/Eel728_Eel732.paf")
dotplot(ali, label_seqs=TRUE, order_by="qstart")
count_bp <- function(ali, min_len = 2e4, mapq = 50){
   ali <- ali[order(ali$qname, ali$qstart, ali$qlen),]
   ali <- subset(ali, alen >= min_len & mapq >= mapq)
   chroms <- split(ali, ali$qname)
   sapply(chroms, function(x) sum(diff(as.numeric(as.factor(x$tname))) !=
   0))
 }
count_bp(ali)
sum(count_bp(ali))

#for Efe_Eel728
ali <-read_paf("~/fungalgenome/all_genome_comparaison/minimap2_results/Efe_Eel728.paf")
dotplot(ali, label_seqs=TRUE, order_by="qstart")
count_bp <- function(ali, min_len = 2e4, mapq = 50){
   ali <- ali[order(ali$qname, ali$qstart, ali$qlen),]
   ali <- subset(ali, alen >= min_len & mapq >= mapq)
   chroms <- split(ali, ali$qname)
   sapply(chroms, function(x) sum(diff(as.numeric(as.factor(x$tname))) !=
   0))
 }
count_bp(ali)
sum(count_bp(ali))

#for Efe_Eel732
ali <-read_paf("~/fungalgenome/all_genome_comparaison/minimap2_results/Efe_Eel732.paf")
dotplot(ali, label_seqs=TRUE, order_by="qstart")
count_bp <- function(ali, min_len = 2e4, mapq = 50){
   ali <- ali[order(ali$qname, ali$qstart, ali$qlen),]
   ali <- subset(ali, alen >= min_len & mapq >= mapq)
   chroms <- split(ali, ali$qname)
   sapply(chroms, function(x) sum(diff(as.numeric(as.factor(x$tname))) !=
   0))
 }
count_bp(ali)
sum(count_bp(ali))

#for Efe_Ety
ali <-read_paf("~/fungalgenome/all_genome_comparaison/minimap2_results/Efe_Ety.paf")
dotplot(ali, label_seqs=TRUE, order_by="qstart")
count_bp <- function(ali, min_len = 2e4, mapq = 50){
   ali <- ali[order(ali$qname, ali$qstart, ali$qlen),]
   ali <- subset(ali, alen >= min_len & mapq >= mapq)
   chroms <- split(ali, ali$qname)
   sapply(chroms, function(x) sum(diff(as.numeric(as.factor(x$tname))) !=
   0))
 }
count_bp(ali)
sum(count_bp(ali))

#for Ety_Eel728
ali <-read_paf("~/fungalgenome/all_genome_comparaison/minimap2_results/Ety_Eel728.paf")
dotplot(ali, label_seqs=TRUE, order_by="qstart")
count_bp <- function(ali, min_len = 2e4, mapq = 50){
   ali <- ali[order(ali$qname, ali$qstart, ali$qlen),]
   ali <- subset(ali, alen >= min_len & mapq >= mapq)
   chroms <- split(ali, ali$qname)
   sapply(chroms, function(x) sum(diff(as.numeric(as.factor(x$tname))) !=
   0))
 }
count_bp(ali)
sum(count_bp(ali))

#for Ety_Eel732
ali <-read_paf("~/fungalgenome/all_genome_comparaison/minimap2_results/Ety_Eel732.paf")
dotplot(ali, label_seqs=TRUE, order_by="qstart")
count_bp <- function(ali, min_len = 2e4, mapq = 50){
   ali <- ali[order(ali$qname, ali$qstart, ali$qlen),]
   ali <- subset(ali, alen >= min_len & mapq >= mapq)
   chroms <- split(ali, ali$qname)
   sapply(chroms, function(x) sum(diff(as.numeric(as.factor(x$tname))) !=
   0))
 }
count_bp(ali)
sum(count_bp(ali))
