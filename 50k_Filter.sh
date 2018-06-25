# Use the modified 50k vcf with modified CHR field
# The downloaded VCF from https://soybase.org/snps/soysnp50k_wm82.a2_41317.vcf.gz has GM chromosome names
# They need to be convereted to CHR since assembly 2 uses that nomenclature
bedtools intersect -a Other_WPT_Study/Other_WPT_Study_Results_SNPs_Filtered_PASS.vcf -b 50k_Data.vcf
