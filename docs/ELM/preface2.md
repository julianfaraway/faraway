# Preface to Extending the Linear Model with R (2nd Edition)

<script src="https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML" type="text/javascript"></script>


Linear models are central to the practice of statistics. They are part
of the core knowledge expected of any applied statistician. Linear
models are the foundation of a broad range of statistical methodologies;
this book is a survey of techniques that grow from a linear model.
Our starting point is the regression model with response *y* and
predictors $$x_1, \ldots x_p$$. The model takes the form:

$$
  y = \beta_0 + \beta_1 x_1 + \cdots + \beta_p x_p +\epsilon
$$

where $$\epsilon$$ is normally distributed. This book presents three
extensions to this framework. The first generalizes the *y* part;
the second, the $$\epsilon$$ part; and the third, the *x* part of the linear
model.

**Generalized Linear Models (GLMs):** The standard linear model cannot
handle nonnormal  responses, *y*, such as counts or proportions. This
motivates the development of generalized linear models that can
represent categorical, binary and other response types.

**Mixed Effect Models:** Some data has a grouped, nested or
hierarchical structure. Repeated measures, longitudinal and multilevel
data consist of several observations taken on the same individual or
group. This induces a correlation structure in the error, $$\epsilon$$. Mixed
effect models allow the modeling of such data.

**Nonparametric Regression Models:** In the linear model, the
predictors, *x*, are combined in a linear way to model the effect on the
response. Sometimes this linearity is insufficient to capture the
structure of the data and more flexibility is required. Methods such
as additive models, trees and neural networks allow a more flexible
regression modeling of the response that combines the predictors in a
nonparametric manner.

This book aims to provide the reader with a well-stocked toolbox of
statistical methodologies. A practicing statistician needs to be aware
of and familiar with the basic use of a broad range of ideas and
techniques. This book will be a success if the reader is able to
recognize and get started on a wide range of problems. However, the
breadth comes at the expense of some depth. Fortunately, there are
book-length treatments of topics discussed in every chapter of this
book, so the reader will know where to go next if needed.

`R` is a free software environment for statistical computing and
graphics. It runs on a wide variety of platforms including the
Windows, Linux and Macintosh operating systems. Although there are
several excellent statistical packages, only `R` is both free and
possesses the power to perform the analyses demonstrated in this book.
While it is possible in principle to learn statistical methods from
purely theoretical expositions, I believe most readers learn best from
the demonstrated interplay of theory and practice. The data analysis
of real examples is woven into this book and all the `R` commands
necessary to reproduce the analyses are provided.

**Prerequisites:** Readers should possess some knowledge of
linear models. The first chapter provides a review of these models.
This book can be viewed as a sequel to [Linear Models with R](../LMR/)
 Even so there are plenty of other
good books on linear models such as Draper and Smith (1998) or
Weisberg (1985), that would provide ample grounding.  Some
knowledge of likelihood theory is also very useful. An outline is
provided in an Appendix, but this may be
insufficient for those who have never seen it before.  A general
knowledge of statistical theory is also expected concerning such
topics as hypothesis tests or confidence intervals. Even so, the
emphasis in this text is on application, so readers without much
statistical theory can still learn something here.

This is not a book about learning `R`, but the reader will inevitably
pick up the language by reading through the example data analyses.
Readers completely new to `R` will benefit from studying an
introductory book such as Dalgaard (2002) or one of the many
tutorials available for free at the `R` website. Even so, the book
should be intelligible to a reader without prior knowledge of `R` just
by reading the text and output.  `R` skills can be further developed by
modifying the examples in this book, trying the exercises and studying
the help pages for each command as needed.  There is a large amount of
detailed help on the commands available within the software and there
is no point in duplicating that here. Please refer to an Appendix
for details on obtaining and installing `R` along with the necessary add-on
packages and data necessary for running the examples in  this text.

**Second Edition:**
Ten years have passed since the publication of the first edition. `R` has expanded
enormously both in popularity and in the number of packages available. I have updated
the `R` content to correct for changes and to take advantage of the greater functionality
now available. I have revised or added several topics:

- One chapter on binary and binomial responses has been expanded to three. The analysis of strictly
  binary responses is sufficiently different to justify a separate treatment from the binomial response.
  Sections for proportion responses, quasi-binomial and beta regression have been added. Applied
  considerations regarding these models have been gathered into a third chapter.
- Poisson models with dispersion and zero inflated count models have new sections.
- A section on linear discriminant analysis has been added for contrast with multinomial
  response models.
- New sections on sandwich and robust estimation for GLMs have been added. Tweedie GLMs are now covered.
- The chapters on random effects and repeated measures have been substantially
  revised to reflect changes in the `lme4` package that removed many *p*-values
  from the output. We show how to do hypothesis testing for these models using other methods.
- I have added a chapter concerning the Bayesian analysis of mixed effect models. There
  are sufficient drawbacks to the analysis in the existing two chapters that
  make the Bayes approach rewarding even for non-Bayesians. We venture a little beyond
  the confines of `R` in the use of `STAN`. We also present
  the approximation method of `INLA`.
- The chapter on generalized linear mixed models has been substantially revised to reflect the much richer choice
  of fitting software now available. A Bayesian approach has also been included.
- The chapter on nonparametric regression has updated coverage on splines and
  confidence bands. In additive models, we now use the `mgcv` package exclusively
  while the multivariate adaptive regression splines (MARS) section has an easier-to-use interface.
- Random forests for regression and classification have been added to the chapter
  on trees.
- The `R` code has revamped throughout. In particular, there are many plots
  using the `ggplot2` package.
- The exercises have been revised and expanded. They are now more
  point-by-point specific rather than open-ended questions. Solutions are now available.
- The text is about one third longer than the first edition.

My thanks to many past students and readers of the first edition whose comments
and questions have helped me make many improvements to this edition.
Thanks to the builders of `R` who made all this possible.