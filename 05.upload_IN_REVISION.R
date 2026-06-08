# Create folder (if not available) for storing the forms and associated descriptions
initialise_folder = function(folder) {
  print(paste0("FOLDER: ", folder))
  if(url.exists(ftp_url(folder), userpwd = userpwd())) {
    print(paste0("Remote folder ", folder, " already exists...")) 
  } else {
    print(paste0("Creating empty remote folder ", folder, "..."))
    cmd = paste0("mkdir ", folder)
    CURL_CMD(ftp_root(), cmd)
  }
}

# Define folder path to store the form templates
form_folder = function(formCategory = "stats", versionNumber) {
  return(
    paste0(SERVER_ROOT, "/forms/", formCategory, "/", versionNumber)
  )
}

# Uploading ROS reporting Forms to the last version folder
ros_form_permanent_doi <- "10.5281/zenodo.17090245"
ros_form_doi_versions <- get_versions(ros_form_permanent_doi)$version
ros_form_last_version <- sprintf("%.1f", max(ros_form_doi_versions))
ros_form_last_version_server_folder <- form_folder(formCategory = "ros", versionNumber = ros_form_last_version)

# Initialise last version folder
initialise_folder(ros_form_last_version_server_folder)






