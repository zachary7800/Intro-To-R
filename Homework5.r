###Homework 5

#a
test1 <- t.test(rnorm(30,45,10),rnorm(30,45,10))

#b
#pvalue = .2394
#Do not reject H0

#c
test2 <- replicate(1000, t.test(rnorm(30,45,10),rnorm(30,45,10)))

#d
#proportion of pvalues reject is .061
pval <- replicate(1000, t.test(rnorm(30,45,10),rnorm(30,45,10))$p.value)
#reject <- pval < 0.05
#sum(reject) / 1000

#e
hist(pval)

#f
#uniform distribution