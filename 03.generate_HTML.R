### Data reporting forms ###

# Summary

render("./RMDs/Form_summary.Rmd",
       output_format = "html_document2",
       output_file = "index.html",
       output_dir = "./out/HTML/")

# Forms

# Form 1-RC
render("./RMDs/Form_1RC.Rmd", 
       output_format = "html_document2",
       output_file ="Form-1RC.html", 
       output_dir = "./out/HTML/")

  # Form 1-RC_interim
  render("./RMDs/interim/Form_1RC_interim.Rmd", 
         output_format = "html_document2",
         output_file ="Form-1RC_interim.html", 
         output_dir = "./out/HTML/interim/")

# Form 1-DI
render("./RMDs/Form_1DI.Rmd", 
       output_format = "html_document2",
       output_file ="Form-1DI.html", 
       output_dir = "./out/HTML/")

  # Form 1-DI_interim
  render("./RMDs/interim/Form_1DI_interim.Rmd", 
         output_format = "html_document2",
         output_file ="Form-1DI_interim.html", 
         output_dir = "./out/HTML/interim/")

# Form 1-IN
render("./RMDs/Form_1IN.Rmd", 
       output_format = "html_document2",
       output_file ="Form-1IN.html", 
       output_dir = "./out/HTML/")

# Form 1-DR
render("./RMDs/Form_1DR.Rmd", 
       output_format = "html_document2",
       output_file ="Form-1DR.html", 
       output_dir = "./out/HTML/")

######## Fishing crafts

# Form 2-FC

render("./RMDs/Form_2FC.Rmd", 
       output_format = "html_document2",
       output_file ="Form-2FC.html", 
       output_dir = "./out/HTML/")

  # Form 2-FC_interim

  render("./RMDs/interim/Form_2FC_interim.Rmd", 
         output_format = "html_document2",
         output_file ="Form-2FC_interim.html", 
         output_dir = "./out/HTML/interim/")

######## Catch-and-effort

# Form 3-CE

render("./RMDs/Form_3CE.Rmd", 
       output_format = "html_document2",
       output_file ="Form-3CE.html", 
       output_dir = "./out/HTML/")

# Form 3-CE-multiple

render("./RMDs/Form_3CE-multiple.Rmd", 
       output_format = "html_document2",
       output_file ="Form-3CE-multiple.html", 
       output_dir = "./out/HTML/")

  # Form 3-CE_interim
  
  render("./RMDs/interim/Form_3CE_interim.Rmd", 
         output_format = "html_document2",
         output_file ="Form-3CE_interim.html", 
         output_dir = "./out/HTML/interim/")
  
  # Form 3-CE_interim-multiple
  
  render("./RMDs/interim/Form_3CE_interim-multiple.Rmd", 
         output_format = "html_document2",
         output_file ="Form-3CE_interim-multiple.html", 
         output_dir = "./out/HTML/interim/")

# Form 3-AA

render("./RMDs/Form_3AA.Rmd", 
       output_format = "html_document2",
       output_file ="Form-3AA.html", 
       output_dir = "./out/HTML/")

# Form 3-AA-multiple

render("./RMDs/Form_3AA-multiple.Rmd", 
       output_format = "html_document2",
       output_file ="Form-3AA-multiple.html", 
       output_dir = "./out/HTML/")

# Form 3-DA

render("./RMDs/Form_3DA.Rmd", 
       output_format = "html_document2",
       output_file ="Form-3DA.html", 
       output_dir = "./out/HTML/")

# Form 3-DA-multiple

render("./RMDs/Form_3DA-multiple.Rmd", 
       output_format = "html_document2",
       output_file ="Form-3DA-multiple.html", 
       output_dir = "./out/HTML/")

# Form 3-BU

render("./RMDs/Form_3BU.Rmd", 
       output_format = "html_document2",
       output_file ="Form-3BU.html", 
       output_dir = "./out/HTML/")

# Form 4-SF

render("./RMDs/Form_4SF.Rmd", 
       output_format = "html_document2",
       output_file ="Form-4SF.html", 
       output_dir = "./out/HTML/")

# Form 4-SF-multiple

render("./RMDs/Form_4SF-multiple.Rmd", 
       output_format = "html_document2",
       output_file ="Form-4SF-multiple.html", 
       output_dir = "./out/HTML/")

  # Form 4-SF_interim
  
  render("./RMDs/interim/Form_4SF_interim.Rmd", 
         output_format = "html_document2",
         output_file ="Form-4SF_interim.html", 
         output_dir = "./out/HTML/interim/")
  
  # Form 4-SF_interim-multiple
  
  render("./RMDs/interim/Form_4SF_interim-multiple.Rmd", 
         output_format = "html_document2",
         output_file ="Form-4SF_interim-multiple.html", 
         output_dir = "./out/HTML/interim/")