setwd("C:/Users/bruno.miranda/Documents/DataScienceForBusiness/EDA")

reddit <- read.csv('reddit.csv')

dim(reddit)
table(reddit$employment.status)
summary(reddit)
levels(reddit$age.range)
str(reddit)

library(ggplot2)


age.range.f <- ordered(reddit$age.range, c("NA","Under 18","18-24","25-34","35-44","45-54","55-64","65 or Above"))
reddit$age.range <- age.range.f

qplot(data = reddit, x = age.range)