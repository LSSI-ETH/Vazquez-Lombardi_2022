getwd()
setwd("/Users/")

#load file
A305 = read.csv("210721 A3-05 pfm_for logo.csv")

#convert to matrix
A305mat <- as.matrix(A305)

#give names to rows
rownames(A305mat) <- c("A", "C", "D", "E", "F", "G", "H", "I", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "Y")

#generate logo
ggseqlogo(A305mat, seq_type = 'aa')

#as probability

ggseqlogo(A305mat, seq_type = 'aa', method = 'p')
