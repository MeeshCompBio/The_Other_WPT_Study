#Use the modified 50k vcf with modified CHR field
bedtools intersect -a Other_WPT_Study/Other_WPT_Study_Results_SNPs_Filtered_PASS.vcf -b 50k_Data.vcf
