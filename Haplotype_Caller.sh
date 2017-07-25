java -Xmx90g -jar /project/csbio/Meesh/Software/GenomeAnalysisTK.jar \
-T HaplotypeCaller \
-R /project/chadm/Meesh/Data/References/Gmax.a2.v1/assembly/Gmax_275_v2.0.fa \
-nct 30 \
-I SRR1737979_rg_added_sorted_dedupped_split.bam \
-I SRR1737980_rg_added_sorted_dedupped_split.bam \
-I SRR1737981_rg_added_sorted_dedupped_split.bam \
-I SRR1737982_rg_added_sorted_dedupped_split.bam \
-I SRR1737983_rg_added_sorted_dedupped_split.bam \
-I SRR1737984_rg_added_sorted_dedupped_split.bam \
-I SRR1737985_rg_added_sorted_dedupped_split.bam \
-I SRR1737986_rg_added_sorted_dedupped_split.bam \
-I SRR1737987_rg_added_sorted_dedupped_split.bam \
-I SRR1737988_rg_added_sorted_dedupped_split.bam \
-I SRR1737989_rg_added_sorted_dedupped_split.bam \
-I SRR1737990_rg_added_sorted_dedupped_split.bam \
-I SRR1737991_rg_added_sorted_dedupped_split.bam \
-I SRR1737992_rg_added_sorted_dedupped_split.bam \
-I SRR1737993_rg_added_sorted_dedupped_split.bam \
-I SRR1737994_rg_added_sorted_dedupped_split.bam \
-I SRR1737995_rg_added_sorted_dedupped_split.bam \
-I SRR1737996_rg_added_sorted_dedupped_split.bam \
-I SRR1737997_rg_added_sorted_dedupped_split.bam \
-I SRR1737998_rg_added_sorted_dedupped_split.bam \
-I SRR1737999_rg_added_sorted_dedupped_split.bam \
-I SRR1738000_rg_added_sorted_dedupped_split.bam \
-I SRR1738001_rg_added_sorted_dedupped_split.bam \
-I SRR1738002_rg_added_sorted_dedupped_split.bam \
-I SRR1738003_rg_added_sorted_dedupped_split.bam \
-I SRR1738004_rg_added_sorted_dedupped_split.bam \
-I SRR1738005_rg_added_sorted_dedupped_split.bam \
-I SRR1738006_rg_added_sorted_dedupped_split.bam \
-I SRR1738007_rg_added_sorted_dedupped_split.bam \
-I SRR1738008_rg_added_sorted_dedupped_split.bam \
-I SRR1738009_rg_added_sorted_dedupped_split.bam \
-I SRR1738010_rg_added_sorted_dedupped_split.bam \
-I SRR1738011_rg_added_sorted_dedupped_split.bam \
-I SRR1738012_rg_added_sorted_dedupped_split.bam \
-I SRR1738013_rg_added_sorted_dedupped_split.bam \
-I SRR1738014_rg_added_sorted_dedupped_split.bam \
-dontUseSoftClippedBases \
-stand_call_conf 20 \
-o /project/csbio/Meesh/Projects/Other_WPT_Study_Results.vcf


#Split SNPs and indels into separate files
java -jar /project/csbio/Meesh/Software/GenomeAnalysisTK.jar \
    -T SelectVariants \
    -R /project/chadm/Meesh/Data/References/Gmax.a2.v1/assembly/Gmax_275_v2.0.fa \
    -V Other_WPT_Study_Results.vcf \
    -selectType SNP \
    -o Other_WPT_Study/Other_WPT_Study_Results_SNPs.vcf 

java -jar /project/csbio/Meesh/Software/GenomeAnalysisTK.jar \
    -T SelectVariants \
    -R /project/chadm/Meesh/Data/References/Gmax.a2.v1/assembly/Gmax_275_v2.0.fa \
    -V Other_WPT_Study_Results.vcf \
    -selectType INDEL \
    -o Other_WPT_Study/Other_WPT_Study_Results_INDELs.vcf 



#Run the GATK hard filters for each set
java -jar /project/csbio/Meesh/Software/GenomeAnalysisTK.jar \
-T VariantFiltration \
-R /project/chadm/Meesh/Data/References/Gmax.a2.v1/assembly/Gmax_275_v2.0.fa \
-V Other_WPT_Study_Results_SNPs.vcf \
-window 35 \
-cluster 3 \
-filterName FS \
-filter "FS > 30.0" \
-filterName QD -filter \
"QD < 2.0" \
-o Other_WPT_Study_Results_SNPs_Filtered.vcf


java -jar /project/csbio/Meesh/Software/GenomeAnalysisTK.jar \
-T VariantFiltration \
-R /project/chadm/Meesh/Data/References/Gmax.a2.v1/assembly/Gmax_275_v2.0.fa \
-V Other_WPT_Study_Results_INDELs.vcf \
-window 35 \
-cluster 3 \
-filterName FS \
-filter "FS > 200.0" \
-filterName QD -filter \
"QD < 2.0" \
-o Other_WPT_Study_Results_INDELs_Filtered.vcf
