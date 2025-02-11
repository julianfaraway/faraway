# Chapter: Categorical Predictors


# A Two-Level Factor

data(hips,package="faraway")
rbind(head(hips,2),tail(hips,2))
pdf(file="../tex/plots/hips.pdf",height=3.5,width=6.5)

par(mar=c(2.6,2.6,0.6,0.6),mgp=c(1.5,0.5,0),tck=-0.01,cex=0.75,pch=20,mfrow=c(1,2))

plot(faft ~ fbef, hips, pch=unclass(grp), 
     xlab = "Flexion Before (degrees)",
     ylab = "Flexion After (degrees)")
abline(0,1)
legend("bottomright", legend = c("Control", "Treatment"),
       pch = 1:2)     
hips[hips$fbef < 90,]
hips = hips[!(hips$person %in% c('25','35')),]
plot(faft ~ grp, hips,
    xlab="Group", ylab="Flexion After")
dev.off()

t.test(faft ~ grp, hips, var.equal=TRUE)
d1 = ifelse(hips$grp == "treat",1,0)
d2 = ifelse(hips$grp == "control",1,0)
lmod = lm(faft ~ d1 + d2, hips)
summary(lmod)
model.matrix(lmod)
lmod = lm(faft ~ d2, hips)
summary(lmod)
lmod = lm(faft ~ d1 + d2 -1, hips)
summary(lmod)
lmod = lm(faft ~ grp, hips)
summary(lmod)
class(hips$grp)
hips$grp = relevel(hips$grp, ref="treat")
lmod = lm(faft ~ grp, hips)
summary(lmod)
hips$grp = relevel(hips$grp, ref="control")

# Factors and Quantitative Predictors

lmod4 = lm(faft ~ fbef+grp+fbef:grp,hips)
summary(lmod4)
model.matrix(lmod4)
pdf("../tex/plots/hipsac.pdf",height=2,width=6.5)

par(mar=c(2.6,2.6,0.6,0.6),mgp=c(1.5,0.5,0),tck=-0.01,cex=0.75,pch=20,mfrow=c(1,3))

plot(faft ~ fbef, hips, pch=unclass(grp), 
     xlab = "Flexion Before (degrees)",
     ylab = "Flexion After (degrees)")
(cc=coef(lmod4))
abline(cc[1], cc[2])
abline(cc[1]+cc[3], cc[2]+cc[4],lty=2)
lmod3 = lm(faft ~ fbef+grp,hips)
summary(lmod3)
plot(faft ~ fbef, hips, pch=unclass(grp), 
     xlab = "Flexion Before (degrees)",
     ylab = "Flexion After (degrees)")
(cc=coef(lmod3))
abline(cc[1],cc[2])
abline(cc[1]+cc[3],cc[2], lty=2)
confint(lmod3)[3,]
plot(fitted(lmod3),residuals(lmod3),pch=as.numeric(hips$grp),
    xlab="Fitted",ylab="Residuals")
abline(h=0)
dev.off()

lmod1 = lm(faft ~ fbef,hips)
summary(lmod1)

# More Lessons from the Hips Study

cmod = lm(fbef ~ grp, hips)
summary(cmod)
phipfbef = aggregate(fbef ~ person, hips, mean)
ii = order(phipfbef$fbef)
head(phipfbef[ii,])
chmod = lm(faft-fbef ~ grp, hips)
summary(chmod)
t.test(faft - fbef ~ 1, data=hips,
       subset = (grp == "control") )
lmode = lm(faft ~ fbef*grp*side + rbef, hips)
summary(lmode)
lmods = lm(faft ~ fbef*grp + rbef, hips)
anova(lmods,lmode)
lmodr = lm(faft ~ fbef+grp + rbef, hips)
summary(lmodr)
pdf("../tex/plots/legpair.pdf",height=3.0,width=3.0)

par(mar=c(2.6,2.6,0.6,0.6),mgp=c(1.5,0.5,0),tck=-0.01,cex=0.75,pch=20,mfrow=c(1,1))

resmatrix = matrix(residuals(lmodr), 37, 2, byrow=TRUE)
plot(resmatrix[,1], resmatrix[,2],
     xlab = "right residual", ylab = "left residual")
abline(h=0,v=0)
dev.off()

