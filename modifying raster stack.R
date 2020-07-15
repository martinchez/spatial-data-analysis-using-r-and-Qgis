library(raster)

setwd("c:/rasted/")

band1<-raster("band1")

band2<-raster("band2")

band3<-raster("band3")

stackbands<-stack(band1,band2,band3)

plot(stackbands)


brickstackbands<-brick(band1,band2,band3)

brickstackbands
plot(brickstackbands)