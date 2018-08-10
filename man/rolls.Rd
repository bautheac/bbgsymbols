% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.r
\docType{data}
\name{rolls}
\alias{rolls}
\title{Roll symbols for Bloomberg futures term structure ticker construction}
\format{A tibble with 11 rows and 3 variables:
\itemize{
  \item{\code{roll}: divides variables between roll type ('type') and roll adjustment (adjustment) variables.}
  \item{\code{symbol}: roll type or adjustment symbol.}
  \item{\code{name}: corresponding roll type or adjustment name.}
}}
\source{
Bloomberg
}
\usage{
rolls
}
\description{
Helper dataset for Bloomberg futures term structure ticker construction.
  Provides roll type and roll adjustment symbols to use along days and months offsets in constructing Bloomberg futures term structure tickers.
}
\details{
These symbols are for use in constructing Bloomberg futures term structure tickers.
}
\seealso{
\itemize{
  \item{function \code{\link[pullit]{futures_ticker}} in package \code{pullit}.}
  \item{Hit 'DOCS #2072138 <GO>' on a Bloomberg terminal to learn more about the Bloomberg rolling conventions.}
}
}
\keyword{datasets}