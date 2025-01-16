# Errata for Extending the Linear Model with R, 2nd Edition

Errata are corrected as found and incorporated into newly printed copies of the book. This
means that not all the errata listed below exist in your copy of the book. If you see any
errors not listed below, please let me know.

- p6. The `c()` vector is of length four.
- p10. The coefficient for `usageurban` should be beta_3
- p29. The log-likelihood equation should have the final subscript i on the eta and not on the 'e'.
- p36. Replace
```
gdf <- group_by(wcgs, cut(linpred, breaks=unique(quantile(linpred, (1:100)/100))))
```
with
```
gdf <- group_by(wcgs, ntile(linpred,100))
```
The original fails because the largest and smallest values get sorted into an NA category.  The `ntile` function
chooses the breakpoints so that there are a roughly equal number of observations per bin. We choose 100 bins. This should
be varied according to the size of the dataset.

- p40. For the same reasons as the comment on p36, replace
```
gdf <- group_by(wcgsm, cut(linpred, breaks=unique(quantile(linpred, (1:100)/101))))
```
with
```
gdf <- group_by(wcgsm, ntile(linpred,100))
```
- p40. Last line of R code should read `hldf <- summarise(gdf, y=sum(chd=='yes'), ppred=mean(predprob), count=n())`
- p41. The degrees of freedom for Hosmer-Lemeshow statistic should be J-2 (not J-1)
- p41. The change in the binning as explained for p40. results in a change to the H-L statistic:
```
> c(hlstat, nrow(hldf))
[1] 127.99 100.00
> 1-pchisq(127.99, 100-2)
[1] 0.02262
```
- p42. The change in the H-L statistic as described on the previous page now means the result in statistically significant. Nevertheless, we are not inclined to change the model because we have no clear idea how to improve it and the deficiency is not serious. This change in the H-L statistic due to a change in the binning demonstrates a problem in with its stability. We are not convinced of its value.
- p55. The R code to compute the Pearson chi-squared statistic is missing. It is `sum(residuals(lmod,type="pearson")^2)`
- p64. There is a single zero response value in beta regression model in this example. As explained in the help page for betar() this causes some difficulties. If this point is excluded, then the fit becomes similar to the quasibinomial as claimed in the text.
- p106 There is a missing ! in the denominator of the first equation: ${n! \over \prod_i \prod_j y_{ij}!} \prod_i \prod_j p_{ij}^{y_{ij}}$
- p170. The `robust` package has been superceded by the `robustbase` package.
- p171. The density of the Weibull is $\alpha \beta^{-\alpha} y^{\alpha-1} e^{-(y/\beta)^\alpha}$
- p188. The scale of the Gamma in the compound Poisson-Gamma distribution is $\lambda^{-1}=\phi(p-1)\mu^{p-1}$
if defined in the same sense as on p175.
- p198. In the first equation needs some added parentheses in the denominator as in: $(2\pi)^{n/2}$.
- p198. The last equation should read $K^Ty \sim N(0,\sigma^2 K^T V K)$
- p204. The behavior of `lme4` has changed since publication. Now when the MLE of a variance component approaches the boundary of the parameter space (usually zero), it prints a warning message. Since this occurs frequently in the boostrap sampling, many warning messages are produced. But these are warnings and not an errors - the results are OK.
- p215. The `refit()` function in the current (April 2016) `lme4` no longer works as expected. Replace:
```
rmodr <- refit(rmod, ryield)
```
with
```
rmodr <- lmer(ryield ~ treat + (1|blend), penicillin)
```
The replacement achieves the same intended purpose but is slightly less efficient than the original.
- p378 LHS of formula for the likelihood ratio test statistic is missing a minus
