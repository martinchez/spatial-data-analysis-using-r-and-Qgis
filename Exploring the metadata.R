library(raster)
library(rgeos)
library(shapefiles)

setwd("c:\\working directory")

library(maptools) 

x<- CRS("+proj=longlat +ellps=WGS84")

#read the data
naxshapefile<-readShapePoly("nax",verbose = TRUE,proj4string = x)
plot(naxshapefile)

naxshapefile
#exploring the shapefiles
naxshapefile

extent(naxshapefile)

#getting the names attributes
names(naxshapefile)

head(naxshapefile@data)

#getting the number of columns and rows number
str(naxshapefile@data)

print(naxshapefile$name)#this gives you the names columns
 
"mawanga" %in% naxshapefile$name #here we are performing a basic serach for the mawanga town in naxshapefile data using the names column

#summary of the data
summary(naxshapefile@data)

#lets try to extract a column and plot its data
summary(naxshapefile@data$area_cat)

areascat<- table(naxshapefile@data$area_cat)
#lets plot baplot
barplot(areascat)


mean(naxshapefile@data$area_county)










