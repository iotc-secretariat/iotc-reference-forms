### Data reporting forms ###

# Summary ####
render("./RMDs/Form_summary.Rmd",
       output_format = "html_document2",
       output_file = "index.html",
       output_dir = "./out/HTML/")

# Forms ####

## Species presence in the catch ####

### Form 1-DR ####
render("./RMDs/Form_1DR.Rmd", 
       output_format = "html_document2",
       output_file ="Form_1DR.html", 
       output_dir = "./out/HTML/")

## Amount of fish caught and retained ####

### Form 1-RC #####
render("./RMDs/Form_1RC.Rmd", 
       output_format = "html_document2",
       output_file ="Form_1RC.html", 
       output_dir = "./out/HTML/")

### Form 1-RC_interim ####
  render("./RMDs/interim/Form_1RC_interim.Rmd", 
         output_format = "html_document2",
         output_file ="Form-1RC_interim.html", 
         output_dir = "./out/HTML/interim/")

## Amount of discards ####

### Form 1-DI ####
render("./RMDs/Form_1DI.Rmd", 
       output_format = "html_document2",
       output_file ="Form_1DI.html", 
       output_dir = "./out/HTML/")

### Form 1-DI_interim ####
render("./RMDs/interim/Form_1DI_interim.Rmd", 
         output_format = "html_document2",
         output_file ="Form-1DI_interim.html", 
         output_dir = "./out/HTML/interim/")

## Interactions with ETP species ####

### Form 1-IN ####
render("./RMDs/Form_1IN.Rmd", 
       output_format = "html_document2",
       output_file ="Form_1IN.html", 
       output_dir = "./out/HTML/")

## Geo-referenced catches and efforts ####

### Form 3-CE ####
render("./RMDs/Form_3CE.Rmd", 
       output_format = "html_document2",
       output_file ="Form_3CE.html", 
       output_dir = "./out/HTML/")

### Form 3-CE-update ####
render("./RMDs/Form_3CE-update.Rmd", 
       output_format = "html_document2",
       output_file ="Form-3CE_update.html", 
       output_dir = "./out/HTML/")

### Form 3-CE_interim ####
render("./RMDs/interim/Form_3CE_interim.Rmd", 
       output_format = "html_document2",
       output_file ="Form-3CE_interim.html", 
       output_dir = "./out/HTML/interim/")

# Form 3-CE_interim-update
render("./RMDs/interim/Form_3CE_interim-update.Rmd", 
       output_format = "html_document2",
       output_file ="Form-3CE_interim-update.html", 
       output_dir = "./out/HTML/interim/")

## Geo-referenced size frequencies ####

### Form 4-SF ####
render("./RMDs/Form_4SF.Rmd", 
       output_format = "html_document2",
       output_file ="Form_4SF.html", 
       output_dir = "./out/HTML/")

### Form 4-SF-update ####
render("./RMDs/Form_4SF-update.Rmd", 
       output_format = "html_document2",
       output_file ="Form_4SF-update.html", 
       output_dir = "./out/HTML/")

### Form 4-SF_interim ####
render("./RMDs/interim/Form_4SF_interim.Rmd", 
       output_format = "html_document2",
       output_file ="Form-4SF_interim.html", 
       output_dir = "./out/HTML/interim/")

### Form 4-SF_interim-update ####
render("./RMDs/interim/Form_4SF_interim-update.Rmd", 
       output_format = "html_document2",
       output_file ="Form_4SF_interim-update.html", 
       output_dir = "./out/HTML/interim/")

## AFAD-related activities ####

### Form 3-AA ####
render("./RMDs/Form_3AA.Rmd", 
       output_format = "html_document2",
       output_file ="Form_3AA.html", 
       output_dir = "./out/HTML/")

### Form 3-AA-update ####
render("./RMDs/Form_3AA-update.Rmd", 
       output_format = "html_document2",
       output_file ="Form_3AA-update.html", 
       output_dir = "./out/HTML/")

## DFOB-related activities ####

### Form 3-DA ####
render("./RMDs/Form_3DA.Rmd", 
       output_format = "html_document2",
       output_file ="Form_3DA.html", 
       output_dir = "./out/HTML/")

### Form 3-DA-update ####
render("./RMDs/Form_3DA-update.Rmd", 
       output_format = "html_document2",
       output_file ="Form_3DA-update.html", 
       output_dir = "./out/HTML/")

## Daily buoy positions ####

### Form 3-BU ####
render("./RMDs/Form_3BU.Rmd", 
       output_format = "html_document2",
       output_file ="Form_3BU.html", 
       output_dir = "./out/HTML/")

## Fishing craft statistics ####

### Form 2-FC #####
render("./RMDs/Form_2FC.Rmd", 
       output_format = "html_document2",
       output_file ="Form_2FC.html", 
       output_dir = "./out/HTML/")

### Form 2-FC_interim #####
render("./RMDs/interim/Form_2FC_interim.Rmd", 
       output_format = "html_document2",
       output_file ="Form-2FC_interim.html", 
       output_dir = "./out/HTML/interim/")