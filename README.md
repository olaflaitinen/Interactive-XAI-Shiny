# Interactive XAI Application with Shiny

This advanced Shiny application allows users to interactively explore model explanations for a machine learning model. Users can modify input parameters (using a custom input module) and see updated predictions alongside explanations generated with the lime package. The project is organized into modules, helper functions, tests, and CI/CD workflows, following industry best practices.

## Features

- **Interactive Input Module:** Adjust model input features on the fly.
- **Model Explanation Module:** Generate and display model explanations using lime.
- **Pre-trained Model:** Uses a logistic regression model trained on the Iris dataset.
- **Modular Shiny Architecture:** Separated UI, server logic, modules, and helper functions.
- **Automated Testing:** Unit tests with `testthat`.
- **Continuous Integration:** GitHub Actions workflow for R CMD check.
- **Comprehensive Documentation:** Detailed installation, usage, and architecture guides.

## Installation

Please refer to [docs/installation.md](docs/installation.md).

## Usage

Instructions for running the application can be found in [docs/usage.md](docs/usage.md).

## Architecture

An overview of the project architecture is available in [docs/architecture.md](docs/architecture.md).

## License

Licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
