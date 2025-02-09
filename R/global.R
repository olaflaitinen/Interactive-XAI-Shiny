# global.R
# Load required libraries and global settings

library(shiny)
library(lime)
library(ggplot2)
library(dplyr)

# Load helper functions and modules
source("R/helpers/model_loader.R")
source("R/helpers/explainer.R")
source("R/helpers/utils.R")
source("R/modules/input_module.R")
source("R/modules/model_explanation_module.R")

# Load the pre-trained model (or train one if not present)
model <- load_model("data/model.RData")
data_iris <- read.csv("data/iris.csv", stringsAsFactors = FALSE)

# Define feature names (assume iris dataset without the target column)
feature_names <- names(data_iris)[1:4]
target_name <- "Species"
