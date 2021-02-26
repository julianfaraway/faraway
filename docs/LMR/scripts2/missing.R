library(faraway)
data(chmiss, package="faraway")
chmiss
summary(chmiss)
rowSums(is.na(chmiss))
image(is.na(chmiss),axes=FALSE,col=gray(1:0))
axis(2, at=0:5/5, labels=colnames(chmiss))
axis(1, at=0:46/46, labels=row.names(chmiss),las=2)
data(chredlin, package="faraway")
modfull <- lm(involact ~ ., chredlin)
sumary(modfull)
modmiss <- lm(involact ~ ., chmiss)
sumary(modmiss)
(cmeans <- colMeans(chmiss,na.rm=TRUE))
mchm <- chmiss
for(i in c(1:4,6)) mchm[is.na(chmiss[,i]),i] <- cmeans[i]
imod <- lm(involact ~ ., mchm)
sumary(imod)
lmodr <- lm(race ~ fire+theft+age+income,chmiss)
chmiss[is.na(chmiss$race),]
predict(lmodr,chmiss[is.na(chmiss$race),])
lmodr <- lm(logit(race/100) ~ fire+theft+age+income,chmiss)
ilogit(predict(lmodr,chmiss[is.na(chmiss$race),]))*100
chredlin$race[is.na(chmiss$race)]
require(Amelia)
set.seed(123)
chimp <- amelia(chmiss, m=25)
betas <- NULL
ses <- NULL
for(i in 1:chimp$m){
lmod <- lm(involact ~ race+fire+theft+age, chimp$imputations[[i]])
betas <- rbind(betas,coef(lmod))
ses <- rbind(ses,coef(summary(lmod))[,2])
}
(cr <- mi.meld(q=betas,se=ses))
cr$q.mi/cr$se.mi
