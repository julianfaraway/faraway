# Chapter: Sampling


# Simulation

n = 30 
nsim = 1000
sig = 1
x = seq(0, 1, length.out=n)
set.seed(101)
y = x + rnorm(n,0,sig)
lmod = lm(y ~ x)
summary(lmod)$coef[2,]
plot(x,y)
abline(lmod)
slope = matrix(NA,nsim,4)
for(i in 1:nsim){
  y = x + rnorm(n,0,sig)
  lmod = lm(y ~ x)
  slope[i,] = summary(lmod)$coef[2,]
}
c(mean(slope[,1]),sd(slope[,1]))
X = model.matrix(lmod)
sqrt(solve(t(X) %*% X)[2,2])
mean(slope[,2])
dd = density(slope[,1])
plot(dd$x, dd$y, type="l",
     xlab=expression(hat(beta)[1]), ylab="density")
mean(slope[,4] < 0.05)
x = rep(c(0,1),each=n/2)
slope2 = matrix(NA,nsim,4)
for(i in 1:nsim){
  y = x + rnorm(n,0,sig)
  lmod = lm(y ~ x)
  slope2[i,] = summary(lmod)$coef[2,]
}
c(mean(slope2[,1]),sd(slope2[,1]))
X = model.matrix(lmod)
sqrt(solve(t(X) %*% X)[2,2])
mean(slope2[,4] < 0.05)
data(gala, package="faraway")
lmod = lm(Species ~ Area + Elevation + Nearest + Scruz +
                    Adjacent, gala)
simy = fitted(lmod) +
       rnorm(nrow(gala), 0, summary(lmod)$sigma)
plot(gala$Species, simy, xlab = "Observed response",
     ylab = "Simulated Response")
abline(0,1)

# Sampling Model


# Permutation Tests

lmod = lm(Species ~ Nearest + Scruz, gala)
lms = summary(lmod)
lms$fstatistic
1-pf(lms$fstatistic[1],lms$fstatistic[2],lms$fstatistic[3])
nreps = 4000
set.seed(123)
fstats = numeric(nreps)
for(i in 1:nreps){
   lmods = lm(sample(Species) ~ Nearest+Scruz, gala)
   fstats[i] = summary(lmods)$fstat[1]
}
mean(fstats > lms$fstat[1])
summary(lmod)$coef[3,]
tstats = numeric(nreps)
set.seed(123)
for(i in 1:nreps){
   lmods = lm(Species ~ Nearest+sample(Scruz), gala)
   tstats[i] = summary(lmods)$coef[3,3]
}
mean(abs(tstats) > abs(lms$coef[3,3]))

# Bootstrap Confidence Intervals

sample(10, replace=TRUE)
set.seed(123)
nb = 4000
coefmat = matrix(NA,nb,6)
resids = residuals(lmod)
preds = fitted(lmod)
for(i in 1:nb){
   booty = preds + sample(resids, rep=TRUE)
   bmod = update(lmod, booty ~ .)
   coefmat[i,] = coef(bmod)
  }
colnames(coefmat) = c("Intercept",colnames(gala[,3:7]))
coefmat = data.frame(coefmat)
apply(coefmat,2,function(x) quantile(x,c(0.025,0.975)))
library(ggplot2)
ggplot(coefmat, aes(x=Area)) + geom_density() + 
      geom_vline(xintercept=c(-0.0628, 0.0185),lty=2)
ggplot(coefmat, aes(x=Adjacent)) + geom_density() +
      geom_vline(xintercept=c(-0.104, -0.0409),lty=2)

# Exercises

sessionInfo()
