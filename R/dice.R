#' Dice Roll
#'
#' \code{dice} returns a random interger with values between 1 and N, simulating
#' a roll of a single fair N sided die.
#'
#' \code{dice} utilizes the runif function to achive the output and therefor
#' can be made repeatable but utilizing the \link[base]{set.seed} functionality.
#' While reproducability is needed at times this should only be utilized sparingly
#' and with caution because when used the \code{dice} becomes no longer "fair."
#'
#' @param sides The number of sides on the dice to roll. Traditionally the values
#' are 4, 6 \strong{default}, 8, 12, 20, and 100, with six being the most common.
#' The value should be an interger of value greater than or equal to 2.
#'#'
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
          stop(print("Dice must have 2 or more sides"))
     }
     if (((sides < 2)) | (is.na(sides))) {
          stop(print("Dice must have 2 or more sides"))
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
#' Because \code{d6Twice} utilized the \link{dice} function the \link[base]{set.seed}
#' function can be utilized for repearablity. This will effect the "random" nature
#' of the dice rolls so it should be used with caution.
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
