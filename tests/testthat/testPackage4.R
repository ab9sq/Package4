library("Package4")

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

context("dice number in range")

test_that("returns number in range", {
     x <- dice()
     expect_true((x >= 1) & (x <= 6))
     })

