library(raster)

setwd("c:/rasted/")

#reading the first band
band1<- raster("band1.tif")

#examining the datas crs
band1

projeband1<-projectRaster(band1,crs = '+proj=longlat')

#examining the reprojected band
projeband1

plot(projeband1)
