```markdown
# Architecture Overview

This project is organized using a modular Shiny application structure:

- **Global Files (R/global.R):** Load libraries, pre-trained model, and global data.
- **UI (R/ui.R):** Defines the overall layout using a sidebar and main panel.
- **Server (R/server.R):** Contains reactive logic, calls Shiny modules, and renders outputs.
- **Modules (R/modules/):**
  - `input_module.R`: Provides UI and server logic for input controls.
  - `model_explanation_module.R`: (Optional) A separate module for rendering explanations.
- **Helpers (R/helpers/):**
  - `model_loader.R`: Loads (or trains) the model.
  - `explainer.R`: Generates explanations using the lime package.
  - `utils.R`: Contains additional helper functions.
- **Data (data/):** Contains the iris dataset CSV and the pre-trained model.
- **Tests (tests/):** Unit tests using `testthat` to ensure model loading and explanation generation work correctly.
- **Static Assets (www/):** Custom CSS and JavaScript files to style the app.
- **CI/CD (.github/workflows/):** GitHub Actions workflow for R CMD check ensures code quality.

This structure supports maintainability, scalability, and collaborative development.
