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
#we want all values less than 100 equeted to NA

func<- function(x){
  x[x<300]<-NA
  return(x)
}
#here we are applying calculation 
#of the sunbands a custom function that we have created
#which is func
#where xis equestade to submbands
appfunc<- calc(sumbands,func)


