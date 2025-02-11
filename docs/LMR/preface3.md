# Preface for Linear Models with R, 3rd Edition

This is a book about linear models in Statistics. A linear model describes a continuous
response in terms of a linear combination of predictors. You can use a linear model
to make predictions or explain the relationship between the response and the predictors.
Linear models are very flexible and widely used in applications in physical
science, engineering, social science and business. Linear models are part of the core
of Statistics, and understanding them well is crucial to a broader competence in the
practice of statistics.

This is not an introductory textbook. You will need some basic prior knowledge of
statistics as might be obtained in one or two courses at the university level. You
will need to be familiar with essential ideas such as hypothesis testing, confidence
intervals, likelihood and parameter estimation. You will also need to be competent in
the mathematical methods of calculus and linear algebra. This is not a particularly
theoretical book as I have preferred intuition over rigorous proof. Nevertheless,
successful statistics requires an appreciation of the principles, and it is my hope
that the reader will absorb these through the many examples I present.

This book is written in three languages: English, Mathematics and
R. My motivation in writing the first edition of this text was to
combine these three seamlessly to allow coherent exposition of the
practice of linear modeling. This was uncommon in the past, but 
this has become popular in the now large number of statistics books
that integrate R. Clearly it is a method that works, but it does
require the reader to become somewhat fluent in R. This is not a book
about learning R but like any foreign language, one becomes
proficient by practicing it rather than by memorizing the
dictionary. The reader is advised to look elsewhere for a basic
introduction to R but should not hesitate to dive into this book and
pick it up as you go. I shall try to help. See the appendix to get
started.

The book website can be found at:

<https://julianfaraway.github.io/faraway/LMR/>


The first edition of this text appeared in 2004 with the second
edition coming out in 2014. During the first ten years the world of R 
expanded enormously. I added several new topics and reorganized
the presentation. Now another ten years have passed and it is
time for another revision.

I am conscious of the many teachers who use this textbook
  as a supplement to their course. I have resisted making substantial
  changes to the order and content to avoid disrupting these users
  of my text. My intention has been to add depth and additional
  content (which can be skipped if desired).
  
Several new topics have been added:

- A new sampling chapter has been created from content
    in the previous inference chapter. This now also contains
    an introduction to simulation. The chapter could be regarded
    as optional in that future material does not depend on it much.
    
- Model assessment has been added to the prediction chapter.

- I have expanded the explanation chapter with more discussion
    on causation. Such a weighty topic cannot be covered in a single
    book chapter but I have aimed to introduce some of the basic ideas in
    the field.
    
- The transformation chapter now has more about interpretation
    with transforms while the model selection chapter now includes
    crossvalidation.
    
- I have renamed some chapters. In particular, I have replaced
    shrinkage with regularization which is the more common term now. This
    chapter now includes a section on the elastic net.
    
- The closing chapters now have more material on multiple
    comparison and marginal means. I have added sections on
    design and power.

I have substantially revised the exercises. These are now more
  structured in form. Solutions are now available to qualified instructors.

It is a testament to the stability of the R and the wisdom of R core
  team that the vast majority of the second edition R code still runs
  perfectly. Changes are more likely to occur in the contributed
  packages. There are many thousands of R packages available on CRAN
  and elsewhere. Some of these are excellent and useful for linear
  modeling, but I have avoided their use where base R could do the
  job. I have used some longer established R packages where necessary
  but mostly confined their use to a single chapter. It is my hope that this
  edition will last another ten years without significant breakage.

Many recent modelling textbooks have used [tidyverse](https://www.tidyverse.org/)
  extensively, but I have chosen not to do this.  Tidyverse packages
  are surely useful for data science, specifically the manipulation of
  data. While this manipulation is an essential skill, the data for
  this text comes ready to use.  A skilled R user needs a good
  understanding of base R and this is sufficient for this
  text. Although the [ggplot2](https://ggplot2.tidyverse.org/) graphical package is formally
  part of the tidyverse, it is older and has its own distinct
  syntax. I have used this package throughout the book.

My thanks go to many past students and readers of the first and second
editions whose comments and questions have helped me make many
improvements to this edition.  Thanks to the builders of R
 who made all this possible.



