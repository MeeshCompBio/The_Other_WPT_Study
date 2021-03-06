#Run STAR with two pass mode on previous index ref genome
#Users will need to chanfe the gff and reference location for each command
#Each command uses 8 threads
STAR \
--runThreadN 8 \
--genomeDir /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/assembly/STAR \
--sjdbGTFfile /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/annotation/Gmax_275_Wm82.a2.v1.gene_exons.gff3 \
--sjdbGTFtagExonParentTranscript Parent \
--readFilesIn ../SRR1737979_cutadapt.fastq \
--twopassMode Basic \
--outFileNamePrefix SRR1737979

STAR \
--runThreadN 8 \
--genomeDir /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/assembly/STAR \
--sjdbGTFfile /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/annotation/Gmax_275_Wm82.a2.v1.gene_exons.gff3 \
--sjdbGTFtagExonParentTranscript Parent \
--readFilesIn ../SRR1737980_cutadapt.fastq \
--twopassMode Basic \
--outFileNamePrefix SRR1737980

STAR \
--runThreadN 8 \
--genomeDir /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/assembly/STAR \
--sjdbGTFfile /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/annotation/Gmax_275_Wm82.a2.v1.gene_exons.gff3 \
--sjdbGTFtagExonParentTranscript Parent \
--readFilesIn ../SRR1737981_cutadapt.fastq \
--twopassMode Basic \
--outFileNamePrefix SRR1737981

STAR \
--runThreadN 8 \
--genomeDir /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/assembly/STAR \
--sjdbGTFfile /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/annotation/Gmax_275_Wm82.a2.v1.gene_exons.gff3 \
--sjdbGTFtagExonParentTranscript Parent \
--readFilesIn ../SRR1737982_cutadapt.fastq \
--twopassMode Basic \
--outFileNamePrefix SRR1737982

STAR \
--runThreadN 8 \
--genomeDir /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/assembly/STAR \
--sjdbGTFfile /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/annotation/Gmax_275_Wm82.a2.v1.gene_exons.gff3 \
--sjdbGTFtagExonParentTranscript Parent \
--readFilesIn ../SRR1737983_cutadapt.fastq \
--twopassMode Basic \
--outFileNamePrefix SRR1737983

STAR \
--runThreadN 8 \
--genomeDir /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/assembly/STAR \
--sjdbGTFfile /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/annotation/Gmax_275_Wm82.a2.v1.gene_exons.gff3 \
--sjdbGTFtagExonParentTranscript Parent \
--readFilesIn ../SRR1737984_cutadapt.fastq \
--twopassMode Basic \
--outFileNamePrefix SRR1737984

STAR \
--runThreadN 8 \
--genomeDir /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/assembly/STAR \
--sjdbGTFfile /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/annotation/Gmax_275_Wm82.a2.v1.gene_exons.gff3 \
--sjdbGTFtagExonParentTranscript Parent \
--readFilesIn ../SRR1737985_cutadapt.fastq \
--twopassMode Basic \
--outFileNamePrefix SRR1737985

STAR \
--runThreadN 8 \
--genomeDir /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/assembly/STAR \
--sjdbGTFfile /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/annotation/Gmax_275_Wm82.a2.v1.gene_exons.gff3 \
--sjdbGTFtagExonParentTranscript Parent \
--readFilesIn ../SRR1737986_cutadapt.fastq \
--twopassMode Basic \
--outFileNamePrefix SRR1737986

STAR \
--runThreadN 8 \
--genomeDir /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/assembly/STAR \
--sjdbGTFfile /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/annotation/Gmax_275_Wm82.a2.v1.gene_exons.gff3 \
--sjdbGTFtagExonParentTranscript Parent \
--readFilesIn ../SRR1737987_cutadapt.fastq \
--twopassMode Basic \
--outFileNamePrefix SRR1737987

STAR \
--runThreadN 8 \
--genomeDir /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/assembly/STAR \
--sjdbGTFfile /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/annotation/Gmax_275_Wm82.a2.v1.gene_exons.gff3 \
--sjdbGTFtagExonParentTranscript Parent \
--readFilesIn ../SRR1737988_cutadapt.fastq \
--twopassMode Basic \
--outFileNamePrefix SRR1737988

STAR \
--runThreadN 8 \
--genomeDir /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/assembly/STAR \
--sjdbGTFfile /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/annotation/Gmax_275_Wm82.a2.v1.gene_exons.gff3 \
--sjdbGTFtagExonParentTranscript Parent \
--readFilesIn ../SRR1737989_cutadapt.fastq \
--twopassMode Basic \
--outFileNamePrefix SRR1737989

STAR \
--runThreadN 8 \
--genomeDir /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/assembly/STAR \
--sjdbGTFfile /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/annotation/Gmax_275_Wm82.a2.v1.gene_exons.gff3 \
--sjdbGTFtagExonParentTranscript Parent \
--readFilesIn ../SRR1737990_cutadapt.fastq \
--twopassMode Basic \
--outFileNamePrefix SRR1737990

