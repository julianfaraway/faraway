## Faraway package functions
#' @import methods
NULL
#' @importFrom lme4 getME isREML refitML VarCorr
NULL
#' 
#' @importFrom nlme fixef ranef
NULL
#' 
#' @importFrom graphics abline points text
NULL
#' 
#' @importFrom stats AIC coef deviance lm logLik model.matrix pnorm printCoefmat qnorm vcov
NULL
#' Maximum Adjusted R-squared
#' 
#' Displays the best models from a leaps object
#' 
#' Requires leaps package
#' 
#' @name maxadjr
#' @param l A leaps object returned from leaps()
#' @param best An optional argument specify the number of models to be returned
#' taking the default value of 3
#' @return A list of the best models
#' @author Julian Faraway
#' @seealso leaps()
#' @keywords regression
#' @export maxadjr
"maxadjr" <-
  function (l,best=3)
# Display the best (3) models from a leaps() object
{
  i <- rev(order(l$a))
  nopreds <- max(l$size)-1
  labels <- apply(l$which,1,function(x) paste(as.character((1:nopreds)[x]),collapse=","))
  m <- round(l$a[i[1:best]],3)
  names(m) <- labels[i[1:best]]
#  m <- cbind(round(l$a[i[1:best]],3),labels[i[1:best]])
#  dimnames(m) <- list(NULL,c("Adj R^2","Model"))
  m
}
#' Labeled QQ plot
#' 
#' Makes a labeled QQ plot
#' 
#' @name qqnorml
#' @param y A numeric vector
#' @param main main label
#' @param xlab x-axis label
#' @param ylab y-axis label
#' @param ... arguments passed to plot()
#' @return none
#' @author Julian Faraway
#' @seealso qqnorm
#' @examples
#' 
#' qqnorml(rnorm(16))
#' 
#' @export qqnorml
"qqnorml" <-
  function(y,main = "Normal Q-Q Plot", xlab = "Theoretical Quantiles",
    ylab = "Sample Quantiles",...)
# labeled Q-Q plot
  {
    n <- length(y)
    u <- qnorm((1:n)/(n+1))
    i <- order(y)
    plot(u,y[i],xlab=xlab,ylab=ylab,main=main,type="n")
    text(u,y[i],as.character(1:n)[i])
  }
#' Cp plot
#' 
#' Makes a Cp plot
#' 
#' Requires leaps package
#' 
#' @name Cpplot
#' @param cp A leaps object returned from leaps()
#' @return none
#' @author Julian Faraway
#' @seealso leaps()
#' @keywords regression
#' @export Cpplot
"Cpplot" <-
  function (cp)
# Construct a Cp plot
{
  p <- max(cp$size)
  i <- (cp$Cp < (p+1.5))
  plot(cp$size[i],cp$Cp[i],xlab="p",ylab="Cp",type="n")
  labels <- apply(cp$which,1,function(x) paste(as.character((1:(p-1))[x]),collapse=""))
  text(cp$size[i],cp$Cp[i],labels[i])
  abline(0,1)
}








#' vif
#' 
#' Computes the variance inflation factors
#' 
#' @title vif
#' @aliases vif vif.default vif.lm
#' @param object a data matrix (design matrix without intercept) or a model
#' object
#' @return variance inflation factors
#' @author Julian Faraway
#' @examples
#' 
#' data(stackloss)
#' vif(stackloss[,-4])
#' #  Air.Flow Water.Temp Acid.Conc. 
#' #    2.9065     2.5726     1.3336 
#' 
#' @export 
vif <- function(object){
  UseMethod("vif")
}
#' @rdname vif
#' @method vif default
#' @export 
vif.default <- function(object) {
  if(!is.data.frame(object) & !is.matrix(object)) stop("Not matrix or data frame")
  if(is.data.frame(object)) object <- as.matrix(object)
  ncols <- dim(object)[2]
  v <- numeric(ncols)
  names(v) <- dimnames(object)[[2]]
  for(i in 1:ncols) v[i] <- 1/(1-summary(lm(object[,i]~object[,-i]))$r.squared)
  v
}
#' @rdname vif
#' @method vif lm
#' @export 
vif.lm <- function(object) {
  if (any(is.na(coef(object)))) 
    stop("Model has non-identifable parameters")
  V <- summary(object)$cov.unscaled
  Vi <- crossprod(model.matrix(object))
        nam <- names(coef(object))
  if(k <- match("(Intercept)", nam, nomatch = FALSE)) {
                v1 <- diag(V)[-k]
                v2 <- (diag(Vi)[-k] - Vi[k, -k]^2/Vi[k,k])
                nam <- nam[-k]
        } else {
                v1 <- diag(V)
                v2 <- diag(Vi)
                warning("No intercept term detected.  Results may surprise.")
        }
        structure(v1*v2, names = nam)
}







