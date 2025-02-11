# Chapter: Inference


# Hypothesis Tests to Compare Models


# Testing Examples

data(gala, package="faraway")
lmod = lm(Species ~ Area + Elevation + Nearest + Scruz +
                    Adjacent, gala)
nullmod = lm(Species ~ 1, gala)
anova(nullmod, lmod)
td = list(rss0=deviance(nullmod),rss=deviance(lmod),
          df0=df.residual(nullmod),df=df.residual(lmod))
str(td)
(fstat <- with(td,((rss0-rss)/(df0-df))/(rss/df)))
1-pf(fstat, td$df0-td$df, td$df)
lmods = lm(Species ~  Elevation + Nearest + Scruz + Adjacent, 
        gala)
anova(lmods, lmod)
summary(lmod)
summary(lm(Species ~ Area, gala))
2*pt(4.16, df=28, lower.tail = FALSE)
pt(4.16, df=28, lower.tail = FALSE)
lmods = lm(Species ~  Elevation + Nearest + Scruz, gala)
anova(lmods, lmod)
lmods = lm(Species ~ I(Area+Adjacent) + Elevation + Nearest +
        Scruz, gala)
anova(lmods, lmod)
lmods = lm(Species ~ Area + offset(0.5*Elevation) + Nearest + 
        Scruz + Adjacent, gala)
anova(lmods, lmod)
(tstat = (0.31946-0.5)/0.05366)
2*pt(tstat, 24)
tstat^2

# Confidence Intervals for $\beta$

lmod = lm(Species ~ Area + Elevation + Nearest + Scruz +
                    Adjacent, gala)
summary(lmod)
qt(0.975, 30-6)
-0.02394 + c(-1,1) *  2.0639 * 0.02242
-0.07480 + c(-1,1) *  2.0639 * 0.01770
confint(lmod)
library(ellipse)
plot(ellipse(lmod,c(2,6)),type="l",ylim=c(-0.13,0))
points(coef(lmod)[2], coef(lmod)[6], pch=19)
abline(v=confint(lmod)[2,],lty=2)
abline(h=confint(lmod)[6,],lty=2)

# Problems with Inference


# Exercises

sessionInfo()
