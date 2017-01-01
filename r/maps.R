zoom(world, ext=c(-20,50,-40,60), col=topo.colors(5), breaks = brk, legend = F)


###### Armenia #######
bird.name = names(table(droplevels(data.armenia$Name)))

for(i in 1:length(bird.name)){
  DER=as.data.frame(data.armenia[data.armenia$Name %in% bird.name[i]& data.armenia$Age >= 150, ])
  lines(DER$End_Longitude , DER$End_Lattitude, type = "l",lwd = 2.5)
}


###### Germany #######
bird.name = names(table(droplevels(data.germany$Name)))


for(i in 1:length(bird.name)){
  DER=as.data.frame(data.germany[data.germany$Name %in% bird.name[i], ])
  lines(DER$End_Longitude , DER$End_Lattitude, type = "l",lwd = 2.5, col = "orange")
}






######################################################################################
######################################################################################

###### Spain #######
bird.name = names(table(droplevels(data.spain$Name)))


for(i in 1:length(bird.name)){
  DER=as.data.frame(data.spain[data.spain$Name %in% bird.name[i], ])
  lines(DER$End_Longitude , DER$End_Lattitude, type = "l",col = "red",lwd = 2.5)
}




######################################################################################
######################################################################################

###### Greece #######
bird.name = names(table(droplevels(data.greece$Name)))


for(i in 1:length(bird.name)){
  DER=as.data.frame(data.greece[data.greece$Name %in% bird.name[i], ])
  lines(DER$End_Longitude , DER$End_Lattitude, type = "l",lwd = 2.5,col = "brown")
}







######################################################################################
######################################################################################

###### Tunisia #######

bird.name = names(table(droplevels(data.tunisia$Name)))


for(i in 1:length(bird.name)){
  DER=as.data.frame(data.tunisia[data.tunisia$Name %in% bird.name[i], ])
  lines(DER$End_Longitude , DER$End_Lattitude, type = "l",lwd = 2.5,col = "darkgreen")
}








######################################################################################
######################################################################################

###### Poland #######
bird.name = names(table(droplevels(data.poland$Name)))


for(i in 1:length(bird.name)){
  DER=as.data.frame(data.poland[data.poland$Name %in% bird.name[i], ])
  lines(DER$End_Longitude , DER$End_Lattitude, type = "l", lwd = 2.5, col = "lightyellow")
}






######################################################################################
######################################################################################


###### Moscow #######
bird.name = names(table(droplevels(data.moscow$Name)))


for(i in 1:length(bird.name)){
  DER=as.data.frame(data.moscow[data.moscow$Name %in% bird.name[i], ])
  lines(DER$End_Longitude , DER$End_Lattitude, type = "l", lwd = 2.5, col = "orange")
}










######################################################################################
######################################################################################


###### SAfrica #######

bird.name = names(table(droplevels(data.southafrica$Name)))

for(i in 1:length(bird.name)){
  DER=as.data.frame(data.southafrica[data.southafrica$Name %in% bird.name[i], ])
  lines(DER$End_Longitude , DER$End_Lattitude, type = "l")
}



legend(-20,0, legend = c("Armenia","Germany","Spain","Greece","Poland", "Moscow","Tunisia"),
       col = c("black","orange","red","brown","grey","orange","green", lty = c(1,1,1,1,1,1,1))) 





######################################################################################
######################################################################################


###### Uzbekistan #######

bird.name = names(table(droplevels(data.uzbekistan$Name)))

for(i in 1:length(bird.name)){
  DER=as.data.frame(data.uzbekistan[data.uzbekistan$Name %in% bird.name[i], ])
  lines(DER$Cumulative_Day , DER$End_Lattitude, type = "l", col = "grey", lwd = 2.5)
}


