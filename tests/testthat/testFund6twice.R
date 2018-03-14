context("d6Twice in range")

test_that("in range", {
     rolls <- d6Twice()
     expect_true( (rolls >= 2) & (rolls <= 12))
})

context("d6wice Error")

test_that("errors returned", {
     expect_error(d6Twice("a"))
     expect_error(d6Twice(1))
     expect_error(d6Twice(NA))
     expect_error(d6Twice(NULL))
})
