# Chapter: Missing Data


# Types of Missing Data


# Deletion

data(chmiss, package="faraway")
chmiss
summary(chmiss)
rowSums(is.na(chmiss))
image(is.na(chmiss),axes=FALSE,col=gray(1:0))
axis(2, at=0:5/5, labels=colnames(chmiss), las=1)
axis(1, at=0:46/46, labels=row.names(chmiss),
     las=2,cex.axis=0.75)
data(chredlin, package="faraway")
modfull = lm(involact ~ ., chredlin)
summary(modfull)
modmiss = lm(involact ~ ., chmiss)
summary(modmiss)
na.action(modmiss)
mean(c(1,NA,3), na.rm=TRUE)
options()$na.action
length(residuals(modmiss))
modexc = lm(involact ~ ., chmiss, na.action = na.exclude)
head(residuals(modexc))
try(
  expr={
   lm(involact ~ ., chmiss, na.action = na.fail)
  }
)

# Single Imputation

(cmeans = colMeans(chmiss,na.rm=TRUE))
mchm = chmiss
for(i in c(1:4,6)) mchm[is.na(chmiss[,i]),i] = cmeans[i]
imod = lm(involact ~ ., mchm)
summary(imod)
lmodr = lm(race ~ fire+theft+age+income,chmiss)
chmiss[is.na(chmiss$race),]
predict(lmodr,chmiss[is.na(chmiss$race),])
library(faraway)
lmodr = lm(logit(race/100) ~ fire+theft+age+income,chmiss)
ilogit(predict(lmodr,chmiss[is.na(chmiss$race),]))*100
chredlin$race[is.na(chmiss$race)]

# Multiple Imputation

library(Amelia)
set.seed(123)
chimp = amelia(chmiss, m=25)
missmap(chimp)
summary(chimp)
imods = with(
  chimp,
  lm(involact ~ race+fire+theft+age)
)
hatbeta = sapply(imods, coef)
sebeta = sapply(imods, function(x) summary(x)$coef[,2])
cr = mi.meld(q=hatbeta,se=sebeta, byrow=FALSE)
cr$tstat = cr$q.mi/cr$se.mi
dframe = t(do.call(rbind,cr))
dimnames(dframe)[[2]] = c("estimate","SE","t-statistic")
dframe
(ii = which(is.na(chmiss$race)))
chimp$imputations[[1]]$race[ii]
bds = cbind(1:6,rep(0,6),c(100,rep(1000,5)))
bimp = amelia(chmiss, m=25, bounds = bds)
chmiss$race = chmiss$race/100
timp = amelia(chmiss, m=25, lgstc=1, sqrts=2:6)

# Exercises

sessionInfo()
