### Data reporting forms ###

# Summary ####
render("./RMDs/Form_summary.Rmd",
       output_format = "html_document2",
       output_file = "index.html",
       output_dir = "./out/HTML/")

# Summary_FR ####
render("./RMDs/Form_summary_fr.Rmd",
       output_format = "html_document2",
       output_file = "index_fr.html",
       output_dir = "./out/HTML/")

# Forms ####

## Species presence in the catch ####

### Form 1-DR ####
render("./RMDs/Form_1DR.Rmd", 
       output_format = "html_document2",
       output_file ="Form_1DR.html", 
       output_dir = "./out/HTML/")

## Interactions with ETP species ####

### Form 1-IN ####
render("./RMDs/Form_1IN.Rmd", 
       output_format = "html_document2",
       output_file ="Form_1IN.html", 
       output_dir = "./out/HTML/")

## Amount of fish caught and retained ####

### Form 1-RC #####
render("./RMDs/Form_1RC.Rmd", 
       output_format = "html_document2",
       output_file ="Form_1RC.html", 
       output_dir = "./out/HTML/")

## Amount of discards ####

### Form 1-DI ####
render("./RMDs/Form_1DI.Rmd", 
       output_format = "html_document2",
       output_file ="Form_1DI.html", 
       output_dir = "./out/HTML/")

## Geo-referenced catches and efforts ####

### Form 3-CE ####
render("./RMDs/Form_3CE.Rmd", 
       output_format = "html_document2",
       output_file ="Form_3CE.html", 
       output_dir = "./out/HTML/")

### Form 3-CE-update ####
render("./RMDs/Form_3CE_update.Rmd", 
       output_format = "html_document2",
       output_file ="Form_3CE_update.html", 
       output_dir = "./out/HTML/")

## Geo-referenced size frequencies ####

### Form 4-SF ####
render("./RMDs/Form_4SF.Rmd", 
       output_format = "html_document2",
       output_file ="Form_4SF.html", 
       output_dir = "./out/HTML/")

### Form 4-SF-update ####
render("./RMDs/Form_4SF_update.Rmd", 
       output_format = "html_document2",
       output_file ="Form_4SF_update.html", 
       output_dir = "./out/HTML/")

## AFAD-related activities ####

### Form 3-AA ####
render("./RMDs/Form_3AA.Rmd", 
       output_format = "html_document2",
       output_file ="Form_3AA.html", 
       output_dir = "./out/HTML/")

### Form 3-AA-update ####
render("./RMDs/Form_3AA_update.Rmd", 
       output_format = "html_document2",
       output_file ="Form_3AA_update.html", 
       output_dir = "./out/HTML/")

## DFOB-related activities ####

### Form 3-DA ####
render("./RMDs/Form_3DA.Rmd", 
       output_format = "html_document2",
       output_file ="Form_3DA.html", 
       output_dir = "./out/HTML/")

### Form 3-DA-update ####
render("./RMDs/Form_3DA_update.Rmd", 
       output_format = "html_document2",
       output_file ="Form_3DA_update.html", 
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

## Fish prices ####

#render("./RMDs/Form_7PR.Rmd", 
#       output_format = "html_document2",
#       output_file ="Form_7PR.html", 
#       output_dir = "./out/HTML/")
### Form 7-PR #####


#### legacy ####

## Amount of fish caught and retained ####

### Form 1-RC #####
render("./RMDs/legacy_Form_1RC.Rmd", 
       output_format = "html_document2",
       output_file ="Form_1RC_legacy.html", 
       output_dir = "./out/HTML/")

render("./RMDs/legacy_Form_1DI.Rmd", 
       output_format = "html_document2",
       output_file ="Form_1DI_legacy.html", 
       output_dir = "./out/HTML/")

render("./RMDs/legacy_Form_1DR.Rmd", 
       output_format = "html_document2",
       output_file ="Form_1DR_legacy.html", 
       output_dir = "./out/HTML/")

render("./RMDs/legacy_Form_3CE.Rmd", 
       output_format = "html_document2",
       output_file ="Form_3CE_legacy.html", 
       output_dir = "./out/HTML/")

render("./RMDs/legacy_Form_2FC.Rmd", 
       output_format = "html_document2",
       output_file ="Form_2FC_legacy.html", 
       output_dir = "./out/HTML/")


render("./RMDs/legacy_Form_4SF.Rmd", 
       output_format = "html_document2",
       output_file ="Form_4SF_legacy.html", 
       output_dir = "./out/HTML/")
