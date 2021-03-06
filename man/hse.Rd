% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/herd_se.R
\name{hse}
\alias{hse}
\title{hse}
\usage{
hse(id, n_tested, N, test_Se, dp, threshold = 0.1, force = FALSE)
}
\arguments{
\item{id}{The herdid}

\item{n_tested}{The number tested in each URG}

\item{N}{The number of units in each of the URG}

\item{test_Se}{The sensitivity of the test (length = 1). If you
have reason to believe that the test sensitivity is different
for different URG. Then supply a vector of Sensitivities. This
could conceivably be because of using different tests for
different samples from different URG.}

\item{dp}{The is a vector (length 1) of the the design prevalance
(df) in the case where there is only one unit risk group (URG)
in the herd. Or a vector (length n) of EPIn for each of the
URG in the herd.}

\item{force}{If force = FALSE (default) then the function errors
if n>N. If force = TRUE then this is allowed and uses the
hse_infinite to calculate HSe.}

\item{threshhold}{The breakpoint above which the finite population
size calculation will be used. The default is 0.1 which means
that if > 10% of animals are tested in a herd the finite
popualation will be assumed; less than or equal to 10%, the
infinite population will be assumed.}
}
\value{
A vector (length 1)
}
\description{
Herd Sensitivity
}
\details{
Calculate the Herd sensitivity when multiple samples from
individual units within the herd. The function uses the assumption
of finite population when greater than 10% of units are tested and
otherwise the assumption of infinite population.
}
\author{
Thomas Rosendal
}
