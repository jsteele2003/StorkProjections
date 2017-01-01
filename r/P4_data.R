rm(list=ls())
setwd("C://Users/zarre/Dropbox/Zayd/Class_Notes/ML/Project4/")
setwd("C://Users/Zayd Omar/Dropbox/Zayd/Class_Notes/ML/Project4/")
#load("data_image.RData")

acc.p1.xaa = read.csv(paste("C://Users/zarre/Dropbox/Zayd/Class_Notes/ML/Project4/Split1/",
                            "xaa.csv",sep  =  ""),header = T)
acc.p1.xab = read.csv(paste("C://Users/zarre/Dropbox/Zayd/Class_Notes/ML/Project4/Split1/",
                            "xab.csv",sep  =  ""),header = F)
acc.p1.xac = read.csv(paste("C://Users/zarre/Dropbox/Zayd/Class_Notes/ML/Project4/Split1/",
                            "xac.csv",sep  =  ""),header = F)
acc.p1.xad = read.csv(paste("C://Users/zarre/Dropbox/Zayd/Class_Notes/ML/Project4/Split1/",
                            "xad.csv",sep  =  ""),header = F)
acc.p1.xae = read.csv(paste("C://Users/zarre/Dropbox/Zayd/Class_Notes/ML/Project4/Split1/",
                            "xae.csv",sep  =  ""),header = F)

names(acc.p1.xab) = names(acc.p1.xaa)
names(acc.p1.xac) = names(acc.p1.xaa)
names(acc.p1.xad) = names(acc.p1.xaa)
names(acc.p1.xae) = names(acc.p1.xaa)

p1.data = rbind(acc.p1.xaa,acc.p1.xab,acc.p1.xac,acc.p1.xad,acc.p1.xae)

rm(acc.p1.xaa)
rm(acc.p1.xab)
rm(acc.p1.xac)
rm(acc.p1.xad)
rm(acc.p1.xae)

acc.p2.xaa = read.csv(paste("C://Users/zarre/Dropbox/Zayd/Class_Notes/ML/Project4/Split2/",
                            "xaa.csv",sep  =  ""),header = T)
acc.p2.xab = read.csv(paste("C://Users/zarre/Dropbox/Zayd/Class_Notes/ML/Project4/Split2/",
                            "xab.csv",sep  =  ""),header = F)
acc.p2.xac = read.csv(paste("C://Users/zarre/Dropbox/Zayd/Class_Notes/ML/Project4/Split2/",
                            "xac.csv",sep  =  ""),header = F)
acc.p2.xad = read.csv(paste("C://Users/zarre/Dropbox/Zayd/Class_Notes/ML/Project4/Split2/",
                            "xad.csv",sep  =  ""),header = F)
acc.p2.xae = read.csv(paste("C://Users/zarre/Dropbox/Zayd/Class_Notes/ML/Project4/Split2/",
                            "xae.csv",sep  =  ""),header = F)
acc.p2.xaf = read.csv(paste("C://Users/zarre/Dropbox/Zayd/Class_Notes/ML/Project4/Split2/",
                            "xaf.csv",sep  =  ""),header = F)

names(acc.p2.xab) = names(acc.p2.xaa)
names(acc.p2.xac) = names(acc.p2.xaa)
names(acc.p2.xad) = names(acc.p2.xaa)
names(acc.p2.xae) = names(acc.p2.xaa)
names(acc.p2.xaf) = names(acc.p2.xaa)

p2.data = rbind(acc.p2.xaa,acc.p2.xab,acc.p2.xac,acc.p2.xad,acc.p2.xae,acc.p2.xaf)

rm(acc.p2.xaa)
rm(acc.p2.xab)
rm(acc.p2.xac)
rm(acc.p2.xad)
rm(acc.p2.xae)
rm(acc.p2.xaf)

acc.p3.xaa = read.csv(paste("C://Users/zarre/Dropbox/Zayd/Class_Notes/ML/Project4/Split3/",
                            "xaa.csv",sep  =  ""),header = T)
acc.p3.xab = read.csv(paste("C://Users/zarre/Dropbox/Zayd/Class_Notes/ML/Project4/Split3/",
                            "xab.csv",sep  =  ""),header = F)
acc.p3.xac = read.csv(paste("C://Users/zarre/Dropbox/Zayd/Class_Notes/ML/Project4/Split3/",
                            "xac.csv",sep  =  ""),header = F)
acc.p3.xad = read.csv(paste("C://Users/zarre/Dropbox/Zayd/Class_Notes/ML/Project4/Split3/",
                            "xad.csv",sep  =  ""),header = F)
