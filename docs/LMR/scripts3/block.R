# Chapter: Experiments with Blocks


# Randomized Block Design

data(oatvar,package="faraway")
xtabs(yield ~ variety + block, oatvar)
plot(yield ~ variety, oatvar)
plot(yield ~ block, oatvar)
with(oatvar,interaction.plot(variety,block,yield))
with(oatvar,interaction.plot(block,variety,yield))
library(ggplot2)
ggplot(oatvar,aes(x=variety, y=yield, group=block,
                  linetype=block)) +
       geom_line() +
       theme(legend.position = "top",
             legend.direction = "horizontal")
ggplot(oatvar,aes(x=block, y=yield, group=block,
                  linetype=block)) +
       geom_line()
lmod = lm(yield ~ block+variety, oatvar)
anova(lmod)
anova(lm(yield ~ block, oatvar))
anova(lm(yield ~ variety+block, oatvar))
anova(lm(yield ~ block+variety,subset=-1, oatvar))
anova(lm(yield ~ variety+block,subset=-1, oatvar))
drop1(lm(yield ~ variety+block,subset=-1, oatvar),test="F")
plot(lmod,which=1:2,caption=NULL)
varcoefs =  c(0,coef(lmod)[6:12])
blockcoefs =c(0,coef(lmod)[2:5])
ab = rep(varcoefs,each=5)*rep(blockcoefs,8)
h = update(lmod,.~.+ab)
anova(h)
library(emmeans)
rem = emmeans(lmod, pairwise ~ variety)
rem$emmeans
library(ggplot2)
plot(rem$emmeans, comparisons = TRUE, adjust = "tukey") +
     coord_flip()
summary(rem$contrasts, infer=TRUE)
remtc = emmeans(lmod, trt.vs.ctrlk ~ variety, ref = 5,
                side = "<")
summary(remtc$contrasts, adjust="bonferroni")
lmcrd = lm(yield ~ variety, oatvar)
lmrbd = lm(yield ~ block+variety, oatvar)
(summary(lmcrd)$sig/summary(lmrbd)$sig)^2
sapply(levels(oatvar$block), function(x) sample(8))

# Latin Squares

data(abrasion,package="faraway")
xtabs(wear ~ run + position, abrasion)
matrix(abrasion$material,4,4,byrow=TRUE)
ggplot(abrasion,aes(x=run,y=wear,shape=position,
                    group=material)) +
       geom_point()+geom_line(aes(linetype=material))
ggplot(abrasion,aes(x=position,y=wear,shape=run,
                    group=material)) +
       geom_point()+geom_line(aes(linetype=material))
lmod = lm(wear ~ material+run+position, abrasion)
drop1(lmod,test="F")
summary(lmod)
rem = emmeans(lmod, pairwise ~ material)
rem$emmeans
rem$contrasts
logmod = lm(log(wear) ~ material+run+position, abrasion)
emmeans(logmod, pairwise ~ material,
        type="response")$contrasts
lmodr = lm(wear ~ material,abrasion)
(summary(lmodr)$sig/summary(lmod)$sig)^2
s = 4
dm = matrix(NA,s,s)
for(i in 1:s){
  dm[i,] = ((0:(s-1)) + (i-1)) %% s
}
dm
dm = dm[sample(1:s),]
dm = dm[,sample(1:s)]
matrix(sample(LETTERS[1:s])[dm+1],s,s)

# Balanced Incomplete Block Design

data(rabbit,package="faraway")
xtabs(gain ~ treat+block, rabbit)
ggplot(rabbit,aes(y=gain,x=block,shape=treat))+geom_point()+
       theme(legend.position = "top",
       legend.direction = "horizontal")
ggplot(rabbit,aes(y=gain,x=treat))+
 geom_point(position = position_jitter(width = .1))
lmod = lm(gain ~ block+treat,rabbit)
drop1(lmod, test="F")
plot(lmod, which=1:2)
rem = emmeans(lmod, pairwise ~ treat)
rem$emmeans
with(rabbit, tapply(gain, treat, mean)) 
rem$contrasts
lmodt = lm(gain ~ treat,rabbit)
(summary(lmodt)$sig/summary(lmod)$sig)^2

# Exercises

sessionInfo()