#' Partial Residual Plot
#' 
#' Makes a Partial Residual plot
#' 
#' @name prplot
#' @param g An object returned from lm()
#' @param i index of predictor
#' @return none
#' @author Julian Faraway
#' @keywords regression
#' @examples
#' 
#' data(stackloss)
#' g <- lm(stack.loss ~ .,stackloss)
#' prplot(g,1)
#' 
#' @export prplot
prplot <- function(g,i)
{
# Partial residuals plot for predictor i
  xl <- attributes(g$terms)$term.labels[i]
  yl <- paste("beta*",xl,"+res",sep="")
  x <- model.matrix(g)[,i+1]
  plot(x,g$coeff[i+1]*x+g$res,xlab=xl,ylab=yl)
  abline(0,g$coeff[i+1])
  invisible()
}








#' Half Normal Plot
#' 
#' Makes a half-normal plot
#' 
#' 
#' @param x a numeric vector
#' @param nlab number of points to label
#' @param labs labels for points
#' @param ylab label for Y-axis
#' @param ... arguments passed to plot()
#' @return none
#' @author Julian Faraway
#' @seealso qqnorm
#' @examples
#' 
#' halfnorm(runif(10))
#' 
#' @export halfnorm
"halfnorm" <-
function (x, nlab = 2, labs = as.character(1:length(x)), ylab = "Sorted Data",
            ...)
{
  x <- abs(x)
  labord <- order(x)
  x <- sort(x)
  i <- order(x)
  n <- length(x)
  ui <- qnorm((n + 1:n)/(2 * n + 1))
  plot(ui, x[i], xlab = "Half-normal quantiles", ylab = ylab, ylim=c(0,max(x)),
       type = "n", ...)
  if(nlab < n)
    points(ui[1:(n - nlab)], x[i][1:(n - nlab)])
  text(ui[(n - nlab + 1):n], x[i][(n - nlab + 1):n], labs[labord][(n -
                                                              nlab + 1):n])
}
# logit and inverse logit








#' Logit transformation
#' 
#' Computes the logit transformation
#' 
#' x <=0 or >=1 will return NA
#' 
#' @param x a numeric vector
#' @return log(x/(1-x))
#' @author Julian Faraway
#' @seealso ilogit
#' @examples
#' logit(c(0.1,0.5,1.0,1.1))
#' #[1] -2.197225  0.000000        NA        NA
#' 
#' @export logit
logit <- function(x){
  if(any(omit <- (is.na(x) | x <=0 | x >= 1))){
    lv <- x
    lv[omit] <- NA
    if(any(!omit))
      lv[!omit] <- Recall(x[!omit])
    return(lv)
  }
  log(x/(1-x))
}








#' Inverse Logit Transformation
#' 
#' Computes the inverse logit transformation
#' 
#' 
#' @param x a numeric vector
#' @return exp(x)/(1+exp(x))
#' @author Julian Faraway
#' @seealso logit
#' @examples
#' 
#' ilogit(1:3)
#' #[1] 0.7310586 0.8807971 0.9525741
#' 
#' @export ilogit
ilogit <- function(x){
  if(any(omit <- is.na(x))){
    lv <- x
    lv[omit] <- NA
    if(any(!omit))
      lv[!omit] <- Recall(x[!omit])
    return(lv)
  }
  exp(x)/(1 + exp(x))
}



