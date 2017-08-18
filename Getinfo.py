"""writes the Depth, QUAL score, genotype and SNP or INDEL from a single sample vcf to std out"""
 
 
#example use
#python3 Getinfo.py your.vcf 


import sys
import itertools

seqfile = open(sys.argv[1], "r")
identifierlist = list()
sequenceinfolist = list()

#store all relavent information
for line in seqfile:
    line = line.rstrip()
    if line.startswith("#"):
        continue
    else:
        columns = line.split("\t")
        QUAL = columns[5]
        Genotype = columns[9][0:3]
        #print(len(columns))
        #print(columns[7][0:5] )
        if columns[7][0:5] == "INDEL":
            State = "INDEL"
            segs = columns[7].split(";")
            Depth = segs[3][3:]
        else:
            segs = columns[7].split(";")
            State = "SNP"
            Depth= segs[0][3:]
    final = itertools.chain([Depth],[QUAL],[Genotype],[State])
    sys.stdout.write(('\t'.join(final)+'\n'))

