library(descr)

pol850<-read.csv("pol850.csv")
freq(pol850$hometown)

anes2020<-read.csv("anes2020.csv")
summary(pol850$birthyr)
freq(anes2020$raceeth)
freq(anes2020$tax_mil,na.rm=TRUE)
freq(anes2020$sexornt)
freq(anes2020$trans_discr)
freq(anes2020$police_ft)
freq(anes2020$gender)
freq(anes2020$educ5)

anes2020$educ5_inorder<-ordered(anes2020$educ5,levels=c("<HS","HS","some college","bachelors","post-grad"))
freq(anes2020$educ5_inorder)
freq(anes2020$educ5_inorder)

favs=matrix(NA,7,2)
favs[1,1]<-"police"
favs[1,2]<-(mean(anes2020$police_ft,na.rm=TRUE))
favs[2,1]<-"socialists"
favs[2,2]<-(mean(anes2020$socialists_ft,na.rm=TRUE))
favs[3,1]<-"feminists"
favs[3,2]<-(mean(anes2020$feminists_ft,na.rm=TRUE))
favs[4,1]<-"nra"
favs[4,2]<-(mean(anes2020$socialists_ft,na.rm=TRUE))
favs[5,1]<-"blm"
favs[5,2]<-(mean(anes2020$blm_ft,na.rm=TRUE))
favs[6,1]<-"scotus"
favs[6,2]<-(mean(anes2020$scotus_ft,na.rm=TRUE))
favs[7,1]<-"fauci"
favs[7,2]<-(mean(anes2020$fauci_ft,na.rm=TRUE))





