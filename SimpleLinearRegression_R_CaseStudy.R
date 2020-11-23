Mydata=read.table("winequality-red.csv",header=TRUE,sep=";",nrows=-1)
View(Mydata)
summary(Mydata)

#Ελέγχω την γραμμική συσχέτιση των μεταβλητών
cor(Mydata)

#Η μεταβλητή quality που με ενδιαφέρει εμφανίζει την μεγαλύτερη συσχέτιση με την alcohol και sulphates
cor(Mydata$alcohol,Mydata$quality)
x<-Mydata$alcohol
y<-Mydata$quality

model<-lm(y~x,data=Mydata)
model
summary(model)

Fitted_y<-fitted(model)
Residuals<-resid(model)

with(Mydata, plot(x=alcohol,y=quality))
abline(model)