acc.p3.xae = read.csv(paste("C://Users/zarre/Dropbox/Zayd/Class_Notes/ML/Project4/Split3/",
                            "xae.csv",sep  =  ""),header = F)
acc.p3.xaf = read.csv(paste("C://Users/zarre/Dropbox/Zayd/Class_Notes/ML/Project4/Split3/",
                            "xaf.csv",sep  =  ""),header = F)

names(acc.p3.xab) = names(acc.p3.xaa)
names(acc.p3.xac) = names(acc.p3.xaa)
names(acc.p3.xad) = names(acc.p3.xaa)
names(acc.p3.xae) = names(acc.p3.xaa)
names(acc.p3.xaf) = names(acc.p3.xaa)

p3.data = rbind(acc.p3.xaa,acc.p3.xab,acc.p3.xac,acc.p3.xad,acc.p3.xae,acc.p3.xaf)

rm(acc.p3.xaa)
rm(acc.p3.xab)
rm(acc.p3.xac)
rm(acc.p3.xad)
rm(acc.p3.xae)
rm(acc.p3.xaf)

acc.p4.xaa = read.csv(paste("C://Users/zarre/Dropbox/Zayd/Class_Notes/ML/Project4/Split4/",
                            "xaa.csv",sep  =  ""),header = T)
acc.p4.xab = read.csv(paste("C://Users/zarre/Dropbox/Zayd/Class_Notes/ML/Project4/Split4/",
                            "xab.csv",sep  =  ""),header = F)
acc.p4.xac = read.csv(paste("C://Users/zarre/Dropbox/Zayd/Class_Notes/ML/Project4/Split4/",
                            "xac.csv",sep  =  ""),header = F)

names(acc.p4.xab) = names(acc.p4.xaa)
names(acc.p4.xac) = names(acc.p4.xaa)

p4.data = rbind(acc.p4.xaa,acc.p4.xab,acc.p4.xac)

rm(acc.p4.xaa)
rm(acc.p4.xab)
rm(acc.p4.xac)

#################################################################################

gps.xaa = read.csv(paste("C://Users/zarre/Dropbox/Zayd/Class_Notes/ML/Project4/Split_gps/",
                         "gpsaa.csv",sep  =  ""),header = T)[,-c(6:15)]
gps.xab = read.csv(paste("C://Users/zarre/Dropbox/Zayd/Class_Notes/ML/Project4/Split_gps/",
                         "gpsab.csv",sep  =  ""),header = F)[,-c(6:15)]
gps.xac = read.csv(paste("C://Users/zarre/Dropbox/Zayd/Class_Notes/ML/Project4/Split_gps/",
                         "gpsac.csv",sep  =  ""),header = F)[,-c(6:15)]
gps.xad = read.csv(paste("C://Users/zarre/Dropbox/Zayd/Class_Notes/ML/Project4/Split_gps/",
                         "gpsad.csv",sep  =  ""),header = F)[,-c(6:15)]
gps.xae = read.csv(paste("C://Users/zarre/Dropbox/Zayd/Class_Notes/ML/Project4/Split_gps/",
                         "gpsae.csv",sep  =  ""),header = F)[,-c(6:15)]
gps.xaf = read.csv(paste("C://Users/zarre/Dropbox/Zayd/Class_Notes/ML/Project4/Split_gps/",
                         "gpsaf.csv",sep  =  ""),header = F)[,-c(6:15)]
gps.xag = read.csv(paste("C://Users/zarre/Dropbox/Zayd/Class_Notes/ML/Project4/Split_gps/",
                         "gpsag.csv",sep  =  ""),header = F)[,-c(6:15)]
gps.xah = read.csv(paste("C://Users/zarre/Dropbox/Zayd/Class_Notes/ML/Project4/Split_gps/",
                         "gpsah.csv",sep  =  ""),header = F)[,-c(6:15)]
gps.xai = read.csv(paste("C://Users/zarre/Dropbox/Zayd/Class_Notes/ML/Project4/Split_gps/",
                         "gpsai.csv",sep  =  ""),header = F)[,-c(6:15)]
gps.xaj = read.csv(paste("C://Users/zarre/Dropbox/Zayd/Class_Notes/ML/Project4/Split_gps/",
                         "gpsaj.csv",sep  =  ""),header = F)[,-c(6:15)]
gps.xak = read.csv(paste("C://Users/zarre/Dropbox/Zayd/Class_Notes/ML/Project4/Split_gps/",
                         "gpsak.csv",sep  =  ""),header = F)[,-c(6:15)]
gps.xal = read.csv(paste("C://Users/zarre/Dropbox/Zayd/Class_Notes/ML/Project4/Split_gps/",
                         "gpsal.csv",sep  =  ""),header = F)[,-c(6:15)]
