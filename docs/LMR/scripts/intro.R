library(faraway)
library(faraway)
data(pima)
pima
summary(pima)
sort(pima$diastolic)
pima$diastolic[pima$diastolic == 0]  <- NA
pima$glucose[pima$glucose == 0] <- NA
pima$triceps[pima$triceps == 0]  <- NA
pima$insulin[pima$insulin == 0] <- NA
pima$bmi[pima$bmi == 0] <- NA
pima$test <- factor(pima$test)
summary(pima$test)
levels(pima$test) <- c("negative","positive")
summary(pima)
hist(pima$diastolic)
plot(density(pima$diastolic,na.rm=TRUE))
plot(sort(pima$diastolic),pch=".")
plot(diabetes ~ diastolic,pima)
plot(diabetes ~ test,pima)
pairs(pima)
data(stat500)
stat500 <- data.frame(scale(stat500))
plot(final ~ midterm,stat500)
abline(0,1)
g <- lm(final ~ midterm,stat500)
abline(coef(g),lty=5)
cor(stat500)
