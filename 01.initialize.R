BASE_VERSION = "1.0"

C_MASTER =
  DBI::dbConnect(
    drv      = odbc::odbc(),
    Driver   = "SQL Server",
    Server   = Sys.getenv("DEFAULT_IOTC_LIBS_DB_SERVER"),
    Database = "IOTC_master",
    UID      = Sys.getenv("DEFAULT_IOTC_LIBS_DB_USER"),
    PWD      = Sys.getenv("DEFAULT_IOTC_LIBS_DB_PASSWORD"),
    encoding = "CP1252",
    clientcharset = "UTF-8"
  )

version = function(codelist_name, codelist_schema = NA) {
  VERSION = details(codelist_name, codelist_schema)$VERSION[1]
  
  if(!is.na(VERSION)) return(paste0(BASE_VERSION, ".", VERSION))
  else return(NA)
}

details = function(codelist_name, codelist_schema = NA) {
  return(
    CODELISTS_VERSIONS[(is.na(codelist_schema) | CL_SCHEMA == codelist_schema) & CL_NAME == codelist_name]
  )
}

CODELISTS_VERSIONS = query(C_MASTER, "SELECT * FROM [refs_meta].CODELISTS_VERSIONS")

V_MAPPINGS = as.data.table(read.csv("./REFERENCE_CODELISTS_VIEW_MAPPINGS.csv"))
V_MAPPINGS = merge(V_MAPPINGS, CODELISTS_VERSIONS, by = c("CL_SCHEMA", "CL_NAME"), all.x = TRUE)[, .(CL_SCHEMA, CL_NAME = REFERENCE_NAME, VERSION, LAST_UPDATE)]

CODELISTS_VERSIONS = unique(rbind(CODELISTS_VERSIONS, V_MAPPINGS))

read_codelist = function(base_url = "https://data.iotc.org/reference/latest/domain/", domain, schema = NA, codelist) {
  if(is.na(schema)) 
    schema = domain
  
  CL = CODELISTS_VERSIONS[CL_SCHEMA == paste0("refs_", schema) & CL_NAME == codelist]
  
  return(
    as.data.table(
      read.csv2(
        paste0(base_url, domain, "/codelists/", codelist, "_", BASE_VERSION, ".", CL$VERSION, ".csv"),
        header = TRUE,
        sep = ","
      )
    )
  )
}

# Reads all required codelists from the (remote) repository on https://data.iotc.org/reference/latest/domain/<domain>/codelists/<codelist>_<codelist_version>

COUNTRIES       = read_codelist(domain = "admin", codelist = "COUNTRIES")
IOTC_MAIN_AREAS = read_codelist(domain = "admin", schema = "gis", codelist = "IOTC_MAIN_AREAS")

DATA_TYPES     = read_codelist(domain = "data", codelist = "DATA_TYPES")

DATA_SOURCES_DI = read_codelist(domain = "data", codelist = "DATA_SOURCES_DI")
DATA_SOURCES_RC = read_codelist(domain = "data", codelist = "DATA_SOURCES_RC")
DATA_SOURCES_CE = read_codelist(domain = "data", codelist = "DATA_SOURCES_CE")
DATA_SOURCES_SF = read_codelist(domain = "data", codelist = "DATA_SOURCES_SF")
DATA_SOURCES_FC = read_codelist(domain = "data", codelist = "DATA_SOURCES_FC")

DATA_PROCESSINGS_DI = read_codelist(domain = "data", codelist = "DATA_PROCESSINGS_DI")
DATA_PROCESSINGS_RC = read_codelist(domain = "data", codelist = "DATA_PROCESSINGS_RC")
DATA_PROCESSINGS_CE = read_codelist(domain = "data", codelist = "DATA_PROCESSINGS_CE")
DATA_PROCESSINGS_SF = read_codelist(domain = "data", codelist = "DATA_PROCESSINGS_SF")
DATA_PROCESSINGS_FC = read_codelist(domain = "data", codelist = "DATA_PROCESSINGS_FC")

DATA_RAISINGS       = read_codelist(domain = "data", codelist = "DATA_RAISINGS")

COVERAGE_TYPES = read_codelist(domain = "data", codelist = "COVERAGE_TYPES")

BOAT_TYPES                = read_codelist(domain = "fisheries", schema = "fishery", codelist = "BOAT_TYPES")
BOAT_CLASS_TYPES          = read_codelist(domain = "fisheries", schema = "fishery", codelist = "BOAT_CLASS_TYPES")
MECHANIZATION_TYPES       = read_codelist(domain = "fisheries", schema = "fishery", codelist = "MECHANIZATION_TYPES")
FISH_PRESERVATION_METHODS = read_codelist(domain = "fisheries", schema = "fishery", codelist = "FISH_PRESERVATION_METHODS")
FISH_PROCESSING_TYPES     = read_codelist(domain = "fisheries", schema = "fishery", codelist = "FISH_PROCESSING_TYPES")

FISHERIES           = read_codelist(domain = "fisheries", schema = "fishery", codelist = "FISHERIES")
CATCH_UNITS         = read_codelist(domain = "fisheries", schema = "fishery", codelist = "CATCH_UNITS")

SPECIES               = read_codelist(domain = "biological", codelist = "SPECIES")
RETAIN_REASONS        = read_codelist(domain = "biological", codelist = "RETAIN_REASONS")
DISCARD_REASONS       = read_codelist(domain = "biological", codelist = "DISCARD_REASONS")
INDIVIDUAL_CONDITIONS = read_codelist(domain = "biological", codelist = "INDIVIDUAL_CONDITIONS")
MEASUREMENTS          = read_codelist(domain = "biological", codelist = "MEASUREMENTS")
MEASUREMENT_TOOLS     = read_codelist(domain = "biological", codelist = "MEASUREMENT_TOOLS")
TYPES_OF_MEASUREMENT  = read_codelist(domain = "biological", codelist = "TYPES_OF_MEASUREMENT")
TYPES_OF_FATE         = read_codelist(domain = "biological", codelist = "TYPES_OF_FATE")
FATES                 = read_codelist(domain = "biological", codelist = "FATES")

out_dt = function(data, name) {
  datatable(data, 
            rownames = FALSE, 
            filter = "bottom", 
            extensions = "Buttons", 
            options = 
              list(dom = "Bfrtip", 
                   buttons = list(
                     list(
                       extend = "csv", 
                       filename = paste0(name, "_", version(name))
                     )
                   )
              )
  )
}