gps.xam = read.csv(paste("C://Users/zarre/Dropbox/Zayd/Class_Notes/ML/Project4/Split_gps/",
                         "gpsam.csv",sep  =  ""),header = F)[,-c(6:15)]
gps.xan = read.csv(paste("C://Users/zarre/Dropbox/Zayd/Class_Notes/ML/Project4/Split_gps/",
                         "gpsan.csv",sep  =  ""),header = F)[,-c(6:15)]
gps.xao = read.csv(paste("C://Users/zarre/Dropbox/Zayd/Class_Notes/ML/Project4/Split_gps/",
                         "gpsao.csv",sep  =  ""),header = F)[,-c(6:15)]
gps.xap = read.csv(paste("C://Users/zarre/Dropbox/Zayd/Class_Notes/ML/Project4/Split_gps/",
                         "gpsap.csv",sep  =  ""),header = F)[,-c(6:15)]

names(gps.xaa)[13:16] = c("Temp2m", "Low_Vegetation", "Thermal_Uplift", "High_Vegetation")
names(gps.xab) = names(gps.xaa)
names(gps.xac) = names(gps.xaa)
names(gps.xad) = names(gps.xaa)
names(gps.xae) = names(gps.xaa)
names(gps.xaf) = names(gps.xaa)
names(gps.xag) = names(gps.xaa)
names(gps.xah) = names(gps.xaa)
names(gps.xai) = names(gps.xaa)
names(gps.xaj) = names(gps.xaa)
names(gps.xak) = names(gps.xaa)
names(gps.xal) = names(gps.xaa)
names(gps.xam) = names(gps.xaa)
names(gps.xan) = names(gps.xaa)
names(gps.xao) = names(gps.xaa)
names(gps.xap) = names(gps.xaa)

gps.data = rbind(gps.xaa,gps.xab,gps.xac,gps.xad,gps.xae,gps.xaf,gps.xag,gps.xah,
                 gps.xai,gps.xaj,gps.xak,gps.xal,gps.xam,gps.xan,gps.xao,gps.xap)

rm(gps.xaa,gps.xab,gps.xac,gps.xad,gps.xae,gps.xaf,gps.xag,gps.xah,
   gps.xai,gps.xaj,gps.xak,gps.xal,gps.xam,gps.xan,gps.xao,gps.xap)

##### Modifying the Raw Acceleration Data #####

##### Making the raw acceleration a list ####
p1.data$eobs.accelerations.raw = as.character(p1.data$eobs.accelerations.raw)
p2.data$eobs.accelerations.raw = as.character(p2.data$eobs.accelerations.raw)
p3.data$eobs.accelerations.raw = as.character(p3.data$eobs.accelerations.raw)
p4.data$eobs.accelerations.raw = as.character(p4.data$eobs.accelerations.raw)

## Parsing the Acceleration

p1.acc.list = parse(p1.data$eobs.accelerations.raw)
p2.acc.list = parse(p2.data$eobs.accelerations.raw)
p3.acc.list = parse(p3.data$eobs.accelerations.raw)
p4.acc.list = parse(p4.data$eobs.accelerations.raw)

## Equalizing the length

p1.equalize.length = equalize.length(p1.acc.list) # First 120 elements
p2.equalize.length = equalize.length(p2.acc.list) # First 120 elements
p3.equalize.length = equalize.length(p3.acc.list) # First 120 elements
p4.equalize.length = equalize.length(p4.acc.list) # First 120 elements

## Checking for equality

unequal.length(p1.equalize.length)
unequal.length(p2.equalize.length)
unequal.length(p3.equalize.length)
unequal.length(p4.equalize.length)

## Rbinding the data ##

p1.acc.rbind = do.call(rbind, p1.equalize.length)
p2.acc.rbind = do.call(rbind, p2.equalize.length)
p3.acc.rbind = do.call(rbind, p3.equalize.length)
p4.acc.rbind = do.call(rbind, p4.equalize.length)

## P1 OBDA
a = coord.x.avg(p1.acc.rbind)
b = coord.y.avg(p1.acc.rbind)
c = coord.z.avg(p1.acc.rbind)

p1.x.demeaned = abs(p1.acc.rbind[,seq1]-a)
p1.y.demeaned = abs(p1.acc.rbind[,seq2]-b)
p1.z.demeaned = abs(p1.acc.rbind[,seq3]-c)


p1.OBDA.acc=rowSums(p1.x.demeaned+p1.y.demeaned+p1.z.demeaned)

rm(p1.acc.list,p1.equalize.length,p1.acc.rbind,p1.x.demeaned,
   p1.y.demeaned,p1.z.demeaned)

