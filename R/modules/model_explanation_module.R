# R/modules/model_explanation_module.R
# Module for rendering model explanations (can be extended for further interactivity)

modelExplanationModuleUI <- function(id) {
  ns <- NS(id)
  tagList(
    h3("Model Explanation"),
    plotOutput(ns("explanation_plot")),
    verbatimTextOutput(ns("explanation_details"))
  )
}

modelExplanationModule <- function(input, output, session, model, data, new_data) {
  # Generate explanation and render plot and details.
  explanation <- generate_explanation(model, data, new_data)
  
  output$explanation_plot <- renderPlot({
    plot_explanation(explanation)
  })
  
  output$explanation_details <- renderPrint({
    summary(explanation)
  })
}
