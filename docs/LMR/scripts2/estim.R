library(faraway)
data(gala, package="faraway")
head(gala[,-2])
lmod <- lm(Species ~ Area + Elevation + Nearest + Scruz  + Adjacent, data=gala)
summary(lmod)
require(faraway)
sumary(lmod)
x <- model.matrix( ~ Area + Elevation + Nearest + Scruz  + Adjacent,gala)
y <- gala$Species
xtxi <- solve(t(x) %*% x)
xtxi %*% t(x) %*% y
solve(crossprod(x,x),crossprod(x,y))
names(lmod)
lmodsum <- summary(lmod)
names(lmodsum)
sqrt(deviance(lmod)/df.residual(lmod))
lmodsum$sigma
xtxi <- lmodsum$cov.unscaled
sqrt(diag(xtxi))*60.975
lmodsum$coef[,2]
qrx <- qr(x)
dim(qr.Q(qrx))
(f <- t(qr.Q(qrx)) %*% y)
backsolve(qr.R(qrx),f)

gala$Adiff <- gala$Area -gala$Adjacent
lmod <- lm(Species ~ Area+Elevation+Nearest+Scruz+Adjacent +Adiff,gala)
sumary(lmod)
set.seed(123)
Adiffe <- gala$Adiff+0.001*(runif(30)-0.5)
lmod <- lm(Species ~ Area+Elevation+Nearest+Scruz +Adjacent+Adiffe,gala)
sumary(lmod)
data(odor, package="faraway")
odor
cov(odor[,-1])
lmod <- lm(odor ~ temp + gas + pack, odor)
summary(lmod,cor=T)
lmod <- lm(odor ~ gas + pack, odor)
summary(lmod)
x <- 1:20
y <- x+rnorm(20)
