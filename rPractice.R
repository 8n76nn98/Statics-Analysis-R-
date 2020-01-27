# library(xlsx)
# data1 <- read.xlsx("/Users/mingshi/Desktop/firstYear2Secemeter/statics_analysis/normaltable.xlsx",sheetIndex = 1)
# head(data1)
# /*
#   scale(x, center=TRUE, scale=TRUE)  which is for z-score function
# */
#T distrubution
# x=seq(-4,4,length=1000);
# plot(x,dnorm(x),type="l",col="red")
# lines(x,dt(x,2),type="l",xlab="",ylab="",lty=1);
# lines(x,dt(x,5),type="l",xlab="",ylab="",lty=2);
# lines(x,dt(x,8),type="l",xlab="",ylab="",lty=3);
# lines(x,dt(x,12),type="l",xlab="",ylab="",lty=4);
# a<-rnorm(100)
# c<-dt(a,1,0) 
# plot(hist(c)

#t-distrubution

set.seed(1)
x<-seq(-5,5,length.out=1000)
y<-dt(x,1,0)

plot(x,y,col="red",xlim=c(-5,5),ylim=c(0,0.5),type='l',
     xaxs="i", yaxs="i",ylab='density',xlab='',
     main="The T Density Distribution")

lines(x,dt(x,5,0),col="green")
lines(x,dt(x,5,2),col="blue")
lines(x,dt(x,50,4),col="orange")

legend("topleft",legend=paste("df=",c(1,5,5,50)," ncp=", c(0,0,2,4)), lwd=1, col=c("red", "green","blue","orange"))

