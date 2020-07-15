library(raster)
library(rgdal)
setwd("c:\\working directory")

dataa<-raster("shade.tif")
plot(dataa)

#reading a shapefiles and other vector data uses the rgdal library
shapf<-readOGR(".","nakuru_county")
plot(shapf,add=TRUE)

#to be able to clip base on the shapefile extent then one need to 
#mask 
maskedRoi<- mask(dataa,shapf)
plot(maskedRoi)

#####using extract function to extract 

shapf2<-readOGR(".","counties")
plot(shapf2,add=TRUE)

extracter<- extract(dataa,shapf2,fun=mean,na.rm=TRUE)
head(extracter)

