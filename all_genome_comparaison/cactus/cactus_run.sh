#Amelie 19/09/19

#go into the virtual environment
cd ../../../bin
source cactus_env/bin/activate

#command structure :
#cactus <jobStorePath> <seqFile> <outputHal>
#with jobStorePath is where intermediate files, as well as job metadata, will be stored. It must be accessible to all worker systems
#seqFile just a text file containing the locations of the input sequences as well as their phylogenetic tree
#outputs=alignments in the HAL format. This format represents the alignment in a reference-free, indexed way, but isn't readable by many tools.
#To export a MAF (which by its nature is usually reference-based), you can use the hal2maf tool to export the alignment from any particular genome: hal2maf <hal> --refGenome <reference> <maf>.

cactus /home/amelie/fungalgenome/all_genome_comparaison/cactus/cactus_temp_files
+     /home/amelie/fungalgenome/all_genome_comparaison/cactus/all_sequences_for_cactus.txt
+     /home/amelie/fungalgenome/all_genome_comparaison/cactus/all_alignment_cactus.hal --root mr --maxCores 10 --binariesMode singularity

#root rm specified root name mr in the tree


#convert hal file in maf file
hal2maf all_alignment_cactus.hal all_alignment_cactus.maf
