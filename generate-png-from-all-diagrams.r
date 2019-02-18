# Automatically generate PNG images and PDF files for all diagrams.
#
# Procedure:
#   1. Go through each directory
#   2. Find all .R files
#   3. Run GraphViz code (must be in the variable "code" in all .R files)
#   4. Generate PNG and PDF file from GraphViz code,
#      with the same name as the .R file
#
library(magrittr)
library(DiagrammeR)
library(DiagrammeRsvg)
library(rsvg)
library(utils)

# Get a vector of all .R files in path directory and all sub directories.
get_diagram_files <- function(path) {
  filenames <- list.files(".", pattern=".r$", full.names=TRUE, recursive=TRUE)
  # Remove myself from list of .R files.
  filenames <- filenames[!filenames == "./generate-png-from-all-diagrams.r"]
  return(filenames)
}

# Convert all .R filenames to .PNG filenames.
convert_to_png_filename <- function(filename) {
  return(gsub(".r", ".png", filename, fixed=TRUE))
}

# Convert all .R filenames to .PDF filenames.
convert_to_pdf_filename <- function(filename) {
  return(gsub(".r", ".pdf", filename, fixed=TRUE))
}

# Function to create a PNG file from a GrViz diagram code.
create_png_diagram <- function(code, filename, dpi=NULL){
  utils::capture.output({
    DiagrammeR::grViz(code) %>%
      DiagrammeRsvg::export_svg() %>%
      base::charToRaw() %>% 
      rsvg::rsvg_png(filename)
  }, file="NUL")
}

# Function to create a PDF file from a GrViz diagram code.
create_pdf_diagram <- function(code, filename, dpi=NULL){
  utils::capture.output({
    DiagrammeR::grViz(code) %>%
      DiagrammeRsvg::export_svg() %>%
      base::charToRaw() %>% 
      rsvg::rsvg_pdf(filename)
  }, file="NUL")
}

# Get all filenames.
filenames_r = get_diagram_files()
filenames_png <- convert_to_png_filename(filenames_r)
filenames_pdf <- convert_to_pdf_filename(filenames_r)

# Run on all diagrams and convert them to PNG and PDF files.
for (i in seq.int(1, length(filenames_r))) {
  code <- ""
  source(filenames_r[i], local = TRUE) # Retrieve "code" variable from each file
  if (code == "") {
    cat("Skipping", filenames_r[i], "\n")
  } else {
    cat("Converting", filenames_r[i], "---->", filenames_png[i], "\n")
    create_png_diagram(code, filenames_png[i])
    cat("Converting", filenames_r[i], "---->", filenames_pdf[i], "\n")
    create_pdf_diagram(code, filenames_pdf[i])
  }
}
