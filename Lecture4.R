#This is the R Script for POL850 Lecture 4

#Try to do these on your own by creating your own script as shown in lecture. Refer to this script only if you get stuck.


#Activate the descr library

library(descr)

#Produce a frequency table for hometown

freq(pol850$hometown)

#Produce a frequency table for computer

freq(pol850$computer)


#2020 ANES dataset analysis:

#Table of summary statistics of the ANES dataset:

summary(anes2020)

#Frequency table of raceeth:

freq(anes2020$raceeth)

#Five questions to try on your own:

#1. Tax on millionaires:

freq(anes2020$tax_mil)

#2.  Sexual orientation:

freq(anes2020$sexornt)

#3. Discrimination against transgender people:

freq(anes2020$trans_discr)

#4. Ratings of police:

freq(anes2020$police_ft)

#5. Gender:

freq(anes2020$gender)


#Distribution of education variable:

freq(anes2020$educ5)

#Create a new version of the education variable with levels in logical order:

anes2020$educ5_inorder <- 
  ordered(anes2020$educ5,
          levels=c("<HS", "HS", "some college", "bachelors", "post-grad"))

#Take a look at it:

freq(anes2020$educ5_inorder)

#Calculate the mean of police_ft:

mean(anes2020$police_ft)

#Calculate the mean of police_ft, reminding R to ignore missing values:

mean(anes2020$police_ft, na.rm=TRUE)

#Calculate mean feeling thermometers for other groups and people in the dataset:

mean(anes2020$socialists_ft, na.rm=TRUE)
mean(anes2020$feminists_ft, na.rm=TRUE)
mean(anes2020$nra_ft, na.rm=TRUE)
mean(anes2020$blm_ft, na.rm=TRUE)
mean(anes2020$scotus_ft, na.rm=TRUE)
mean(anes2020$fauci_ft, na.rm=TRUE)


