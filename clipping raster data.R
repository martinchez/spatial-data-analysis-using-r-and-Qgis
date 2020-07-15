library(raster)
setwd("c:\\working directory")

dataa<-raster("shade.tif")
plot(dataa)
############################3METHODE 1
#lets clip the  above raster using the extent function
#using extent we will specify the longitude and latitude

clipExtent<-extent(105,106,20,21)

#lets apply crop function to the dataa the extent being clipExtent

cropedArea<-crop(dataa,clipExtent)
plot(cropedArea)

##############################3METHODE2
#here we will apply the dynamic clipping tool
#using the drawExtent() function we will dynamicall do that
clipExtent2<-drawExtent()

#apply the crop function to the clipextent2
cropedArea2<-crop(dataa,clipExtent2)
plot(cropedArea2)


