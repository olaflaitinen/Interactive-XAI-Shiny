# R/helpers/utils.R
# Additional utility functions

# (This file can be extended with more helper functions as needed)
log_message <- function(msg) {
  cat(paste0("[", Sys.time(), "] ", msg, "\n"))
}
