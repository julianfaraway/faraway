% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/faraway-package.R
\docType{data}
\name{eggs}
\alias{eggs}
\title{Nested data on lab testing of eggs}
\format{
A data frame with 48 observations on the following 4 variables.
\describe{ \item{Fat}{a numeric vector} \item{Lab}{a factor
with levels \code{I} \code{II} \code{III} \code{IV} \code{V} \code{VI}}
\item{Technician}{a factor with levels \code{one} \code{two}}
\item{Sample}{a factor with levels \code{G} \code{H}} }
}
\source{
Bliss, C. I. (1967). Statistics in Biology. New York: McGraw Hill.
}
\description{
Consistency between laboratory tests is important and yet the results may
depend on who did the test and where the test was performed. In an
experiment to test levels of consistency, a large jar of dried egg powder
was divided up into a number of samples. Because the powder was homogenized,
the fat content of the samples is the same, but this fact is withheld from
the laboratories. Four samples were sent to each of six laboratories.  Two
of the samples were labeled as G and two as H, although in fact they were
identical.  The laboratories were instructed to give two samples to two
different technicians. The technicians were then instructed to divide their
samples into two parts and measure the fat content of each.  So each
laboratory reported eight measures, each technician four measures, that is,
two replicated measures on each of two samples.
}
\examples{

data(eggs)
## maybe str(eggs) ; plot(eggs) ...

}
\keyword{datasets}
