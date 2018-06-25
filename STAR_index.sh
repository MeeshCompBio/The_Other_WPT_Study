#!/usr/bin/env bash
# Command used to generate STAR index for 100bp reads
# Make sure to downlaoad the soy reference genome (https://soybase.org/GlycineBlastPages/blast_descriptions.php)
# Also make sure to create a DIR to store your index (it is called STAR in this case)
STAR \
    --runThreadN 8 \
    --runMode genomeGenerate \
    --genomeDir STAR \
    --genomeFastaFiles Gmax.a2.v1/assembly/Gmax_275_v2.0.fa \
    --sjdbGTFfile Gmax.a2.v1/annotation/Gmax_275_Wm82.a2.v1.gene_exons.gff3 \
    --sjdbGTFtagExonParentTranscript Parent \
    --sjdbOverhang 99
