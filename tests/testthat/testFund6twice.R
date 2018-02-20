context("d6Twice in range")

test_that("in range", {
     rolls <- d6Twice()
     expect_true((rolls >= 2) & (rolls <= 12))
})
