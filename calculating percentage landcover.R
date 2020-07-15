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

#ndvi has continouese values
#values change continously are hard to count
#trying to find the different ndvi cartegories
#0.6-1 =forest, 0.2-0.6 = degraded vegetation, less than 0.2 = bareland

#simulation ndvi values obtained from ndvi calculations

m<- c(-0.2,0.2, 1, 0.2,0.6, 2, 0.6,1, 3)

matrarrange<- matrix(m,ncol = 3,byrow = TRUE)
matrarrange



#reclassifying my ndvi with relation to the matrix group 
reclasif<- reclassify(ndvi,matrarrange)
plot(reclasif)

######################################main topic######################

#calculation of % of land cover of categorical maps
#this important in calculating percentage of different land covers or cartegories
#SDMtools is an important tool for taking land scaping ecology
library(SDMTools)

c<- ClassStat(reclasif,cellsize=30,latlon=FALSE)
head(c)# check in the matrix

