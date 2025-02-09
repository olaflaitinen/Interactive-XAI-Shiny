# R/helpers/model_loader.R
# Helper function to load or train a model

load_model <- function(model_path) {
  if (file.exists(model_path)) {
    load(model_path)  # This loads an object named 'model'
    message("Model loaded from ", model_path)
    return(model)
  } else {
    message("Model not found. Training a new logistic regression model on Iris dataset...")
    data(iris)
    library(caret)
    set.seed(42)
    # Train a simple model (for demonstration, using caret)
    model <- train(Species ~ ., data = iris, method = "multinom", trace = FALSE)
    save(model, file = model_path)
    message("Model trained and saved to ", model_path)
    return(model)
  }
}
