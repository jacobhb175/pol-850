#this is the script for POL850 Lecture 8


#we will be using a new package called DescTools; install it (requires internet connection):
install.packages("DescTools")

#activate it:
library(DescTools)

#we will also need the descr package, so activate it, too:
library(descr)

#now import anes2020.csv

#(you should be able to do this just by clicking on the file in your working directory)

anes2020<-read.csv("anes2020.csv")

#what's the 95% CI around the mean for socialists_ft?

#FIRST let's calculate it by hand:

#1. find the mean value of socialists_ft (X-bar):

xbar <- mean(anes2020$socialists_ft, na.rm=T)
xbar











mean(anes2020$socialists_ft, na.rm=T)

#   mean = 38.032

#2. find the sd of socialists_ft:

sd<-sd(anes2020$socialists_ft, na.rm = T)
sd








sd(anes2020$socialists_ft, na.rm=T)

#   sd = 28.57482


#3. determine valid N:


freq(anes2020$socialists_ft, na.rm=T)


N<-(8280-1529)












freq(anes2020$socialists_ft)

#Valid N for this variable is the total (8280) minus the NAs (1529)

mu_income_lower = 67000-1.96*10000/sqrt(1000)
mu_income_upper = 67000+1.96*10000/sqrt(1000)
mu_income_lower
mu_income_upper

#4. Now calculate the CI, remembering that the formulas are:

#Lower bound is: x-bar - (1.96*(sd_x/sqrt(N))
#Upper bound is: x-bar + (1.96*(sd_x/sqrt(N))

#see if you can plug in the right values before peeking below!


mu_socialist_lower <- xbar-(1.96*(sd/sqrt(N)));
mu_socialist_upper <- xbar+(1.96*(sd/sqrt(N)));
mu_socialist_lower
mu_socialist_upper









#create new objects (I'm calling them ci_lb and ci_ub; you can call them whatever you like) to store the lower and upper bounds of the CI:

ci_lb <- 38.03 - (1.96*(28.57/sqrt(8280-1529)))
ci_ub <- 38.03 + (1.96*(28.57/sqrt(8280-1529)))

#show the ci bounds:
ci_lb
# [1] 37.34847

ci_ub
# [1] 38.71153


#NOW let's let R calculate it using the MeanCI function (thank goodness for computers)

MeanCI(anes2020$socialists_ft, na.rm=T)

#    mean   lwr.ci   upr.ci 
#38.03200 37.35024 38.71375 

#within a rounding error, we get the same answers we calculated manually!



#How about we do another one:  
#Adapting the code above, can you first calculate a 95% CI around anes2020$age and then confirm what you find with MeanCI?
#Details below; don't peek until you've at least tried it

#1. find X-bar:

meanage<-mean(anes2020$age,na.rm=T)







mean(anes2020$age, na.rm=T)

#2. find the sd of age:

sdage<-sd(anes2020$age, na.rm=T)









sd(anes2020$age, na.rm=T)

#3. determine valid N:


freq(anes2020$age)
Nage<-8280-348






freq(anes2020$age)

#Valid N for this variable is 8280 - 348

#4. Now calculate the CI:

#Lower bound is: x-bar - (1.96*(sd_x/sqrt(N))
#Upper bound is: x-bar + (1.96*(sd_x/sqrt(N))


mu_age_lower <- meanage-(1.96*(sdage/sqrt(Nage)));
mu_age_upper <- meanage+(1.96*(sdage/sqrt(Nage)));
mu_age_lower
mu_age_upper














ci_lb_age <- 51.6 - (1.96*(17.2/sqrt(8280-348)))
ci_ub_age <- 51.6 + (1.96*(17.2/sqrt(8280-348)))

ci_lb_age
# [1] 51.20654

ci_ub_age
# [1] 51.9639

#CI is [51.21, 51.96]

#Now ask R to do it for you:









MeanCI(anes2020$age, na.rm=T)

#    mean   lwr.ci   upr.ci 
#51.58522 51.20649 51.96396 

#Looks good!








#Can we be confident that a majority of Americans support the Roe v Wade standard?

#First, create a dichotomous zero-one variable (called "abchoice") indicating support for the Roe standard:

anes2020$abchoice <-as.numeric(anes2020$abortion=="4. By law, a woman should always be able to obtain an abortion as a matter of pe") 


#Examine the new variable and note the percentage of 1s - that is, the share who support the Roe standard:

freq(anes2020$abchoice)


#Now use MeanCI to construct a 95%CI around this estimate:

MeanCI(anes2020$abchoice, na.rm=T)