## P2 OBDA
a = coord.x.avg(p2.acc.rbind)
b = coord.y.avg(p2.acc.rbind)
c = coord.z.avg(p2.acc.rbind)

p2.x.demeaned = abs(p2.acc.rbind[,seq1]-a)
p2.y.demeaned = abs(p2.acc.rbind[,seq2]-b)
p2.z.demeaned = abs(p2.acc.rbind[,seq3]-c)


p2.OBDA.acc=rowSums(p2.x.demeaned+p2.y.demeaned+p2.z.demeaned)

rm(p2.acc.list,p2.equalize.length,p2.acc.rbind,p2.x.demeaned,
   p2.y.demeaned,p2.z.demeaned)

## P3 OBDA
a = coord.x.avg(p3.acc.rbind)
b = coord.y.avg(p3.acc.rbind)
c = coord.z.avg(p3.acc.rbind)

p3.x.demeaned = abs(p3.acc.rbind[,seq1]-a)
p3.y.demeaned = abs(p3.acc.rbind[,seq2]-b)
p3.z.demeaned = abs(p3.acc.rbind[,seq3]-c)

p3.OBDA.acc = rowSums(p3.x.demeaned+p3.y.demeaned+p3.z.demeaned)
table(is.na(p3.OBDA.acc))
rm(p3.acc.list,p3.equalize.length,p3.acc.rbind,p3.x.demeaned,
   p3.y.demeaned,p3.z.demeaned)

## P4 OBDA
a = coord.x.avg(p4.acc.rbind)
b = coord.y.avg(p4.acc.rbind)
c = coord.z.avg(p4.acc.rbind)

p4.x.demeaned = abs(p4.acc.rbind[,seq1]-a)
p4.y.demeaned = abs(p4.acc.rbind[,seq2]-b)
p4.z.demeaned = abs(p4.acc.rbind[,seq3]-c)

p4.OBDA.acc=rowSums(p4.x.demeaned+p4.y.demeaned+p4.z.demeaned)

rm(p4.acc.list,p4.equalize.length,p4.acc.rbind,p4.x.demeaned,
   p4.y.demeaned,p4.z.demeaned)
rm(a,b,c)
###############################################################################

###
###
###   DATA LOAD HERE ####
###   load("data_image.RData")
###

##### OBDA ########
p1.data.OBDA = cbind(p1.data[,-c(4,5,6,7)],p1.OBDA.acc)
p2.data.OBDA = cbind(p2.data[,-c(4,5,6,7)],p2.OBDA.acc)
p3.data.OBDA = cbind(p3.data[,-c(4,5,6,7)],p3.OBDA.acc)
p4.data.OBDA = cbind(p4.data[,-c(4,5,6,7)],p4.OBDA.acc)

names(p1.data.OBDA)[9] = "OBDA"
names(p2.data.OBDA)[9] = "OBDA"
names(p3.data.OBDA)[9] = "OBDA"
names(p4.data.OBDA)[9] = "OBDA"

################################################################################

p1.data.OBDA$individual.local.identifier = as.character(p1.data.OBDA$individual.local.identifier)
p2.data.OBDA$individual.local.identifier = as.character(p2.data.OBDA$individual.local.identifier)
p3.data.OBDA$individual.local.identifier = as.character(p3.data.OBDA$individual.local.identifier)
p4.data.OBDA$individual.local.identifier = as.character(p4.data.OBDA$individual.local.identifier)


plot(p1.data.OBDA$OBDA[p1.data.OBDA$individual.local.identifier == "BraveHeart (DER AP926)"],type="l")

lines(p1.data.OBDA$OBDA[p1.data.OBDA$individual.local.identifier=="Benjamin (DER AN867)"],type="l",col="red")

###########################################################################


###### Date and Time #####
p1.data$timestamp = as.character(p1.data$timestamp)
p2.data$timestamp = as.character(p2.data$timestamp)
p3.data$timestamp = as.character(p3.data$timestamp)
p4.data$timestamp = as.character(p4.data$timestamp)
gps.data$timestamp = as.character(gps.data$timestamp)

## P1
p1.date.parse = parse.char(p1.data$timestamp)
p1.date.do.call = as.data.frame(do.call(rbind, p1.date.parse))
names(p1.date.do.call)=c("Date","Time")
p1.date.do.call$Date=as.Date(p1.date.do.call$Date)
p1.data.OBDA=cbind(p1.data.OBDA[,-3],p1.date.do.call)
rm(p1.date.parse,p1.date.do.call)

