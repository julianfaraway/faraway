# Chapter: Regularization


# Principal Components

data(fat,package="faraway")
plot(neck ~ knee, fat)
plot(chest ~ thigh, fat)
plot(hip ~ wrist, fat)
tcfat = fat[,c("chest","thigh")]
tcfat = sweep(tcfat,2,colMeans(tcfat))
prtc = prcomp(tcfat)
prtc$rotation
MASS::eqscplot(tcfat[,1],tcfat[,2],xlab="chest",ylab="thigh")
dirpc = prtc$rotation[2,]/prtc$rotation[1,]
abline(0, dirpc[1])
abline(0, dirpc[2],lty=2)
summary(prtc)
apply(prtc$x,2,sd)
X = as.matrix(tcfat)
evd = eigen(t(X) %*% X/(nrow(X)-1))
evd$vectors
sqrt(evd$values)
cfat = fat[,9:18]
prfat = prcomp(cfat)
dim(prfat$rot)
dim(prfat$x)
summary(prfat)
round(prfat$rot[,1],2)
prfatc = prcomp(cfat, scale=TRUE)
summary(prfatc)
round(prfatc$rot[,1],2)
round(prfatc$rot[,2],2)
library(MASS)
robfat = cov.rob(cfat)
md = mahalanobis(cfat, center=robfat$center, cov=robfat$cov)
n = nrow(cfat);p = ncol(cfat)
plot(qchisq(1:n/(n+1),p), sort(md),
     xlab=expression(paste(chi^2," quantiles")),
     ylab="Sorted Mahalanobis distances")
abline(0,1)
lmoda = lm(fat$brozek ~ ., data=cfat)
summary(lmoda)
lmodpcr = lm(fat$brozek ~ prfatc$x[,1:2])
summary(lmodpcr)
lmodr = lm(fat$brozek ~ scale(abdom) +
           I(scale(ankle)-scale(abdom)), data=cfat)
summary(lmodr)
data(meatspec, package="faraway")
trainmeat = meatspec[1:172,]
testmeat = meatspec[173:215,]
modlm = lm(fat ~ ., trainmeat)
summary(modlm)$r.squared
rmse = function(x,y) sqrt(mean((x-y)^2))
rmse(fitted(modlm), trainmeat$fat)
rmse(predict(modlm,testmeat), testmeat$fat)
modsteplm = step(modlm, trace=0)
rmse(modsteplm$fit, trainmeat$fat)
rmse(predict(modsteplm,testmeat), testmeat$fat)
meatpca = prcomp(trainmeat[,-101])
round(meatpca$sdev,3)
matplot(1:100, meatpca$rot[,1:3], type="l",
        xlab="Frequency", ylab="", col=1)
library(pls)
pcrmod = pcr(fat ~ ., data=trainmeat, ncomp=50)
rmse(predict(pcrmod, ncomp=4), trainmeat$fat)
plot(modlm$coef[-1],xlab="Frequency",
     ylab="Coefficient",type="l")
coefplot(pcrmod, ncomp=4, xlab="Frequency",main="")
plot(meatpca$sdev[1:10],type="l",
     ylab="SD of PC",xlab="PC number")
rmse(predict(pcrmod, testmeat, ncomp=4), testmeat$fat)
pcrmse = RMSEP(pcrmod, newdata=testmeat)
plot(pcrmse,main="")
which.min(pcrmse$val)
pcrmse$val[28]
set.seed(123)
pcrmod = pcr(fat ~ ., data=trainmeat,
             validation="CV", ncomp=50)
pcrCV = RMSEP(pcrmod, estimate="CV")
plot(pcrCV,main="")
which.min(pcrCV$val)
ypred = predict(pcrmod, testmeat, ncomp=19)
rmse(ypred, testmeat$fat)
pcrmod = pcr(fat ~ ., data=trainmeat,
             validation="LOO", ncomp=50)

# Partial Least Squares

set.seed(123)
plsmod = plsr(fat ~ ., data=meatspec[1:172,], ncomp=50,
              validation="CV")
coefplot(plsmod, ncomp=4, xlab="Frequency")
plsCV = RMSEP(plsmod, estimate="CV")
plot(plsCV,main="")
ypred = predict(plsmod,ncomp=15)
rmse(ypred, trainmeat$fat)
ytpred = predict(plsmod, testmeat, ncomp=15)
rmse(ytpred, testmeat$fat)

# Ridge Regression

library(MASS)
rgmod = lm.ridge(fat ~ ., trainmeat,
                 lambda = seq(0, 5e-8, len=21))
matplot(rgmod$lambda, coef(rgmod), type="l",
        xlab=expression(lambda),
        ylab=expression(hat(beta)),col=1)
which.min(rgmod$GCV)
abline(v=1.75e-08)
ypred = cbind(1,as.matrix(trainmeat[,-101])) %*%
                coef(rgmod)[8,]
rmse(ypred, trainmeat$fat)
ypred = cbind(1,as.matrix(testmeat[,-101])) %*%
                coef(rgmod)[8,]
rmse(ypred, testmeat$fat)
c(ytpred[13],ypred[13],testmeat$fat[13])
rmse(ypred[-13], testmeat$fat[-13])

# Lasso

library(lars)
data(state)
statedata = data.frame(state.x77,row.names=state.abb)
lmod = lars(as.matrix(statedata[,-4]),statedata$Life)
plot(lmod)
set.seed(123)
cvlmod = cv.lars(as.matrix(statedata[,-4]),statedata$Life)
cvlmod$index[which.min(cvlmod$cv)]
predict(lmod,s=0.65657,type="coef",mode="fraction")$coef
coef(lm(Life.Exp ~ Population+Murder+HS.Grad+Frost,
                   statedata))
trainy = trainmeat$fat
trainx = as.matrix(trainmeat[,-101])
lassomod = lars(trainx,trainy)
set.seed(123)
cvout = cv.lars(trainx,trainy)
cvout$index[which.min(cvout$cv)]
testx = as.matrix(testmeat[,-101])
predlars = predict(lassomod,testx,s=0.0101,mode="fraction")
rmse(testmeat$fat, predlars$fit)
predlars = predict(lassomod, s=0.0101,type="coef",
                   mode="fraction")
plot(predlars$coef,type="h",ylab="Coefficient")
sum(predlars$coef != 0)

# Elastic Net

library(glmnet)
rrfit = glmnet(trainx, trainy, alpha = 0)
lasfit = glmnet(trainx, trainy, alpha = 1)
cvmod = cv.glmnet(trainx, trainy, alpha = 0.5)
coeflas = as.matrix(coef(cvmod, s = "lambda.min"))
plot(coeflas,type="h",ylab="Coefficient")
sum(coeflas != 0)
penfit = predict(cvmod, newx = testx , s = "lambda.min")
rmse(penfit, testmeat$fat)

# Exercises

sessionInfo()
