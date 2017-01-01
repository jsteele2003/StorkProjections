install.packages("raster", dependencies = T) 
library(raster)
rm(list = ls())

setwd("C://Users/zarre/Dropbox/Project4/Finalized_Data/")
setwd("C://Users/Zayd Omar/Dropbox/Project4/Finalized_Data/")

final.data.merged = read.csv("final_data_merged.csv", header = T)
data.armenia = read.csv("data_armenia.csv", header = T)
data.spain = read.csv("data_spain.csv", header = T)
data.germany = read.csv("data_germany.csv", header = T)
data.tunisia = read.csv("data_tunisia.csv", header = T)
data.moscow = read.csv("data_moscow.csv", header = T)
data.greece = read.csv("data_greece.csv", header = T)
data.uzbekistan = read.csv("data_uzbekistan.csv", header = T)
data.poland = read.csv("data_poland.csv", header = T)
data.southafrica = read.csv("data_southafrica.csv", header = T)


#######################################################################

world = raster("gpw-v4-population-density-adjusted-to-2015-unwpp-country-totals_2015.tif")
world = setMinMax(world)

brk <- c(0,1,2,10,100,1000,10000)

image(world, zlim = c(1,1000))

col=heat.colors(7)
col = c("grey", "light green", "green", "light yellow", "yellow", "orange", "brown", "red")
plot(world, col = col, breaks = brk, legend = F)







######################################################################################
######################################################################################


### Regressing on distance and Mortality rate ####
b.data = final.data.merged

## log of energy consumed
b.data$Log.Energy = log(final.data.merged$Cumulative_Energy)


## Flight Corridor
b.data$Flight.Route = 0 ## Eastern
b.data$Flight.Route[b.data$Breed %in% "LifeTrack White Stork Tunisia"] = 1 ##Central
b.data$Flight.Route[b.data$Breed %in% c("LifeTrack White Stork Spain Donana",
                                  " LifeTrack White Stork SWGermany 2013")] = 2 ##Western
b.data$Flight.Route[b.data$Breed %in% "LifeTrack White Stork Armenia"] = 3 ##Arab
b.data$Flight.Route[b.data$Breed %in% "LifeTrack White Stork Uzbekistan"] = 4 ##Central Asia

## Average overall energy used
b.data$Average.Daily.Energy = b.data$Cumulative_Energy/b.data$Cumulative_Day

## Migration Days
b.data$Migration_Day = 0
b.data$Migration_Day[b.data$Distance >= 100] = 1

mean(b.data$OBDA[b.data$Migration_Day == 1])

b = list()
bird.names = names(table(b.data$Name))
for(i in 1:length(bird.names)){
  #i = 1
  DER = b.data[b.data$Name == bird.names[i], ]
  
  average.stopover.energy = sum(DER$OBDA[DER$Migration_Day == 0], na.rm = T)/(dim(DER)[1]-sum(DER$Migration_Day == 1, na.rm = T))
  
  average.migration.energy = sum(DER$OBDA[DER$Migration_Day == 1], na.rm = T)/sum(DER$Migration_Day == 1, na.rm = T)
  average.daily.distance = sum(DER$Distance, na.rm = T)/tail(DER$Cumulative_Day,1)
  b[[i]] = cbind(tail(DER,1), average.stopover.energy, average.migration.energy, average.daily.distance)
}

regress.data = do.call(rbind, b)



## Alive at 5 months
regress.data$Alive150 = 1
regress.data$Alive150[regress.data$Cumulative_Day < 150] = 0
sum(regress.data$Alive150)

library(rpart)
library(rattle)
library('rpart.plot')
names(regress.data)
regress.data = as.data.frame(regress.data)

decission.data = cbind(regress.data[c(8,9,10,11,12,18,19,20,21,23,24)])
names(decission.data)
decission.data$Breed = as.factor(decission.data$Breed)
decission.data$Flight.Route = as.factor(decission.data$Flight.Route) 
decission.data = as.data.frame(decission.data)
decission.data$Alive150 = ifelse(decission.data$Alive150 > 0, "YES", "NO")

