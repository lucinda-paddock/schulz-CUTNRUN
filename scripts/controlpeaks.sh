#########
# Script to generate control (permuted) peak positions
# Lucy Paddock Ethan Ashby
# Spring 2022
#INPUT: consenus.bed and greylist.bed file containing positions of MACS-called consensus peaks and spurious regions
#OUTPUT: controlpeaks.bed containing permuted positions of peaks

#This script is used to generate control peaks to assess whether patterns in read counts observed for real db peaks were true or artifacts

# Software dependencies: bedtools
# File dependencies: 'consensus.bed' file containing consensus peaks from previous run of DiffBind, 'greylist.bed' file from previous run of Diffbind, 
# karyo.txt containing CHR identifiers and lengths
# Output: controlpeaks.bed file containing the positions of permuted peaks

#####
#THINGS TO CHANGE
#FILE PATH ON lines 20 and 30

cd ../output/original #CHANGE FILE PATH

####
# bedtools shuffle will randomly permute the genomic locations of a feature file 
# Parameters used
	# -excl A BED file containing coordinates in which features from i should not be placed
	# -chrom keep features in -i on the same chromosome
#	Extra params
	# -noOverlapping don't allow shuffled intervals to overlap
	
cat ./consensus.bed ./greylist.bed | bedtools sort > tmp.bed # exclude previous peak positions and greylist #CHANGE PATH to input files
bedtools shuffle -chrom -excl tmp.bed -seed 4747 -i consensus.bed -g ../../data/karyo.txt | bedtools sort > ../../data/controlpeaks.bed #the output you want
rm tmp.bed