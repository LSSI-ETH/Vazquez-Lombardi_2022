getwd()
setwd("/Users/")

#load .csv file
RVL1.5 = read.csv("210721 A3-05_t1.5.csv")
head(RVL1.5)

#count unique seqs // -1 to remove empty 
uniq1.5 <- as.vector(unique(RVL1.5$seq))
uniq1.5
t1.5hits <- length(uniq1.5) - 1  
t1.5hits


#generate list of unique hits (only t1.5 in this example)
chars <- nchar(uniq1.5)
filter1 <- subset(uniq1.5, chars == 9)
pepname <- c(001:762)
df <- data.frame(pepname, filter1)
write.csv(df, "210721 A3-05_t1.5_unique_hits.csv")

#load .csv file
RVL2 = read.csv("210721 A3-05_t2.csv")
head(RVL2)

#count unique seqs // -1 to remove empty 
uniq2 <- as.vector(unique(RVL2$seq))
uniq2
t2hits <- length(uniq2) - 1  
t2hits

#load .csv file
RVL3 = read.csv("210721 A3-05_t3.csv")
head(RVL3)

#count unique seqs // -1 to remove empty 
uniq3 <- as.vector(unique(RVL3$seq))
uniq3
t3hits <- length(uniq3) - 1  
t3hits


#load .csv file
RVL4 = read.csv("210721 A3-05_t4.csv")
head(RVL4)

#count unique seqs // -1 to remove empty 
uniq4 <- as.vector(unique(RVL4$seq))
uniq4
t4hits <- length(uniq4) - 1  
t4hits

#load .csv file
RVL5 = read.csv("210721 A3-05_t5.csv")
head(RVL5)

#count unique seqs // -1 to remove empty 
uniq5 <- as.vector(unique(RVL5$seq))
uniq5
t5hits <- length(uniq5) - 1  
t5hits

#load .csv file
RVL10 = read.csv("210721 A3-05_t10.csv")
head(RVL10)

#count unique seqs // -1 to remove empty 
uniq10 <- as.vector(unique(RVL10$seq))
uniq10
t10hits <- length(uniq10) - 1  
t10hits

#load .csv file
RVL20 = read.csv("210721 A3-05_t20.csv")
head(RVL20)

#count unique seqs // -1 to remove empty 
uniq20 <- as.vector(unique(RVL20$seq))
uniq20
t20hits <- length(uniq20) - 1  
t20hits

#load .csv file
RVL30 = read.csv("210721 A3-05_t30.csv")
head(RVL30)

#count unique seqs // -1 to remove empty 
uniq30 <- as.vector(unique(RVL30$seq))
uniq30
t30hits <- length(uniq30) - 1  
t30hits


#load .csv file
RVL40 = read.csv("210721 A3-05_t40.csv")
head(RVL40)

#count unique seqs // -1 to remove empty 
uniq40 <- as.vector(unique(RVL40$seq))
uniq40
t40hits <- length(uniq40) - 1
t40hits

#load .csv file
RVL50 = read.csv("210721 A3-05_t50.csv")
head(RVL50)

#count unique seqs // NO -1 ONCE A SINGLE HIT REMAINS
uniq50 <- as.vector(unique(RVL50$seq))
uniq50
t50hits <- length(uniq50)  
t50hits

#load .csv file
RVL60 = read.csv("210721 A3-05_t60.csv")
head(RVL60)

#count unique seqs // NO -1 ONCE A SINGLE HIT REMAINS
uniq60 <- as.vector(unique(RVL60$seq))
uniq60
t60hits <- length(uniq60)
t60hits

#load .csv file
RVL70 = read.csv("210721 A3-05_t70.csv")
head(RVL70)

#count unique seqs // NO -1 ONCE A SINGLE HIT REMAINS 
uniq70 <- as.vector(unique(RVL70$seq))
uniq70
t70hits <- length(uniq70)
t70hits

#load .csv file
RVL80 = read.csv("210721 A3-05_t80.csv")
head(RVL80)

#count unique seqs // NO -1 ONCE A SINGLE HIT REMAINS
uniq80 <- as.vector(unique(RVL80$seq))
uniq80
t80hits <- length(uniq80)
t80hits

#load .csv file
RVL90 = read.csv("210721 A3-05_t90.csv")
head(RVL90)

#count unique seqs // NO -1 ONCE A SINGLE HIT REMAINS
uniq90 <- as.vector(unique(RVL90$seq))
uniq90
t90hits <- length(uniq90) 
t90hits

#load .csv file
RVL100 = read.csv("210721 A3-05_t100.csv")
head(RVL100)

#count unique seqs // NO -1 ONCE A SINGLE HIT REMAINS 
uniq100 <- as.vector(unique(RVL100$seq))
uniq100
t100hits <- length(uniq100) 
t100hits

#make table 
thresholds <- c(1.5,2,3,4,5,10,20,30,40,50,60,70,80,90,100)
hits <- c(t1.5hits, t2hits, t3hits,t4hits, t5hits,t10hits,t20hits,t30hits,t40hits,t50hits,t60hits,t70hits,t80hits,t90hits,t100hits)
table <- data.frame(thresholds,hits)
write.csv(table, "210721 A3-05_unique hits_FINAL.csv")

