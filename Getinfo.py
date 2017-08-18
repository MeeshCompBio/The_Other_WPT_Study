"""s takes a GATK.vcf file as input, the numer of samples, and the name of your desired
 ouput file and returns you a .csv file with the allelic state for each sample"""
 
 
#example use
#python3 your.vcf 


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
        #print(line)
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






# var = [[] for _ in range(len(header))]
# # parse our the file
# for line in sequenceinfolist:
#     columns = line.split("\t")
#     for i in range(len(header)):
#         if i < 9:
#             var[i].append(columns[i])
#         else:
#           #this line slices out the allele state
#             var[i].append(columns[i][0:3])

# output = open(sys.argv[3], "w")

# output.write('\t'.join(header))
# output.write('\n')

# PLIST= list()

# for j in range(len(var[1])):
#     final = []
#     for i in var:
#         final.append(i[j])
#     #make output comma seperated
#     output.write('\t'.join(final)+'\n')



# output.close()
