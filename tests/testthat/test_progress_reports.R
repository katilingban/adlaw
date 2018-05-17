# tests for progress_reports function

context("Tidy dataframe for text")

suppressPackageStartupMessages(library(dplyr))

test_that("tidy frame for progress reports is right", {
  d <- progress_reports() %>%
    group_by(year) %>%
    summarise(total_lines = n())
  expect_equal(nrow(d), 7)
  expect_equal(ncol(d), 2)
})
