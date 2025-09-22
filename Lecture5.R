#This is the R script for Lecture 5

summary(anes2020$police_ft)
summary(anes2020$blm_ft)
summary(anes2020$fauci_ft)
summary(anes2020$feminists_ft)
summary(anes2020$socialists_ft)
summary(anes2020$nra_ft)
summary(anes2020$scotus_ft)

# -------------------------------------------------------------------------


#The commmand for calculating a variable's standard deviation is:
# sd(dataframe$variable, na.rm=TRUE)

#So the standard deviation of fauci_ft is... (try to figure it out for yourself first; scroll down for answer)









sd(anes2020$fauci_ft, na.rm=TRUE)



#SDs of all feeling thermometers (scroll down):

























sd(anes2020$blm_ft, na.rm=TRUE)
sd(anes2020$fauci_ft, na.rm=TRUE)
sd(anes2020$feminists_ft, na.rm=TRUE)
sd(anes2020$nra_ft, na.rm=TRUE)
sd(anes2020$police_ft, na.rm=TRUE)
sd(anes2020$scotus_ft, na.rm=TRUE)
sd(anes2020$socialists_ft, na.rm=TRUE)


#Subset the data to calculate SDs of BLM among Black and White Americans:

sd(anes2020$blm_ft[anes2020$raceeth==
                     "2. Black, non-Hispanic"], na.rm=TRUE)

sd(anes2020$blm_ft[anes2020$raceeth==
                     "1. White, non-Hispanic"], na.rm=TRUE)






#Histograms of police and socialists FTs:











hist(anes2020$police_ft)











hist(anes2020$socialists_ft)








##subset the data to produce a histogram of Fauci's FT limited to strong Repblicans:

hist(anes2020$fauci_ft[anes2020$pid7=="7. Strong Republican"])

##now see if you can adapt this to look only at strong Democrats:










hist(anes2020$fauci_ft[anes2020$pid7=="1. Strong Democrat"])









