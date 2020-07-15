# reading data in r
library(raster)

#setting working directory
setwd("c://spatial analysis using r")

band1=raster("band1.tiff")

#getting to understand the parameters
band1

#ploting the badn
plot(band1)

#reading erdas imagine file
band2=raster("band2.img")

band2
plot(band2)

#converting a given file format into another file format

r3=raster("casrt.rst")

#write the file in tif format to convert it

writeRaster(r3,"r3raster.tif")

#reading multiple format kxkf
allbands<- list.files(pattern = ".tif",full.names = TRUE)

#layerstacking

stacked<-stack(allbands)

#examining the data
stacked

names(stacked)

#ploting the stacked images

plot(stacked)



 

