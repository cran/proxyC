% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{colZeros}
\alias{colZeros}
\alias{rowZeros}
\title{Number of zeros in columns and rows of large matrices}
\usage{
colZeros(x)

rowZeros(x)
}
\arguments{
\item{x}{a \link[base:matrix]{base::matrix} or \link[Matrix:Matrix]{Matrix::Matrix} object.}
}
\description{
Produces the same result as applying \code{sum(x == 0)} to each row or column.
}
\examples{
mt <- Matrix::rsparsematrix(100, 100, 0.01)
colZeros(mt)
apply(mt, 2, function(x) sum(x == 0)) # the same
}
