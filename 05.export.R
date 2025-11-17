library(openxlsx)

## LL reporting form --> CSV
LL_prefix <- "LL"
LL_file_path <- "C:/Users/schirico/Repositories/iotc-reference-forms/form_reporting_templates/ros/Form-ROS-LL.xlsx"
LL_sheet_names <- openxlsx::getSheetNames(LL_file_path)
print(LL_sheet_names)

LL_output_dir <- "C:/Users/schirico/Repositories/iotc-reference-forms/form_reporting_templates/ros/csv/LL"

for (sheet in LL_sheet_names) {
  df <- openxlsx::read.xlsx(LL_file_path, sheet = sheet)
  
  clean_name <- gsub("[^A-Za-z0-9_]", "_", sheet)
  out_file <- file.path(LL_output_dir, paste0(LL_prefix, "_", clean_name, ".csv"))
  
  write.csv(df, out_file, row.names = FALSE)
}

LL_zip <- paste0(LL_prefix, "_Form_ROS_csv.zip")
zip(LL_zip, files = list.files(LL_output_dir, full.names = TRUE))


## PS reporting form --> CSV 
PS_prefix <- "PS"
PS_file_path <- "C:/Users/schirico/Repositories/iotc-reference-forms/form_reporting_templates/ros/Form-ROS-PS.xlsx"
PS_sheet_names <- openxlsx::getSheetNames(PS_file_path)
print(PS_sheet_names)

PS_output_dir <- "C:/Users/schirico/Repositories/iotc-reference-forms/form_reporting_templates/ros/csv/PS"

for (sheet in PS_sheet_names) {
  df <- openxlsx::read.xlsx(PS_file_path, sheet = sheet)
  
  clean_name <- gsub("[^A-Za-z0-9_]", "_", sheet)
  out_file <- file.path(PS_output_dir, paste0(PS_prefix, "_", clean_name, ".csv"))
  
  write.csv(df, out_file, row.names = FALSE)
}

PS_zip <- paste0(PS_prefix, "_Form_ROS_csv.zip")
zip(PS_zip, files = list.files(PS_output_dir, full.names = TRUE))



## PL reporting form --> CSV
PL_prefix <- "PL"
PL_file_path <- "C:/Users/schirico/Repositories/iotc-reference-forms/form_reporting_templates/ros/Form-ROS-PL.xlsx"
PL_sheet_names <- openxlsx::getSheetNames(PL_file_path)
print(PL_sheet_names)

PL_output_dir <- "C:/Users/schirico/Repositories/iotc-reference-forms/form_reporting_templates/ros/csv/PL"

for (sheet in PL_sheet_names) {
  df <- openxlsx::read.xlsx(PL_file_path, sheet = sheet)
  
  clean_name <- gsub("[^A-Za-z0-9_]", "_", sheet)
  out_file <- file.path(PL_output_dir, paste0(PL_prefix, "_", clean_name, ".csv"))
  
  write.csv(df, out_file, row.names = FALSE)
}

PL_zip <- paste0(PL_prefix, "_Form_ROS_csv.zip")
zip(PL_zip, files = list.files(PL_output_dir, full.names = TRUE))


## GN reporting form --> CSV
GN_prefix <- "GN"
GN_file_path <- "C:/Users/schirico/Repositories/iotc-reference-forms/form_reporting_templates/ros/Form-ROS-GN.xlsx"
GN_sheet_names <- openxlsx::getSheetNames(GN_file_path)
print(GN_sheet_names)

GN_output_dir <- "C:/Users/schirico/Repositories/iotc-reference-forms/form_reporting_templates/ros/csv/GN"

for (sheet in GN_sheet_names) {
  df <- openxlsx::read.xlsx(GN_file_path, sheet = sheet)
  
  clean_name <- gsub("[^A-Za-z0-9_]", "_", sheet)
  out_file <- file.path(GN_output_dir, paste0(GN_prefix, "_", clean_name, ".csv"))
  
  write.csv(df, out_file, row.names = FALSE)
}
GN_zip <- paste0(GN_prefix, "Form_ROS_GN_csv.zip")
zip(GN_zip, files = list.files(GN_output_dir, full.names = TRUE))



