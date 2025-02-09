# Installation Guide

Follow these steps to install and run the Interactive XAI Shiny application.

## Prerequisites

- R (version 4.0 or later)
- RStudio (recommended)
- Git

## Steps

1. **Clone the Repository**

   ```bash
   git clone https://github.com/yourusername/Interactive-XAI-Shiny.git
   cd Interactive-XAI-Shiny
   
2. Install Required Packages

**Open R or RStudio and run:**

   ```r
Copy
Edit
install.packages(c("shiny", "lime", "ggplot2", "dplyr", "caret", "testthat"))
```

3. Load the Application

**You can run the app directly from RStudio by opening R/app.R (or sourcing global.R, ui.R, and server.R if using a modular structure).**
Optional: Run Automated Tests

**In R, execute:**

```r
Copy
Edit
library(testthat)
test_dir("tests")
```
