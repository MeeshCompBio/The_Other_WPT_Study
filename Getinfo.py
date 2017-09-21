#!/usr/bin/python3
import sys
import itertools


"""writes the Ref, Alt, Depth, QUAL score, genotype,
  SNP or INDEL, and file basename from a single sample
   vcf to std out"""
# example use
# python3 Getinfo.py your.vcf

""" For running this on multiple VCF files in a directory
 you can use a command as follows

for i in $( ls *.vcf ); do
            python3 Getinfo.py $i >> <insert_results_file_name>.txt
        done
"""


seqfile = open(sys.argv[1], "r")
basename = sys.argv[1].split("/")[-1]
idname = basename.split("_")[0]
identifierlist = list()
sequenceinfolist = list()

# store all relavent information
for line in seqfile:
    line = line.rstrip()
    if line.startswith("#"):
        continue
    else:
        columns = line.split("\t")
        REF = columns[3]
        ALT = columns[4]
        QUAL = columns[5]
        Genotype = columns[9][0:3]
        if columns[7][0:5] == "INDEL":
            State = "INDEL"
            segs = columns[7].split(";")
            Depth = segs[3][3:]
        else:
            segs = columns[7].split(";")
            State = "SNP"
            Depth = segs[0][3:]
    final = itertools.chain([REF], [ALT], [Depth], [QUAL], [Genotype],
                            [State], [idname])
    sys.stdout.write(('\t'.join(final)+'\n'))
