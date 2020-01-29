library(tidyverse)
#Read in the csv file Lab1.csv using code, not the Import button
dat <- read.csv('/Users/mingshi/Desktop/firstYear2Secemeter/statics_analysis/assignment1/Lab1.csv',header = TRUE)
#Display summary statistics for the variable EARN
summary(dat[5])
#Display frequencies of the variable Job.class
table(dat$Job.class)
#Display a three-way cross-tabulation of the proportions of variables Educational Level, Gender and Job.Class
source("http://pcwww.liv.ac.uk/~william/R/crosstab.r")
crosstab(dat, row.vars = c("EDUC", "Gender"), col.vars = "Job.class", type = "f",addmargins = FALSE)

#Create a basic histogram of the variable EARN

p<-ggplot(dat, aes(x=dat$EARN)) +
  geom_histogram(breaks=seq(0,420000,1000))+ xlim(0,420000)
# Create a basic boxplot of the variable EARN by Job Class
earn<-dat$EARN
job<-dat$Job.class
boxplot(earn~job)
# Create a new variable EARNx10000 that is equal to Earnings divided by 10,000
EARNx10000<-dat$EARN/1000
age<-dat$AGE
# Create a scatterplot with EARNx10000 on the x axis and AGE on the Y axis
sc<-ggplot(dat,aes(x=EARNx10000,y=age)) + geom_point(shape=19) +
  xlab("EARNx10000") + ylab("AGE")