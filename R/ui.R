# ui.R
# Define the Shiny UI for the interactive XAI application

shinyUI(fluidPage(
  titlePanel("Interactive XAI Application with Shiny"),
  tags$head(
    tags$link(rel = "stylesheet", type = "text/css", href = "custom.css"),
    tags$script(src = "custom.js")
  ),
  sidebarLayout(
    sidebarPanel(
      h3("Input Controls"),
      # Call the input module UI to adjust model features
      inputModuleUI("input_module"),
      hr(),
      actionButton("update", "Update Explanation")
    ),
    mainPanel(
      tabsetPanel(
        tabPanel("Prediction", 
                 verbatimTextOutput("model_pred")),
        tabPanel("Explanation", 
                 plotOutput("explanation_plot"),
                 uiOutput("explanation_text"))
      )
    )
  )
))
