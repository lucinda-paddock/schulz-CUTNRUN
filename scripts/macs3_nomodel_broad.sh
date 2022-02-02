#########
# MACS peak calling Script for T. brucei CUT&RUN data
# Summer 2021
# Lucy Paddock
# Based on code from Ethan Ashby

## I largely followed the instructions for macs2 shown here
##https://hbctraining.github.io/Intro-to-ChIPseq/lessons/05_peak_calling_macs.html

#####
#THINGS TO CHANGE WHEN RUNNING ON YOUR MACHINE
# 1. CHANGE the file paths for the input BED/BAM file (following the `-t` flag)
# 2. CHANGE the file paths for the control BED/BAM file (following the `-c` flag)
# 3. CHANGE the output file IDs to whatever you want to label them as (following the `-n `)
# 4. CHANGE your output directory (following the `--outdir` flag)
# 5. CHANGE which file type your input is (following the `-f` tag put BED or BAM)

#Other arguments
  #-g 23650671 : denotes T brucei genome size
  #--keep-dup all : keeps all duplicate tags... this is standard in CUT&RUN when some level of duplicate tags are expected
  #--nomodel : ignores empirical tag shifting model, appropriate when doing differentially calling
  #--broad : runs peak calling in broad mode

#OUTPUT: each sample produces 3 output files (.broadPeak, .narrowPeak, and .xls), all of which contain MACS-called peaks for that sample. The .broadPeak files we will use for later analysis.

## Cut and Run Samples
echo Calling Peaks on 0hr timepoint
macs3 callpeak -t /Volumes/Lab1/SchulzLab/CutAndRun/bed/01_00h_1_CR_diff_comb_140804_tb927_v5.1_m1_v2_sorted.bed -c /Volumes/Lab1/SchulzLab/CutAndRun/bed/16_IgG_1_CR_diff_comb_140804_tb927_v5.1_m1_v2.bed -f BED --keep-dup all -g 23650671 -n 1_00h-1_comb_peaks --nomodel --broad --outdir /Volumes/Lab1/SchulzLab/CutAndRun/macs3_nomodel_broad/
macs3 callpeak -t /Volumes/Lab1/SchulzLab/CutAndRun/bed/02_00h_2_CR_diff_comb_140804_tb927_v5.1_m1_v2_sorted.bed -c /Volumes/Lab1/SchulzLab/CutAndRun/bed/16_IgG_1_CR_diff_comb_140804_tb927_v5.1_m1_v2.bed -f BED --keep-dup all -g 23650671 -n 2_00h-2_comb_peaks --nomodel --broad --outdir /Volumes/Lab1/SchulzLab/CutAndRun/macs3_nomodel_broad/
macs3 callpeak -t /Volumes/Lab1/SchulzLab/CutAndRun/bed/03_00h_3_CR_diff_comb_140804_tb927_v5.1_m1_v2_sorted.bed -c /Volumes/Lab1/SchulzLab/CutAndRun/bed/16_IgG_1_CR_diff_comb_140804_tb927_v5.1_m1_v2.bed -f BED --keep-dup all -g 23650671 -n 3_00h-3_comb_peaks --nomodel --broad --outdir /Volumes/Lab1/SchulzLab/CutAndRun/macs3_nomodel_broad/

echo Calling Peaks on 0hr redo timepoint
macs3 callpeak -t /Volumes/Lab1/SchulzLab/CutAndRun/bed/2_00h-2_redo_140804_tb927_v5.1_m1_v2_sorted.bed -c /Volumes/Lab1/SchulzLab/CutAndRun/bed/16_IgG_1_CR_diff_comb_140804_tb927_v5.1_m1_v2.bed -f BED --keep-dup all -g 23650671 -n 2_00h-2_redo_peaks --nomodel --broad --outdir /Volumes/Lab1/SchulzLab/CutAndRun/macs3_nomodel_broad/
macs3 callpeak -t /Volumes/Lab1/SchulzLab/CutAndRun/bed/3_00h-3_redo_140804_tb927_v5.1_m1_v2_sorted.bed -c /Volumes/Lab1/SchulzLab/CutAndRun/bed/16_IgG_1_CR_diff_comb_140804_tb927_v5.1_m1_v2.bed -f BED --keep-dup all -g 23650671 -n 3_00h-3_redo_peaks --nomodel --broad --outdir /Volumes/Lab1/SchulzLab/CutAndRun/macs3_nomodel_broad/