STAR \
--runThreadN 8 \
--genomeDir /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/assembly/STAR \
--sjdbGTFfile /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/annotation/Gmax_275_Wm82.a2.v1.gene_exons.gff3 \
--sjdbGTFtagExonParentTranscript Parent \
--readFilesIn ../SRR1737991_cutadapt.fastq \
--twopassMode Basic \
--outFileNamePrefix SRR1737991

STAR \
--runThreadN 8 \
--genomeDir /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/assembly/STAR \
--sjdbGTFfile /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/annotation/Gmax_275_Wm82.a2.v1.gene_exons.gff3 \
--sjdbGTFtagExonParentTranscript Parent \
--readFilesIn ../SRR1737992_cutadapt.fastq \
--twopassMode Basic \
--outFileNamePrefix SRR1737992

STAR \
--runThreadN 8 \
--genomeDir /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/assembly/STAR \
--sjdbGTFfile /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/annotation/Gmax_275_Wm82.a2.v1.gene_exons.gff3 \
--sjdbGTFtagExonParentTranscript Parent \
--readFilesIn ../SRR1737993_cutadapt.fastq \
--twopassMode Basic \
--outFileNamePrefix SRR1737993

STAR \
--runThreadN 8 \
--genomeDir /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/assembly/STAR \
--sjdbGTFfile /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/annotation/Gmax_275_Wm82.a2.v1.gene_exons.gff3 \
--sjdbGTFtagExonParentTranscript Parent \
--readFilesIn ../SRR1737994_cutadapt.fastq \
--twopassMode Basic \
--outFileNamePrefix SRR1737994

STAR \
--runThreadN 8 \
--genomeDir /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/assembly/STAR \
--sjdbGTFfile /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/annotation/Gmax_275_Wm82.a2.v1.gene_exons.gff3 \
--sjdbGTFtagExonParentTranscript Parent \
--readFilesIn ../SRR1737995_cutadapt.fastq \
--twopassMode Basic \
--outFileNamePrefix SRR1737995

STAR \
--runThreadN 8 \
--genomeDir /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/assembly/STAR \
--sjdbGTFfile /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/annotation/Gmax_275_Wm82.a2.v1.gene_exons.gff3 \
--sjdbGTFtagExonParentTranscript Parent \
--readFilesIn ../SRR1737996_cutadapt.fastq \
--twopassMode Basic \
--outFileNamePrefix SRR1737996

STAR \
--runThreadN 8 \
--genomeDir /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/assembly/STAR \
--sjdbGTFfile /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/annotation/Gmax_275_Wm82.a2.v1.gene_exons.gff3 \
--sjdbGTFtagExonParentTranscript Parent \
--readFilesIn ../SRR1737997_cutadapt.fastq \
--twopassMode Basic \
--outFileNamePrefix SRR1737997

STAR \
--runThreadN 8 \
--genomeDir /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/assembly/STAR \
--sjdbGTFfile /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/annotation/Gmax_275_Wm82.a2.v1.gene_exons.gff3 \
--sjdbGTFtagExonParentTranscript Parent \
--readFilesIn ../SRR1737998_cutadapt.fastq \
--twopassMode Basic \
--outFileNamePrefix SRR1737998

STAR \
--runThreadN 8 \
--genomeDir /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/assembly/STAR \
--sjdbGTFfile /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/annotation/Gmax_275_Wm82.a2.v1.gene_exons.gff3 \
--sjdbGTFtagExonParentTranscript Parent \
--readFilesIn ../SRR1737999_cutadapt.fastq \
--twopassMode Basic \
--outFileNamePrefix SRR1737999

STAR \
--runThreadN 8 \
--genomeDir /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/assembly/STAR \
--sjdbGTFfile /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/annotation/Gmax_275_Wm82.a2.v1.gene_exons.gff3 \
--sjdbGTFtagExonParentTranscript Parent \
--readFilesIn ../SRR1738000_cutadapt.fastq \
--twopassMode Basic \
--outFileNamePrefix SRR1738000

STAR \
--runThreadN 8 \
--genomeDir /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/assembly/STAR \
--sjdbGTFfile /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/annotation/Gmax_275_Wm82.a2.v1.gene_exons.gff3 \
--sjdbGTFtagExonParentTranscript Parent \
--readFilesIn ../SRR1738001_cutadapt.fastq \
--twopassMode Basic \
--outFileNamePrefix SRR1738001

STAR \
--runThreadN 8 \
--genomeDir /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/assembly/STAR \
--sjdbGTFfile /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/annotation/Gmax_275_Wm82.a2.v1.gene_exons.gff3 \
--sjdbGTFtagExonParentTranscript Parent \
--readFilesIn ../SRR1738002_cutadapt.fastq \
--twopassMode Basic \
--outFileNamePrefix SRR1738002

