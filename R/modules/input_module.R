# R/modules/input_module.R
# Module to create input controls for feature values

inputModuleUI <- function(id) {
  ns <- NS(id)
  tagList(
    # Create numeric input for each feature (assume 4 features for Iris)
    numericInput(ns("sepal_length"), "Sepal Length", value = 5.1, min = 4, max = 8, step = 0.1),
    numericInput(ns("sepal_width"), "Sepal Width", value = 3.5, min = 2, max = 5, step = 0.1),
    numericInput(ns("petal_length"), "Petal Length", value = 1.4, min = 1, max = 7, step = 0.1),
    numericInput(ns("petal_width"), "Petal Width", value = 0.2, min = 0.1, max = 3, step = 0.1)
  )
}

inputModule <- function(input, output, session, feature_names) {
  # Return a reactive list of input values in the same order as feature_names
  reactive({
    c(input$sepal_length, input$sepal_width, input$petal_length, input$petal_width)
  })
}