echo Calling Peaks on 30min redo timepoint
macs3 callpeak -t /Volumes/Lab1/SchulzLab/CutAndRun/bed/4_30m-1_redo_140804_tb927_v5.1_m1_v2_sorted.bed -c /Volumes/Lab1/SchulzLab/CutAndRun/bed/16_IgG_1_CR_diff_comb_140804_tb927_v5.1_m1_v2.bed -f BED --keep-dup all -g 23650671 -n 4_30m-1_redo_peaks --nomodel --broad --outdir /Volumes/Lab1/SchulzLab/CutAndRun/macs3_nomodel_broad/
macs3 callpeak -t /Volumes/Lab1/SchulzLab/CutAndRun/bed/5_30m-2_redo_140804_tb927_v5.1_m1_v2_sorted.bed -c /Volumes/Lab1/SchulzLab/CutAndRun/bed/16_IgG_1_CR_diff_comb_140804_tb927_v5.1_m1_v2.bed -f BED --keep-dup all -g 23650671 -n 5_30m-2_redo_peaks --nomodel --broad --outdir /Volumes/Lab1/SchulzLab/CutAndRun/macs3_nomodel_broad/
macs3 callpeak -t /Volumes/Lab1/SchulzLab/CutAndRun/bed/6_30m-3_redo_140804_tb927_v5.1_m1_v2_sorted.bed -c /Volumes/Lab1/SchulzLab/CutAndRun/bed/16_IgG_1_CR_diff_comb_140804_tb927_v5.1_m1_v2.bed -f BED --keep-dup all -g 23650671 -n 6_30m-3_redo_peaks --nomodel --broad --outdir /Volumes/Lab1/SchulzLab/CutAndRun/macs3_nomodel_broad/

echo Calling Peaks on 1hr timepoint
macs3 callpeak -t /Volumes/Lab1/SchulzLab/CutAndRun/bed/04_01h_1_CR_diff_comb_140804_tb927_v5.1_m1_v2_sorted.bed -c /Volumes/Lab1/SchulzLab/CutAndRun/bed/16_IgG_1_CR_diff_comb_140804_tb927_v5.1_m1_v2.bed -f BED --keep-dup all -g 23650671 -n 4_01h_1_comb_peaks --nomodel --broad --outdir /Volumes/Lab1/SchulzLab/CutAndRun/macs3_nomodel_broad/
macs3 callpeak -t /Volumes/Lab1/SchulzLab/CutAndRun/bed/05_01h_2_CR_diff_comb_140804_tb927_v5.1_m1_v2_sorted.bed -c /Volumes/Lab1/SchulzLab/CutAndRun/bed/16_IgG_1_CR_diff_comb_140804_tb927_v5.1_m1_v2.bed -f BED --keep-dup all -g 23650671 -n 5_01h-2_comb_peaks --nomodel --broad --outdir /Volumes/Lab1/SchulzLab/CutAndRun/macs3_nomodel_broad/
macs3 callpeak -t /Volumes/Lab1/SchulzLab/CutAndRun/bed/06_01h_3_CR_diff_comb_140804_tb927_v5.1_m1_v2_sorted.bed -c /Volumes/Lab1/SchulzLab/CutAndRun/bed/16_IgG_1_CR_diff_comb_140804_tb927_v5.1_m1_v2.bed -f BED --keep-dup all -g 23650671 -n 6_01h-3_comb_peaks --nomodel --broad --outdir /Volumes/Lab1/SchulzLab/CutAndRun/macs3_nomodel_broad/

echo Calling Peaks on 3hr timepoint
macs3 callpeak -t /Volumes/Lab1/SchulzLab/CutAndRun/bed/07_03h_1_CR_diff_comb_140804_tb927_v5.1_m1_v2_sorted.bed -c /Volumes/Lab1/SchulzLab/CutAndRun/bed/16_IgG_1_CR_diff_comb_140804_tb927_v5.1_m1_v2.bed -f BED --keep-dup all -g 23650671 -n 7_03h_1_comb_peaks --nomodel --broad --outdir /Volumes/Lab1/SchulzLab/CutAndRun/macs3_nomodel_broad/
macs3 callpeak -t /Volumes/Lab1/SchulzLab/CutAndRun/bed/08_03h_2_CR_diff_comb_140804_tb927_v5.1_m1_v2_sorted.bed -c /Volumes/Lab1/SchulzLab/CutAndRun/bed/16_IgG_1_CR_diff_comb_140804_tb927_v5.1_m1_v2.bed -f BED --keep-dup all -g 23650671 -n 8_03h-2_comb_peaks --nomodel --broad --outdir /Volumes/Lab1/SchulzLab/CutAndRun/macs3_nomodel_broad/
macs3 callpeak -t /Volumes/Lab1/SchulzLab/CutAndRun/bed/09_03h_3_CR_diff_comb_140804_tb927_v5.1_m1_v2_sorted.bed -c /Volumes/Lab1/SchulzLab/CutAndRun/bed/16_IgG_1_CR_diff_comb_140804_tb927_v5.1_m1_v2.bed -f BED --keep-dup all -g 23650671 -n 9_03h-3_comb_peaks --nomodel --broad --outdir /Volumes/Lab1/SchulzLab/CutAndRun/macs3_nomodel_broad/

