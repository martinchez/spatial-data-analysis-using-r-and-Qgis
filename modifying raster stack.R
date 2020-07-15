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

##reading multible files
setwd("c:/jkajdks/kasjk/")

bandslist<-list.files(pattern = ".tif", full.names = TRUE)
#creating a stack
rastersstack<- stack(bandslist)
rastersstack

#droping a certain band/layer from our stack
#this droplayer function removes the band specified(4)
rastersstackdrp<-dropLayer(rastersstack,4)
rastersstackdrp

#removing two bands simultaneousely
#this will remove the indexes you specify i.e the 1 and 3rd bands
rastersstackdrp2<-dropLayer(rastersstack,c(1,3))

#adding a new raster band to an existing stack
#here we have added the rster banda into the stack that we removed
#the addLayer function dose all that
rasterAdd<- addLayer(rastersstackdrp2,band1)

rasterAdd












