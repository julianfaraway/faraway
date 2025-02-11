# Chapter: Predictor Issues


# Errors in the Predictors

data(cars)
plot(dist ~ speed, cars,ylab="distance")
lmod = lm(dist ~ speed, cars)
summary(lmod)
abline(lmod)
set.seed(99)
lmod1 = lm(dist ~ I(speed+rnorm(50)), cars)
coef(lmod1)
abline(lmod1,lty=2)
lmod2 = lm(dist ~ I(speed+2*rnorm(50)), cars)
coef(lmod2)
abline(lmod2,lty=3)
lmod5 = lm(dist ~ I(speed+5*rnorm(50)), cars)
coef(lmod5)
abline(lmod5,lty=4)
vv = rep(1:5/10,each=1000)
slopes = numeric(5000)
for(i in 1:5000){
 slopes[i]=lm(dist~I(speed+sqrt(vv[i])*rnorm(50)),
              cars)$coef[2]
}
betas = c(coef(lmod)[2],colMeans(matrix(slopes,nrow=1000)))
variances = c(0,1:5/10)+0.5
plot(variances,betas,xlim=c(0,1),ylim=c(3.86,4))
gv = lm(betas ~ variances)
coef(gv)
points(0,gv$coef[1],pch=3)
library(simex)
set.seed(123)
lmod = lm(dist ~ speed, cars, x=TRUE)
simout = simex(lmod,"speed",sqrt(0.5), B=1000)
simout

# Changes of Scale

data(savings, package="faraway")
lmod = lm(sr ~ pop15+pop75+dpi+ddpi,savings)
summary(lmod)
lmod = lm(sr ~ pop15+pop75+I(dpi/1000)+ddpi,savings)
summary(lmod)
scsav = data.frame(scale(savings))
lmod = lm(sr ~ ., scsav)
summary(lmod)
edf = data.frame(coef(lmod),confint(lmod))[-1,]
names(edf) = c('Estimate','lb','ub')
library(ggplot2)
p = ggplot(aes(y=Estimate,ymin=lb,ymax=ub,x=row.names(edf)),
    data=edf) + geom_pointrange()
p+coord_flip()+xlab("Predictor") +
  geom_hline(yintercept=0,col=gray(0.75))
savings$age = ifelse(savings$pop15 > 35, 0, 1)
savings = transform(savings,
           dpis = (dpi - mean(dpi))/(2*sd(dpi)),
           ddpis = (ddpi - mean(ddpi))/(2*sd(ddpi)))
summary(lm(sr ~ age + dpis + ddpis, savings))

# Collinearity

data(seatpos, package="faraway")
lmod = lm(hipcenter ~ ., seatpos)
summary(lmod)
round(cor(seatpos[,-9]),2)
x = model.matrix(lmod)[,-1]
e = eigen(t(x) %*% x)
signif(e$values,2)
sqrt(e$val[1]/e$val)
summary(lm(x[,1] ~ x[,-1]))$r.squared
1/(1-0.49948)
faraway::vif(x)
set.seed(1001)
lmod = lm(hipcenter+10*rnorm(38) ~ ., seatpos)
summary(lmod)
round(cor(x[,3:8]),2)
lmod2 = lm(hipcenter ~ Age + Weight + Ht, seatpos)
summary(lmod2)

# Exercises

sessionInfo()