echo Calling Peaks on 24hr timepoint
macs3 callpeak -t /Volumes/Lab1/SchulzLab/CutAndRun/bed/10_24h_1_CR_diff_comb_140804_tb927_v5.1_m1_v2_sorted.bed -c /Volumes/Lab1/SchulzLab/CutAndRun/bed/16_IgG_1_CR_diff_comb_140804_tb927_v5.1_m1_v2.bed -f BED --keep-dup all -g 23650671 -n 10_24h_1_comb_peaks --nomodel --broad --outdir /Volumes/Lab1/SchulzLab/CutAndRun/macs3_nomodel_broad/
macs3 callpeak -t /Volumes/Lab1/SchulzLab/CutAndRun/bed/11_24h_2_CR_diff_comb_140804_tb927_v5.1_m1_v2_sorted.bed -c /Volumes/Lab1/SchulzLab/CutAndRun/bed/16_IgG_1_CR_diff_comb_140804_tb927_v5.1_m1_v2.bed -f BED --keep-dup all -g 23650671 -n 11_24h-2_comb_peaks --nomodel --broad --outdir /Volumes/Lab1/SchulzLab/CutAndRun/macs3_nomodel_broad/
macs3 callpeak -t /Volumes/Lab1/SchulzLab/CutAndRun/bed/12_24h_3_CR_diff_comb_140804_tb927_v5.1_m1_v2_sorted.bed -c /Volumes/Lab1/SchulzLab/CutAndRun/bed/16_IgG_1_CR_diff_comb_140804_tb927_v5.1_m1_v2.bed -f BED --keep-dup all -g 23650671 -n 12_24h-3_comb_peaks --nomodel --broad --outdir /Volumes/Lab1/SchulzLab/CutAndRun/macs3_nomodel_broad/

echo Calling Peaks on 76hr timepoint
macs3 callpeak -t /Volumes/Lab1/SchulzLab/CutAndRun/bed/13_76h_1_CR_diff_comb_140804_tb927_v5.1_m1_v2_sorted.bed -c /Volumes/Lab1/SchulzLab/CutAndRun/bed/16_IgG_1_CR_diff_comb_140804_tb927_v5.1_m1_v2.bed -f BED --keep-dup all -g 23650671 -n 13_76h_1_comb_peaks --nomodel --broad --outdir /Volumes/Lab1/SchulzLab/CutAndRun/macs3_nomodel_broad/
macs3 callpeak -t /Volumes/Lab1/SchulzLab/CutAndRun/bed/14_76h_2_CR_diff_comb_140804_tb927_v5.1_m1_v2_sorted.bed -c /Volumes/Lab1/SchulzLab/CutAndRun/bed/16_IgG_1_CR_diff_comb_140804_tb927_v5.1_m1_v2.bed -f BED --keep-dup all -g 23650671 -n 14_76h-2_comb_peaks --nomodel --broad --outdir /Volumes/Lab1/SchulzLab/CutAndRun/macs3_nomodel_broad/
macs3 callpeak -t /Volumes/Lab1/SchulzLab/CutAndRun/bed/15_76h_3_CR_diff_comb_140804_tb927_v5.1_m1_v2_sorted.bed -c /Volumes/Lab1/SchulzLab/CutAndRun/bed/16_IgG_1_CR_diff_comb_140804_tb927_v5.1_m1_v2.bed -f BED --keep-dup all -g 23650671 -n 15_76h-3_comb_peaks --nomodel --broad --outdir /Volumes/Lab1/SchulzLab/CutAndRun/macs3_nomodel_broad/

