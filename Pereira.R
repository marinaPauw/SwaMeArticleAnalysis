library('tidyverse')

data = read.csv(file = "C:/Users/newMarina/Desktop/SwathResults/Pereira/Pereira.tsv", sep="\t")
data$group = c(rep(c(0,6,8,10,12),5))
data$Sample = c(rep(1,5), rep(2,5), rep(3,5), rep(4,5), rep(5,5))

data$Sample = as.character(data$Sample)
groups = factor(data$group)
levels(groups) = c(0,6,8,10,12)
data$group = groups

g = ggplot(data, aes(x = data$group,y = MS2Peakwidths, col = Sample))+
  geom_point(size = 4)+
  xlab("Hours after incubation")+
  ylab("seconds")+
  theme(axis.text=element_text(size=12, face = "bold"), axis.title=element_text(size=14,face="bold"))+
  scale_color_manual(values = c("black", "darkgoldenrod4","maroon4", "blue", "orangered"))


