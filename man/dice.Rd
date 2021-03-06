% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dice.R
\name{dice}
\alias{dice}
\title{Dice Roll}
\usage{
dice(sides = 6)
}
\arguments{
\item{sides}{The number of sides on the dice to roll. Traditionally the values
are 4, 6 \strong{default}, 8, 12, 20, and 100, with six being the most common.
The value should be an interger of value greater than or equal to 2.}
}
\value{
A random interger with a value between 1 and N inclusive.
}
\description{
\code{dice} returns a random interger with values between 1 and N, simulating
a roll of a single fair N sided die.
}
\examples{
dice()
dice(sides = 6)
dice(sides = 25)

}
