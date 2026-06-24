# Library
library(openxlsx2)

# Function for updating urls
update_excel_urls <- function(input_file, output_file, sheet, old_url, new_url) {
  wb <- wb_load(input_file)
  
  data <- wb_to_df(wb, sheet = sheet, col_names = FALSE)
  
  for (r in seq_len(nrow(data))) {
    for (c in seq_len(ncol(data))) {
      value <- data[r, c][[1]]
      
      if (!is.na(value) && grepl(old_url, value, fixed = TRUE)) {
        new_value <- gsub(old_url, new_url, value, fixed = TRUE)
        
        wb$add_data(
          sheet = sheet,
          x = new_value,
          start_row = r,
          start_col = c,
          col_names = FALSE
        )
        
        wb$add_hyperlink(
          sheet = sheet,
          dims = wb_dims(rows = r, cols = c),
          target = new_value
        )
      }
    }
  }
  
  wb_save(wb, output_file, overwrite = TRUE)
}

# Application (KO)
update_excel_urls("Form-2FC-TEST.xlsx", "Form-2FC-TEST-REV.xlsx", "Metadata", "1.0.0", "latest")


