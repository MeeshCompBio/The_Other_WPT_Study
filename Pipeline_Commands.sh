#Download the reads from the SRA
lftp -c mirror ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByStudy/sra/SRP/SRP051/SRP051659/ .

#Unpack the downloaded *.sra files
parallel --j 8 < FQ_Dump.txt

#Run Fastqc on the unpacked SRA files
parallel --gnu -j 8 fastqc \
{1} \
::: SRR1737979_1.fastq SRR1737980_1.fastq SRR1737981_1.fastq SRR1737982_1.fastq SRR1737983_1.fastq SRR1737984_1.fastq SRR1737985_1.fastq SRR1737986_1.fastq SRR1737987_1.fastq SRR1737988_1.fastq SRR1737989_1.fastq SRR1737990_1.fastq SRR1737991_1.fastq SRR1737992_1.fastq SRR1737993_1.fastq SRR1737994_1.fastq SRR1737995_1.fastq SRR1737996_1.fastq SRR1737997_1.fastq SRR1737998_1.fastq SRR1737999_1.fastq SRR1738000_1.fastq SRR1738001_1.fastq SRR1738002_1.fastq SRR1738003_1.fastq SRR1738004_1.fastq SRR1738005_1.fastq SRR1738006_1.fastq SRR1738007_1.fastq SRR1738008_1.fastq SRR1738009_1.fastq SRR1738010_1.fastq SRR1738011_1.fastq SRR1738012_1.fastq SRR1738013_1.fastq SRR1738014_1.fastq

#Remove adaptor contamination and trim reads based on quality
parallel --j 8 < Cut_Commands.txt

#Run FastQC on trimed reads
parallel --gnu -j 8 fastqc \
{1} \
::: SRR1737979_cutadapt.fastq SRR1737980_cutadapt.fastq SRR1737981_cutadapt.fastq SRR1737983_cutadapt.fastq SRR1737983_cutadapt.fastq SRR1737984_cutadapt.fastq SRR1737985_cutadapt.fastq SRR1737986_cutadapt.fastq SRR1737987_cutadapt.fastq SRR1737988_cutadapt.fastq SRR1737989_cutadapt.fastq SRR1737990_cutadapt.fastq SRR1737991_cutadapt.fastq SRR1737992_cutadapt.fastq SRR1737993_cutadapt.fastq SRR1737994_cutadapt.fastq SRR1737995_cutadapt.fastq SRR1737996_cutadapt.fastq SRR1737997_cutadapt.fastq SRR1737998_cutadapt.fastq SRR1737999_cutadapt.fastq SRR1738000_cutadapt.fastq SRR1738001_cutadapt.fastq SRR1738002_cutadapt.fastq SRR1738003_cutadapt.fastq SRR1738004_cutadapt.fastq SRR1738005_cutadapt.fastq SRR1738006_cutadapt.fastq SRR1738007_cutadapt.fastq SRR1738008_cutadapt.fastq SRR1738009_cutadapt.fastq SRR1738010_cutadapt.fastq SRR1738011_cutadapt.fastq SRR1738012_cutadapt.fastq SRR1738013_cutadapt.fastq SRR1738014_cutadapt.fastq

#make a DIR for STAR
mkdir -p STAR
cd STAR

#Align reads using STAR
parallel --j 8 < STAR_Commands.txt

#Add read group information, mark duplicates and SplitNCigar reads according to GATK gold standard pipeline for RNA-seq
parallel --j 8 < Picard_Bam_Process.txt

#Call variants and indels using haplotype caller then split SNP/INDEL and run hard filters
bash Haplotype_Caller.sh