#' Abbreviated Regression Summary
#' 
#' Generic summaries for lm, glm and mer objects
#' 
#' This generic function provides an abbreviated regression output containing
#' the more useful information. Users wanting to see more are advised to use
#' \code{summary()}
#' 
#' @name sumary
#' @docType methods
#' @aliases sumary sumary,lm-method sumary,glm-method sumary,merMod-method
#' @param object An lm, glm or mer object returned from lm(), glm() or lmer()
#' respectively
#' @param ... further arguments passed to or from other methods.
#' @return returns the same as \code{summary()}
#' @author Julian Faraway
#' @seealso \code{\link[base]{summary}}, \code{\link[stats]{lm}},
#' \code{\link[stats]{glm}}, \code{\link[lme4]{lmer}}
#' @references This function is adapted from the \code{display()} function in
#' the \code{arm} package
#' @keywords regression
#' @examples
#' 
#' data(stackloss)
#' object <- lm(stack.loss ~ .,stackloss)
#' sumary(object)
#' 
#' @exportMethod  sumary
if (!isGeneric("sumary")) {
    setGeneric("sumary",
               function(object, ...)
               standardGeneric("sumary"))
}

#'
#' @docType methods
#' @rdname sumary-methods
#' @export
setMethod("sumary", signature(object = "lm"),
    function(object)
    {
  digits <- options()$digits
  summ <- summary (object)
  sigma.hat <- summ$sigma
  r.squared <- summ$r.squared
  coef <- summ$coef[,,drop=FALSE]
  n <- summ$df[1] + summ$df[2]
  p <- summ$df[1]
  if (nsingular <- summ$df[3] - summ$df[1]) cat("\nCoefficients: (", nsingular, " not defined because of singularities)\n", sep = "")
  printCoefmat(coef,signif.stars=FALSE)
  cat("\n")
  cat (paste ("n = ", n, ", p = ", p,
    ", Residual SE = ", format(round(sigma.hat, digits-2),nsmall=digits-2),
    ", R-Squared = ", format(round(r.squared, 2)), "\n", sep=""))
  invisible(summ)
    }
)

#' @docType methods
#' @rdname sumary-methods
#' @export
setMethod("sumary", signature(object = "glm"),
    function(object, dispersion=NULL)
    {
        digits <- options()$digits
        summ <- summary(object, dispersion = dispersion)
        n <- summ$df[1] + summ$df[2]
        p <- summ$df[1]
        coef <- summ$coef[,,drop=FALSE]
        printCoefmat(coef,signif.stars=FALSE)
        cat("\n")
        if (summ$dispersion != 1) {
            cat(paste0("Dispersion parameter = ", fround(summ$dispersion,digits-2),"\n"))
        }
        cat(paste0("n = ", n, " p = ", p,"\n"))
        cat(paste0("Deviance = ",fround(summ$deviance,digits-2),
                   " Null Deviance = ", fround(summ$null.deviance,digits-2),
                   " (Difference = ", fround(summ$null.deviance-summ$deviance,digits-2), ")"),"\n")
    return(invisible(summ))
  }
)

#' @docType methods
#' @rdname sumary-methods
#' @export
setMethod("sumary", signature(object = "merMod"),
    function(object, digits=2, detail=FALSE)
    {
    out <- NULL
    out$call <- object@call
    fcoef <- fixef(object)
    useScale <- getME(object, "devcomp")$dims["useSc"]
    corF <- vcov(object)@factors$correlation
    coefs <- cbind(fcoef, corF@sd)
    if (length (fcoef) > 0){
      if (!useScale) {
        coefs <- coefs[, 1:2, drop = FALSE]
        out$z.value <- coefs[, 1]/coefs[, 2]
        out$p.value <- 2 * pnorm(abs(out$z.value), lower.tail = FALSE)
        coefs <- cbind(coefs, `z value` = out$z.value, `Pr(>|z|)` = out$p.value)
      }
      else {
        out$t.value <- coefs[, 1]/coefs[, 2]
        coefs <- cbind(coefs, `t value` = out$t.value)
      }
    dimnames(coefs)[[2]][1:2] <- c("coef.est", "coef.se")
      cat("Fixed Effects:\n")
      if(detail){
        pfround (coefs, digits)
      }
      else{
        pfround(coefs[,1:2], digits)
      }
    }
    out$coef <- coefs[,"coef.est"]
    out$se <- coefs[,"coef.se"]
    cat("\nRandom Effects:\n")
    vc <- as.matrix.VarCorr (VarCorr (object), useScale=useScale, digits)
    print (vc[,c(1:2,4:ncol(vc))], quote=FALSE)
    out$ngrps <- lapply(object@flist, function(x) length(levels(x)))
    is_REML <- isREML(object)
    llik <- logLik(object, REML=is_REML)
    out$AIC <- AIC(llik)
    out$deviance <- deviance(refitML(object))     # Dbar
    out$n <- getME(object, "devcomp")$dims["n"]
    Dhat <- -2*(llik) # Dhat
    pD <- out$deviance - Dhat              # pD
    out$DIC <- out$deviance + pD               # DIC=Dbar+pD=Dhat+2pD
    cat("---\n")
    cat(sprintf("number of obs: %d, groups: ", out$n))
    cat(paste(paste(names(out$ngrps), out$ngrps, sep = ", "), collapse = "; "))
    cat(sprintf("\nAIC = %g, DIC = ", round(out$AIC,1)))
    cat(round(out$DIC, 1))
    cat("\ndeviance =", fround (out$deviance, 1), "\n")
    if (useScale < 0){
      out$sigma.hat <- .Call("mer_sigma", object, FALSE, PACKAGE = "lme4")
      cat("overdispersion parameter =", fround (out$sigma.hat, 1), "\n")
    }
    return(invisible(out))
    }
)










