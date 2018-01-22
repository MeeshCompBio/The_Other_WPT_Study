# The_Other_WPT_Study

## Pipeline
SNPs and indels were called according to the [GATK best practices](https://software.broadinstitute.org/gatk/documentation/article.php?id=3891) pipeline for RNA-seq


If you have the all of the software version downloaded, you can run the command below to download the data and generate SNPs and indels. 
<br>
<br>
<strong>Note:</strong> 
<br>
* The scripts that are called use multple threads, please make sure to check that your machine has enough threads, or modify the scripts accordingly.
* You will also need to download/index the soy a2.v1 genome and modify STAR_Commands.txt to point to your .fa and .gff file locations

```bash
bash Pipeline_Commands.sh
```

## Versions of software used
```
lftp 4.38.1
GNU parallel 20160822
FastQC 0.11.5
Cutadapt 1.8.1
STAR 2.5.3a
Picard Tools 2.9.2
GenomeAnalysisTK 3.7-0
VCFtools 0.1.15
BEDtools 2.25.0
```
