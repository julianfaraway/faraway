# Chapter: Estimation


# Linear Model


# Matrix Representation


# Estimating $\beta$


# Least Squares Estimation


# Examples of Calculating $\hat\beta$


# Example

data(gala, package="faraway")
head(gala[,-2])
lmod = lm(
     Species ~ Area + Elevation + Nearest + Scruz + Adjacent, 
     data=gala)
summary(lmod)
X = model.matrix(
    ~ Area + Elevation + Nearest + Scruz + Adjacent,
    data=gala)
y = gala$Species
xtxi = solve(t(X) %*% X)
xtxi %*% t(X) %*% y
solve(crossprod(X,X),crossprod(X,y))
names(lmod)
lmodsum = summary(lmod)
names(lmodsum)
sqrt(deviance(lmod)/df.residual(lmod))
lmodsum$sigma
xtxi = lmodsum$cov.unscaled
sqrt(diag(xtxi))*60.975
 lmodsum$coef[,2]

# Intercept


# QR Decomposition

qrx = qr(X)
dim(qr.Q(qrx))
(f = t(qr.Q(qrx)) %*% y)
backsolve(qr.R(qrx),f)

# Gauss--Markov Theorem


# Goodness of Fit

head(anscombe)
apply(anscombe, 2, mean)
apply(anscombe, 2, sd)
with(anscombe,c(cor(x1,y1),cor(x2,y2),cor(x3,y3),cor(x4,y4)))
acn = colnames(anscombe)
for(i in 1:4){
  plot(anscombe[,i], anscombe[,i+4],
       xlab=acn[i], ylab=acn[i+4])
  lmod = lm(anscombe[,i+4] ~ anscombe[,i])
  abline(lmod)
}

# Identifiability

gala$Adiff = gala$Area - gala$Adjacent
lmod = lm(Species ~Area+Elevation+Nearest+Scruz+Adjacent+
                   Adiff,gala)
summary(lmod)
X = model.matrix(lmod)
xtx = t(X) %*% X
edec = eigen(xtx)
signif(edec$values,3)
round(edec$vectors[,7],3)
set.seed(123)
Adiffe = gala$Adiff+0.001*(runif(30)-0.5)
lmod = lm(Species ~ Area+Elevation+Nearest+Scruz+
          Adjacent+Adiffe,gala)
summary(lmod)

# Orthogonality

data(odor, package="faraway")
odor
cov(odor[,-1])
lmod = lm(odor ~ temp + gas + pack, odor)
summary(lmod,cor=T)
lmod = lm(odor ~ gas + pack, odor)
summary(lmod)

# Exercises

sessionInfo()
