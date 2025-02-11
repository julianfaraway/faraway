# Chapter: Model Selection


# Models with a Hierarchy


# Testing-Based Procedures

data(state)
statedata = data.frame(state.x77,row.names=state.abb)
lmod = lm(Life.Exp ~ ., statedata)
summary(lmod)
lmod = update(lmod, . ~ . - Area)
summary(lmod)
lmod = update(lmod, . ~ . - Illiteracy)
summary(lmod)
lmod = update(lmod, . ~ . - Income)
summary(lmod)
lmod = update(lmod, . ~ . - Population)
summary(lmod)
summary(lm(Life.Exp ~ Illiteracy+Murder+Frost, statedata))

# Criterion-Based Procedures

data(fat, package="faraway")
lmod = lm(brozek ~ . -siri, fat)
summary(lmod)$adj.r.squared
library(leaps)
msobj = regsubsets(brozek ~ age + weight + height + adipos +
                   neck + chest + abdom + hip + thigh + knee +
                   ankle + biceps + forearm + wrist,
                   data = fat, nvmax=14)
smsobj = summary(msobj)
smsobj$which[1,]
coef(msobj,8)
pdf(file="../tex/plots/AIC.pdf",height=3.5,width=6.5)

par(mar=c(2.6,2.6,0.1,0.1),mgp=c(1.5,0.5,0),tck=-0.01,cex=0.75,pch=20,mfrow=c(1,2))

plot(1:14, smsobj$rss, xlab="Number of predictors", ylab="RSS")
coef(msobj,2)
n = nobs(lmod)
AIC = n*log(smsobj$rss/n) + (2:15)*2
plot(AIC ~ I(1:14), ylab="AIC", xlab="Number of Predictors")
dev.off()

AIC[8]
lmod8 = lm(brozek ~ age + weight + neck + abdom + hip +
          thigh + forearm + wrist, data = fat)
extractAIC(lmod8)
AIC(lmod8)
AIC(lmod8) - n - n*log(2*pi) - 2
lmod = lm(brozek ~ age + weight + height + adipos + neck +
          chest + abdom + hip + thigh + knee + ankle +
          biceps + forearm + wrist, fat)
step(lmod)
pdf(file="../tex/plots/cp.pdf",height=3.5,width=6.5)

par(mar=c(2.6,2.6,0.6,0.6),mgp=c(1.5,0.5,0),tck=-0.01,cex=0.75,pch=20,mfrow=c(1,2))

plot(1:14,smsobj$adjr2,xlab="No. of Predictors",
     ylab="Adjusted R-squared")
which.max(smsobj$adjr2)
plot(3:15, smsobj$cp[-1], xlab="No. of Parameters",
     ylab="Cp Statistic")
abline(0,1)
dev.off()

h = lm.influence(lmod)$hat
tail(sort(h))
fat[c(39,42), c("height","weight")]
rmod = lm(brozek ~ age + weight + height + adipos + neck +
          chest + abdom + hip + thigh + knee + ankle +
          biceps + forearm + wrist, fat, subset=-c(39,42))
smod = step(rmod, trace=0)
coef(smod)
logmod = lm(log(brozek) ~ age + weight + height + adipos +
            neck + chest + abdom + hip + thigh + knee +
            ankle + biceps + forearm + wrist,
            fat, subset=-182)
llmod = step(logmod, trace=0)
coef(llmod)
sapply(list(original=lmod8,outlier=smod,logged=llmod),
       extractAIC)
sapply(list(original=lmod8,outlier=smod,logged=llmod),
       \(x) summary(x)$adj.r.squared)

# \index{crossvalidationCrossvalidation}

npred = 14
msobj = regsubsets(brozek ~ age + weight + height + adipos +
                   neck + chest + abdom + hip + thigh + knee +
                   ankle + biceps + forearm + wrist,
                   data = fat, nvmax=npred)
smsobj = summary(msobj)
pnames = colnames(smsobj$which)[-1]
rmsett = rep(NA,npred)
n = nrow(fat)
set.seed(314)
ttsel = sample(n,(2*n)/3)
for(i in 1:npred){
  varsels = pnames[smsobj$which[i,-1]]
  modformula = as.formula(paste("brozek ~",
                          paste(varsels,collapse="+")))
  trainmod = lm(modformula, data=fat, subset = ttsel)
  predtest = predict(trainmod, newdata=fat[-ttsel,])
  rmsett[i] = sqrt(mean((predtest - fat$brozek[-ttsel])^2))
}
pdf(file="../tex/plots/ttrmse.pdf",height=3.5,width=3.5)

par(mar=c(2.6,2.6,0.1,0.1),mgp=c(1.5,0.5,0),tck=-0.01,cex=0.75,pch=20,mfrow=c(1,1))

matplot(1:npred, cbind(rmsett, sqrt(smsobj$rss/n)),
        type="l",xlab="No. of Predictors",ylab="RMSE")
legend("topright", legend = c("Train-Test", "All Data"),
       lty = 1:2)
dev.off

which.min(rmsett)
loocv = rep(NA,npred)
for(i in 1:npred){
  varsels = pnames[smsobj$which[i,-1]]
  modformula = as.formula(paste("brozek ~",
                          paste(varsels,collapse="+")))
  mmod = lm(modformula, data=fat)
  h = lm.influence(mmod)$hat
  loocv[i] = sqrt(mean((residuals(mmod)/(1-h))^2))
}
pdf(file="../tex/plots/loocvrmse.pdf",height=3.5,width=3.5)

par(mar=c(2.6,2.6,0.1,0.1),mgp=c(1.5,0.5,0),tck=-0.01,cex=0.75,pch=20,mfrow=c(1,1))

matplot(1:npred, cbind(loocv, sqrt(smsobj$rss/n)),
        type="l",xlab="No. of Predictors",ylab="RMSE")
legend("top", legend = c("LOO-CV", "All Data"), lty = 1:2)
which.min(loocv)
library(boot)
cv10 = rep(NA, npred)
for(i in 1:npred){
  varsels = pnames[smsobj$which[i,-1]]
  modformula = as.formula(paste("brozek ~",
                          paste(varsels,collapse="+")))
  set.seed(999)
  mmod = glm(modformula, data=fat)
  cv10[i] = sqrt(cv.glm(fat, mmod, K=10)$delta[1])
}
pdf(file="../tex/plots/cvfoldrmse.pdf",height=3.5,width=3.5)

par(mar=c(2.6,2.6,0.1,0.1),mgp=c(1.5,0.5,0),tck=-0.01,cex=0.75,pch=20,mfrow=c(1,1))

matplot(1:npred, cbind(cv10, sqrt(smsobj$rss/n)),
        type="l",xlab="No. of Predictors",ylab="RMSE")
legend("top", legend = c("CV-10", "All Data"), lty = 1:2)
dev.off()

which.min(cv10)

# Summary


# Exercises

sessionInfo()
