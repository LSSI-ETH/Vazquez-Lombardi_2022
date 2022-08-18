#create Venn Diagrams

#match input to uniquehits output (remove NAs)
#loop through all thresholds and give png outputs

#if packages are not installed yet:
# install.packages('VennDiagram')
# install.packages('grid')
# install.packages('futile.logger')

#load libraries
library(VennDiagram)
library(grid)
library(futile.logger)

#load wd
getwd()
path <- "C:/Users/"
setwd(path)

#load data
a3a = read.csv("a3a_results_seqs.csv")
A305 = read.csv("A3-05_results_seqs.csv")
A310 = read.csv("A3-10_results_seqs.csv")


##start of venn loop

all_thresholds <- c(1.5, 2, 3, 4, 5, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100)
all_col_names <- paste0(rep("t_",length(all_thresholds)), all_thresholds)

#set which venns I want
all_venns <- all_thresholds[1:15]

for (i in 1:length(all_venns)){
  
  #get the right col number temporarily
  temp_col <- which(all_col_names == all_col_names[i]) + 1
  
  #create vector from sequence data, remove any NAs
  a3a_seq <- as.vector(a3a[,temp_col])
  a3a_seq <- a3a_seq[which(!is.na(a3a_seq))]
  
  A305_seq <- as.vector(A305[,temp_col])
  A305_seq <- A305_seq[which(!is.na(A305_seq))]
  
  A310_seq <- as.vector(A310[,temp_col])
  A310_seq <- A310_seq[which(!is.na(A310_seq))]
  
  #create venn & save as png
  venn.diagram(x=list(a3a_seq, A305_seq, A310_seq),
               category.names = c('a3a', 'A3-05', 'A3-10'),
               filename = paste0("results_venn_t", all_venns[i], ".png"),
               main = paste0("threshold = ", all_venns[i]))
  #customize venn design: https://www.r-graph-gallery.com/14-venn-diagramm.html
  #or to increase resolution: https://www.rdocumentation.org/packages/VennDiagram/versions/1.6.20/topics/venn.diagram
  
  
}


##end of venn loop


stop()

###sanity tests
#----------------
#appendix
#single venns t1-5

data = read.csv("a3a_results_seqs.csv")

t1.5 <- as.vector(data[,2])
t1.5 <- t1.5[which(!is.na(t1.5))]

t2 <- as.vector(data[,3])
t2 <- t2[which(!is.na(t2))]

t3 <- as.vector(data[,4])
t3 <- t3[which(!is.na(t3))]

t4 <- as.vector(data[,5])
t4 <- t4[which(!is.na(t4))]

t5 <- as.vector(data[,6])
t5 <- t5[which(!is.na(t5))]

venn.diagram(x=list(t1.5, t2, t3, t4, t5),
             category.names = c('t1.5', 't2', 't3', 't4', 't5'),
             filename = paste0("a3a_results_venn_t_1-5" , ".png"),
             main = paste0("a3a"))
stop()

#single venns t5-40

data = read.csv("a3a_results_seqs.csv")

t1.5 <- as.vector(data[,2])
t1.5 <- t1.5[which(!is.na(t1.5))]

t2 <- as.vector(data[,3])
t2 <- t2[which(!is.na(t2))]

t3 <- as.vector(data[,4])
t3 <- t3[which(!is.na(t3))]

t4 <- as.vector(data[,5])
t4 <- t4[which(!is.na(t4))]

t5 <- as.vector(data[,6])
t5 <- t5[which(!is.na(t5))]

t10 <- as.vector(data[,7])
t10 <- t10[which(!is.na(t10))]

t20 <- as.vector(data[,8])
t20 <- t20[which(!is.na(t20))]

t30 <- as.vector(data[,9])
t30 <- t30[which(!is.na(t30))]

t40 <- as.vector(data[,10])
t40 <- t40[which(!is.na(t40))]

t50 <- as.vector(data[,11])
t50 <- t50[which(!is.na(t50))]

venn.diagram(x=list(t5, t10, t20, t30, t40),
             category.names = c('t5', 't10', 't20', 't30', 't40'),
             filename = paste0("a3a_results_venn_t_5-40" , ".png"),
             main = paste0("a3a"))
            

#single venns t40-100 a3a

data = read.csv("a3a_results_seqs.csv")

t1.5 <- as.vector(data[,2])
t1.5 <- t1.5[which(!is.na(t1.5))]

t2 <- as.vector(data[,3])
t2 <- t2[which(!is.na(t2))]

t3 <- as.vector(data[,4])
t3 <- t3[which(!is.na(t3))]

t4 <- as.vector(data[,5])
t4 <- t4[which(!is.na(t4))]

t5 <- as.vector(data[,6])
t5 <- t5[which(!is.na(t5))]

t10 <- as.vector(data[,7])
t10 <- t10[which(!is.na(t10))]

t20 <- as.vector(data[,8])
t20 <- t20[which(!is.na(t20))]

t30 <- as.vector(data[,9])
t30 <- t30[which(!is.na(t30))]

t40 <- as.vector(data[,10])
t40 <- t40[which(!is.na(t40))]

t50 <- as.vector(data[,11])
t50 <- t50[which(!is.na(t50))]

t60 <- as.vector(data[,12])
t60 <- t60[which(!is.na(t60))]

t70 <- as.vector(data[,13])
t70 <- t70[which(!is.na(t70))]

t80 <- as.vector(data[,14])
t80 <- t80[which(!is.na(t80))]

t90 <- as.vector(data[,15])
t90 <- t90[which(!is.na(t90))]

t100 <- as.vector(data[,16])
t100 <- t100[which(!is.na(t100))]

venn.diagram(x=list(t40, t50, t60, t70, t80),
             category.names = c('t40','t50','t60','t70','t80'),
             filename = paste0("a3a_results_venn_t_40-80" , ".png"),
             main = paste0("a3a"))

venn.diagram(x=list(t80, t90, t100),
             category.names = c('t80', 't90', 't100'),
             filename = paste0("a3a_results_venn_t_80-100" , ".png"),
             main = paste0("a3a"))


