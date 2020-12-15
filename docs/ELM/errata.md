# Errata for *Extending the Linear Model with R*

If you find any errors not reported below, please let me know.

## First Printing

-   p27 - clarification: the log-likelihood is given for the logit.

-   p29 - last paragraph: n-s degrees of freedom not n-l

-   p30 - first displayed equation: right curly brace missing

-   p40 - the `brlr` package has been superceded by the `brglm` package.
    Also replace the `brlr()` function call with `brglm()`

-   p41 - Nagelkerke (not Naglekerke). Nagelkerke R2 is only suitable
    for (ungrouped) binary response models. It could be redefined for
    use in the grouped case (as in the bliss example) but using
    proportion of deviance explained is a simpler choice to understand
    and explain to others. This proportion for the example is:

        > 1-modl$deviance/modl$null.deviance
        [1] 0.99415

-   p44 - missing parentheses in second displayed equation ­ should be
    (1+(k-1)tau\^2)mp(1-p)

-   p52 - Q2 dataset is `wbca` not `wbcd`

-   p55 - Definition of the Poisson distribution - should be exp(-mu) in
    the first formula, not exp(mu).

-   p57 - third displayed equation. Differentiating wrt beta_j gives\...
    \\sum (y_i - \\exp(x_i\^T \\hat\\beta)) x\_{ij} = 0 (where x_ij
    refers to the jth element of vector x_i)

-   p64 - second displayed equation: the second sum should go up to
    y\_{i} - 1 , not y\_{i-1}

-   

-   p65 - Note that the negative binomial fits use a log link.

-   p71 - second para should read: \"By examining the coefficients, we
    see that wafers *without* particles occur at a significantly higher
    rate than wafers *with* particles. Similarly, we see that
    *good*-quality wafers occur at a significantly higher rate than
    *bad*-quality wafers.\"

-   p74 - 3 lines from bottom: \"log\" should be omitted.

-   p78 - this plot make come out in a reflected form depending on the
    computer you are using due to the indeterminacy of the directions of
    the singular vectors. The interpretation is not affected.

-   p88 - 2 lines from bottom: \"can be extracted\"

-   p85 - \"\...age is jointly independent *of* smoking \...\"

-   p86 - line 6, should be \"\... all three two-way interactions\".

-   p86 - mid-page. The odds-ratio is 1.5333, not the log odds-ratio.

-   p94 - Q10 dataset is `UCBAdmissions` not `UCBadmissions`

-   p102 - bottom \"\...can be viewed as a GLM-type\...\"

-   p112 - 3 lines from top: Unfortunately, the hazards are not
    proportional. An analogy to the second equation on p108 can be made,
    but then it would be log(1-gamma) that is proportional which is not
    the hazard in this case. The name of proportional hazards arises
    because the model is defined by analogy with a continuous response
    proportional hazards as commonly used in survival analysis, where
    the proportionality does indeed hold.

-   p115 - \"\...we are able to tackle\...\"

-   p121 - Subscript i\'s are missing in Table 6.2 for the Gamma and
    Inverse Gaussian distribution.

-   p124 - Spelling is jackknife not jacknife (and elsewhere)

-   p125 - First formula, the square root applies to the remainder of
    the term.

-   p141 - line 10, The SD for lognormal is incorrectly set. It should
    be `sdlog=sqrt(0.61102)`

-   p146 - `gmod <- glm(d ~ Method+Preheating..` should be
    `gmod <- glm(d ~ Material+Preheating..`

-   p156 - \"\...standard errors can be obtained\...\"

-   p156 - End of second paragraph should read: \"The idea is to find
    all independent linear combinations of the response, \$k\$, such
    that \$k\^T X = 0\$. Form matrix \$K\$ with columns \$k\$ then
    \$K\^T y \....\"

-   p156 and following: The `lme4` package (and the underlying `Matrix`
    package) has been changing since the preparation of the book. Some
    differences may be observed between the current version and that
    used in the book. In particular, recent versions of `summary()` and
    `anova()` of `lmer()`-produced models now do not contain p-values.
    Please [read about changes](mixchange.pdf) to these two chapters to
    address this as well as some discussion of other inferential methods
    that could be used.

-   p158 - \"\...this is a real concern\...\"

-   p161 - last but one displayed equation should have an alpha~i~
    rather than an a~i~

-   p180 - last para, Scheffé not Scheffeé

-   p181 - Q4a degrees of freedom are no longer output so question is
    not meaningful.

-   p186 - To produce a corrected version of Figure 9.2, use:

        xyplot(log(income+100) ~ year | sex, psid, type="l", groups=person)

-   p190 - second para, the standard deviations for the intercept and
    slope are 0.531 and 0.049. The residual SD is 0.684 not 0.46.
    (Numbers given are actually the variances)

-   p198 - first line 6.3% not 6.5% (twice)

-   p198 - line 4, 0.0179 should be 0.0174 (twice)

-   p198 One cannot see that the math scores are less variable than the
    english scores using the printed output. This effect is, however,
    visible in Figure 9.9.

-   p205 second para - \"\...the estimates for the GEE are about half
    the size..\"

-   p212 (and following) - the variable name `duration` in the
    `faithful` dataset has changed to `eruptions`. It still represents
    the duration of the eruption.

-   p215 - completely. (missing .)

-   p223 - should be \"They are also orthonormal,..\"

-   p223 - The `wavethresh` package has been extensively updated. Some
    changes are necessary to achieve the same output

-   p224 - The plots are now obtained by:

        wds <- wd(exa$y,filter.number=1,bc="interval")
        draw(filter.number=1,family="DaubExPhase")

-   p225 - last block of code should now be:

        wds <- wd(exa$y,filter.number=2,bc="interval")
        draw(filter.number=2,family="DaubExPhase")
        plot(wds)

-   p231 - line 13, should be \"variables\"

-   p235 `summary(ammgcv)` is missing (needed to get output seen)

-   p248-249 Using `> summary(lm(ozone[,1] ~ a$x[,-1])) ` for the three
    regression summaries gives the correct R^2^. These are more in line
    with previous models. The printed version is incorrect because these
    are calculated by R assuming there is no intercept when in fact this
    is already included in the X-matrix. The newly available R package,
    `earth`, provides a much better interface to mars

-   p250 - line 6, use `predict` not `predict.mars`

-   p254 - line 12, ordered factor (not factors)

-   p255 - better to say \"from 21,115 to 4114+5478 = 9592\" for
    accuracy

-   p259 - Should use `plotcp(roze)` for consistency with output on p258

-   p259 - `post(roz,digits=3,filename="")` is better since it ensures
    that the display uses 3 significant digits for the node means.

-   p261 - The entropy definition should not contain the 2.

-   p261 - Rijksmuseum van Natuurlijke *Historie*

-   p265 - Last para, should be `xerror` not `rel error`

-   p282 - First displayed equation. LRT is minus the value given.

-   p287 - the `brlr` package has been superceded by the `brglm`
    package.

-   p293 - Nagelkerke (not Naglekerke)

-   p294 - Scheffé not Scheffeé

## Second printing

-   p26 - Just below 2.2 section heading, replace n~i~ with n
-   p56 - In the Galapagos data, the species are of plants not tortoises
-   p191 - line 5, should read \"\...used a fixed effect, putting `eye`
    in place of\...\"
-   p220 - below figure - \"adaptively\" not adaptive
-   p233 - midpage, should read \"..using a Gaussian..\"
-   p116 - second two equations are missing a closing parenthesis

------------------------------------------------------------------------
