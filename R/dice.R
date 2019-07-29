#' Dice Roll
#'
#' \code{dice} returns a random interger with values between 1 and N, simulating
#' a roll of a single fair N sided die.
#'
#' @param sides The number of sides on the dice to roll. Traditionally the values
#' are 4, 6 \strong{default}, 8, 12, 20, and 100, with six being the most common.
#' The value should be an interger of value greater than or equal to 2.
#'
#'
#' @return A random interger with a value between 1 and N inclusive.
#'
#' @examples
#' dice()
#' dice(sides = 6)
#' dice(sides = 25)
#'
#' @export
dice <- function(sides = 6) {
     # error checks
     if (is.null(sides)){
          stop("Value must be a number greater than or equal to 2")
     }
     if ( ( (sides < 2)) | (is.na(sides))) {
          stop("Dice must have 2 or more sides")
     }
     if (!is.numeric(sides)){
          stop("Value must be a number greater than or equal to 2")
     }
     # functions work
     sides <- as.integer(sides)
     roll <- as.integer(stats::runif(1, min = 1, max = sides + 1))
     return(roll)
}


#' Roll Two 6-Sided Dice
#'
#' \code{d6Twice} returns a random interger between 2 and 12, simulating the sum
#' of rolling two six sided dice.
#'
#' \code{d6Twice} utilizes the \link{dice} function to simulate the dice roll,
#' this function returns an interger between 1 and 6 thus \code{d6Twice} will
#' return a value of 2 to 12 that is not uniformly distrubited. The most common
#' value returned will be 7 with the least being 2 and 12.
#'
#' @return a random interger with a value between 2 and 12 inclusive. (non-uniform)
#'
#' @examples
#' d6Twice()
#'
#' @export
d6Twice <- function() {
    roll <- dice(sides = 6) + dice(sides = 6)
    return(roll)
}


#' D&D 5E Character Charistic Generator
#'
#' \code{DD5E} returns a random interger between 3 and 18, simulating the sum
#' of rolling four six sided dice, with the lowest result being ignored.
#'
#' \code{DD5E} utilizes the \link{dice} function to simulate the dice rolls,
#' this function returns an interger between 1 and 6.
#'
#' @return a random interger with a value between 3 and 18 inclusive. (non-uniform)
#'
#' @examples
#' DD5E()
#'
#' @export
DD5E <- function() {
    roll <- NULL
    for(i in 1:4){
        roll[i] <- dice(sides = 6)
    }
    roll <- roll[order(roll,
                       decreasing = TRUE)]
    roll <- roll[1:3]
    roll <- sum(roll)
    return(roll)
}

