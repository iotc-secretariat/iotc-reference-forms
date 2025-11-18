# Export and Zip Function
ros_forms_csv_export = function(gearPrefix){

  filePath   = paste0("./form_reporting_templates/ros/Form-ROS-", gear_prefix, ".xlsx")
  sheetNames = getSheetNames(filePath)[getSheetNames(filePath) != "META"]
  outputDir  = paste0("./form_reporting_templates/ros/csv/", gearPrefix)
  outputZip  = paste0(outputDir, "/Form-ROS-", gearPrefix, "-csv.zip")

for (sheet in sheetNames) {
  df         = read.xlsx(filePath, sheet = sheet)
  cleanName = gsub("[^A-Za-z0-9_]", "_", sheet)
  outFile   = file.path(outputDir, paste0(gearPrefix, "_", cleanName, ".csv"))
  write.csv(df, outFile, row.names = FALSE)
}

zip::zip(outputZip, files = list.files(outputDir, full.names = TRUE), include_directories = FALSE, mode = "cherry-pick")

}

# Export the CSV files
ros_forms_csv_export("GN")
ros_forms_csv_export("PL")
ros_forms_csv_export("PS")
ros_forms_csv_export("LL")
