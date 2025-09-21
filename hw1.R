library(readr)

#2a
freq(anes2020$deathpenalty) 

#2b
freq(anes2020$photoid) 

#2c
freq(anes2020$age) 
summary(anes2020$age) 

#3a
counties<-read.csv("counties.csv")
summary(counties)

#3b
counties_tshare<-counties[order(counties$trump_pct),]
head(counties_tshare)
tail(counties_tshare)

#3e
summary(counties$rural_code)
freq(counties$rural_code)

#3f/g
freq(counties$state)

#3h
hist(counties$trump_pct,
     main="Trump Voteshare by County (2020 Presidential)", 
     ylab="Number of counties",
     xlab="Trump Voteshare")
