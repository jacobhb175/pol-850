#This is the R script for POL850 Lecture 7

#From now on, we'll activate the descr package at the beginning of every R script so that we can use its functions:

library(descr)

#Download ohio.Rdata from Brightspace and load it into RStudio.

#View the dataset:

View(ohio)

#Examine the distribution of party affiliation:

freq(ohio$party_affiliation)


#Use R as a calculator to calculate the ratio of Democrats to Republicans:

ratio <- 43091/7283

#Now tell R to display the value of the object "ratio":

ratio


#Look at the distribution of age among Cleveland voters:

summary(ohio$age)

hist(ohio$age)



#Look at voter status:

freq(ohio$voter_status)



#Look at summary statistics for age by voter status:

summary(ohio$age[ohio$voter_status=="ACTIVE"])
summary(ohio$age[ohio$voter_status=="CONFIRMATION"])


#Can you adapt the code above to make histograms of age by voter status?  (Answer further below.)











hist(ohio$age[ohio$voter_status=="ACTIVE"])
hist(ohio$age[ohio$voter_status=="CONFIRMATION"])




#Now let's draw samples of different sizes from the population:

#Draw a sample of N=5 and call this "sample5":

sample5 <- ohio[sample(nrow(ohio),5),]


#Take a look at "sample5":
  
sample5


#Now calculate the mean age in sample5:

summary(sample5$age)

#Enter the mean for the N=5 sample on your Google form.
#Link to form: https://forms.gle/ESqytkBkmQs9H3kT8



#Now draw a sample of N=50 and call this "sample50":

sample50 <- ohio[sample(nrow(ohio),50),]


#Now calculate the mean age in sample50:

summary(sample50$age)

#Enter the mean for this sample on your Google form.


#Now repeat for samples of N=500 and N=5,000:

sample500 <- ohio[sample(nrow(ohio),500),]

summary(sample500$age)


#Enter the mean for this sample on your Google form.


sample5000 <- ohio[sample(nrow(ohio),5000),]

summary(sample5000$age)


#Enter the mean for this sample on your Google form.

#Now submit the form!


