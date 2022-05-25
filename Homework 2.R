#Zach Smith
#Homework 2

#Question 1
setwd("~/Stat 726/STAT 726")

#a
machine<-read.table(file='HW2_Question1.txt', header=T)

#b
summary(machine$Machine)

#c
difference = (machine$Before-machine$After)
machine = cbind(machine,difference)

#d
machine$tensec <- difference >= 10

#e
machine$tensec <- as.numeric(machine$tensec)
sum(machine$tensec)

#f
machine$Machine[machine$difference == max(machine$difference)]

#g
machine$WorkerID[machine$difference == min(machine$difference)]

#Question 2
set.seed(0708)

#a
x <- rexp(1200,2)

#b
min(x)
max(x)
mean(x)

#c
pexp(min(x),rate = 0.5)

#d
1-pexp(max(x),rate = 0.5)

#e
hist(x, main = "Exponential")

#f
abline(v=2,col = 'red')

#Question 3
d1 <- c("Year",2000,2001,2002,2003,2004,2005,2006,2007,2008,2009)
d2 <- c("Margarine",8.2,7.0,6.5,5.3,5.2,4.0,4.6,4.5,4.2,3.7)
d3 <- c("WholeMilk",7.7,7.4,7.3,7.2,7.0,6.6,6.5,6.1,5.9,5.7)
d4 <- c("SourCream",6.1,6.5,6.7,7.5,7.9,8.3,7.9,8.2,7.9,7.8)

matplot(d1,cbind(d2,d3,d4),ylim=c(3,9),pch=c(15,17,16),col=1,type = 'b',xlab = 'Year',ylab = ''
        ,main='Per Capita Consumption of Dairy in the US')
legend('bottomleft',
       legend=c("Margarine (pounds)","Whole Milk (gallons)","Sour Cream (half pints)"),
       pch=c(15,17,16),
       lty = c(1,2,3))

