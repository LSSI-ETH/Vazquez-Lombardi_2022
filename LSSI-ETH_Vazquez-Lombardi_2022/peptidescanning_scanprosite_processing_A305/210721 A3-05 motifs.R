#This script allows for the generation of peptide motifs at a discrete threshold 
#of activation following peptide DMS. Data should be normalised to the % 
#activation (e.g., GFP or CD69 expression) relative to activation with wild-type 
#target peptide

getwd()
setwd("/Users/")

#open file
data1 <- read.csv("210721 A3-05 pepscanning.csv")
head(data1)

#create subsets from desired threshold
threshold <- subset(data1, CD69_norm > 99.99) #specify threshold here


#create vectors
pos <- c(threshold$mutated_position)
mut <- c(threshold$mutation)

#create table
tab <- table(mut, pos)
tab

#convert to dataframe

df <- as.data.frame(tab)
df
motif <- subset(df, Freq == TRUE)
motif

pos1 <- motif$mut[pos == 1]
pos2 <- motif$mut[pos == 2]
pos3 <- motif$mut[pos == 3]
pos4 <- motif$mut[pos == 4]
pos5 <- motif$mut[pos == 5]
pos6 <- motif$mut[pos == 6]
pos7 <- motif$mut[pos == 7]
pos8 <- motif$mut[pos == 8]
pos9 <- motif$mut[pos == 9]

#collapse into single word
pos1c <- stringi::stri_c(pos1, sep = "", collapse = "")
pos2c <- stringi::stri_c(pos2, sep = "", collapse = "")
pos3c <- stringi::stri_c(pos3, sep = "", collapse = "")
pos4c <- stringi::stri_c(pos4, sep = "", collapse = "")
pos5c <- stringi::stri_c(pos5, sep = "", collapse = "")
pos6c <- stringi::stri_c(pos6, sep = "", collapse = "")
pos7c <- stringi::stri_c(pos7, sep = "", collapse = "")
pos8c <- stringi::stri_c(pos8, sep = "", collapse = "")
pos9c <- stringi::stri_c(pos9, sep = "", collapse = "")

#double check motifs
pos1c
pos2c
pos3c
pos4c
pos5c
pos6c
pos7c
pos8c
pos9c

#create motif
pepmotif_1 <- paste(pos1c, pos2c, pos3c, pos4c, pos5c, pos6c, pos7c, pos8c, pos9c, sep = "]-[")
pepmotif_final <- paste("[", pepmotif_1, "]", sep = "")
pepmotif_final

#NOTE 1: Repeat script for additional activation thresholds to obtain their respective motifs
#NOTE 2: ScanProsite does not accept brackets if only one AA is allowed in position "X" (remove brackets manually)