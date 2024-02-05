### Data reporting forms ###

######## Retained catches, discards, and interactions

# Form 1-RC
render("./RMDs/Form_1RC.Rmd", 
       output_format = "html_document2",
       output_file ="Form_1RC.html", 
       output_dir = "./out/HTML/")

# Form 1-DI
render("./RMDs/Form_1DI.Rmd", 
       output_format = "html_document2",
       output_file ="Form_1DI.html", 
       output_dir = "./out/HTML/")

# Form 1-IN

### TBD

######## Fishing crafts

# Form 2-FC

render("./RMDs/Form_2FC.Rmd", 
       output_format = "html_document2",
       output_file ="Form_2FC.html", 
       output_dir = "./out/HTML/")

######## Catch-and-effort

# Form 3-CE

render("./RMDs/Form_3CE.Rmd", 
       output_format = "html_document2",
       output_file ="Form_3CE.html", 
       output_dir = "./out/HTML/")

# Form 3-CE (multiple)

### TBD

######## Additional catch-and-effort for FAD fisheries

######## Buoy positions

# Form 3-BU

render("./RMDs/Form_3BU.Rmd", 
       output_format = "html_document2",
       output_file ="Form_3BU.html", 
       output_dir = "./out/HTML/")

# Form 3-BU (multiple)

### TBD

######## Size-frequency 

# Form 4-SF

render("./RMDs/Form_4SF.Rmd", 
       output_format = "html_document2",
       output_file ="Form_4SF.html", 
       output_dir = "./out/HTML/")

# Form 4-SF (multiple)

### TBD