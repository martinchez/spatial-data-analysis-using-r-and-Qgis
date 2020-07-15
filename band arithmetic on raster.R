##reading multible files
setwd("c:/jkajdks/kasjk/")
library(raster)

bandslist<-list.files(pattern = ".tif", full.names = TRUE)

bandslist
stackr<-stack(bandslist)
#applying arrithmetic operators on our stack
#sum minus multipy devide
#using calc funv=ction to carry operations
#this will sum all the pixels in all the bands availble
sumbands<- calc(stackr,sum)

#creating a function
