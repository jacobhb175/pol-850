# This is the script for POL850 Lecture 3

# This assumes you have successfully imported the file pol850.csv - and that it is now the dataframe pol850 in your environment

# Look at the dimensions of the dataframe:

dim(pol850)

#Look at first few lines of dataframe:

head(pol850)

#Look at last few lines of dataframe:

tail(pol850)

#Make a histogram showing the distribution of year of birth:
hist(pol850$birthyr)

#Make a prettier histogram showing the distribution of year of birth:
hist(pol850$birthyr,
     main="When POL850 Students Were Born",  #Title of the graph
     ylab="Number of students", # Vertical axis (Y-axis) label
     xlab="Year of birth") # Horizontal axis (X-axis) label


#Install the descr package:

install.packages("descr")

#Activate the descr package:

library(descr)

#Make a table of students by birth year:

freq(pol850$birthyr)

#Make a table of students by year at NYU (don't scroll down until you've tried to figure it out yourself):












freq(pol850$schoolyr)

#Put the values of this variable in logical order:

pol850$schoolyr <- 
    ordered(pol850$schoolyr,
            levels=c("Frosh/First year", "Sophomore", "Junior", "Senior", "Other"))


#Now re-run the frequency table for schoolyr:

freq(pol850$schoolyr)


#Code for sample questions below.
#Don't scroll further down until you've tried the questions yourself!












#Distribution of eyecolor:

freq(pol850$eyecolor)















#Distribution of major:

freq(pol850$major)





#Share of students living in Manhattan:
#How many students live in Queens:

freq(pol850$residence)


#How tall are the tallest students in our class:

freq(pol850$height)

#Make a histogram showing the heights of students in our class:
hist(pol850$height)

#Make a prettier histogram showing the heights of students in our class:
hist(pol850$height,
     main="Heights of POL850 Students",  #Title of the graph
     ylab="Number of students", # Vertical axis (Y-axis) label
     xlab="Height (in inches)") # Horizontal axis (X-axis) label