## P2
p2.date.parse = parse.char(p2.data$timestamp)
p2.date.do.call = as.data.frame(do.call(rbind, p2.date.parse))
names(p2.date.do.call)=c("Date","Time")
p2.date.do.call$Date=as.Date(p2.date.do.call$Date)
p2.data.OBDA=cbind(p2.data.OBDA[,-3],p2.date.do.call)
rm(p2.date.parse,p2.date.do.call)

## P3
p3.date.parse = parse.char(p3.data$timestamp)
p3.date.do.call = as.data.frame(do.call(rbind, p3.date.parse))
names(p3.date.do.call)=c("Date","Time")
p3.date.do.call$Date=as.Date(p3.date.do.call$Date)
p3.data.OBDA=cbind(p3.data.OBDA[,-3],p3.date.do.call)
rm(p3.date.parse,p3.date.do.call)

## P4
p4.date.parse = parse.char(p4.data$timestamp)
p4.date.do.call = as.data.frame(do.call(rbind, p4.date.parse))
names(p4.date.do.call) = c("Date","Time")
p4.date.do.call$Date = as.Date(p4.date.do.call$Date)
p4.data.OBDA = cbind(p4.data.OBDA[,-3],p4.date.do.call)
rm(p4.date.parse,p4.date.do.call)

head(p4.data.OBDA)
####### OBDA MASTER FILE #####
OBDA.full = rbind(p1.data.OBDA,p2.data.OBDA,p3.data.OBDA,p4.data.OBDA)
table(is.na(OBDA.full$OBDA))
#OBDA.full$OBDA[is.na(OBDA.full$OBDA)] = 0
#OBDA.keep = as.data.frame(cbind(OBDA.full$tag.local.identifier,OBDA.full$OBDA))

#### Aggregation of OBDA/ ACC data by dates ####
#a=aggregate(x = vasillia$OBDA, by = list(substring(vasillia$Date,1,10)) , FUN = sum)
#length(table(vasillia$Date)) 


x = OBDA.full
name.factor = names(table(x$individual.local.identifier))

b = list()

for(i in 1:length(name.factor)){
  #i=1
  vasillia = x[x$individual.local.identifier == name.factor[i],]
  a = aggregate(x = vasillia$OBDA, by = list(substring(vasillia$Date,1,10)) , FUN = sum, na.rm = T)
  #num = which(x$individual.local.identifier == name.factor[i])
  #c = aggregate(x$Time[num], by = list(x$Date[num]), FUN=length)
  a = cbind(a, name.factor[i])
  dim(a)
  b[[i]]=a
}

OBDA.aggregate.date =  b ### List, one entry per unique bird

OBDA.aggregate.date[[70]]

#######################################################################

#### GPS Data Manipulation ####

## GPS Date Parsing
gps.data$timestamp = as.character(gps.data$timestamp)
gps.date.parse = parse.char(gps.data$timestamp)
gps.date.do.call = as.data.frame(do.call(rbind, gps.date.parse))
names(gps.date.do.call) = c("Date","Time")
gps.date.do.call$Date = as.Date(gps.date.do.call$Date)
gps.data = cbind(gps.data[,-3],gps.date.do.call)

rm(gps.date.parse,gps.date.do.call)

#gps.data$Time = chron(time = gps.data$Time)

#### Aggregating GPS Data by time, breed, longitude and lattitude ####
x = gps.data
head(gps.data)
name.factor = names(table(x$individual.local.identifier))

b = list()

for(i in 1:length(name.factor)){
  #i=1
  vasillia = x[x$individual.local.identifier == name.factor[i],]
  
  starting.daily.long = aggregate(x = vasillia$location.long, 
                                  by = list(substring(vasillia$Date,1,10)) , FUN = head, n=1)
  
  starting.daily.lat = aggregate(x = vasillia$location.lat, 
                                 by = list(substring(vasillia$Date,1,10)) , FUN = head, n=1)
  
  ending.daily.long = aggregate(x = vasillia$location.long, 
                                by = list(substring(vasillia$Date,1,10)) , FUN = tail, n=1)
  
  ending.daily.lat = aggregate(x = vasillia$location.lat, 
                               by = list(substring(vasillia$Date,1,10)) , FUN = tail, n=1)
  
  type.of.bird = aggregate(x = vasillia$study.specific.measurement, 
                           by = list(substring(vasillia$Date,1,10)) , FUN = tail, n=1)
  
  num = which(x$individual.local.identifier == name.factor[i])
  #c = aggregate(x$Time[num], by = list(x$Date[num]), FUN=length)
  
  other = aggregate(vasillia[,11:15], by = list(substring(vasillia$Date,1,10)) ,
                    FUN = mean, na.rm = T)
  other = other[,-2]
  head(other)
  a = cbind(starting.daily.lat, ending.daily.lat$x, starting.daily.long$x, 
            ending.daily.long$x, other[2:5], type.of.bird$x, name.factor[i])
  names(a) = c("Date", "Start_Lattitude","End_Lattitude","Start_Longitude",
               "End_Longitude", names(other)[2:5], "Breed", "Name")
  head(a)
  dim(a)
  b[[i]]=a
}
head(b[[1]])
gps.aggregate.date = b
###### OBDA & GPS Merging ####

