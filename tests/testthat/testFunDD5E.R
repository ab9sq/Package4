context("DD5E in range")

test_that("in range", {
     rolls <- DD5E()
     expect_true( (rolls >= 3) & (rolls <= 18))
})

context("DD5E Error")

test_that("errors returned", {
     expect_error(d6Twice("a"))
     expect_error(d6Twice(1))
     expect_error(d6Twice(NA))
     expect_error(d6Twice(NULL))
})

test_that("returns no messages", {
     expect_silent(d6Twice())
})