omitted.model = decission.data[complete.cases(decission.data), ]

## Random Forest
library("randomForest")
library("reprtree")


set.seed(12345)

train = sample(1:nrow(omitted.model),nrow(omitted.model)/2)
test = -train
training.data = omitted.model[train,]
test.data = omitted.model[test,]



random.forest.model = randomForest(as.factor(Alive150) ~ Temp2m + Low_Vegetation +
                                     Thermal_Uplift + High_Vegetation +Breed
                                   +Flight.Route+ Average.Daily.Energy +
                                     Migration_Day + average.stopover.energy+average.daily.distance,
                                   data = training.data, importance = T, mtry = 9,
                                   ntree = 5000)

plot(random.forest.model)
random.forest.predict = predict(random.forest.model, test.data[,-11])
1-mean(random.forest.predict == test.data$Alive150)

reprtree:::plot.getTree(random.forest.model)
fancyRpartPlot()
random.forest.model$votes



random.forest.training = predict(random.forest.model, training.data[,-11])
random.forest.predict = predict(random.forest.model, test.data[,-11])
random.forest.full = predict(random.forest.model, omitted.model[,-11])

mean(random.forest.training == training.data$Alive150)
mean(random.forest.predict == test.data$Alive150)
mean(random.forest.full == omitted.model$Alive150)

accuracy.gini = cbind(random.forest.model$importanceSD[,3], random.forest.model$importance[,3])
colnames(accuracy.gini) = c("Mean Decrease in Accuracy","Mean Decrease in Gini" )
accuracy.gini = accuracy.gini[order(accuracy.gini[,2], decreasing = T),]
xtable(accuracy.gini, digits = 6)

varImpPlot(random.forest.model)
mean(tree.predict != test.data$Alive150)

### Decission Tree ####

train = sample(1:nrow(omitted.model),nrow(omitted.model)*1)
test = -train
training.data = omitted.model[train,]
test.data = omitted.model[test,]



tree.model = rpart(Alive150 ~  Low_Vegetation +Thermal_Uplift + Average.Daily.Energy +
                     average.stopover.energy + average.daily.distance, 
                   data = training.data, method = "class", 
                   control=rpart.control(minsplit=2, maxcp=0))


plot(tree.model)
text(tree.model)
fancyRpartPlot(tree.model)

##predict
names(training.data)
predict.data = training.data[,c(2,3,7,9,10)]
tree.predict = predict(tree.model, training.data[,-11], type = "class")
mean(tree.predict == training.data$Alive150)


##############################################################################
##############################################################################
##############################################################################

#### Simulation #####
simulate.data = omitted.model
simulate.data$average.stopover.energy = 0.85*omitted.model$average.stopover.energy
simulate.data$average.stopover.energy = 0.85*omitted.model$average.stopover.energy
simulate.predict = predict(tree.model, simulate.data[,-11], type = "class")


table(simulate.predict)



#### Thermal Uplift Simulation ####

t1 = final.data.merged$Temp2m
t2 = final.data.merged$Temp2m^2
t3 = final.data.merged$Temp2m^3
t4 = final.data.merged$Temp2m^4
t5 = final.data.merged$Temp2m^5
fit.lift = lm(final.data.merged$Thermal_Uplift~t1+t2+t3)
summary(fit.lift)

plot(final.data.merged$Temp2m, final.data.merged$Thermal_Uplift, 
     main = "Thermal Uplifts ~ Temperature" , xlab= "Temperature, K", 
     ylab = "Thermal Uplift, m/s")

lines(final.data.merged$Temp2m,fit.lift$coefficients[1] +fit.lift$coefficients[2]*t1+fit.lift$coefficients[3]*t2+
        fit.lift$coefficients[4]*t3, col = "red", type = "p")

legend(275,2.5, legend = c("Line of best fit"),
       col = c("red"), lty = c(1), bty = "n") 



t1 = final.data.merged$Temp2m+50
t2 = t1^2
t3 = t1^3


