library(raster)
library(rgdal)
setwd("c:\\working directory")



naxhillshade<-raster("naxhill.tif")
naxndvi<-raster("naxndvi.tif")
naxndviltlg<-raster("ndviltlg.tif")#the crs has only been changed

#getting a summary of the data to understand
summary(naxhillshade)

summary(naxndviltlg)

#plotting a histogramof any hillshade data
hist(naxhillshade)

#digging dipper by stacking the hillshade and ndvilatlg
stacked<-stack(naxhillshade,naxndviltlg)
head(stacked)

#getting values from the stacked images
valuetable<-getValues(stacked)

#removing the NA values
valuetable<-na.omit(valuetable)

#putting the new data into a data frame
valuetable<-as.data.frame(valuetable)

head(valuetable,n=10)

str(valuetable)

#taking a randomly selected sample of the data
#750 is the size of the sample we want to take
selecsample<-valuetable[sample(1:nrow(valuetable),750,replace = FALSE)]

head(selecsample)


#calculating pearsons correlation between two data sets

cor.test(selecsample$ndviltlg,selecsample$naxhill)

# performing linear regression

fit<- lm(ndviltlg~naxhill,data=selecsample)
summary(fit)

#extracting values 
ndvihil<-raster("nacdvihill.tif")
pts<-read.csv("points.csv")
head(pts)


plot(pts,add=TRUE)
points(pts,col="red")

#extracting ndvi+hillshade values based on the points
dat1<-extract(ndvihil,pts)

head(dat1)
dat1<- as.data.frame(dat1)
dat1<- na.omit(dat1)
cor.test(dat1$ndviltlg,dat1$naxhill)






