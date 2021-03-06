# A unit test for forecast.gts() function
test_that("tests for 3 dots", {
  f1 <- forecast(htseg2, h = 4)
  f2 <- forecast(htseg2, h = 4, ic = "aic")
  
  expect_that(all(f1$bts == f2$bts), is_false())
})
