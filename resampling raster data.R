setwd("c:/jkajdks/kasjk/")
library(raster)
#resmpling function general
#resample(raster_to_be_resampled,baseline_raster,"interpolation_technique")where
# raster_to_be_resampled = is the rase whose pixel size has to be modified . and
#interpolation_technique = nearest neightbours ,bilinear
bandhill<-raster("hillsg.tif")

bandhillndvi<-raster("hillsgndvi.tif") # the ndvi can be duscussed in other repositories

#lets change the crs first
nll<- projectRaster(bandhillndvi,crs = '+proj=longlat')

nll

#resampling the ndvi
#applying nearest neighbour ngb **interpolation technique
resmpndat<-resample(nll,bandhill,"ngb")

resmpndat
