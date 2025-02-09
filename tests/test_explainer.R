# tests/test_explainer.R
# Unit tests for the explanation generation

library(testthat)
source("R/helpers/explainer.R")
source("R/helpers/model_loader.R")

test_that("Explanation is generated", {
  model <- load_model("data/model.RData")
  data(iris)
  # Use iris features for training and take one instance for explanation
  new_data <- iris[1, 1:4, drop = FALSE]
  explanation <- generate_explanation(model, iris, new_data)
  expect_true(nrow(explanation) > 0)
})
