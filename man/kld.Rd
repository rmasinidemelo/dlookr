% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/stats.R
\name{kld}
\alias{kld}
\title{Kullback-Leibler Divergence}
\usage{
kld(p, q, base = c("log", "log2", "log10"), margin = FALSE)
}
\arguments{
\item{p}{numeric. probability distributions.}

\item{q}{numeric. probability distributions.}

\item{base}{character. log bases. "log", "log2", "log10". default is "log"}

\item{margin}{logical. Choose whether to return individual values or totals. 
The default value is FALSE, which returns individual values.}
}
\value{
numeric. Kullback-Leibler divergence of probability distributions p and q.
}
\description{
Computes the Kullback-Leibler divergence between two probability distributions.
}
\examples{
# Sample data for probability distributions p.
event <- c(115, 76, 61, 39, 55, 10, 1)
no_event <- c(3, 3, 7, 10, 28, 44, 117)

p <- event / sum(event)
q <- no_event / sum(no_event)

kld(p, q)
kld(p, q, base = "log2")
kld(p, q, margin = TRUE)

}
\seealso{
\code{\link{jsd}}.
}