OBDA.merged = do.call(rbind, OBDA.aggregate.date)
names(OBDA.merged) = c("Date","OBDA","Name")
dim(OBDA.merged)
head(OBDA.merged)

gps.merged = do.call(rbind, gps.aggregate.date)
dim(gps.merged)
head(gps.merged)

final.data.merged = merge(OBDA.merged , gps.merged , by = c("Name","Date"), all.x = T)
head(final.data.merged)
table(is.na(final.data.merged$OBDA))
#### GPS Distance ####
#install.packages("geosphere")
library("geosphere")

final.data.merged$Distance = distHaversine(cbind(final.data.merged$Start_Longitude ,final.data.merged$Start_Lattitude),
                                           cbind(final.data.merged$End_Longitude, final.data.merged$End_Lattitude))/1000
final.data.merged$Distance[is.na(final.data.merged$Distance)] = 0

bird.name = names(table(final.data.merged$Name))

DER=as.data.frame(final.data.merged[final.data.merged$Name %in% bird.name[1], ])

par(mar = c(5,5,2,5))
with(DER, plot(as.Date(Date), Distance, xlim =c(as.Date("2013-05-01", 
format = "%Y-%m-%d"),as.Date("2015-01-01",format = "%Y-%m-%d")),
ylim=c(0,600), type = "l", lwd = 3, col = "red"))

with(DER, lines(as.Date(Date), Distance, lwd = 3, col = "black"))


par(new = T)
with(DER, plot(as.Date(Date), as.numeric(OBDA), xlim = c(as.Date("2013-05-01", 
               format = "%Y-%m-%d"),as.Date("2015-01-01",format = "%Y-%m-%d")),
               ylim = c(0,100000) ,type="l", lwd = 3, axes = F, xlab = NA, ylab = NA, col = "black"))
axis(side = 4)
mtext(side = 4, line = 3, 'Energy')


#######################################################################################

## Subsetting based on Species ####

data.armenia = as.data.frame(final.data.merged[final.data.merged$Breed 
                                               == "LifeTrack White Stork Armenia",])
data.spain = as.data.frame(final.data.merged[final.data.merged$Breed 
                                             == "LifeTrack White Stork Spain Donana",])
data.germany = as.data.frame(final.data.merged[final.data.merged$Breed 
                                               == "LifeTrack White Stork SWGermany 2013",])
data.tunisia = as.data.frame(final.data.merged[final.data.merged$Breed 
                                               == "LifeTrack White Stork Tunisia",])
data.moscow = as.data.frame(final.data.merged[final.data.merged$Breed 
                                              == "LifeTrack White Stork Moscow",])
data.greece = as.data.frame(final.data.merged[final.data.merged$Breed 
                                              == "LifeTrack White Stork Greece Evros Delta",])
data.uzbekistan = as.data.frame(final.data.merged[final.data.merged$Breed 
                                                  == "LifeTrack White Stork Uzbekistan",])
data.poland = as.data.frame(final.data.merged[final.data.merged$Breed 
                                              == "LifeTrack White Stork Poland",])
data.southafrica = as.data.frame(final.data.merged[final.data.merged$Breed 
                                                   == "LifeTrack White Stork SAfrica",])

## Cumulative: Distance,  Age, Energy...  ####

## Armenia 
b = list()
bird.name= NULL
bird.name = names(table(droplevels(data.armenia$Name)))

for(i in 1:length(bird.name)){
  #i=3
  DER = as.data.frame(data.armenia[data.armenia$Name %in% bird.name[i], ])
  DER$Age = tail(DER$Cumulative_Day, 1)            ## Age 
  DER$Cumulative_Distance = cumsum(DER$Distance)
  DER$Cumulative_Energy = cumsum(DER$OBDA)
  DER$Cumulative_Day = seq(1,dim(DER)[1],1)
  b[[i]] = DER
}

data.armenia = do.call(rbind, b)

## Germany
b = list()
bird.name= NULL
bird.name = names(table(droplevels(data.germany$Name)))

