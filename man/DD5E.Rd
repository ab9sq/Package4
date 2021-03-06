% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dice.R
\name{DD5E}
\alias{DD5E}
\title{D&D 5E Character Charistic Generator}
\usage{
DD5E()
}
\value{
a random interger with a value between 3 and 18 inclusive. (non-uniform)
}
\description{
\code{DD5E} returns a random interger between 3 and 18, simulating the sum
of rolling four six sided dice, with the lowest result being ignored.
}
\details{
\code{DD5E} utilizes the \link{dice} function to simulate the dice rolls,
this function returns an interger between 1 and 6.
}
\examples{
DD5E()

}
