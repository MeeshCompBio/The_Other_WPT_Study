#!/usr/bin/env bash
# Command used to generate STAR index for 100bp reads
STAR \
    --runThreadN 8 \
    --runMode genomeGenerate \
    --genomeDir /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/assembly/STAR \
    --genomeFastaFiles /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/assembly/Gmax_275_v2.0.fa \
    --sjdbGTFfile /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/annotation/Gmax_275_Wm82.a2.v1.gene_exons.gff3 \
    --sjdbGTFtagExonParentTranscript Parent \
    --sjdbOverhang 99
