# Chapter: Explanation and Causation


# Explanation by Prediction

data(gala, package="faraway")
lmod = lm(Species ~ Area + Elevation + Nearest + Scruz 
          + Adjacent, gala)
summary(lmod)
lmode = lm(Species ~ Elevation, gala)
summary(lmode)
plot(Species ~ Elevation, gala)
abline(lmode)
pm = expand.grid(Area = mean(gala$Area),
            Elevation = range(gala$Elevation),
            Nearest = mean(gala$Nearest),
            Scruz = mean(gala$Scruz),
            Adjacent = mean(gala$Adjacent))
pp = predict(lmod, newdata = pm)
lines(pm$Elevation, pp, lty=2)

# Confounding and Simpson's Paradox

x = seq(0,1,length.out=100)
z = rep(c(0,1),each=50)
set.seed(321)
y = -x + z + rnorm(100,mean=0,sd=0.1)
edf = data.frame(response=y, predictor=x, group=z)
plot(response ~ predictor, edf, pch=group)
lmod1 = lm(response ~ predictor, edf)
summary(lmod1)
abline(lmod1)
lmod2 = lm(response ~ predictor + group, edf)
summary(lmod2)
cc = coef(lmod2)       
abline(cc[1],cc[2],lty=2)
abline(cc[1]+cc[3],cc[2],lty=3)

# Counterfactuals


# Insulation Example

data(whiteside, package="MASS")
ii = c(1,26,27,56)
whiteside[ii,]
plot(Gas ~ Temp, data = whiteside, pch=unclass(Insul),
     xlab="Weekly Temperature (Celsius)", ylab="Gas Usage")
legend("topright", legend = c("Before", "After"), pch = 1:2)
lmodp = lm(Gas ~ Insul, whiteside)
summary(lmodp)
model.matrix(lmodp)[ii,]
lmod = lm(Gas ~ Insul + Temp, whiteside)
summary(lmod)
cc = coef(lmod)
abline(cc[1],cc[3])
abline(cc[1]+cc[2],cc[3],lty=2)
matgas = merge(
  whiteside[whiteside$Insul == "Before",-1],
  whiteside[whiteside$Insul == "After",-1],
  by="Temp",
  suffixes = c("Before","After"))
matgas
t.test(matgas$GasBefore - matgas$GasAfter)
with(whiteside,tapply(Temp,Insul,mean))

# Designed Experiments


# New Hampshire Primary Example

data(newhamp, package="faraway")
aggregate(cbind(Obama,Clinton) ~ votesys, newhamp, sum)
lmodu = lm(pObama ~ votesys, newhamp)
summary(lmodu)
plot(pObama ~ Dean, newhamp, pch=unclass(votesys))
legend("topleft", legend = c("Digital", "Hand"), pch = 1:2)
ccu = coef(lmodu)
abline(h=c(ccu[1], ccu[1] + ccu[2]),lty=1:2)
lmodz = lm(pObama ~ votesys +  Dean , newhamp)
summary(lmodz)
ccz = coef(lmodz)
abline(ccz[1], ccz[3])
abline(ccz[1]+ccz[2], ccz[3], lty=2)
summary(lm(Dean ~ votesys, newhamp))
aggregate(population ~ votesys, newhamp, mean)

# Qualitative Support for Causation


# Summary


# Exercises

sessionInfo()
