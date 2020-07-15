
setwd("c:/jkajdks/kasjk/")
library(raster)

bandslist<-list.files(pattern = ".tif", full.names = TRUE)

bandslist
stackr<-stack(bandslist)


#application of band arifthmetic to calculate ndvi
# (NIR-RED)/(NIR+RED)
#YOU WILL need to know the index ot the two badnds from the rsater stack
ndvi<-(bandslist$band4-bandlist$band3)/(bandslist4+bandslist5)


plot(ndvi)