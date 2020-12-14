library(nnet)
data(ozone, package="faraway")
set.seed(123)
nnmdl <- nnet(O3 ~ temp + ibh + ibt, ozone, size=2, linout=T)
sx <- scale(ozone)
bestrss <- 10000
for(i in 1:100){
  nnmdl <- nnet(O3 ~ temp + ibh + ibt, sx, size=2, linout=T, trace=F)
  cat(i,nnmdl$value,"\n")
  if(nnmdl$value < bestrss){
  bestnn <- nnmdl
  bestrss <- nnmdl$value
  }}
bestnn$value
summary(bestnn)
1-88.03/sum((sx[,1]-mean(sx[,1]))^2)
ozmeans <- colMeans(ozone)
ozscales <- apply(ozone,2,sd)
xx <- expand.grid(temp=seq(-3,3,0.1),ibh=0,ibt=0)
plot(xx$temp*ozscales['temp']+ozmeans['temp'], predict(bestnn,new=xx)*ozscales['O3']+ozmeans['O3'], xlab="Temp", ylab="O3", type="l")
xx <- expand.grid(temp=0,ibh=seq(-3,3,0.1),ibt=0)
plot(xx$ibh*ozscales['ibh']+ozmeans['ibh'], predict(bestnn,new=xx)*ozscales['O3']+ozmeans['O3'], xlab="IBH", ylab="O3", type="l")
xx <- expand.grid(temp=0,ibh=0,ibt=seq(-3,3,0.1))
plot(xx$ibt*ozscales['ibt']+ozmeans['ibt'], predict(bestnn,new=xx)*ozscales['O3']+ozmeans['O3'],xlab="IBT",ylab="O3", type="l")
bestrss <- 10000
for(i in 1:100){
  nnmdl <- nnet(O3 ~ temp + ibh + ibt, sx, size=2, linout=T, decay=0.001, trace=F)
  cat(i, nnmdl$value,"\n")
  if(nnmdl$value < bestrss){
  bestnn <- nnmdl
  bestrss <- nnmdl$value
  }}
bestnn$value
xx <- expand.grid(temp=seq(-3,3,0.1),ibh=0,ibt=0)
plot(xx$temp*ozscales['temp']+ozmeans['temp'], predict(bestnn,new=xx)*ozscales['O3']+ozmeans['O3'],xlab="Temp",ylab="O3", type="l")
xx <- expand.grid(temp=0,ibh=seq(-3,3,0.1),ibt=0)
plot(xx$ibh*ozscales['ibh']+ozmeans['ibh'], predict(bestnn,new=xx)*ozscales['O3']+ozmeans['O3'],xlab="IBH",ylab="O3", type="l")
xx <- expand.grid(temp=0,ibh=0,ibt=seq(-3,3,0.1))
plot(xx$ibt*ozscales['ibt']+ozmeans['ibt'], predict(bestnn,new=xx)*ozscales['O3']+ozmeans['O3'],xlab="IBT",ylab="O3", type="l")
bestrss <- 10000
for(i in 1:100){
   nnmdl <- nnet(O3 ~ ., sx, size=4, linout=T,trace=F)
   cat(i, nnmdl$value,"\n")
   if(nnmdl$value < bestrss){
    bestnn <- nnmdl
    bestrss <- nnmdl$value
  }}
1-bestnn$value/sum((sx[,1]-mean(sx[,1]))^2)
