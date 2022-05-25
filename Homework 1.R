#Zach Smith

x = c(1,2,3,4,5,6)
y = c(7,8,9,10,11,12)
A = c("A","B","C","D","E","F")
z = rep(1,6)

matc <- cbind(x,y,z)# bind the column vectors
rownames(matc) = A
matc

print(matc[(2:3),])

temp<-matc
newmat = temp[,-c(3)]
newmat

matc^2

newvec = c(y,x)
mean(newvec)
