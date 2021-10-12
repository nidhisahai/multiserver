test_that("testing that Multiserver works", {
  expect_identical(Multiserver(1,1,1),
                   data.frame(Arrivals = 1, ServiceBegins = 1, ChosenServer = 1, ServiceEnds = 2))
  expect_error(Multiserver(0, 0, 0))
})
