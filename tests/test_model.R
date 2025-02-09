# tests/test_model.R
# Unit tests for the model loader

library(testthat)
source("R/helpers/model_loader.R")

test_that("Model is loaded or trained", {
  model <- load_model("data/model.RData")
  expect_true(!is.null(model))
  # Check that the model can make predictions
  prediction <- predict(model, newdata = head(iris, 1))
  expect_true(!is.null(prediction))
})
