library(faraway)
data(chmiss)
chmiss
g <- lm(involact ~ .,chmiss)
summary(g)
cmeans <- apply(chmiss,2,mean,na.rm=T)
cmeans
mchm <- chmiss
for(i in c(1,2,3,4,6)) mchm[is.na(chmiss[,i]),i] <- cmeans[i]
g <- lm(involact ~ ., mchm)
summary(g)
gr <- lm(race ~ fire+theft+age+income,chmiss)
chmiss[is.na(chmiss$race),]
predict(gr,chmiss[is.na(chmiss$race),])
logit <- function(x) log(x/(1-x))
ilogit <- function(x) exp(x)/(1+exp(x))
gr <- lm(logit(race/100) ~ fire+theft+age+income,chmiss)
ilogit(predict(gr,chmiss[is.na(chmiss$race),]))*100
data(chredlin)
chredlin$race[is.na(chmiss$race)]
