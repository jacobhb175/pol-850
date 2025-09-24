##This is the R script for POL850 Lecture 6


#Import anes2020.csv

anes2020 <-read.csv("anes2020.csv")

#let's look at the variable photoid:

#we're going to use freq(), so let's activate the descr package:

library(descr)

freq(anes2020$photoid)




#recode photoid:

#First, create a new variable that's a copy of photoid, declaring it an ordinal-level variable.  (I'm giving it the name photoid.3; you can call it anything you want.)

anes2020$photoid.3 <- ordered(anes2020$photoid)

#confirm that we did this correctly:
freq(anes2020$photoid.3)

#Now, write over the labels in photoid.3 using the function levels()

levels(anes2020$photoid.3)<-c("NA","Favor","Favor","Favor","Neither","Oppose","Oppose","Oppose")
freq(anes2020$photoid.3)



#adapting this code, can you recode the variable deathpenalty as specified in lecture?  (Try on your own; answer below.)

anes2020$deathpenalty.2 <- ordered(anes2020$deathpenalty)

#confirm that we did this correctly:
freq(anes2020$deathpenalty.2)

#Now, write over the labels in photoid.3 using the function levels()

levels(anes2020$deathpenalty.2)<-c("NA","Favor","Favor","Oppose","Oppose")
freq(anes2020$deathpenalty.2)










#First: create a new variable that's a copy of deathpenalty (I'm giving it the name deathpenalty.2; you can call it anything you want.)

anes2020$deathpenalty.2 <- ordered(anes2020$deathpenalty)

#take a look at it:
freq(anes2020$deathpenalty.2)









#Second: write over the labels:
levels(anes2020$deathpenalty.2)<-c("Favor","Favor","Oppose","Oppose")

#take a look at it:
freq(anes2020$deathpenalty.2)







#Now let's create a dichotomous version of the death penalty variable:

anes2020$deathpenalty01 <- as.numeric(anes2020$deathpenalty.2=="Favor")

#take a look:
freq(anes2020$deathpenalty01)
summary(anes2020$deathpenalty01)


#examine the mean of deathpenalty01 (can you do it?)















summary(anes2020$deathpenalty01)

#or

mean(anes2020$deathpenalty01, na.rm=TRUE)






#create a dichotomous version of the abortion variable where 1 = support total ban, 0 = everything else.  


anes2020$abortionban01 <- 
  as.numeric(anes2020$abortion=="1. By law, abortion should never be permitted")

#take a look:

freq(anes2020$abortionban01)


#calculate the mean:

summary(anes2020$abortionban01)










#Adapting the code above, can you create a dichotomous version of sexornt and calculate the new variable's mean?  (Scroll for answer below.)
freq(anes2020$sexornt)
anes2020$sexornt01 <- as.numeric(anes2020$sexornt=="1. Heterosexual or straight")
freq(anes2020$sexornt01)

summary(anes2020$sexornt01)













anes2020$straight01 <- 
  as.numeric(anes2020$sexornt=="1. Heterosexual or straight")

freq(anes2020$straight01)


#calcuate the mean of straight:

summary(anes2020$straight01)




#create histograms of straight01 and deathpenalty01:













hist(anes2020$straight01)
hist(anes2020$deathpenalty01)


#calculate these two variable's standard distribution:











sd(anes2020$straight01, na.rm=TRUE)
sd(anes2020$deathpenalty01, na.rm=TRUE)




#Use this blank space to run code needed to answer the questions posed in class.  The correct code can be found by scrolling further down in the script.

countries<-"countries.Rdata"
summary(countries)
countries

head(ord(countries$pop))

tail(order(countries$pop))

countriese<-data.frame(countries$country,countries$elderly)
order(countriese,countries$elderly)
head(countriese)
select(countries)
freq(countries$judrev)

countries$judrev01 <- 
  as.numeric(countries$judrev=="Judicial review")
freq(countries$judrev01)

#Look at the data:
View(countries)


#3. What percentage of the countries in the dataset are in the EU?

#Need the descr package:

library(descr)

#Now look at the distribution of EU:

freq(countries$eu)




#4. Another way to look at just a few variables at a time:

#Create a new dataframe consisting only of the variables you want to see:

justprop <- data.frame(countries$country, countries$prop)

#Now view the new dataframe:

View(justprop)


#What share of countries have same as U.S.?

freq(countries$prop)



#5 Look at elderly population only:

df_elderly <- data.frame(countries$country, countries$elderly)

#Look at it:

View(df_elderly)




#6. Mean and sd of unemployment:

summary(countries$unemp)






#Create a zero-one version of judrev:

countries$judrev01 <- 
  as.numeric(countries$judrev=="Judicial review")

#take a look:

freq(countries$judrev01)


#calculate its mean and sd:

summary(countries$judrev01)
sd(countries$judrev01, na.rm=TRUE)



#Share of countries in dataset that are post-Communist:

freq(countries$poco)

#Create a zero-one version of poco (scroll down for answer):













countries$poco01 <- 
  as.numeric(countries$poco=="Post-communist")

#take a look:

freq(countries$poco01)
freq(countries$judrev01)



#Generate summary statistics of our two new zero-one variables:

summary(countries$judrev01)
summary(countries$poco01)

