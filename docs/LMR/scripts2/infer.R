library(faraway)
data(gala, package="faraway")
lmod <- lm(Species ~ Area + Elevation + Nearest + Scruz  + Adjacent, gala)
nullmod <- lm(Species ~ 1, gala)
anova(nullmod, lmod)
(rss0 <- deviance(nullmod))
(rss <- deviance(lmod))
(df0 <- df.residual(nullmod))
(df <- df.residual(lmod))
(fstat <- ((rss0-rss)/(df0-df))/(rss/df))
1-pf(fstat, df0-df, df)
lmods <- lm(Species ~  Elevation + Nearest + Scruz + Adjacent, gala)
anova(lmods, lmod)
sumary(lmod)
sumary(lm(Species ~ Area, gala))
lmods <- lm(Species ~  Elevation + Nearest + Scruz, gala)
anova(lmods, lmod)
lmods <- lm(Species ~  I(Area+Adjacent) + Elevation + Nearest + Scruz, gala)
anova(lmods, lmod)
lmods <- lm(Species ~  Area+ offset(0.5*Elevation) + Nearest + Scruz + Adjacent, gala)
anova(lmods, lmod)
(tstat <- (0.31946-0.5)/0.05366)
2*pt(tstat, 24)
tstat^2
lmod <- lm(Species ~ Nearest + Scruz, gala)
lms <- summary(lmod)
lms$fstatistic
1-pf(lms$fstatistic[1],lms$fstatistic[2],lms$fstatistic[3])
nreps <- 4000
set.seed(123)
fstats <- numeric(nreps)
for(i in 1:nreps){
lmods <- lm(sample(Species) ~ Nearest+Scruz, gala)
fstats[i] <- summary(lmods)$fstat[1]
}
mean(fstats > lms$fstat[1])
summary(lmod)$coef[3,]
tstats <- numeric(nreps)
set.seed(123)
for(i in 1:nreps){
lmods <- lm(Species ~ Nearest+sample(Scruz), gala)
tstats[i] <- summary(lmods)$coef[3,3]
}
mean(abs(tstats) > abs(lms$coef[3,3]))
lmod <- lm(Species ~ Area + Elevation + Nearest + Scruz  + Adjacent, gala)
sumary(lmod)
qt(0.975, 30-6)
-0.02394 + c(-1,1) *  2.0639 * 0.02242
-0.07480 + c(-1,1) *  2.0639 * 0.01770
confint(lmod)
require(ellipse)
plot(ellipse(lmod,c(2,6)),type="l",ylim=c(-0.13,0))
points(coef(lmod)[2], coef(lmod)[6], pch=19)
abline(v=confint(lmod)[2,],lty=2)
abline(h=confint(lmod)[6,],lty=2)
sample(10,rep=TRUE)
set.seed(123)
nb <- 4000
coefmat <- matrix(NA,nb,6)
resids <- residuals(lmod)
preds <- fitted(lmod)
for(i in 1:nb){
booty <- preds + sample(resids, rep=TRUE)
bmod <- update(lmod, booty ~ .)
coefmat[i,] <- coef(bmod)
}
colnames(coefmat) <- c("Intercept",colnames(gala[,3:7]))
coefmat <- data.frame(coefmat)
apply(coefmat,2,function(x) quantile(x,c(0.025,0.975)))
require(ggplot2)
ggplot(coefmat, aes(x=Area)) + geom_density() + geom_vline(xint=c(-0.0628, 0.0185),lty=2)
ggplot(coefmat, aes(x=Adjacent)) + geom_density() + geom_vline(xint=c(-0.104, -0.0409),lty=2)
