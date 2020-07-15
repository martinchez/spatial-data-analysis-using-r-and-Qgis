##reading multible files
setwd("c:/jkajdks/kasjk/")
library(raster)

bandslist<-list.files(pattern = ".tif", full.names = TRUE)

#ploting false color image
plotRGB(bandslist,r=3,g=2,b=1,stretch="hist")

#applying linear stretch and scale
plotRGB(bandslist,r=3,g=2,b=1,scale=800,stretch="Lin")

#expressing or rendering vegetation data
#the band combinition is 4,3,2, 
#the red color represents the greener color
#the darker the red color the greener the vegetation

plotRGB(bandslist,r=4,g=3,b=2,stretch="hist")
