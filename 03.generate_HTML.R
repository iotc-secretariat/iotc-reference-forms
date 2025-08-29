# FORM Summary (EN) ####
render("./RMDs/Form-summary.Rmd",
       output_format = "html_document2",
       output_file = "index.html",
       output_dir = "./out/HTML/")

# FORM SUMMARY (FR) ####
render("./RMDs/Form-summary_fr.Rmd",
      output_format = "html_document2",
       output_file = "index_fr.html",
       output_dir = "./out/HTML/")

# IOTC STATISTICAL FORMS ####

## Species presence in the catch ####

### Form 1-DR ####
render("./RMDs/Form-1DR.Rmd", 
       output_format = "html_document2",
       output_file = "Form-1DR.html", 
       output_dir = "./out/HTML/")

## Interactions with ETP species ####

### Form 1-IN ####
render("./RMDs/Form-1IN.Rmd", 
       output_format = "html_document2",
       output_file = "Form-1IN.html", 
       output_dir = "./out/HTML/")

## Amount of fish caught and retained ####

### Form 1-RC #####
render("./RMDs/Form-1RC.Rmd", 
       output_format = "html_document2",
       output_file = "Form-1RC.html", 
       output_dir = "./out/HTML/")

## Amount of discards ####

### Form 1-DI ####
render("./RMDs/Form-1DI.Rmd", 
       output_format = "html_document2",
       output_file = "Form-1DI.html", 
       output_dir = "./out/HTML/")

## Geo-referenced catches and efforts ####

### Form 3-CE ####
render("./RMDs/Form-3CE.Rmd", 
       output_format = "html_document2",
       output_file = "Form-3CE.html", 
       output_dir = "./out/HTML/")

### Form 3-CE-update ####
render("./RMDs/Form-3CE-update.Rmd", 
       output_format = "html_document2",
       output_file = "Form-3CE-update.html", 
       output_dir = "./out/HTML/")

## Geo-referenced size frequencies ####

### Form 4-SF ####
render("./RMDs/Form-4SF.Rmd", 
       output_format = "html_document2",
       output_file ="Form-4SF.html", 
       output_dir = "./out/HTML/")

### Form 4-SF-update ####
render("./RMDs/Form-4SF-update.Rmd", 
       output_format = "html_document2",
       output_file ="Form-4SF-update.html", 
       output_dir = "./out/HTML/")

## AFAD-related activities ####

### Form 3-AA ####
render("./RMDs/Form-3AA.Rmd", 
       output_format = "html_document2",
       output_file ="Form-3AA.html", 
       output_dir = "./out/HTML/")

### Form 3-AA-update ####
render("./RMDs/Form-3AA-update.Rmd", 
       output_format = "html_document2",
       output_file ="Form-3AA-update.html", 
       output_dir = "./out/HTML/")

## DFOB-related activities ####

### Form 3-DA ####
render("./RMDs/Form-3DA.Rmd", 
       output_format = "html_document2",
       output_file ="Form-3DA.html", 
       output_dir = "./out/HTML/")

### Form 3-DA-update ####
render("./RMDs/Form-3DA-update.Rmd", 
       output_format = "html_document2",
       output_file ="Form-3DA-update.html", 
       output_dir = "./out/HTML/")

## Daily buoy positions ####

### Form 3-BU ####
render("./RMDs/Form-3BU.Rmd", 
       output_format = "html_document2",
       output_file ="Form-3BU.html", 
       output_dir = "./out/HTML/")

## Fishing craft statistics ####

### Form 2-FC #####
render("./RMDs/Form-2FC.Rmd", 
       output_format = "html_document2",
       output_file ="Form-2FC.html", 
       output_dir = "./out/HTML/")

## Fish prices ####

### Form 7-PR #####

#render("./RMDs/Form_7PR.Rmd", 
#       output_format = "html_document2",
#       output_file ="Form_7PR.html", 
#       output_dir = "./out/HTML/")

# ROS REPORTING FORMS ####

## LONGLINE ####

render("./RMDs/ros/ROS-LL.rmd", 
       output_format = "html_document2",
       output_file ="Form-ROS-LL.html", 
       output_dir = "./out/HTML/ros/")

## POLE-AND-LINE ####

render("./RMDs/ros/ROS-PL.rmd", 
       output_format = "html_document2",
       output_file ="Form-ROS-PL.html", 
       output_dir = "./out/HTML/ros/")
