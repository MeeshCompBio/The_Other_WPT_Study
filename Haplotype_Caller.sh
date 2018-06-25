#!/usr/bin/env bash
#USER WILL NEED TO CHANGE THEIR GATK SOFTWARE path
#-R will need to be changed for users reference genome location


java -Xmx28g -jar GenomeAnalysisTK.jar \
    -T HaplotypeCaller \
    -R Gmax.a2.v1/assembly/Gmax_275_v2.0.fa \
    -nct 8 \
    -I STAR/SRR1737979_rg_added_sorted_dedupped_split.bam \
    -I STAR/SRR1737980_rg_added_sorted_dedupped_split.bam \
    -I STAR/SRR1737981_rg_added_sorted_dedupped_split.bam \
    -I STAR/SRR1737982_rg_added_sorted_dedupped_split.bam \
    -I STAR/SRR1737983_rg_added_sorted_dedupped_split.bam \
    -I STAR/SRR1737984_rg_added_sorted_dedupped_split.bam \
    -I STAR/SRR1737985_rg_added_sorted_dedupped_split.bam \
    -I STAR/SRR1737986_rg_added_sorted_dedupped_split.bam \
    -I STAR/SRR1737987_rg_added_sorted_dedupped_split.bam \
    -I STAR/SRR1737988_rg_added_sorted_dedupped_split.bam \
    -I STAR/SRR1737989_rg_added_sorted_dedupped_split.bam \
    -I STAR/SRR1737990_rg_added_sorted_dedupped_split.bam \
    -I STAR/SRR1737991_rg_added_sorted_dedupped_split.bam \
    -I STAR/SRR1737992_rg_added_sorted_dedupped_split.bam \
    -I STAR/SRR1737993_rg_added_sorted_dedupped_split.bam \
    -I STAR/SRR1737994_rg_added_sorted_dedupped_split.bam \
    -I STAR/SRR1737995_rg_added_sorted_dedupped_split.bam \
    -I STAR/SRR1737996_rg_added_sorted_dedupped_split.bam \
    -I STAR/SRR1737997_rg_added_sorted_dedupped_split.bam \
    -I STAR/SRR1737998_rg_added_sorted_dedupped_split.bam \
    -I STAR/SRR1737999_rg_added_sorted_dedupped_split.bam \
    -I STAR/SRR1738000_rg_added_sorted_dedupped_split.bam \
    -I STAR/SRR1738001_rg_added_sorted_dedupped_split.bam \
    -I STAR/SRR1738002_rg_added_sorted_dedupped_split.bam \
    -I STAR/SRR1738003_rg_added_sorted_dedupped_split.bam \
    -I STAR/SRR1738004_rg_added_sorted_dedupped_split.bam \
    -I STAR/SRR1738005_rg_added_sorted_dedupped_split.bam \
    -I STAR/SRR1738006_rg_added_sorted_dedupped_split.bam \
    -I STAR/SRR1738007_rg_added_sorted_dedupped_split.bam \
    -I STAR/SRR1738008_rg_added_sorted_dedupped_split.bam \
    -I STAR/SRR1738009_rg_added_sorted_dedupped_split.bam \
    -I STAR/SRR1738010_rg_added_sorted_dedupped_split.bam \
    -I STAR/SRR1738011_rg_added_sorted_dedupped_split.bam \
    -I STAR/SRR1738012_rg_added_sorted_dedupped_split.bam \
    -I STAR/SRR1738013_rg_added_sorted_dedupped_split.bam \
    -I STAR/SRR1738014_rg_added_sorted_dedupped_split.bam \
    -dontUseSoftClippedBases \
    -stand_call_conf 20 \
    -o Other_WPT_Study_Results.vcf


#Split SNPs and indels into separate files
java -jar GenomeAnalysisTK.jar \
    -T SelectVariants \
    -R Gmax.a2.v1/assembly/Gmax_275_v2.0.fa \
    -V Other_WPT_Study_Results.vcf \
    -selectType SNP \
    -o Other_WPT_Study_Results_SNPs.vcf 

java -jar GenomeAnalysisTK.jar \
    -T SelectVariants \
    -R Gmax.a2.v1/assembly/Gmax_275_v2.0.fa \
    -V Other_WPT_Study_Results.vcf \
    -selectType INDEL \
    -o Other_WPT_Study_Results_INDELs.vcf 



#Run the GATK hard filters for each set
java -jar GenomeAnalysisTK.jar \
    -T VariantFiltration \
    -R Gmax.a2.v1/assembly/Gmax_275_v2.0.fa \
    -V Other_WPT_Study_Results_SNPs.vcf \
    -window 35 \
    -cluster 3 \
    -filterName FS \
    -filter "FS > 30.0" \
    -filterName QD -filter \
    "QD < 2.0" \
    -o Other_WPT_Study_Results_SNPs_Filtered.vcf


java -jar GenomeAnalysisTK.jar \
    -T VariantFiltration \
    -R Gmax.a2.v1/assembly/Gmax_275_v2.0.fa \
    -V Other_WPT_Study_Results_INDELs.vcf \
    -window 35 \
    -cluster 3 \
    -filterName FS \
    -filter "FS > 200.0" \
    -filterName QD -filter \
    "QD < 2.0" \
    -o Other_WPT_Study_Results_INDELs_Filtered.vcf