for(i in 1:length(bird.name)){
  #i=3
  DER=as.data.frame(data.germany[data.germany$Name %in% bird.name[i], ])
  DER$Age = tail(DER$Cumulative_Day, 1)            ## Age
  DER$Cumulative_Distance = cumsum(DER$Distance)
  DER$Cumulative_Energy = cumsum(DER$OBDA)
  DER$Cumulative_Day = seq(1,dim(DER)[1],1)
  b[[i]] = DER
}

data.germany = do.call(rbind, b)

## greece 
b = list()
bird.name= NULL
bird.name = names(table(droplevels(data.greece$Name)))

for(i in 1:length(bird.name)){
  #i=3
  DER=as.data.frame(data.greece[data.greece$Name %in% bird.name[i], ])
  DER$Age = tail(DER$Cumulative_Day, 1)            ## Age
  DER$Cumulative_Distance = cumsum(DER$Distance)
  DER$Cumulative_Energy = cumsum(DER$OBDA)
  DER$Cumulative_Day = seq(1,dim(DER)[1],1)
  b[[i]] = DER
}

data.greece = do.call(rbind, b)


## Spain
b = list()
bird.name= NULL
bird.name = names(table(droplevels(data.spain$Name)))

for(i in 1:length(bird.name)){
  #i=3
  DER=as.data.frame(data.spain[data.spain$Name %in% bird.name[i], ])
  DER$Age = tail(DER$Cumulative_Day, 1)            ## Age
  DER$Cumulative_Distance = cumsum(DER$Distance)
  DER$Cumulative_Energy = cumsum(DER$OBDA)
  DER$Cumulative_Day = seq(1,dim(DER)[1],1)
  b[[i]] = DER
}

data.spain = do.call(rbind, b)

## Tunisia
b = list()
bird.name= NULL
bird.name = names(table(droplevels(data.tunisia$Name)))

for(i in 1:length(bird.name)){
  #i=3
  DER=as.data.frame(data.tunisia[data.tunisia$Name %in% bird.name[i], ])
  DER$Age = tail(DER$Cumulative_Day, 1)            ## Age
  DER$Cumulative_Distance = cumsum(DER$Distance)
  DER$Cumulative_Energy = cumsum(DER$OBDA)
  DER$Cumulative_Day = seq(1,dim(DER)[1],1)
  b[[i]] = DER
}
data.tunisia = do.call(rbind, b)

## Poland
b = list()
bird.name= NULL
bird.name = names(table(droplevels(data.poland$Name)))

for(i in 1:length(bird.name)){
  #i=3
  DER=as.data.frame(data.poland[data.poland$Name %in% bird.name[i], ])
  DER$Age = tail(DER$Cumulative_Day, 1)            ## Age
  DER$Cumulative_Distance = cumsum(DER$Distance)
  DER$Cumulative_Energy = cumsum(DER$OBDA)
  DER$Cumulative_Day = seq(1,dim(DER)[1],1)
  b[[i]] = DER
}

data.poland = do.call(rbind, b)

## moscow 
b = list()
bird.name= NULL
bird.name = names(table(droplevels(data.moscow$Name)))

for(i in 1:length(bird.name)){
  #i=3
  DER=as.data.frame(data.moscow[data.moscow$Name %in% bird.name[i], ])
  DER$Age = tail(DER$Cumulative_Day, 1)            ## Age
  DER$Cumulative_Distance = cumsum(DER$Distance)
  DER$Cumulative_Energy = cumsum(DER$OBDA)
  DER$Cumulative_Day = seq(1,dim(DER)[1],1)
  b[[i]] = DER
}

data.moscow = do.call(rbind, b)

## southafrica 
b = list()
bird.name= NULL
bird.name = names(table(droplevels(data.southafrica$Name)))

for(i in 1:length(bird.name)){
  #i=3
  DER=as.data.frame(data.southafrica[data.southafrica$Name %in% bird.name[i], ])
  DER$Age = tail(DER$Cumulative_Day, 1)            ## Age
  DER$Cumulative_Distance = cumsum(DER$Distance)
  DER$Cumulative_Energy = cumsum(DER$OBDA)
  DER$Cumulative_Day = seq(1,dim(DER)[1],1)
  b[[i]] = DER
}

data.southafrica = do.call(rbind, b)

## uzbekistan 
b = list()
bird.name= NULL
bird.name = names(table(droplevels(data.uzbekistan$Name)))

for(i in 1:length(bird.name)){
  #i=3
  DER=as.data.frame(data.uzbekistan[data.uzbekistan$Name %in% bird.name[i], ])
  DER$Age = tail(DER$Cumulative_Day, 1)            ## Age
  DER$Cumulative_Distance = cumsum(DER$Distance)
  DER$Cumulative_Energy = cumsum(DER$OBDA)
  DER$Cumulative_Day = seq(1,dim(DER)[1],1)
  b[[i]] = DER
}

