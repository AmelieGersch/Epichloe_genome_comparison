#!/bin/bash 

# OcculterCut is at progream for identidying AT-rich regoins of genomes.
# Though it is a very useful program, it has fixed (i.e. hard-coded) names for
# output files and produces a lot of data taht we don't usually used.
#
# This script is desgined to `clean up` an OcculterCut output directory to
# contain well-named files that include only the information that we care
# about.
#
# Usage (from a directory containing OccutlerCut outputs): ./clean_OC.sh
#
#

# First we create seperate files for AT- and GC-rich regions
# columns with region              rename them AT-rich     remove mitochoncdrial genome
grep "R0"  groupedRegions.gff3  | sed 's/R0/AT_rich/g' | grep -v "_m" > AT_rich.gff
grep "R1"  groupedRegions.gff3  | sed 's/R1/GC_rich/g' | grep -v "_m" > GC_rich.gff

#Next we renma the text file to something useful
mv myGenome.txt AT_summary.txt

#finally we deleted the stuff we don't need
rm compositionGC.txt distances.txt groupedGenes.gff3 groupedRegions.gff3 myGenome.txt nuc_frequencies.R0 nuc_frequencies.R1 plot.plt regions.gff3
