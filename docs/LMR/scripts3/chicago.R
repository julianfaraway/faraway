# Chapter: Insurance Redlining --- A Complete Example


# Ecological Correlation

data(eco, package="faraway")
plot(income ~ usborn, data=eco, xlab="Proportion US born",
                                ylab="Mean Annual Income")
lmod = lm(income ~ usborn, eco)
summary(lmod)
plot(income ~ usborn, data=eco, xlab="Proportion US born",
     ylab="Mean Annual Income",
     xlim=c(0,1),ylim=c(15000,70000),xaxs="i")
abline(coef(lmod))

# Initial Data Analysis

data(chredlin, package="faraway")
head(chredlin)
summary(chredlin)
library(ggplot2)
ggplot(chredlin,aes(race,involact)) + geom_point() +
       stat_smooth(method="lm")
ggplot(chredlin,aes(fire,involact)) + geom_point() +
       stat_smooth(method="lm")
ggplot(chredlin,aes(theft,involact)) + geom_point() +
       stat_smooth(method="lm")
ggplot(chredlin,aes(age,involact)) + geom_point() +
       stat_smooth(method="lm")
ggplot(chredlin,aes(income,involact)) + geom_point() +
       stat_smooth(method="lm")
ggplot(chredlin,aes(side,involact)) +
  geom_point(position = position_jitter(width = .2,height=0))
summary(lm(involact ~ race,chredlin))
ggplot(chredlin,aes(race,fire)) + geom_point() +
       stat_smooth(method="lm")
ggplot(chredlin,aes(race,theft)) + geom_point() +
       stat_smooth(method="lm")

# Full Model and Diagnostics

lmod = lm(involact ~ race + fire + theft + age + log(income),
          chredlin)
summary(lmod)
plot(lmod,1:2)
termplot(lmod, partial.resid=TRUE, terms=1:2)

# Sensitivity Analysis

listcombo = unlist(sapply(0:4,function(x)
            combn(4, x, simplify=FALSE)),recursive=FALSE)
predterms = lapply(listcombo, function(x)
   paste(c("race",c("fire","theft","age","log(income)")[x]),
   collapse="+"))
coefm = matrix(NA,16,2)
for(i in 1:16){
   lmi = lm(as.formula(paste("involact ~ ",predterms[[i]])),
         data=chredlin)
   coefm[i,] = summary(lmi)$coef[2,c(1,4)]
}
rownames(coefm) = predterms
colnames(coefm) = c("beta","pvalue")
round(coefm,4)
diags = data.frame(lm.influence(lmod)$coef)
ggplot(diags,aes(row.names(diags),race)) +
    geom_linerange(aes(ymax=0,ymin=race)) +
    theme(axis.text.x=element_text(angle=90)) +
    xlab("ZIP") +geom_hline(yintercept=0)
ggplot(diags,aes(x=fire,y=theft))+
       geom_text(label=row.names(diags))
plot(lmod,5)
chredlin[c("60607","60610"),]
match(c("60607", "60610"),row.names(chredlin))
lmode = lm(involact ~ race + fire + theft + age + log(income),
        chredlin, subset=-c(6,24))
summary(lmode)
modalt = lm(involact ~ race+fire+log(income),
         chredlin,  subset=-c(6,24))
summary(modalt)

# Discussion

lmod = lm(involact ~ race+fire+theft+age,
          subset=(side == "s"), chredlin)
summary(lmod)
lmod = lm(involact ~ race+fire+theft+age,
          subset=(side == "n"), chredlin)
summary(lmod)

# Exercises

sessionInfo()
