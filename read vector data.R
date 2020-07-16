library(raster)
library(rgeos)
library(shapefiles)

setwd("c:\\working directory")

########################## METHODE 1 ###############
library(maptools)
#APLYING MAPTOOLS function readshapePoly
#SPECIFYING THE CRS 
x<- CRS("+proj=longlat +ellps=WGS84")

#read the data
naxshapefile<-readShapePoly("nax",verbose = TRUE,proj4string = x)
plot(naxshapefile)

naxshapefile


########################## METHODE 2 ###############
library(rgdal)
#we are using the library rgdal 
#the function is readogr
naxshapefile2<- readOGR(".","nax")


########################## METHODE 2 ###############
library(PBSmapping)
naxshapefile3<-importshapefile("nav.shp")
plot(naxshapefile3)

######## converting my crs of shapefiles FROM LONGLAY TO UTM#####

crss<- spTransform(naxshapefile,crs("+proj=utm +zone=48 ellps=WGS84"))







