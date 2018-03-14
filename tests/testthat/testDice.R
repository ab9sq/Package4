context("dice error handling")

test_that("handling of NA", {
     expect_error(dice(NA))
})

test_that("handling of NULL", {
     expect_error(dice(NULL))
})

test_that("numbers less than 2", {
     expect_error(dice(1))
     expect_error(dice(0))
     expect_error(dice(-1))
})

test_that("non-numeric values", {
     expect_error(dice("a"))
     expect_error(dice("6"))
})

test_that("returns no messages", {
     expect_silent(dice())
})

context("dice number in range")

test_that("returns number in range", {
     roll <- dice()
     expect_true( (roll >= 1) & (roll <= 6))
     sides <- 4
     roll <- dice(sides = sides)
     expect_true( (roll >= 1) & (roll <= sides))
     sides <- 6
     roll <- dice(sides = sides)
     expect_true( (roll >= 1) & (roll <= sides))
     sides <- 8
     roll <- dice(sides = sides)
     expect_true( (roll >= 1) & (roll <= sides))
     sides <- 10
     roll <- dice(sides = sides)
     expect_true( (roll >= 1) & (roll <= sides))
     sides <- 12
     roll <- dice(sides = sides)
     expect_true( (roll >= 1) & (roll <= sides))
     sides <- 20
     roll <- dice(sides = sides)
     expect_true( (roll >= 1) & (roll <= sides))
     sides <- 100
     roll <- dice(sides = sides)
     expect_true( (roll >= 1) & (roll <= sides))
     })