cor.test(resmatrix[,1], resmatrix[,2])
phips = aggregate(cbind(faft,fbef) ~ person, hips, mean)
phips$grp = hips$grp[match(phips$person, hips$person)]
head(phips)
pmod = lm(faft ~ fbef + grp, phips)
summary(pmod)
library(nlme)
gmod = gls(faft ~ fbef + grp, data=hips,
           correlation = corCompSymm(form = ~ 1|person))
summary(gmod)
mmod = lm(cbind(faft,raft) ~ rbef + fbef + grp, hips)
coef(mmod)
summary(mmod)
anova(mmod)

# Interpretation with Interaction Terms

data(whiteside,package="MASS")
pdf("../tex/plots/whiteside.pdf",height=3.5,width=6.5)

ggplot2::theme_set(ggplot2::theme_bw())

library(ggplot2)
ggplot(aes(x=Temp,y=Gas),data=whiteside)+geom_point()+
    facet_grid(~ Insul)+geom_smooth(method="lm")
dev.off()

lmod = lm(Gas ~ Temp*Insul, whiteside)
summary(lmod)
mean(whiteside$Temp)
whiteside$ctemp = whiteside$Temp - mean(whiteside$Temp)
lmodc = lm(Gas ~ ctemp*Insul, whiteside)
summary(lmodc)
lmodlog = lm(log(Gas) ~ Temp*Insul, whiteside)
drop1(lmodlog, test="F")
lmodlogp = lm(log(Gas) ~ Temp+Insul, whiteside)
summary(lmodlogp)

# Factors With More Than Two Levels

pdf("../tex/plots/ffinit.pdf",height=6.5,width=6.5)

par(mar=c(2.6,2.6,0.6,0.6),mgp=c(1.5,0.5,0),tck=-0.01,cex=0.75,pch=20)

data(fruitfly,package="faraway")
plot(longevity ~ thorax, fruitfly, pch=unclass(activity))
legend(0.63,100,levels(fruitfly$activity),pch=1:5)
dev.off()

pdf("../tex/plots/ffgg.pdf",height=6.5,width=6.5)

par(mar=c(2.6,2.6,0.6,0.6),mgp=c(1.5,0.5,0),tck=-0.01,cex=0.75,pch=20)

library(ggplot2)
ggplot(aes(x=thorax,y=longevity),data=fruitfly) +
       geom_point() + facet_wrap( ~ activity)
dev.off()

lmod = lm(longevity ~ thorax*activity, fruitfly)
summary(lmod)
model.matrix(lmod)
plot(lmod)
anova(lmod)
lmodp = lm(longevity ~ thorax+activity, fruitfly)
drop1(lmodp,test="F")
summary(lmodp)
pdf("../tex/plots/fruitdiag.pdf",height=3,width=6.5)

par(mar=c(2.6,2.6,0.6,0.6),mgp=c(1.5,0.5,0),tck=-0.01,cex=0.75,pch=20,mfrow=c(1,2))

plot(residuals(lmodp) ~fitted(lmodp),
     pch=unclass(fruitfly$activity),
     xlab="Fitted",ylab="Residuals")
abline(h=0)
lmodl = lm(log(longevity) ~ thorax+activity, fruitfly)
plot(residuals(lmodl) ~ fitted(lmodl),
     pch=unclass(fruitfly$activity),
     xlab="Fitted",ylab="Residuals")
abline(h=0)
dev.off()

summary(lmodl)
exp(coef(lmodl)[3:6])
lmodh = lm(thorax ~ activity, fruitfly)
anova(lmodh)
lmodu = lm(log(longevity) ~ activity, fruitfly)
summary(lmodu)

# Contrasts and Factor Codings\label{sec:contr-fact-codings}

(gpmeans = aggregate(longevity ~ activity, fruitfly, mean))
lmodt = lm(longevity ~ activity, fruitfly)
coef(lmodt)
contrasts(fruitfly$activity) = contr.sum(5)
lmods = lm(longevity ~ activity, fruitfly)
coef(lmods)
mean(gpmeans$longevity)
sum(coef(lmods)[-1])
contr.sum(5)
library(MASS)
fractions(ginv(contr.sum(5)))
(CH = contr.helmert(5))
t(CH) %*% CH
fractions(ginv(contr.helmert(5)))

# Exercises

sessionInfo()
