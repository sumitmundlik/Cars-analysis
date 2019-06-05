x1<- read.csv("E:/minipro/sa/car.csv",header=TRUE,stringsAsFactors=FALSE)
gr1<-barplot(x1$hp,names.arg=x1$model,ylim=c(0,80),main="HP of Cars",
             col=c("GREEN","darkblue","RED","ORANGE","violet","YELLOW","BLACK"))
text(gr1,x1$hp+5,labels=round(x1$hp,1),col="black")

n1<-x1$mfc
n1
gr1<-barplot(n1,names.arg=x1$model,ylim=c(0,1400000),main="Total Manufacturing Cost",
             col=c("GREEN","darkblue","RED","ORANGE","violet","YELLOW","BLACK"))
text(gr1,n1+25000,labels=round(n1,1),col="black")

n2<-x1$price
gr1<-barplot(n2,names.arg=x1$model,ylim=c(0,2500000),main="Ex Showroom Cost",
             col=c("GREEN","darkblue","RED","ORANGE","violet","YELLOW","BLACK"))
text(gr1,n2+25000,labels=round(n2,1),col="black")

n3<-x1$ttsell
gr1<-barplot(n3,names.arg=x1$model,ylim=c(0,15000),main="Total sell in a year",
             col=c("GREEN","darkblue","RED","ORANGE","violet","YELLOW","BLACK"))
text(gr1,n3+500,labels=round(n3,1),col="black")

c3<-n2-n1
c3
gr1<-barplot(c3,names.arg=x1$model,ylim=c(0,650000),main="Profit per CAR",
             col=c("GREEN","darkblue","RED","ORANGE","violet","YELLOW","BLACK"))
text(gr1,c3+20000,labels=round(c3,1),col="black")

x<-0
y<-0
z<-0
i<-1
m<-x1$fuel
while (i < 11) {
  if(m[i]=="diesel")
  {
    x=x+1
  } else if(m[i]=="gas") 
  {
    y=y+1
  } else if(m[i]=="petrol")
  {
    z=z+1
  }
  i<-i+1
}
cat("No of diesel cars :",x,"\n")
cat("No of petrol cars :",z,"\n")
cat("No of gas cars :",y,"\n")

