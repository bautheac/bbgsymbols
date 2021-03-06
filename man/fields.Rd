% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.r
\docType{data}
\name{fields}
\alias{fields}
\title{Field symbols for Bloomberg financial data}
\format{
A \linkS4class{data.table}. Columns include:
\itemize{
  \item{\code{instrument}: underlying financial instrument type (futures, equity, fund, etc.).}
  \item{\code{book}: data book.}
  \item{\code{type:subsection}: data classification elements.}
  \item{\code{name}: field name.}
  \item{\code{symbol}: corresponding Bloomberg data field symbol.}
}
}
\source{
Bloomberg
}
\usage{
fields
}
\description{
Helper dataset for working with Bloomberg in R.
  Provides field symbols for various security type-data type combinations
}
\seealso{
\itemize{
    \item{Data field search monitor on a Bloomberg terminal.}
    \item{The \href{https://bautheac.github.io/finRes/}{\pkg{finRes}} suite, in particular the
    href{https://github.com/bautheac/pullit/}{\pkg{pullit}} and
    \href{https://github.com/bautheac/storethat/}{\pkg{storethat}} packages.}
  }
}
\keyword{datasets}
