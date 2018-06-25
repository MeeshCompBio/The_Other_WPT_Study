###############################################
#This is the R script that was used to identify which accession line 764 was
#Note: This code was written/used in an interactive terminal 
##and not as an Rscript command file
###############################################


#Set your working directory
#setwd("/media/jmichno/MeeshExternal/Other_WPT_Study")
setwd("F:/Other_WPT_Study")
#Read in the data
Data <- read.csv("Other_WPT_Study_Results_SNPs_Filtered_PASS_Geno.csv", stringsAsFactors = FALSE)
#Read in sample conversion to turn SRR into real line names
Snames <- read.csv("SampleConversion.csv",stringsAsFactors = FALSE)
#Convert SRR names to real names
newcnames <- c(colnames(Data)[1:9], Snames$Sample_Name)
colnames(Data) <- newcnames
#Parse out CHROM, POS, and genotype calls only
GenoCall <- Data[,c(1,2,10:45)]

#Convert HET calls to missing data
GenoCall[GenoCall=="0/1"] <- "./."

#remove triallelic
GenoCall_F1 <- GenoCall[-c(which(GenoCall$CHROM=="0/2")),]
GenoCall_F2 <- GenoCall_F1[-c(which(GenoCall_F1$`764_H2`=="GT:AD:DP:GQ:PL")),]

#remove heterogenety within a genotype for 9 samples
#The function looks for HET or HOM state, 
##but it will still perform the same if it is filtered.
#Note that the function is looking for either HET or HOM
##then overwriting the HET var to equal one.
#It will then look across lines to see if more than one line
##has the value of one. This will remove any SNPs that appear
##in more than one line
HOMCall<- function(arg1){
  #find out which values have 1/1 or 0/0
  HETWT <- which(arg1[c(30:38)] == '0/1')
  HOMWT <- which(arg1[c(30:38)] == '1/1')
  if (length(HETWT) >= (1) | length(HOMWT) >= (1)){
    HETWT <- 1
  }
  HETST111 <- which(arg1[c(21:29)] == '0/1')
  HOMST111 <- which(arg1[c(21:29)] == '1/1')
  if (length(HETST111) >= (1) | length(HOMST111) >= (1)){
    HETST111 <- 1
  }
  HETST77 <- which(arg1[c(12:20)] == '0/1')
  HOMST77 <- which(arg1[c(12:20)] == '1/1')
  if (length(HETST77) >= (1) | length(HOMST77) >= (1) ){
    HETST77 <- 1
  }
  HET764<- which(arg1[c(3:11)] == '0/1')
  HOM764<- which(arg1[c(3:11)] == '1/1')
  if (length(HET764) >= (1) | length(HOM764) >= (1) ){
    HET764 <- 1
  }
  #the Alt has a value of 1 and Ref has a value of the numble of samples minus one
  if ((length(HETWT)+length(HETST111)+length(HETST77)+length(HET764)) >= (2)){
    return(FALSE)
  }
  else{
    return(TRUE)
  }
}

#set temp var to hold positions
Temp <-apply(GenoCall_F2, 1, HOMCall)
#Subset the old data witht the the temp var positions
Unique2Line <- GenoCall_F2[c(Temp),]

#This functions check to see if the allelic state is the same within
#The nine samples within a line while ignoring missing data
HETGENA<- function(arg1){
  HOM1 <- match('1/1',arg1[c(3:11)])
  REF1 <- match('0/0',arg1[c(3:11)])
  HOM2 <- match('1/1',arg1[c(12:20)])
  REF2 <- match('0/0',arg1[c(12:20)])
  HOM3 <- match('1/1',arg1[c(21:29)])
  REF3 <- match('0/0',arg1[c(21:29)])
  HOM4 <- match('1/1', arg1[c(30:38)])
  REF4 <- match('0/0', arg1[c(30:38)])
  #the Alt has a value of 1 and Ref has a value of the numble of samples minus one
  if (is.na(HOM1)==FALSE & is.na(REF1)==FALSE | is.na(HOM2)==FALSE & is.na(REF2)==FALSE | is.na(HOM3)==FALSE & is.na(REF3)==FALSE | is.na(HOM4)==FALSE & is.na(REF4)==FALSE){
    return(FALSE)
  }
  else{
    return(TRUE)
  }
}

#same subset method as before
Temp <-apply(Unique2Line, 1, HETGENA)
No_Within_Sample <- Unique2Line[which(Temp == TRUE),]

