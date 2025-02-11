# Chapter: One Factor Models


# The Model


# An Example

data(coagulation, package="faraway")
coagulation
plot(coag ~ diet, coagulation,ylab="coagulation time")
stripchart(coag ~ diet, coagulation, vertical=TRUE,
  method="stack",xlab="diet",ylab="coagulation time")
lmod = lm(coag ~ diet, coagulation)
summary(lmod)
round(coef(lmod),1)
model.matrix(lmod)
anova(lmod)

# Analysis of Variance

(SSTotal = with(coagulation, sum((coag - mean(coag))^2)))
(gpmean = with(coagulation, tapply(coag, diet, mean)))
(gpsize = table(coagulation$diet))
coagulation$gpmean = gpmean[unclass(coagulation$diet)]
coagulation$ssize = gpsize[unclass(coagulation$diet)]
head(coagulation)
(SSTreat = with(coagulation, sum((gpmean-mean(coag))^2)))
(SSError = with(coagulation, sum((coag-gpmean)^2)))
SSTreat/SSTotal
(SSTreat/(4-1))/(SSError/(24-4))

# Other factor codings

lmodi = lm(coag ~ diet -1, coagulation)
summary(lmodi)
library(emmeans)
emmeans(lmod, ~ diet)
options(contrasts=c("contr.sum","contr.poly"))
lmods = lm(coag ~ diet , coagulation)
summary(lmods)
options(contrasts=c("contr.treatment","contr.poly"))

# Diagnostics\label{sec:owadiagnostics}

qqnorm(residuals(lmod),main="")
qqline(residuals(lmod))
plot(jitter(fitted(lmod)),residuals(lmod),
  xlab="Fitted",ylab="Residuals")
abline(h=0)
kruskal.test(coag ~ diet, coagulation)
med = with(coagulation,tapply(coag,diet,median))
ar = with(coagulation,abs(coag -med[diet]))
anova(lm(ar ~ diet,coagulation))
bartlett.test(coag ~ diet, coagulation)
oneway.test(coag ~ diet, coagulation, var.equal = FALSE)

# Pairwise Comparisons

5 + c(-1,1) * qt(0.975, 24-4) * 1.53
se = summary(lmod)$sigma
5 + c(-1,1) *
    qtukey(0.95, 4, 24-4)/sqrt(2) * se * sqrt(1/4 +1/6)
rem = emmeans(lmod, pairwise ~ diet)
summary(rem$contrasts,infer=TRUE)
plot(rem$emmeans, comparisons = TRUE, adjust = "tukey")
pwpp(rem)
table(PlantGrowth$group)
pmod = lm(weight ~ group, PlantGrowth)
summary(pmod)
emmeans(pmod, trt.vs.ctrl ~ group)$contrasts
c1 = c(-1/2, -1/2, 1/2, 1/2)
c2 = c(-1/2,1/2,1/2,-1/2)
c3 = c(-1,1,0,0)
lmod = lm(coag ~ diet, coagulation)
rem = emmeans(lmod, ~ diet)
con = contrast(rem,method=list(c1,c2,c3))
summary(con,adjust="none")
summary(con, adjust="scheffe", scheffe.rank=3)

# False Discovery Rate

data(jsp, package="faraway")
jsp$mathcent = jsp$math - mean(jsp$math)
library(ggplot2)
ggplot(aes(x=school,y=mathcent),data=jsp)+geom_boxplot() +
  theme(axis.text.x = element_text(angle = 90))+
  ylab("Centered Math Scores")
lmod = lm(mathcent ~ school-1, jsp)
summary(lmod)
anova(lm(mathcent ~ school, jsp))
pvals = summary(lmod)$coef[,4]
padj = p.adjust(pvals, method="bonferroni")
coef(lmod)[padj < 0.05]
names(which(sort(pvals) < (1:49)*0.05/49))
padj = p.adjust(pvals, method="fdr")
coef(lmod)[padj < 0.05]
lmod = lm(mathcent ~ school, jsp)
rem = emmeans(lmod, ~ school)
tr = test(rem, null=0, adjust="fdr")
tr[tr$p.value < 0.05,]

# Design considerations

power.anova.test(groups = 4,
                 n = 6,
                 between.var = 13,
                 within.var = 6,
                 sig.level = 0.05)
power.anova.test(groups = 4,
                 between.var = 8,
                 within.var = 6,
                 sig.level = 0.05,
                 power = 0.8)
J = 4
d = 1
power.anova.test(groups = J,
                 between.var = d^2 * (J/(J-1)),
                 within.var = 1,
                 sig.level = 0.05,
                 power = 0.8)
d = 0.1
power.anova.test(groups = J,
                 between.var = d^2 * (J/(J-1)),
                 within.var = 1,
                 sig.level = 0.05,
                 power = 0.8)
sample(LETTERS[1:4], 24, replace=TRUE)
sample(rep(LETTERS[1:4],6))
sapply(1:6, function(x) sample(LETTERS[1:4]))

# Exercises

sessionInfo()
