##reading multible files
setwd("c:/jkajdks/kasjk/")
library(raster)

bandslist<-list.files(pattern = ".tif", full.names = TRUE)

#ploting false color image
plotRGB(bandslist,r=3,g=2,b=1,stretch="hist")

