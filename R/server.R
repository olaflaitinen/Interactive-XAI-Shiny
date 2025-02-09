# server.R
# Define the Shiny server logic

shinyServer(function(input, output, session) {
  
  # Call the input module server to get user inputs
  user_inputs <- callModule(inputModule, "input_module", feature_names = feature_names)
  
  # Reactive expression to compute model prediction and explanation
  reactive_result <- eventReactive(input$update, {
    # Combine user inputs into a single data frame
    new_data <- as.data.frame(t(user_inputs()))
    colnames(new_data) <- feature_names
    
    # Predict using the loaded model
    pred <- predict(model, newdata = new_data, type = "prob")
    pred_class <- predict(model, newdata = new_data)
    
    # Generate explanation using the explainer helper function
    explanation <- generate_explanation(model, data_iris, new_data)
    
    list(prediction = pred_class,
         probabilities = pred,
         explanation = explanation,
         input_data = new_data)
  })
  
  # Render the prediction text output
  output$model_pred <- renderPrint({
    req(reactive_result())
    res <- reactive_result()
    cat("Predicted Class:", res$prediction, "\n")
    cat("Prediction Probabilities:\n")
    print(res$probabilities)
  })
  
  # Render the explanation plot (using ggplot2 from the lime explanation)
  output$explanation_plot <- renderPlot({
    req(reactive_result())
    exp <- reactive_result()$explanation
    plot_explanation(exp)
  })
  
  # Render additional explanation details
  output$explanation_text <- renderUI({
    req(reactive_result())
    exp <- reactive_result()$explanation
    tagList(
      h4("Explanation Details:"),
      verbatimTextOutput("exp_details")
    )
  })
  
  output$exp_details <- renderPrint({
    req(reactive_result())
    exp <- reactive_result()$explanation
    summary(exp)
  })
  
})
