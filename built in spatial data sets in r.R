library(raster)
library(rgeos)
library(shapefiles)
library(rworldmap)
library(maptools)


setwd("c:\\working directory")

x<- CRS("+proj=longlat +ellps=WGS84")

#loading the world basemap
wmap<- getMap(resolution="coarse")
plot(wmap)

data(wrld_simpl,package = "maptools")
plot(wrld_simpl,add=T)

nax<-readShapePoly("naxCoounty",verbose = TRUE,proj4string = x)
plot(nax,add=TRUE,axes = TRUE,border="red")






