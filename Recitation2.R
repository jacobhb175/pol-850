library(descr)
library(tidyverse)
#This is the R script for POL850 Recitation 2

#Download and save freedom.csv into your working directory

#Import it into R.

freedom<-read.csv("freedom.csv")
summary(freedom)
freq(freedom$type)

territories<-dplyr::filter(freedom, type %in% c("territory"))
territories<-order[(territories$total_score),]

#Some questions: try to figure these out yourself; scroll down for answers:

View(freedom)

#1. What command do we use to assess the dataframe's dimensions?
dim(freedom)


















dim(freedom)


#We'll need functions from the descr package. It should already be installed; activate it now:

#only run this command if descr is not installed:
install.packages("descr")

library(descr)

#6. Produce a frequency table of the variable region.
























freq(freedom$type)


#7. Produce a frequency table of the variable status.






























#Put status in logical order:

freedom$status <- 
  ordered(freedom$status,
          levels=c("free", "partly free", "not free"))

#Now take another look:

freq(freedom$status)

#8. Produce a histogram of total_score:
























hist(freedom$total_score)




#9. Make a prettier histogram of total_score:















hist(freedom$total_score,
     main="Freedom House ratings worldwide",  #Title of the graph
     ylab="Number of entities", # Vertical axis (Y-axis) label
     xlab="Freedom House rating (max score: 100)") # Horizontal axis (X-axis) label
