#Match peptides between A305 and A310 and a3a

#load wd
getwd()
path <- "C:/Users/"
path <- "/Users/"
setwd(path)
getwd()

#load data
a3a = read.csv("a3a_results_seqs.csv")
A305 = read.csv("A3-05_results_seqs.csv")
A310 = read.csv("A3-10_results_seqs.csv")

  #get the t_1.5 data
  #create vector from sequence data, remove any NAs
  a3a_seq <- as.vector(a3a$t_1.5)
  a3a_seq <- a3a_seq[which(!is.na(a3a_seq))]

  A305_seq <- as.vector(A305$t_1.5)
  A305_seq <- A305_seq[which(!is.na(A305_seq))]
  
  A310_seq <- as.vector(A310$t_1.5)
  A310_seq <- A310_seq[which(!is.na(A310_seq))]

#match shared peptides
sum(A305_seq %in% A310_seq) #how many peptides are shared
ind <- which(A305_seq %in% A310_seq) #get indices
common_peptides <- A305_seq[ind]
length(common_peptides)

#not shared peptides
ind2 <- which(!(A305_seq %in% A310_seq)) #get indices
A305_only_peptides <- A305_seq[ind2]
length(A305_only_peptides)

# #output
# write.csv(common_peptides, "common_peptides.csv")
# write.csv(A305_only_peptides, "A305_only_peptides.csv")

  
#new code with set functions because we need multiple overlaps

#354
shared_A305_A310_a3a <- intersect(intersect(A305_seq, A310_seq),  a3a_seq)
#8
shared_A305_A310 <- intersect(A305_seq, A310_seq)
shared_A305_A310_only <- setdiff(shared_A305_A310, shared_A305_A310_a3a)
#400
A305_only <- setdiff(A305_seq, A310_seq)


#output
output_order <- c(shared_A305_A310_a3a, shared_A305_A310_only, A305_only)
output_label <- c(rep("A305_A310_a3a", length(shared_A305_A310_a3a)),
                  rep("A305_A310", length(shared_A305_A310_only)),
                  rep("A305", length(A305_only)))
output_df <- data.frame(label = output_label, peptide = output_order)
write.csv(output_df, "20210816_peptides_ordered.csv")


stop()
#control functions

# #appendix 
# ind3 <- match(A305_seq,A310_seq)
# common_peptides2 <- A310_seq[ind3]
# common_peptides == common_peptides2
# sum(is.na(ind3))
# ind4 <- which(!(is.na(common_peptides2)))
# 
# sum(ind == ind4)
# common_peptides3 <- intersect(A305_seq, A310_seq)
# sum(common_peptides == common_peptides3)

sum(A305_only_peptides %in% A305_only)
sum(shared_A305_A310_a3a %in% common_peptides)
sum(shared_A305_A310 %in% common_peptides)
sum(shared_A305_A310_only %in% common_peptides)
#it matches
tail(shared_A305_A310_a3a)
head(A305_only)


