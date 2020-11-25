#1ST

x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)
y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)

relation <- lm(y~x)
print(relation)

print(summary(relation))

a <- data.frame(x = 170)
result <-  predict(relation,a)
print(result)

plot(y,x,col = "blue",main = "Height & Weight Regression", abline(lm(x~y)),cex = 1.3,pch = 16,xlab = "Weight in Kg",ylab = "Height in cm")

#2ND

sfly<-c(26,23,33,6,3,4,20,2)
mfly<-c(4,5,12,9,15,10,8,22)
speed<-c(3,4,4,5,6,7,7,9)
ivert<-cbind(sfly,mfly)
dim(ivert)
spd<-cbind(speed)
spd
dim(spd)
ivert

matplot(spd,ivert,type='b',pch=1:2,col=2,lty=2:3,xlab='Speed',ylab='Invertebrate')+legend(x ='topright',legend=c('Stonefly','MayFly'),col=1,pch=1:2,lty=2:3)