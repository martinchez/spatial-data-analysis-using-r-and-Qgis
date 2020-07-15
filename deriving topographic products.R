library(raster)
library(rgdal)
setwd("c:\\working directory")

dem<- raster("naxdem.tif")
plot(dem,main = "Dem Elevation")

dem2<-getData("alt",country="VNW")#getting countrycode

plot(dem,zlin=c(1000,3000),main="Elevation 1000m-3000m")

#generating slope slope from dem 
#here the slope is in degrees
#we are using the terrain function
splope<- terrain(dem,opt="slope",unit="degrees")
splope

aspect<- terrain(dem,opt="aspect")
aspect

#generating slope and aspect simultaneousely
slopasp<-terrain(dem,opt=c("slope","terrain"),unit="degrees")
plot(slopasp)


#deriving hill shade
#hillshade is a 3d representation of the surface but takes into account
#the relative position of the sun

hills<-hillShade(slopasp,aspect,40,270)
#40 is angle of the sun
#270 is the direction

plot(hills)







