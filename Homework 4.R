#Zach Smith
#Homework 4

x <- c(3.7,8.0,6.5,2.2,6.6,7.9,4.2,1.1,7.2,9.2,
       9.2,9.0,2.2,6.9,9.3,6.5,2.3,4.4,7.7,1.8)
y <- c(27.0,60.6,58.1,57.0,31.6,30.4,39.6,19.4,52.0,59.3,
       39.5,41.7,36.2,34.2,26.5,44.7,27.8,18.1,24.5,37.7)

fishZ <- function(x,y,rho0=0){
  if(!is.numeric(x)) { stop("x must be numeric") } else
  if(!is.numeric(y)) { stop("y must be numeric") } else
  if(length(x) != length(y)) { stop("x and y must have same length") } else
  if(rho0 < -1 | rho0 > 1) { stop("rho0 must be between -1 and 1")}
          
  n <- length(x)
  r <- cor(x,y)
  ts <- (sqrt(n-3))*(0.5*log((1+r)/(1-r))-(0.5*log((1+rho0)/(1-rho0))))
  pval <- 2*(1-pnorm(abs(ts)))
  
  c(ts,pval)
}
fishZ(x,y)
