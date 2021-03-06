% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/jlst.R
\name{vartest}
\alias{vartest}
\title{vartest}
\usage{
vartest(y, x, covar = NULL, covar.var = FALSE, type = 1)
}
\arguments{
\item{y}{vector of outcome values.}

\item{x}{vector of exposure values.}

\item{covar}{a data.frame of covariates.}

\item{covar.var}{adjust the second stage (variance component) of the approach by the covariates.}

\item{type}{type of test (default: 1 [Breusch-Pagan variance test]; options: 1 [Breusch-Pagan variance test], 2 [Brown-Forsythe variance test]).}
}
\value{
a list of results. F is the test statistic, DF is the degrees of freedom and P is the p-value. The model coefficients from variance part of the model are given in the coef object.
}
\description{
vartest performs variability tests by either the Breusch-Pagan or Brown-Forsythe methods.
}
\examples{
x <- rbinom(1000, 1, 0.5)
y <- 0.5 + rnorm(1000, 0.025, 0.025)*x + rnorm(1000, 0, 0.1)
vartest(y, x, type=2)
}
\author{
James R Staley <jrstaley95@gmail.com>
}
