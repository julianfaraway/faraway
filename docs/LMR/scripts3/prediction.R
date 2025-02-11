# Chapter: Prediction


# Confidence and Prediction Intervals for Predictions


# Predicting Body Fat

data(fat,package="faraway")
lmod = lm(brozek ~ age + weight + height + neck + chest +
     abdom + hip + thigh + knee + ankle + biceps + forearm +
     wrist, data=fat)
x = model.matrix(lmod)
(x0 = apply(x,2,median))
(y0 = sum(x0*coef(lmod)))
predict(lmod,new=data.frame(t(x0)))
predict(lmod,new=data.frame(t(x0)),interval="prediction")
predict(lmod,new=data.frame(t(x0)),interval="confidence")
(x1 = apply(x,2,function(x) quantile(x,0.95)))
predict(lmod, new=data.frame(t(x1)), interval="prediction")
predict(lmod, new=data.frame(t(x1)), interval="confidence")

# Prediction Model Assessment

predpi = predict(lmod,newdata=fat,interval="prediction")
sqrt(mean((fat$brozek - predpi[,"fit"])^2))
mean((fat$brozek > predpi[,"lwr"]) & 
     (predpi[,"upr"] > fat$brozek))
predci = predict(lmod,newdata=fat,interval="confidence")
mean((fat$brozek > predci[,"lwr"]) & 
     (predci[,"upr"] > fat$brozek))

# Autoregression

data(airpass, package="faraway")
plot(pass ~ year, airpass, type="l", ylab="Passengers")
lmod = lm(log(pass) ~ year, airpass)
lines(exp(predict(lmod)) ~ year, airpass)
lagdf = embed(log(airpass$pass),14)
colnames(lagdf) = c("y",paste0("lag",1:13))
lagdf = data.frame(lagdf)
armod = lm(y ~ lag1 + lag12 + lag13, data.frame(lagdf))
summary(armod)
plot(pass ~ year, airpass, type="l",ylab="Passengers")
lines(airpass$year[14:144], exp(predict(armod)), lty=2)
lagdf[nrow(lagdf),]
predict(armod,data.frame(lag1=6.0684, lag12=6.0331,
        lag13=6.0039), interval="prediction")

# What Can Go Wrong with Predictions?


# Exercises

sessionInfo()