data.uzbekistan = do.call(rbind, b)

#### FINAL.DATA.MERGED ####
final.data.merged = rbind(data.armenia, data.germany, data.greece, data.moscow, data.poland, 
                          data.spain, data.southafrica, data.tunisia, data.uzbekistan)

##### 150 Days #####
name.list = list()
name.birds = names(table(final.data.merged$Name))

for(i in 1:length(name.birds)){
  vasillia = final.data.merged[final.data.merged$Name == name.birds[i],]
  
  name.list[[i]] = head(vasillia, 150)
  
}
head(name.list[[1]])

final.150days = do.call(rbind, name.list)
final.data.merged = final.150days
#######################################################################



tail(data.uzbekistan)
#####################################################################################

#### Writing Data File #####
setwd("C:/Users/zarre/Dropbox/Zayd/Class_Notes/ML/Project4/Finalized_Data/")
write.csv(final.data.merged, "final_data_merged.csv", row.names = F)
write.csv(data.armenia, "data_armenia.csv", row.names = F)
write.csv(data.spain, "data_spain.csv", row.names = F)
write.csv(data.germany, "data_germany.csv", row.names = F)
write.csv(data.tunisia, "data_tunisia.csv", row.names = F)
write.csv(data.moscow, "data_moscow.csv", row.names = F)
write.csv(data.greece, "data_greece.csv", row.names = F)
write.csv(data.uzbekistan, "data_uzbekistan.csv", row.names = F)
write.csv(data.poland, "data_poland.csv", row.names = F)
write.csv(data.southafrica, "data_southafrica.csv", row.names = F)


###### Functions #####
save.image("data_image.RData")

seq1=seq(1,118,3)
seq2=seq(2,119,3)
seq3=seq(3,120,3)

parse = function(x) lapply(strsplit(x, " "), as.numeric)

parse.char = function(x) lapply(strsplit(x, " "),as.character)

unequal.length = function(x){
  
  list.length = lapply(x, length)
  r = which(list.length !=  120 )
  return(r)
}

equalize.length = function(x){
  
  for( i in 1:length(x)){
    x[[i]] = x[[i]][1:120]
  }
  return(x)
  
}

coord.x.avg = function(x){
  
  x.coord = x[,seq1]
  x.mean = rowSums(x.coord)/40
  return(x.mean)
  
}

coord.y.avg = function(x){
  
  y.coords = x[,seq2]
  y.mean = rowSums(y.coords)/40
  return(y.mean)
  
}

coord.z.avg = function(x){
  
  z.coords = x[,seq3]
  z.mean = rowSums(z.coords)/40
  return(z.mean)
}

aggregate.GPS.sum= function(x){
  
  x = gps.data
  name.factor = names(table(x$individual.local.identifier))
  
  b = list()
  
  for(i in 1:length(name.factor)){
    #i=1
    vasillia = x[x$individual.local.identifier == name.factor[i],]
    
    starting.daily.long = aggregate(x = vasillia$location.long, 
                                    by = list(substring(vasillia$Date,1,10)) , FUN = head, n=1)
    
    starting.daily.lat = aggregate(x = vasillia$location.lat, 
                                   by = list(substring(vasillia$Date,1,10)) , FUN = head, n=1)
    
    ending.daily.long = aggregate(x = vasillia$location.long, 
                                  by = list(substring(vasillia$Date,1,10)) , FUN = tail, n=1)
    
    ending.daily.lat = aggregate(x = vasillia$location.lat, 
                                 by = list(substring(vasillia$Date,1,10)) , FUN = tail, n=1)
    
    type.of.bird = aggregate(x = vasillia$study.specific.measurement, 
                             by = list(substring(vasillia$Date,1,10)) , FUN = tail, n=1)
    
    num = which(x$individual.local.identifier == name.factor[i])
    #c = aggregate(x$Time[num], by = list(x$Date[num]), FUN=length)
    
    other = aggregate(vasillia[,11:15], by = list(substring(vasillia$Date,1,10)) ,
                      FUN = mean, na.action = na.omit)
    #head(other)
    a = cbind(starting.daily.lat, ending.daily.lat$x, starting.daily.long$x, 
              ending.daily.long$x, other[2:6], type.of.bird$x, name.factor[i])
    names(a) = c("Date", "Start_Lattitude","End_Lattitude","Start_Longitude",
                 "End_Longitude", names(other)[2:6], "Breed", "Name")
    head(a)
    dim(a)
    b[[i]]=a
  }
  return(b)
}
write.csv(final.data.merged, "final_data.csv")
