# Generic function to render the RMD files
render_iotc <- function(input, output_dir,
                        output_file = "index.html") {
  
  config <- yaml::read_yaml("./templates/html_output.yml")
  opts <- config[["bookdown::html_document2"]]
  
  template_dir <- normalizePath(
    "./templates",
    winslash = "/",
    mustWork = TRUE
  )
  
  opts$css <- normalizePath(
    file.path(template_dir, opts$css),
    winslash = "/",
    mustWork = TRUE
  )
  
  opts$includes$in_header <- normalizePath(
    file.path(template_dir, opts$includes$in_header),
    winslash = "/",
    mustWork = TRUE
  )
  
  rmarkdown::render(
    input = input,
    output_format = "bookdown::html_document2",
    output_options = opts,
    output_file = output_file,
    output_dir = output_dir
  )
}