# R/helpers/explainer.R
# Helper functions to generate explanations using the lime package

generate_explanation <- function(model, training_data, new_data) {
  library(lime)
  # For lime, the training data should include only features
  features <- training_data[, 1:4]
  explainer <- lime(features, model, bin_continuous = TRUE)
  explanation <- explain(new_data, explainer, n_labels = 1, n_features = 4)
  return(explanation)
}

plot_explanation <- function(explanation) {
  library(ggplot2)
  plot_features(explanation) +
    ggtitle("Feature Contributions (lime Explanation)")
}