new.thermal = fit.lift$coefficients[1] +fit.lift$coefficients[2]*t1+fit.lift$coefficients[3]*t2+
  fit.lift$coefficients[4]*t3



final.data.simulate = final.data.merged
final.data.simulate$Thermal_Uplift = new.thermal
final.data.simulate$Temp2m = final.data.simulate$Temp2m+50

b.data = final.data.simulate


## log of energy consumed
b.data$Log.Energy = log(final.data.simulate$Cumulative_Energy)


## Flight Corridor
b.data$Flight.Route = 0 ## Eastern
b.data$Flight.Route[b.data$Breed %in% "LifeTrack White Stork Tunisia"] = 1 ##Central
b.data$Flight.Route[b.data$Breed %in% c("LifeTrack White Stork Spain Donana",
                                        " LifeTrack White Stork SWGermany 2013")] = 2 ##Western
b.data$Flight.Route[b.data$Breed %in% "LifeTrack White Stork Armenia"] = 3 ##Arab
b.data$Flight.Route[b.data$Breed %in% "LifeTrack White Stork Uzbekistan"] = 4 ##Central Asia

## Average overall energy used
b.data$Average.Daily.Energy = b.data$Cumulative_Energy/b.data$Cumulative_Day

## Migration Days
b.data$Migration_Day = 0
b.data$Migration_Day[b.data$Distance >= 100] = 1

mean(b.data$OBDA[b.data$Migration_Day == 1])

b = list()
bird.names = names(table(b.data$Name))
for(i in 1:length(bird.names)){
  #i = 1
  DER = b.data[b.data$Name == bird.names[i], ]
  
  average.stopover.energy = sum(DER$OBDA[DER$Migration_Day == 0], na.rm = T)/(dim(DER)[1]-sum(DER$Migration_Day == 1, na.rm = T))
  
  average.migration.energy = sum(DER$OBDA[DER$Migration_Day == 1], na.rm = T)/sum(DER$Migration_Day == 1, na.rm = T)
  average.daily.distance = sum(DER$Distance, na.rm = T)/tail(DER$Cumulative_Day,1)
  b[[i]] = cbind(tail(DER,1), average.stopover.energy, average.migration.energy, average.daily.distance)
}

regress.data = do.call(rbind, b)


## Alive at 5 months
regress.data$Alive150 = 1
regress.data$Alive150[regress.data$Cumulative_Day < 150] = 0
sum(regress.data$Alive150)

decission.data = cbind(regress.data[c(8,9,10,11,12,18,19,20,21,23,24)])
names(decission.data)
decission.data$Breed = as.factor(decission.data$Breed)
decission.data$Flight.Route = as.factor(decission.data$Flight.Route) 
decission.data = as.data.frame(decission.data)
decission.data$Alive150 = ifelse(decission.data$Alive150 > 0, "YES", "NO")

omitted.simulate = decission.data[complete.cases(decission.data), ]
omitted.simulate$Thermal_Uplift = 100*omitted.simulate$Thermal_Uplift
table(predict(tree.model, omitted.model, type = "class"))
tree.model


### Logistic Regression ####
set.seed(12345)

omitted.model$Response = 0
omitted.model$Response[omitted.model$Alive150 == "YES"] = 1
train = sample(1:nrow(omitted.model),nrow(omitted.model))
test = -train
training.data = omitted.model[train,]
test.data = omitted.model[test,]


logistic.model = glm(Response ~  Low_Vegetation +Thermal_Uplift + Average.Daily.Energy +
                     average.stopover.energy + average.daily.distance, 
                   data = training.data, family = binomial(link = "logit"))
summary(logistic.model)


low.veg = omitted.model
low.veg$Low_Vegetation = 0.85*omitted.model$Low_Vegetation
low.veg$Thermal_Uplift = 1.1*omitted.model$Thermal_Uplift
predict.vals = ifelse(predict(logistic.model, low.veg, type = "response") > 0.5, 1, 0)
sum(predict.vals)
length(predict.vals)
