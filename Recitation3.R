#This is the R script for Recitation 3
library(descr)

#Import freedom.csv into R.
freedom<-read.csv("freedom.csv")

#As we've discussed before, the data come from Freedom House, which systematically rates and ranks countries around the world on their political rights and civil liberties.

#Here's a "mini-codebook" for this dataset:

# entity: the name of the country or territory
# region: the region of the world where the entity is located
# type: whether the entity is a country or territory
# status: Freedom House’s overall rating of the entity
# political_rights: score of entity’s political rights (0 to 40)
# civil_liberties: score of entity’s civil liberties (0 to 60)
# total_score: overall score (political rights + civil liberties; 0 to 100)


#EASY:

# 1.  What are the modal, median and mean political rights scores in this dataset?

# 2.  What are the modal, median and mean civil liberties scores in this dataset?



#HARDER:

#Which scores are more dispersed, political rights or civil liberties? 

#3.  First, produce histograms of these two scores and see if you can answer this question by visual inspection of the two graphs.
hist(freedom$political_rights)
hist(freedom$civil_liberties)

#4. Next, answer this question by calculating the proper statistic for the two variables and comparing them.
sd(freedom$political_rights, na.rm = TRUE)
sd(freedom$civil_liberties, na.rm = TRUE)

#5. Do your answers match each other?


# MOST DIFFICULT:

#6. Which entities have higher mean civil liberties scores, “free” or “partly free” places? 
mean(freedom$civil_liberties[freedom$status==
                               "free"], na.rm=TRUE)
mean(freedom$civil_liberties[freedom$status==
                               "partly free"], na.rm=TRUE)

#7. Which entities have higher overall scores on average, European countries or those in the Americas?
mean(freedom$total_score[freedom$region==
                               "Europe"], na.rm=TRUE)
mean(freedom$total_score[freedom$region==
                               "Americas"], na.rm=TRUE)

#8. Are civil liberties, on average, stronger in Africa or in Asia?
mean(freedom$civil_liberties[freedom$region==
                               "Africa"], na.rm=TRUE)
mean(freedom$civil_liberties[freedom$region==
                               "Asia"], na.rm=TRUE)

#9. Do overall scores vary most in “free,” “partly free,” or “not free” entities?
sd(freedom$total_score[freedom$status==
                               "free"], na.rm=TRUE)
sd(freedom$total_score[freedom$status==
                               "partly free"], na.rm=TRUE)
sd(freedom$total_score[freedom$status==
                             "not free"], na.rm=TRUE)










#ANSWERS:

#1. To find the mode of a variable, use freq().  This requires the descr package.

library(descr)

freq(freedom$political_rights)

# To find the median and mean of a variable, use summary().  

summary(freedom$political_rights)







#2. 

freq(freedom$civil_liberties)
summary(freedom$civil_liberties)











#3. 


hist(freedom$political_rights)
hist(freedom$civil_liberties)










#4.
sd(freedom$political_rights, na.rm=TRUE)
sd(freedom$civil_liberties, na.rm=TRUE)




#6

mean(freedom$civil_liberties[freedom$status==
                               "free"], na.rm=TRUE)

mean(freedom$civil_liberties[freedom$status==
                               "partly free"], na.rm=TRUE)

#another way to do this:

summary(freedom$civil_liberties[freedom$status==
                                  "free"])

summary(freedom$civil_liberties[freedom$status==
                                  "partly free"])






#7

mean(freedom$total_score[freedom$region==
                           "Europe"], na.rm=TRUE)

mean(freedom$total_score[freedom$region==
                           "Americas"], na.rm=TRUE)

#another way to do this:

summary(freedom$total_score[freedom$region==
                              "Europe"])

summary(freedom$total_score[freedom$region==
                              "Americas"])








#8

mean(freedom$civil_liberties[freedom$region==
                               "Africa"], na.rm=TRUE)

mean(freedom$civil_liberties[freedom$region==
                               "Asia"], na.rm=TRUE)

#another way to do this:

summary(freedom$total_score[freedom$region==
                              "Africa"])

summary(freedom$total_score[freedom$region==
                              "Asia"])




#9

sd(freedom$total_score[freedom$status==
                         "free"], na.rm=TRUE)

sd(freedom$total_score[freedom$status==
                         "partly free"], na.rm=TRUE)

sd(freedom$total_score[freedom$status==
                         "not free"], na.rm=TRUE)















