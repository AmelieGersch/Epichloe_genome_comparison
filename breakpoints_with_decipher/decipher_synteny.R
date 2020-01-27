#Amelie 05/09/19


#chromosome 7 extraction from 2 Ecl and Ety genome
#one file per chromosome 7

library("seqinr")

setwd("/home/amelie/fungalgenome/breakpoints_with_decipher/chromosome_fasta")

fastafile<- read.fasta(file="/home/amelie/fungalgenome/genome_data/E.typhina_1756/Ety1756_Epichloe_typhina_1756_33870766_v3.fna",seqtype = "DNA",as.string = TRUE)
#list of lists : a list containing one list per chromosome
fastafile[c(which(names(fastafile) %in% subsetlist))]
#select chromosome7
subsetlist <- "Ety1756_7"
my_fasta_sub <- fastafile[names(fastafile) %in% subsetlist]
#file output : a list from one chromosome
write.fasta(sequences = my_fasta_sub, names = names(my_fasta_sub), nbchar = 80, file.out = "Ety_chr7.fna")
#nbchar= caracter number before change line

fastafile<- read.fasta(file="/home/amelie/fungalgenome/genome_data/E.clarkii_1605_22/Ecl1605_22_Epichloe_clarkii_1605_22_45646793_v1.fna",seqtype = "DNA",as.string = TRUE)
#list of lists : a list containing one list per chromosome
fastafile[c(which(names(fastafile) %in% subsetlist))]
#select chromosome7
subsetlist <- "Ecl1605_7"
my_fasta_sub <- fastafile[names(fastafile) %in% subsetlist]
write.fasta(sequences = my_fasta_sub, names = names(my_fasta_sub), nbchar = 80, file.out = "Ecl_chr7.fna")


#breakpoint research with DECIPHER package for synteny
#now use juste for Ecl_chr7 and Ety_chr7

# load the DECIPHER library in Rlibrary(DECIPHER)
# specify the path to each FASTA file (in quotes)
# each genome must be given a unique identifier here
# for example: Genome1, Genome2, etc.


fas <- c(Genome1="/home/amelie/fungalgenome/breakpoints_with_decipher/chromosome_fasta/Ecl_chr7.fna",
         Genome2="/home/amelie/fungalgenome/breakpoints_with_decipher/chromosome_fasta/Ety_chr7.fna",
#         Genome3="/home/amelie/fungalgenome/breakpoints_with_decipher/")
# specify where to create the new sequence database
db <- "/home/amelie/fungalgenome/breakpoints_with_decipher/decipher_results/Ecl_chr7_Ety_chr7.db" #result database
# load the sequences from the file in a loop
for (i in seq_along(fas)) {
  Seqs2DB(fas[i], "FASTA", db, names(fas[i]))
  }
# map the syntenic regions between each genomepair
synteny <- FindSynteny(db)
# print a summary of the syntenic map (optional)
synteny
# view the syntenic regions (optional)
pairs(synteny) # displays a dot plot of all pairs
plot(synteny) # displays a bar plot of adjacent pairs
# perform alignments of all pairs of genomes
DNA <- AlignSynteny(synteny, db)
# view the aligned syntenic blocks for each pair
unlist(DNA[[1]]) # Genomes 1 and 2
#unlist(DNA[[2]]) # Genomes 1 and 3
#unlist(DNA[[3]]) # Genomes 2 and 3
#for each alignment it return : the length, the sequence, the position in each genome(chromosome in thhis case) with position.genomename


# look at the start and end on the reference (= genome2 this script)
#give the end and start positions, in genome2, for all alignments
synteny[2, 1][[1]][, c("start2", "end2")]

# count breakpoints in each bin
h <- hist(synteny[2, 1][[1]][, c("start2", "end2")],
          breaks = seq(from = 0,
                       to = max(synteny[1, 1][[1]],
                                synteny[2, 2][[1]]) + 1e4,
                       by = 1e4))
h$counts # number of endpoints per 10k nucleotides


#synteny decipher for all genome Ety and Ecl
fas <- c(Genome1="/home/amelie/fungalgenome/genome_data/E.typhina_1756/Ety1756_Epichloe_typhina_1756_33870766_v3.fna" ,Genone2="/home/amelie/fungalgenome/genome_data/E.clarkii_1605_22/Ecl1605_22_Epichloe_clarkii_1605_22_45646793_v1.fna")
db <- "/home/amelie/fungalgenome/breakpoints_with_decipher/decipher_results/Ety_Ecl.db"
for (i in seq_along(fas)) {
  Seqs2DB(fas[i], "FASTA", db, names(fas[i]))
  }
synteny <- FindSynteny(db)
synteny
pdf("~/fungalgenome/breakpoints_with_decipher/decipher_results/Ety_Ecl_plots.pdf")
p <- pairs(synteny)
p
p <- plot(synteny)
dev.off()
DNA <- AlignSynteny(synteny, db)
unlist(DNA[[1]]) # Genomes 1 and 2

x <-synteny[2, 1][[1]][, c("start2", "end2")]
write.table(x,"~/fungalgenome/breakpoints_with_decipher/decipher_results/Ety_Ecl_position.txt", quote=FALSE, row.names=FALSE)
h <- hist(synteny[2, 1][[1]][, c("start2", "end2")],
          breaks = seq(from = 0,
                       to = max(synteny[1, 1][[1]],
                                synteny[2, 2][[1]]) + 1e4,
                       by = 1e4))
h$counts

#alignment with DECIPHER for all genomes
fas <- c(Genome1="/home/amelie/fungalgenome/genome_data/E.typhina_1756/Ety1756_Epichloe_typhina_1756_33870766_v3.fna",
         Genome2="/home/amelie/fungalgenome/genome_data/E.amarillans_NFe708/Eam708_Epichloe_amarillans_NFE702_38224169_v2.fna",
         Genome3="/home/amelie/fungalgenome/genome_data/E.clarkii_1605_22/Ecl1605_22_Epichloe_clarkii_1605_22_45646793_v1.fna",
         Genome4="/home/amelie/fungalgenome/genome_data/E.elymi_NFe728/Eel728_Epichloe_elymi_NFe728_34206040_v2.fna",
         Genome5="/home/amelie/fungalgenome/genome_data/E.elymi_NFe732/Eel732_Epichloe_elymi_NFE732_33820330_v2.fna",
         Genome6="/home/amelie/fungalgenome/genome_data/E.festucae_Fl1/EfeFl1_Epichloe_festucae_Fl1_35023690_v2.fna")
db <- "/home/amelie/fungalgenome/breakpoints_with_decipher/decipher_results/all_genone.db"
for (i in seq_along(fas)) {
  Seqs2DB(fas[i], "FASTA", db, names(fas[i]))
  }
synteny <- FindSynteny(db)
save(synteny, "synteny_all_genome.Rdata")
pdf("~/fungalgenome/breakpoints_with_decipher/decipher_results/all_genone_plots.pdf")
p <- pairs(synteny)
p
p <- plot(synteny)
dev.off()
DNA <- AlignSynteny(synteny, db)
saveRDS(DNA, file = "all_genome_alignment.Rdata") 
