# Chapter: Transformation


# Choosing a Transform on the Response

data(savings, package = "faraway")
lmod = lm(sr/100 ~ pop15 + pop75 + dpi + ddpi, savings)
newctry = with(savings, data.frame(pop15 = max(pop15),
   pop75=max(pop75),dpi = max(dpi), ddpi = min(ddpi)))
predict(lmod,newdata=newctry)*100               
library(faraway)
tmod = lm(logit(sr/100) ~ pop15 + pop75 + dpi + ddpi,
          data=savings)
ilogit(predict(tmod,newdata=newctry))*100

# Algorithms for Transforming the Response

lmod = lm(sr ~ pop15+pop75+dpi+ddpi,savings)
MASS::boxcox(lmod, plotit=T)
MASS::boxcox(lmod, plotit=T, lambda=seq(0.5,1.5,by=0.1))
data(gala, package="faraway")
lmod = lm(Species ~ Area + Elevation + Nearest +
          Scruz +  Adjacent,gala)
MASS::boxcox(lmod, lambda=seq(-0.25,0.75,by=0.05),plotit=T)
data(leafburn, package="faraway")
lmod = lm(burntime ~ nitrogen+chlorine+potassium, leafburn)
MASS::logtrans(lmod,plotit=TRUE,
      alpha=seq(-min(leafburn$burntime)+0.001,0,by=0.01))

# Transforming the Predictors


# Segmented Regression

lmod1 = lm(sr ~ pop15, savings, subset=(pop15 < 35))
lmod2 = lm(sr ~ pop15, savings, subset=(pop15 > 35))
plot(sr ~ pop15,savings,
     xlab="Pop'n under 15", ylab="Savings Rate")
abline(v=35,lty=5)
segments(20,lmod1$coef[1]+lmod1$coef[2]*20,
         35,lmod1$coef[1]+lmod1$coef[2]*35)
segments(48,lmod2$coef[1]+lmod2$coef[2]*48,
         35,lmod2$coef[1]+lmod2$coef[2]*35)
lhs = function(x) ifelse(x < 35,35-x,0)
rhs = function(x) ifelse(x < 35,0,x-35)
lmod = lm(sr ~ lhs(pop15) + rhs(pop15), savings)
x = seq(20,48,by=1)
py = lmod$coef[1] + lmod$coef[2]*lhs(x) + lmod$coef[3]*rhs(x)
lines(x,py,lty=2)

# Polynomials

data(ethanol, package="lattice")
plot(NOx ~ E, ethanol)
lmodl = lm(NOx ~ C + E, ethanol)
summary(lmodl)
ndf = with(ethanol,expand.grid(C=mean(C),E=range(E)))
ndf$pv = predict(lmodl,newdata = ndf)
lines(pv ~ E, ndf, lty=2)
lmod2 = lm(NOx ~ C + E + I(E^2), ethanol)
summary(lmod2)
ndf = with(ethanol,expand.grid(C=mean(C),
                   E=seq(min(E),max(E),length=50)))
ndf$pv = predict(lmod2,newdata = ndf)
lines(pv ~ E, ndf, lty=1)
lmodlog2 = lm(log(NOx) ~ C + E + I(E^2), ethanol)
summary(lmodlog2)
plot(log(NOx) ~ E,ethanol)
ndf = with(ethanol,
    expand.grid(C=mean(C),E=seq(min(E),max(E),length=50)))
ndf$pv = predict(lmodlog2,newdata = ndf)
lines(pv ~ E, ndf, lty=1)
cc = coef(lmodlog2)
-cc[3]/(2*cc[4])
ethanol$Ec = ethanol$E - 0.9
lmodlogc = lm(log(NOx) ~ C + Ec + I(Ec^2), ethanol)
summary(lmodlogc)
lmodlogq = lm(log(NOx) ~ C + poly(E,4), ethanol)
summary(lmodlogq)
lmod = lm(log(NOx) ~ polym(C,E,degree=2),ethanol)
summary(lmod)
Cgrid = with(ethanol,seq(min(C),max(C),length=10))
Egrid = with(ethanol,seq(min(E),max(E),length=10))
pgrid = expand.grid(C=Cgrid, E=Egrid)
pv = predict(lmod, pgrid)
persp(Cgrid, Egrid, matrix(pv, 10, 10), theta=45, 
      xlab="C", ylab="E", zlab = "NOx", 
      ticktype="detailed", shade = 0.25)

# Splines

funky = function(x) sin(2*pi*x^3)^3
x = seq(0,1,by=0.01)
y = funky(x) + 0.1*rnorm(101)
matplot(x,cbind(y,funky(x)),type="pl",
        ylab="y", pch=20, lty=1, col=1, cex=0.5)
g4 = lm(y ~ poly(x,4))
g12 = lm(y ~ poly(x,12))
matplot(x,cbind(y,g4$fit,g12$fit),type="pll",  
        ylab="y",lty=c(1,2), col=1, cex=0.5)
library(splines)
cknots = c(0,0.2,0.4,0.5,0.6,0.7,0.8,0.85,0.9)
lmodb = lm(y ~ bs(x,knots=cknots)-1)
matplot(x, model.matrix(lmodb), type="l", col=1)
smf = predict(lmodb,interval = "confidence")
matplot(x, cbind(y,smf), type="plll", 
        ylab="y", pch=20, lty=c(1,1,2,2), col=1)
ssf = smooth.spline(x,y)
matplot(x,cbind(y,ssf$y),type="pl",ylab="y", 
          lty=1, pch=20, col=1, cex=0.5)

# Additive Models

library(mgcv)
data(ozone, package="faraway")
gmod = gam(O3 ~ s(humidity) + s(temp) + s(doy), data=ozone)
plot(gmod)

# Discussion


# Exercises

sessionInfo()