#' Formating the Rounding of Numbers
#' 
#' \code{fround} rounds the values in its first argument to the specified
#' number of decimal places with surrounding quotes.
#' 
#' \code{pfround} rounds the values in its first argument to the specified
#' number of decimal places without surrounding quotes.
#' 
#' 
#' @aliases fround pfround
#' @param x a numeric vector.
#' @param digits integer indicating the precision to be used.
#' @author Andrew Gelman; Yu-Sung Su
#' @seealso \code{\link{round}}
#' @references Copied from the \code{arm} package
#' @keywords manip print
#' @examples
#' 
#'     x <- 3.1415926
#'     fround(x, digits=2)
#'     pfround(x, digits=2)
#' 
#' @export fround
fround <- function (x, digits) {
    format (round (x, digits), nsmall=digits)
}
#' @export pfround
pfround <- function (x, digits) {
    print (fround (x, digits), quote=FALSE)
}


# Taken from arm package

as.matrix.VarCorr <- function (varc, useScale, digits){
# VarCorr function for lmer objects, altered as follows:
#   1.  specify rounding
#   2.  print statement at end is removed
#   3.  reMat is returned
#   4.  last line kept in reMat even when there's no error term
                  sc <- attr(varc, "sc")[[1]]
                  if(is.na(sc)) sc <- 1
#                  recorr <- lapply(varc, function(el) el@factors$correlation)
                  recorr <- lapply(varc, function(el) attr(el, "correlation"))
                  #reStdDev <- c(lapply(recorr, slot, "sd"), list(Residual = sc))
                  reStdDev <- c(lapply(varc, function(el) attr(el, "stddev")), list(Residual = sc))
                  reLens <- unlist(c(lapply(reStdDev, length)))
                  reMat <- array('', c(sum(reLens), 4),
                                 list(rep('', sum(reLens)),
                                      c("Groups", "Name", "Variance", "Std.Dev.")))
                  reMat[1+cumsum(reLens)-reLens, 1] <- names(reLens)
                  reMat[,2] <- c(unlist(lapply(reStdDev, names)), "")
#                  reMat[,3] <- format(unlist(reStdDev)^2, digits = digits)
#                  reMat[,4] <- format(unlist(reStdDev), digits = digits)
                  reMat[,3] <- fround(unlist(reStdDev)^2, digits)
                  reMat[,4] <- fround(unlist(reStdDev), digits)
                  if (any(reLens > 1)) {
                      maxlen <- max(reLens)
                      corr <-
                          do.call("rbind",
                                  lapply(recorr,
                                         function(x, maxlen) {
                                             x <- as(x, "matrix")
#                                             cc <- format(round(x, 3), nsmall = 3)
                                             cc <- fround (x, digits)
                                             cc[!lower.tri(cc)] <- ""
                                             nr <- dim(cc)[1]
                                             if (nr >= maxlen) return(cc)
                                             cbind(cc, matrix("", nr, maxlen-nr))
                                         }, maxlen))
                      colnames(corr) <- c("Corr", rep("", maxlen - 1))
                      reMat <- cbind(reMat, rbind(corr, rep("", ncol(corr))))
                  }
#                  if (!useScale) reMat <- reMat[-nrow(reMat),]
          if (useScale<0) reMat[nrow(reMat),] <- c ("No residual sd", rep("",ncol(reMat)-1))
          return (reMat)
      }
