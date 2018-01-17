# The_Other_WPT_Study

## Pipeline
SNPs and indels were called according to the [GATK best practices](https://software.broadinstitute.org/gatk/documentation/article.php?id=3891) pipeline for RNA-seq


If you have the all of the software version downloaded, you can run the command below to generate SNPs and indels. 
<br>
<br>
<strong>Note:</strong> 
<br>
* The scripts that are called use multple threads, please make sure to check that your machine has enough threads, or modify the scripts accordingly.

* Make sure you are in the same directory as your downloaded SRA files from PRJNA271477 on the NCBI SRA

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
