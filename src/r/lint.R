#!/opt/conda/bin/Rscript
# Run code linting on a given file
package_list <- c("argparse", "lintr")
for (package in package_list) {
  library(package, character.only = TRUE, quietly = TRUE)
}
options(stringsAsFactors = FALSE)

p <- argparse::ArgumentParser(
  prog = "Rscript lint.R",
  description = paste0(
    "A wrapper script for the lintr R package. Checks an R code file for style consistency with ",
    "a specified style guide."
  ),
  add_help = TRUE
)
p$add_argument(
  "-c",
  "--config",
  default = NULL,
  type = "character",
  dest = "config",
  required = FALSE,
  help = paste0(
    "A .lintr DCF file that specifies the linters to use. Will use the lintr package defaults ",
    "if one is not specified or found in the `code_file` directory."
  )
)
p$add_argument(
  "code_file",
  metavar = "code_file",
  nargs = 1,
  type = "character",
  help = "The code file (with path) to lint."
)
argv <- p$parse_args()
config_file <- argv$config
code_file <- argv$code_file
if (is.null(config_file)) {
  cat("\nNo .lintr file provided. Using default lintr package settings.\n")
} else if (!file.exists(config_file)) {
  warning(
    "User-provided .lintr file could not be found. Using default lintr package settings."
  )
} else {
  cat("\nLoading .lintr file", config_file, "...\n")
  options(lintr.linter_file = config_file)
}
cat("\nLinting file", code_file, "...\n\n")
lintr::lint(code_file)
cat("Linting complete.\n")
