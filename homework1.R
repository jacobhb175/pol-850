#install.packages(descr)
#library(descr)

#R first hw
counties<-read.csv("counties.csv")
summary(counties)

hist(counties$unemp_pct)
#freq(counties$unemp_pct)
#freq(counties$trump_pct)
