library(faraway)
data(gala)
gala
mdl <- lm(Species ~ Area + Elevation + Nearest + Scruz + Adjacent, data=gala)
summary(mdl)
x <- model.matrix( ~ Area + Elevation + Nearest + Scruz + Adjacent,gala)
y <- gala$Species
xtxi <- solve(t(x) %*% x)
xtxi %*% t(x) %*% y
solve(crossprod(x,x),crossprod(x,y))
names(mdl)
mdls <- summary(mdl)
names(mdls)
sqrt(deviance(mdl)/df.residual(mdl))
mdls$sigma
xtxi <- mdls$cov.unscaled
sqrt(diag(xtxi))*60.975
mdls$coef[,2]
1-deviance(mdl)/sum((y-mean(y))^2)
mdls$r.squared

gala$Adiff <- gala$Area -gala$Adjacent
g <- lm(Species ~ Area+Elevation+Nearest+Scruz+Adjacent+Adiff,gala)
summary(g)
Adiffe <- gala$Adiff+0.001*(runif(30)-0.5)
g <- lm(Species ~ Area+Elevation+Nearest+Scruz+Adjacent+Adiffe,gala)
summary(g)
x <- 1:20
y <- x+rnorm(20)
