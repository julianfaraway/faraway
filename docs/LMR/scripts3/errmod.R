# Chapter: Modeling with the Error


# Generalized Least Squares

data(globwarm,package="faraway")
lmod = lm(nhtemp ~ wusa + jasper + westgreen + chesapeake + 
          tornetrask + urals + mongolia + tasman, globwarm)
summary(lmod)
cor(residuals(lmod)[-1],
    residuals(lmod)[-length(residuals(lmod))])
library(nlme)
glmod = gls(nhtemp ~ wusa + jasper + westgreen + chesapeake + 
            tornetrask + urals + mongolia + tasman,  
            correlation=corAR1(form=~year),
            data=na.omit(globwarm))
summary(glmod)
intervals(glmod,which="var-cov")
data(oatvar,package="faraway")
glmod = gls(yield ~ variety, oatvar, 
        correlation = corCompSymm(form= ~1 | block))
intervals(glmod)

# Weighted Least Squares

data(fpe,package="faraway")
fpe
lmod = lm(A2 ~ A+B+C+D+E+F+G+H+J+K+N-1, fpe, weights=1/EI)
coef(lmod)
lm(A2 ~ A+B+C+D+E+F+G+H+J+K+N-1, fpe)$coef
lm(A2 ~ A+B+C+D+E+F+G+H+J+K+N-1, fpe, weights=53/EI)$coef
lm(A2 ~ offset(A+G+K)+C+D+E+F+N-1, fpe, weights=1/EI)$coef
library(mgcv)
M = list(w=1/fpe$EI, X=model.matrix(lmod), y=fpe$A2, 
    Ain=rbind(diag(11),-diag(11)), C=matrix(0,0,0), 
    array(0,0), S=list(), off=NULL, p=rep(0.5,11), 
    bin=c(rep(0,11), rep(-1,11)))
a = pcls(M)
names(a) = colnames(model.matrix(lmod))
round(a,3)
lmod = lm(dist ~ speed, cars)
plot(residuals(lmod) ~ speed, cars)
wlmod = gls(dist ~ speed, data=cars, 
        weight = varConstPower(1, form= ~ speed))
summary(wlmod)

# Testing for Lack of Fit

data(corrosion, package="faraway")
plot(loss ~ Fe,corrosion,
     xlab="Iron content",ylab="Weight loss")
lmod = lm(loss ~ Fe, corrosion)
summary(lmod)
abline(coef(lmod))
lmoda = lm(loss ~ factor(Fe), corrosion)
points(corrosion$Fe,fitted(lmoda),pch=3)
anova(lmod, lmoda)
lmodp = lm(loss ~ Fe+I(Fe^2)+I(Fe^3)+I(Fe^4)+I(Fe^5)+I(Fe^6), 
        data=corrosion)
plot(loss ~ Fe, data=corrosion,ylim=c(60,130))
points(corrosion$Fe,fitted(lmoda),pch=3)
grid = seq(0,2,len=50)
lines(grid,predict(lmodp, data.frame(Fe=grid)))
summary(lmodp)$r.squared

# Robust Regression

data(gala, package="faraway")
lsmod = lm(Species ~ Area + Elevation + Nearest + 
                     Scruz + Adjacent,gala)
summary(lsmod)
rlmod = MASS::rlm(Species ~ Area + Elevation + 
                  Nearest + Scruz + Adjacent,gala)
summary(rlmod)
wts = rlmod$w
names(wts) = row.names(gala)
head(sort(wts),10)
library(quantreg)
l1mod = rq(Species ~Area+Elevation+Nearest+Scruz+Adjacent, 
           data=gala)
summary(l1mod)
set.seed(123)
ltsmod = MASS::ltsreg(Species ~ Area + Elevation + 
                Nearest + Scruz + Adjacent,gala)
coef(ltsmod)
ltsmod = MASS::ltsreg(Species ~ Area + Elevation + 
         Nearest + Scruz  + Adjacent, gala,nsamp="exact")
coef(ltsmod)
bcoef = matrix(0,1000,6)
for(i in 1:1000){
   newy = predict(ltsmod)+residuals(ltsmod)[sample(30,rep=T)]
   brg = MASS::ltsreg(newy  ~ Area + Elevation + Nearest +
         Scruz + Adjacent, gala, nsamp="best")
   bcoef[i,] = brg$coef
  }
colnames(bcoef) = names(coef(ltsmod))
apply(bcoef,2,function(x) quantile(x, c(0.025,0.975)))
library(ggplot2)
bcoef = data.frame(bcoef)
p1 = ggplot(bcoef, aes(x = Area)) + geom_density() + 
     xlim(1.45, 1.65)
p1 + geom_vline(xintercept=c(1.4976,1.6230),linetype="dashed")
p2 = ggplot(bcoef, aes(x = Adjacent)) + geom_density() + 
     xlim(-0.25, -0.13)
p2 + geom_vline(xintercept=c(-0.23375, -0.15138), 
     linetype="dashed")
limod = lm(Species ~ Area + Elevation + Nearest + 
        Scruz +  Adjacent,  gala,
        subset=(row.names(gala) != "Isabela"))
summary(limod)
data(star, package="faraway")
plot(light ~ temp, star)
gs1 = lm(light ~ temp, star)
abline(coef(gs1))
gs2 = MASS::rlm(light ~ temp, star)
abline(coef(gs2), lty=2)
gs3 = MASS::ltsreg(light ~ temp, star, nsamp="exact")
abline(coef(gs3), lty=5)

# Exercises

sessionInfo()
