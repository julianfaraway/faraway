# Errata for Linear Models with R, 2nd Edition

<script src="https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML" type="text/javascript"></script>


Errata are corrected as found and incorporated into newly printed copies of the book. This
means that not all the errata listed below exist in your copy of the book. If you see any
errors not listed below, please let me know.

- throughout: A change to the `ggplot2` package means that `xint` and `yint` are no longer accepted abbreviations. These
are now replaced with `xintercept` and `yintercept`.

- p6. The response for the boxplots is diabetes function not diastolic as stated in the figure caption.
- p21. l4 The Z should be an X
- p21. (first displayed equation) There is a missing beta near the end. It should read:
$$
  RSS = \|Q^T y - Q^T X \beta \|^2 = \left\|
    \left(
      \begin{array}{c}
        f \\
        r
      \end{array}
      \right)
      - \left(
    \begin{array}{c}
       R \\
     \mathbf{0}
    \end{array}
    \right)
    \beta
    \right\|^2
$$
- p24. Figure 2.2 caption: The solid arrowed line is unknown x variation. The dotted line is the known x variation. 
- p43. Displayed equation. Subscript i missing from second beta.
- p46. line 4 "univariate tests would *fail to* reject"
- p54. R code for plot of airline data should have ylab="Passengers". It is not logged.
- p76. R code for nonlinear residual plot example is better with `cos(2*x*pi)`. Also `sd=1` is the default so not needed.
- p93. Figure 6.12. Annotation of contours on the Cook plot has been truncated - should be 0.5, not zero
- p103. Simex method uses SD not variance. Should read `simex(lmod,"speed",sqrt(0.5), B=1000)` which gives an estimate of 3.99
- p105. Change to `ggplot2` means that `p+coord_flip()+xlab("Predictor")+geom_vline(xintercept=0,col=gray(0.75))` is now needed.
- p116. Weighted Least Squares, third point: weights should be inversely proportional to the variance of the response, not the SD.
- p136. Sentence should read: The Box–Cox method is not the only way of transforming the *response*.
- p150. Line 1, *structured* is misspelled.
- p154. Last line *minimum* is misspelled
- p152. The first model output on the page is the same as the one on the previous page and does not correspond to the model with Area removed.
- p160. Q5. `stack.loss` is the response
- p161. List items 1-2 should read var(Xu<sub>1</sub>) and var(Xu<sub>2</sub>).
- p162. z<sub>i</sub> = Xu<sub>i</sub>
- p168. In the caption of the figure, the second PC is the dashed line and the third PC is the dotted line.
- p176. Figure 11.10 - hat on the beta of the y-axis label has been cut off.
- p177. LASSO is an acronym. It stands for “Least Angle Shrinkage and Selection Operator”.
- p192. Figure 12.7. Annotation of contours on the Cook plot has been truncated - should be 0.5, not zero
- p204. The `galamiss` dataset is missing from the package. Here is the [rda data file](galamiss.rda) which you can load into R using `load("galamiss.rda")`
- p210. The intercepts for the lines do not correspond to the model output above. Should be:
```
> abline(3.696, 0.764)
> abline(3.696+6.861, 0.764-0.314,lty=2)
```
- p229. Displayed equation should have a square root on (1/J<sub>i</sub> + 1/J<sub>j</sub>)
- p252. $\beta_j$ is the blocking effect (line below displayed equation)
