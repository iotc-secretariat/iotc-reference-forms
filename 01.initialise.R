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

version_number = function(codelist_name, codelist_schema = NA) {
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

V_MAPPINGS = fread("./REFERENCE_CODELISTS_VIEW_MAPPINGS.csv")
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

ENTITIES        = read_codelist(domain = "admin", codelist = "ENTITIES")
COUNTRIES       = read_codelist(domain = "admin", codelist = "COUNTRIES")
IOTC_MAIN_AREAS = read_codelist(domain = "admin", schema = "gis", codelist = "IOTC_MAIN_AREAS")
FAO_AREAS       = read_codelist(domain = "admin", schema = "gis", codelist = "FAO_AREAS")
IOTC_GRIDS_SF   = read_codelist(domain = "admin", schema = "gis", codelist = "IOTC_GRIDS_05x05")
#IOTC_GRIDS_CE_SF = read_codelist(domain = "admin", schema = "gis", codelist = "IOTC_GRIDS_CE_SF")
IOTC_GRIDS_CE_SF_AR = read_codelist(domain = "admin", schema = "gis", codelist = "IOTC_GRIDS_CE_SF_AR")
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
DATA_ESTIMATIONS = read_codelist(domain = "data", codelist = "DATA_ESTIMATIONS")

BOAT_TYPES                = read_codelist(domain = "fisheries", schema = "fishery", codelist = "BOAT_TYPES")
BOAT_CLASS_TYPES          = read_codelist(domain = "fisheries", schema = "fishery", codelist = "BOAT_CLASS_TYPES")
MECHANIZATION_TYPES       = read_codelist(domain = "fisheries", schema = "fishery", codelist = "MECHANIZATION_TYPES")
FISH_PRESERVATION_METHODS = read_codelist(domain = "fisheries", schema = "fishery", codelist = "FISH_PRESERVATION_METHODS")
FISH_PROCESSING_TYPES  = read_codelist(domain = "fisheries", schema = "fishery", codelist = "FISH_PROCESSING_TYPES")
FISH_STORAGE_TYPES  = read_codelist(domain = "fisheries", schema = "fishery", codelist = "FISH_STORAGE_TYPES")
EFFORT_UNITS        = read_codelist(domain = "fisheries", schema = "fishery", codelist = "EFFORT_UNITS")
FISHERIES           = read_codelist(domain = "fisheries", schema = "fishery", codelist = "FISHERIES")
FISHERY_CATEGORIES  = read_codelist(domain = "fisheries", schema = "fishery_config", codelist = "FISHERY_CATEGORIES")
CATCH_UNITS         = read_codelist(domain = "fisheries", schema = "fishery", codelist = "CATCH_UNITS")
GEAR_GROUPS         = read_codelist(domain = "fisheries", schema = "fishery_config", codelist = "GEAR_GROUPS")
AFOB_TYPES          = read_codelist(domain = "fisheries", schema = "fishery", codelist = "AFOB_TYPES")
AFOB_ACTIVITIES     = read_codelist(domain = "fisheries", schema = "fishery", codelist = "AFOB_ACTIVITY_TYPES")
BUOY_ACTIVITIES     = read_codelist(domain = "fisheries", schema = "fishery", codelist = "BUOY_ACTIVITY_TYPES")
AFOB_TYPES           = read_codelist(domain = "fisheries", schema = "fishery", codelist = "FOB_TYPES")[DFOB == FALSE][, DFOB := NULL]
DFOB_TYPES           = read_codelist(domain = "fisheries", schema = "fishery", codelist = "FOB_TYPES")[DFOB == TRUE][, DFOB := NULL]
AFOB_ACTIVITIES      = read_codelist(domain = "fisheries", schema = "fishery", codelist = "FOB_ACTIVITY_TYPES")
DFOB_ACTIVITIES      = read_codelist(domain = "fisheries", schema = "fishery", codelist = "FOB_ACTIVITY_TYPES")
CATCH_UNITS         = read_codelist(domain = "fisheries", schema = "fishery", codelist  = "CATCH_UNITS")

SPECIES               = read_codelist(domain = "biological", codelist = "SPECIES")
RETAIN_REASONS        = read_codelist(domain = "biological", codelist = "RETAIN_REASONS")
DISCARD_REASONS       = read_codelist(domain = "biological", codelist = "DISCARD_REASONS")
INDIVIDUAL_CONDITIONS = read_codelist(domain = "biological", codelist = "INDIVIDUAL_CONDITIONS")
MEASUREMENTS          = read_codelist(domain = "biological", codelist = "MEASUREMENTS")
MEASUREMENT_TOOLS     = read_codelist(domain = "biological", codelist = "MEASUREMENT_TOOLS")
TYPES_OF_MEASUREMENT  = read_codelist(domain = "biological", codelist = "TYPES_OF_MEASUREMENT")
TYPES_OF_FATE         = read_codelist(domain = "biological", codelist = "TYPES_OF_FATE")
FATES                 = read_codelist(domain = "biological", codelist = "FATES")
SEX                   = read_codelist(domain = "biological", codelist = "SEX")

#CURRENCIES   = read_codelist(domain = "socio_economics", schema = "socio_economics", codelist = "CURRENCIES")
#DESTINATION_MARKETS    = read_codelist(domain = "socio_economics", schema = "socio_economics", codelist = "DESTINATION_MARKETS")
#PRICING_LOCATIONS    = read_codelist(domain = "socio_economics", schema = "socio_economics", codelist = "PRICING_LOCATIONS")
#PRODUCT_TYPES        = read_codelist(domain = "socio_economics", schema = "socio_economics", codelist = "PRODUCT_TYPES")

## legacy code lists
LEGACY_FISHERIES    = read_codelist(domain = "legacy", codelist = "FISHERIES")
LEGACY_FLEETS       = read_codelist(domain = "legacy", codelist = "FLEETS")
LEGACY_PROCESSINGS  = read_codelist(domain = "legacy", codelist = "DATA_PROCESSINGS")
LEGACY_SPECIES      = read_codelist(domain = "legacy", codelist = "SPECIES")
LEGACY_SOURCES      = read_codelist(domain = "legacy", codelist = "DATA_SOURCES")
LEGACY_COVERAGE     = read_codelist(domain = "legacy", codelist = "COVERAGE_TYPES")
LEGACY_ESTIMATION   = read_codelist(domain = "legacy", codelist = "ESTIMATION_TYPES")
LEGACY_EFFORT_UNITS = read_codelist(domain = "legacy", codelist = "EFFORT_UNITS")
LEGACY_CATCH_UNITS  = read_codelist(domain = "legacy", codelist = "CATCH_UNITS")
LEGACY_DATA_TYPES   = read_codelist(domain = "legacy", codelist = "DATA_TYPES")
LEGACY_FATES        = read_codelist(domain = "legacy", codelist = "FATES")
LEGACY_BOAT_TYPES   = read_codelist(domain = "legacy", codelist = "BOAT_TYPES")
LEGACY_SAMPLED_CATCH = read_codelist(domain = "legacy", codelist = "SAMPLED_CATCH_TYPES")
LEGACY_MEASUREMENT_TOOLS = read_codelist(domain = "legacy", codelist = "MEASUREMENT_TOOLS")
LEGACY_MEASUREMENT_TYPES = read_codelist(domain = "legacy", codelist = "MEASUREMENT_TYPES")

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
                       filename = paste0(name, "_", version_number(name))
                     )
                   )
              )
  )
}