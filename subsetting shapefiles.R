library(raster)
library(rgeos)
library(shapefiles)
library(rworldmap)
library(maptools)


setwd("c:\\working directory")

naxshapefile<-readShapePoly("nax",verbose = TRUE,proj4string = x)
plot(naxshapefile)

bahaticonst<- subset(naxshapefile,naxshapefile$name=="bahati_const")
plot(bahaticonst)

#adding color
plot(bahaticonst,col="blue")