#Filter our missing data
#No line can have more than 3 of the 9 samples missing at a given postion
MissCall<- function(arg1){
  #find out which values have 1/1 or 0/0
  Miss1 <- which(arg1[c(3:11)] == './.')
  Miss2 <- which(arg1[c(12:20)] == './.')
  Miss3 <- which(arg1[c(21:29)] == './.')
  Miss4 <- which(arg1[c(30:38)] == './.')
  #the Alt has a value of 1 and Ref has a value of the numble of samples minus one
  if (length(Miss1) <= (3) & length(Miss2) <= (3) & length(Miss3) <= (3) & length(Miss4) <= (3)){
    return(TRUE)
  }
  else{
    return(FALSE)
  }
}

#run the function on the data
Temp <-apply(No_Within_Sample, 1, MissCall)
Data_NoMiss <- No_Within_Sample[which(Temp == TRUE),]


#Make sure the is a SNP at the position since we did not check if it was 0/0 across the board
#this is mainly from converting HETs to missing data
SNP<- function(arg1){
  HOM <- match('1/1',arg1[c(3:38)])
  REF <- match('0/0',arg1[c(3:38)])
  #the Alt has a value of 1 and Ref has a value of the numble of samples minus one
  if (is.na(HOM)==TRUE | is.na(REF)==TRUE){
    return(FALSE)
  }
  else{
    return(TRUE)
  }
}

Temp <-apply(Data_NoMiss, 1, SNP)
#use the number of T or F to parce out hard snp calls from the original data
No_Within_Sample_Final <- Data_NoMiss[which(Temp == TRUE),]

#Get which rows have variants
WVAR <- apply(No_Within_Sample_Final, 2, function(c)which(c=="1/1"))
#Just to get a visual summary
apply(No_Within_Sample_Final, 2, function(c)sum(c=="1/1"))

#find out which rows have the data we want
Uni_764 <- unique(unlist(WVAR[3:11]))
Uni_ST77 <- unique(unlist(WVAR[12:20]))
Uni_ST111 <- unique(unlist(WVAR[21:29]))
Uni_WT <- unique(unlist(WVAR[30:38]))

#get it ready for 50k position
AllSNPPOS <- No_Within_Sample_Final[unique(c(Uni_764,Uni_ST77,Uni_ST111,Uni_WT)),]
apply(AllSNPPOS, 2, function(c)sum(c=="1/1"))

###percent identity from 50k .vcf
#setwd("/media/jmichno/MeeshExternal/testing)
setwd("F:/testing")
#Read in the data
DATA <- read.delim("SRR_50k_intersect_Geno.txt", header = TRUE, stringsAsFactors = FALSE)
Snames <- read.csv("../Other_WPT_Study/SampleConversion.csv",stringsAsFactors = FALSE)
#Sample conversion again
newcnames <- c(colnames(DATA)[1:2], Snames$Sample_Name)
colnames(Data) <- newcnames
#Rename the GENO variable to represent the 50k
GENO <- DATA[,10:20132]


#Just subset the SRR lines
SRR <- cbind(DATA[,1:2],GENO[,20088:20123])
#Rename
colnames(SRR) <- newcnames
#We don't care about hets for similarity so convert it to missing data
SRR[SRR == "0/1"] <- c("./.")

#find wich SRR line positions are in the 50k
Line_Overlap <- SRR[SRR$POS %in% AllSNPPOS$POS, ]

#Get a summary of what lines have what variants
WVAR2 <- apply(Line_Overlap, 2, function(c)which(c=="1/1"))

#summaries for each line
Uni_764_2 <- unique(unlist(WVAR2[3:11]))
Uni_ST77_2 <- unique(unlist(WVAR2[12:20]))
Uni_ST111_2 <- unique(unlist(WVAR2[21:29]))
Uni_WT_2 <- unique(unlist(WVAR2[30:38]))

#Write summaries
write.table(AllSNPPOS, "Other_WPT_SNPs_Filter_Pipeline.tsv", quote = FALSE, sep = "\t", row.names = FALSE)
write.table(Line_Overlap, "Line_Overlap_50kintersect_Filter_Pipeline.tsv", quote = FALSE, sep = "\t", row.names = FALSE)

#take those overlapping positions an subset the entire 50k collection
Geno_Overlap <- DATA[DATA$POS %in% AllSNPPOS$POS, ]
Geno_Overlap_p1 <- Geno_Overlap[,1:10066]
Geno_Overlap_p2 <- Geno_Overlap[,10067:20132]
#Write to a file to calculate similairity of lines to SRR lines
write.table(Geno_Overlap_p1, "50kintersect_withHG_V3_Part1_Filter.tsv", quote = FALSE, sep = "\t", row.names = FALSE)
write.table(Geno_Overlap_p2, "50kintersect_withHG_V3_Part2_Filter.tsv", quote = FALSE, sep = "\t", row.names = FALSE)