STAR \
--runThreadN 8 \
--genomeDir /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/assembly/STAR \
--sjdbGTFfile /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/annotation/Gmax_275_Wm82.a2.v1.gene_exons.gff3 \
--sjdbGTFtagExonParentTranscript Parent \
--readFilesIn ../SRR1738003_cutadapt.fastq \
--twopassMode Basic \
--outFileNamePrefix SRR1738003

STAR \
--runThreadN 8 \
--genomeDir /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/assembly/STAR \
--sjdbGTFfile /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/annotation/Gmax_275_Wm82.a2.v1.gene_exons.gff3 \
--sjdbGTFtagExonParentTranscript Parent \
--readFilesIn ../SRR1738004_cutadapt.fastq \
--twopassMode Basic \
--outFileNamePrefix SRR1738004

STAR \
--runThreadN 8 \
--genomeDir /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/assembly/STAR \
--sjdbGTFfile /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/annotation/Gmax_275_Wm82.a2.v1.gene_exons.gff3 \
--sjdbGTFtagExonParentTranscript Parent \
--readFilesIn ../SRR1738005_cutadapt.fastq \
--twopassMode Basic \
--outFileNamePrefix SRR1738005

STAR \
--runThreadN 8 \
--genomeDir /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/assembly/STAR \
--sjdbGTFfile /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/annotation/Gmax_275_Wm82.a2.v1.gene_exons.gff3 \
--sjdbGTFtagExonParentTranscript Parent \
--readFilesIn ../SRR1738006_cutadapt.fastq \
--twopassMode Basic \
--outFileNamePrefix SRR1738006

STAR \
--runThreadN 8 \
--genomeDir /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/assembly/STAR \
--sjdbGTFfile /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/annotation/Gmax_275_Wm82.a2.v1.gene_exons.gff3 \
--sjdbGTFtagExonParentTranscript Parent \
--readFilesIn ../SRR1738007_cutadapt.fastq \
--twopassMode Basic \
--outFileNamePrefix SRR1738007

STAR \
--runThreadN 8 \
--genomeDir /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/assembly/STAR \
--sjdbGTFfile /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/annotation/Gmax_275_Wm82.a2.v1.gene_exons.gff3 \
--sjdbGTFtagExonParentTranscript Parent \
--readFilesIn ../SRR1738008_cutadapt.fastq \
--twopassMode Basic \
--outFileNamePrefix SRR1738008

STAR \
--runThreadN 8 \
--genomeDir /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/assembly/STAR \
--sjdbGTFfile /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/annotation/Gmax_275_Wm82.a2.v1.gene_exons.gff3 \
--sjdbGTFtagExonParentTranscript Parent \
--readFilesIn ../SRR1738009_cutadapt.fastq \
--twopassMode Basic \
--outFileNamePrefix SRR1738009

STAR \
--runThreadN 8 \
--genomeDir /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/assembly/STAR \
--sjdbGTFfile /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/annotation/Gmax_275_Wm82.a2.v1.gene_exons.gff3 \
--sjdbGTFtagExonParentTranscript Parent \
--readFilesIn ../SRR1738010_cutadapt.fastq \
--twopassMode Basic \
--outFileNamePrefix SRR1738010

STAR \
--runThreadN 8 \
--genomeDir /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/assembly/STAR \
--sjdbGTFfile /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/annotation/Gmax_275_Wm82.a2.v1.gene_exons.gff3 \
--sjdbGTFtagExonParentTranscript Parent \
--readFilesIn ../SRR1738011_cutadapt.fastq \
--twopassMode Basic \
--outFileNamePrefix SRR1738011

STAR \
--runThreadN 8 \
--genomeDir /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/assembly/STAR \
--sjdbGTFfile /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/annotation/Gmax_275_Wm82.a2.v1.gene_exons.gff3 \
--sjdbGTFtagExonParentTranscript Parent \
--readFilesIn ../SRR1738012_cutadapt.fastq \
--twopassMode Basic \
--outFileNamePrefix SRR1738012

STAR \
--runThreadN 8 \
--genomeDir /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/assembly/STAR \
--sjdbGTFfile /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/annotation/Gmax_275_Wm82.a2.v1.gene_exons.gff3 \
--sjdbGTFtagExonParentTranscript Parent \
--readFilesIn ../SRR1738013_cutadapt.fastq \
--twopassMode Basic \
--outFileNamePrefix SRR1738013

STAR \
--runThreadN 8 \
--genomeDir /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/assembly/STAR \
--sjdbGTFfile /panfs/roc/groups/13/stuparr/shared/References/Gmax.a2.v1/annotation/Gmax_275_Wm82.a2.v1.gene_exons.gff3 \
--sjdbGTFtagExonParentTranscript Parent \
--readFilesIn ../SRR1738014_cutadapt.fastq \
--twopassMode Basic \
--outFileNamePrefix SRR1738014
