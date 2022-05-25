## Zach Smith
# Homework 3

#Question 1
x <- rchisq(1600,df=4)
hist(x,prob=T,ylim=c(0,0.2))
curve(dchisq(x,df = 4), from = 0, to = 15, n = 1600, col = 'red', lwd = 2, add = T)

#Question 2
nsim <- 12500
set.seed(121212)
x <- round(runif(nsim,1,1000),2)
g <- sample(LETTERS[1:5],nsim,replace=TRUE)

#NO LOOPS
s.time <- proc.time()
aggregate(x,by=list(g),FUN=function(x)
  c(min=min(x),max=max(x),mean=mean(x)))
proc.time() - s.time

#LOOPS
s.time <- proc.time()
#summary(x)
a = c(1000,0,0,0)
b = c(1000,0,0,0)
c = c(1000,0,0,0)
d = c(1000,0,0,0)
e = c(1000,0,0,0)

for(ii in 1:length(x)){
  if(g[ii] == "A"){
    a[1] <- min(a[1],x[ii])
    a[2] <- max(a[2],x[ii])
    a[3] <- a[3] + x[ii]
    a[4] <- a[4] + 1
  } else if(g[ii] == "B"){
    b[1] <- min(b[1],x[ii])
    b[2] <- max(b[2],x[ii])
    b[3] <- b[3] + x[ii]
    b[4] <- b[4] + 1
  } else if(g[ii] == "C"){
    c[1] <- min(c[1],x[ii])
    c[2] <- max(c[2],x[ii])
    c[3] <- c[3] + x[ii]
    c[4] <- c[4] + 1
  } else if(g[ii] == "D"){
    d[1] <- min(d[1],x[ii])
    d[2] <- max(d[2],x[ii])
    d[3] <- d[3] + x[ii]
    d[4] <- d[4] + 1
  } else if(g[ii] == "E"){
    e[1] <- min(e[1],x[ii])
    e[2] <- max(e[2],x[ii])
    e[3] <- e[3] + x[ii]
    e[4] <- e[4] + 1
  }
}
f = cbind(a,b,c,d)
fmean = f[3,]/f[4,]
f = f[-3:-4,]
f = rbind(f,fmean)
rownames(f) = c("Min","Max","Mean")
f
proc.time() - s.time

#Question 3
z <- matrix(1:1,nrow=5,ncol=3)
z
a = apply(z,1,sum)
newmat = cbind(z,a)
b = apply(newmat,2,sum)
finalmat = rbind(newmat,b)
finalmat
