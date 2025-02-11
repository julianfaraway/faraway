# Chapter: Models with Several Factors


# Two Factors with No Replication

data(composite, package="faraway")
composite
library(ggplot2)
ggplot(composite,
       aes(x=laser,y=strength,group=tape,linetype=tape))+
       geom_line()+
       theme(legend.position = "top",
             legend.direction = "horizontal")
ggplot(composite,
       aes(x=tape,y=strength,group=laser,linetype=laser))+
       geom_line()+
       theme(legend.position = "top",
             legend.direction = "horizontal")
lmod = lm(strength ~ laser + tape + laser:tape, composite)
summary(lmod)
lmod = lm(strength ~ laser + tape, composite)
(cc = coef(lmod))
(lasercoefs = c(0,cc[2:3])[unclass(composite$laser)])
(tapecoefs = c(0,cc[4:5])[unclass(composite$tape)])
tmod = update(lmod, . ~ . + I(lasercoefs*tapecoefs))
anova(tmod)
anova(lmod)
summary(lmod)

# Estimated Marginal Means and Multiple Comparisons

library(emmeans)
rem = emmeans(lmod, pairwise ~ laser)
rem$emmeans
composite$predval = predict(lmod)
with(composite, tapply(predval,laser,mean))
with(composite, tapply(strength,laser,mean))
emmeans(lmod, pairwise ~ laser | tape)
composite[1:3,]
predict(lmod,newdata=composite,interval="confidence")[1:3,]
plot(rem, comparisons = TRUE, adjust = "tukey")
summary(rem$contrasts, infer=TRUE)
remc = emmeans(lmod, consec ~ laser)
summary(remc$contrasts, infer=TRUE)

# Ordinal factors

composite$laser = as.ordered(composite$laser)
composite$tape = as.ordered(composite$tape)
lmod = lm(strength ~ laser + tape, composite)
summary(lmod)
round(model.matrix(lmod),2)
composite$Ntape = rep(c(6.42,13,27),each=3)
composite$Nlaser = rep(c(40,50,60),3)
lmodn = lm(strength ~ Nlaser + poly(log(Ntape),2), composite)
summary(lmodn)

# Two Factors with Replication

data(pvc, package="faraway")
library(ggplot2)
p = ggplot(pvc, aes(x=operator,y=psize))+geom_point()+
   stat_summary(fun="mean",geom="line",aes(group=resin))
op1means = with(pvc[pvc$operator == 1,],
                sapply(split(psize,resin),mean))
tdf = data.frame(x=rep(0.9,8),y=op1means,label=1:8)
p + geom_text(data=tdf,aes(x=x,y=y,label=label))
ggplot(pvc, aes(x=resin,y=psize,shape=operator))+geom_point()+
  stat_summary(fun="mean",geom="line",
               aes(group=operator,linetype=operator))+
  theme(legend.position = "top",
        legend.direction = "horizontal")
lmod = lm(psize ~ operator*resin, pvc)
anova(lmod)
anova(lm(psize ~ operator + resin, pvc))
qqnorm(residuals(lmod),main="")
qqline(residuals(lmod))
plot(fitted(lmod),residuals(lmod),
     xlab="Fitted",ylab="Residuals")
abline(h=0)
plot(residuals(lmod) ~ operator, pvc, ylab="Residuals")
pvce = pvc[(1:24)*2,]
pvce$res = sqrt(abs(residuals(lmod))[(1:24)*2])
vmod = lm(res ~ operator + resin, pvce)
anova(vmod)
lmod = lm(psize ~ operator+resin, pvc)
summary(lmod)
rem = emmeans(lmod, pairwise ~ operator)
summary(rem$contrasts, infer=TRUE)

# Two Factors with an Interaction

plot(breaks ~ wool, warpbreaks)
with(warpbreaks,interaction.plot(wool,tension,breaks))
library(ggplot2)
ggplot(warpbreaks, aes(x=wool,y=breaks,shape=tension)) +
   geom_point(position = position_jitter(width = .1)) +
   stat_summary(fun="mean",geom="line",
                aes(group=tension,linetype=tension)) +
   theme(legend.position = "top",
         legend.direction = "horizontal")
ggplot(warpbreaks, aes(x=tension,y=breaks,shape=wool)) +
    geom_point(position = position_jitter(width = .1)) +
    stat_summary(fun="mean",geom="line",
                 aes(group=wool,linetype=wool)) +
    theme(legend.position = "top",
          legend.direction = "horizontal")
lmod = lm(breaks ~ wool*tension, warpbreaks)
plot(residuals(lmod) ~ fitted(lmod),
     xlab="Fitted",ylab="Residuals")
abline(h=0)
lmod = lm(sqrt(breaks) ~ wool*tension, warpbreaks)
plot(residuals(lmod) ~ fitted(lmod),
     xlab="Fitted",ylab="Residuals")
abline(h=0)
anova(lmod)
remw = emmeans(lmod, pairwise ~ wool)
summary(remw$emmeans, type="response")
summary(remw$contrasts)
remwt = emmeans(lmod, pairwise ~ wool | tension)
summary(remwt$emmeans, type="response")
summary(remwt$contrasts, infer=TRUE)
rem = emmeans(lmod, ~ wool*tension)
summary(rem, type="response")
contrast(rem, "pairwise")

# Design for two factor experiments

gm = aggregate(sqrt(breaks) ~ wool+tension, warpbreaks, mean)
var(gm$`sqrt(breaks)`)
lmod = lm(sqrt(breaks) ~ wool*tension, warpbreaks)
summary(lmod)$sigma^2
power.anova.test(groups = 6,
                 between.var = 0.578,
                 within.var = 0.96,
                 sig.level = 0.05,
                 power = 0.8)
des = expand.grid(wool=c("A","B"),
                  tension=c("L","M","H"),
                  replicate=1:9)
des = des[sample(nrow(des)),-3]
head(des)

# Larger Factorial Experiments

data(speedo, package="faraway")
speedo
lmod = lm(y ~ .,speedo)
summary(lmod)
model.matrix(lmod)
qqnorm(coef(lmod)[-1],pch=names(coef(lmod)[-1]),main="")
faraway::halfnorm(coef(lmod)[-1],labs=names(coef(lmod)[-1]))

# Exercises

sessionInfo()
