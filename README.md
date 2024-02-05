# README

## What is this repository for?

IOTC data reporting forms have recently undergone a major revision (2023+) which, combined with the introduction of the new approach to the definition of IOTC fisheries, requires:

1.  Defining cleaner, more user-friendly templates which drop client side controls (e.g., Excel macros) in favour of online validators, while leveraging the new [IOTC reference data catalogue](https://data.iotc.org/reference/latest/)
2.  Systematically describing the form structure and provide guidelines on how to fill their content
3.  Accounting for the *interim* period during which two versions of the major IOTC forms (1-RC, 1-DI, 3-CE, 4-SF) will coexist, one still referencing the _old_ [fishery](https://data.iotc.org/reference/latest/domain/legacy/#fisheries) and [species](https://data.iotc.org/reference/latest/domain/legacy/#species) codes as found in the IOTC data reporting guidelines (2014) and in the `IOTCStatistics` database, including the provision of target species as a side element to the fishery, and one fully adopting the _new_ [fisheries](https://data.iotc.org/reference/latest/domain/fisheries/#fisheries) and [species](https://data.iotc.org/reference/latest/domain/biological/#species) codes as found in the `IOTC_master` database.

Therefore, this repository addresses points 1. and 2. above by:

-   providing authoritative access to the (empty) templates for each new IOTC form
-   including the RMD files that describe each new form and the provisions to convert these into HTML documents
-   automatically uploading the artifacts (forms and HTML documents) to `data.iotc.org`

## How do I get set up?

### Environment variables

Two sets of system environment variables are required in order to be able to properly build this project and its artifacts:

#### Data access credentials

-   `DEFAULT_IOTC_LIBS_DB_SERVER` pointing to the MSSQLServer hosting the `IOTC_master` database
-   `DEFAULT_IOTC_LIBS_DB_USER` '/ `DEFAULT_IOTC_LIBS_DB_PASSWORD` the credentials of a local MSSQLServer user that can access the `IOTC_master` database in read mode

> The names of the three environment variables above *shall* be changed to something more appropriate, e.g., `DEFAULT_IOTC_MASTER_DB_*`

### FTP server access credentials

-   `DATA_IOTC_SERVER_IP` pointing to the Linux machine that hosts the Apache2 web server handling requests to `data.iotc.org` and its various services
-   `DATA_IOTC_USERNAME` / `DATA_IOTC_PASSWORD` the Linux credentials of a user with proper access rights for connecting to the sFTP server and transfer the process artifacts

## How to build the artifacts

-   Ensure that all environment variables are properly set (in case, contact [francis.kilindo\@fao.org](mailto:francis.kilindo@fao.org){.email} to retrieve all sensitive information above)
-   Run the `00.run.R` script and wait for its completion

### Process outputs

The process will take care of:

1.  Processing the RMD files for each IOTC form (see the content of the `RMDs` folder) and produce an HTML document for each of these, that will be placed under the `out\HTML` folder
2.  Connect to the sFTP server and transfer these HTML documents to `/var/www/static/reference/latest/forms`, from where they will eventually be accessed through the following URLs:

-   <https://data.iotc.org/reference/latest/forms/Form-1RC.html>
-   <https://data.iotc.org/reference/latest/forms/Form-1DI.html>
-   <https://data.iotc.org/reference/latest/forms/Form-2FC.html>
-   <https://data.iotc.org/reference/latest/forms/Form-3BU.html>
-   <https://data.iotc.org/reference/latest/forms/Form-3CE.html>
-   <https://data.iotc.org/reference/latest/forms/Form-4SF.html>

> Descriptive documents for the *multiple* versions of forms `3CE` and `4SF` still need to be provided, as are those for forms `1DR`, `1IN`, `3AA`, and `3DA`, and those for the *interim* versions of form `1RC`, `1DI`, `2FC`, `3CE`, `3CE-multiple`, `4SF`, and `4SF-multiple` (which are not strictly required)

3.  Connect to the sFTP server and upload the (empty) Excel templates for each form to `/var/www/static/reference/latest/forms` and `/var/www/static/reference/latest/forms/interim`, from where they will eventually be accessed through the following URLs:

-   <https://data.iotc.org/reference/latest/forms/Form-1DR.xlsx>
-   <https://data.iotc.org/reference/latest/forms/Form-1RC.xlsx>
-   <https://data.iotc.org/reference/latest/forms/Form-1DI.xlsx>
-   <https://data.iotc.org/reference/latest/forms/Form-1IN.xlsx>
-   <https://data.iotc.org/reference/latest/forms/Form-2FC.xlsx>
-   <https://data.iotc.org/reference/latest/forms/Form-3BU.xlsx>
-   <https://data.iotc.org/reference/latest/forms/Form-3CE.xlsx>
-   <https://data.iotc.org/reference/latest/forms/Form-3CE-multiple.xlsx>
-   <https://data.iotc.org/reference/latest/forms/Form-3AA.xlsx>
-   <https://data.iotc.org/reference/latest/forms/Form-3AA-multiple.xlsx>
-   <https://data.iotc.org/reference/latest/forms/Form-3DA.xlsx>
-   <https://data.iotc.org/reference/latest/forms/Form-3DA-multiple.xlsx>
-   <https://data.iotc.org/reference/latest/forms/Form-4SF.xlsx>
-   <https://data.iotc.org/reference/latest/forms/Form-4SF-multiple.xlsx>

and

-   <https://data.iotc.org/reference/latest/forms/interim/Form-1RC_interim.xlsx>
-   <https://data.iotc.org/reference/latest/forms/interim/Form-1DI_interim.xlsx>
-   <https://data.iotc.org/reference/latest/forms/interim/Form-2FC_interim.xlsx>
-   <https://data.iotc.org/reference/latest/forms/interim/Form-3CE_interim.xlsx>
-   <https://data.iotc.org/reference/latest/forms/interim/Form-3CE_interim-multiple.xlsx>
-   <https://data.iotc.org/reference/latest/forms/interim/Form-4SF_interim.xlsx>
-   <https://data.iotc.org/reference/latest/forms/interim/Form-4SF_interim-multiple.xlsx>

for the *interim* versions of the forms above, which include a _target species_ element, and still reference the _legacy_ IOTC codelists for [fishery](https://data.iotc.org/reference/latest/domain/legacy/#fisheries) and [species](https://data.iotc.org/reference/latest/domain/legacy/#species).

### Contribution guidelines

The RMD files might need to embed some of the [IOTC reference codelists](https://data.iotc.org/reference/latest/) in order to provide specific summary information to the end users.

For this reason, the `01.initialize.R` scripts takes care of:

-   Building the mapping between a given codelist and the remote resource exposed through the IOTC reference data catalogue
-   Fetching the codelist CSV from its remote location, whose URLs is built as: `https://data.iotc.org/reference/latest/domain/<_domain_>/codelists/<_codelist_name_>_<_codelist_version_>.csv` (e.g.: <https://data.iotc.org/reference/latest/domain/admin/codelists/COUNTRIES_1.0.0.csv>)
-   Converting the CSV to a data table and assigning it to a variable in the current R session

> The `01.initialize.R` script is currently reading / importing the definition of a few codelists only, and namely those required by the RMD files for the 6 major IOTC forms (`1RC`, `1DI`, `2FC`, `3BU`, `3CE`, `4SF`).

In order for these steps to work, and for the proper variables to be assigned a value within the current R session, the initialization script reads the content of:

-   the `REFERENCE_CODELISTS_VIEW_MAPPINGS.csv` file, which has the following structure:
    -   `CL_SCHEMA` the name of a database schema
    -   `VIEW_NAME` the name of a specific view under that schema
    -   `REFERENCE_NAME` the reference name of the _virtual_ codelist modeled by the view
    -   `CL_NAME` the name of the _physical_ codelist (table) on top of which the view is built

    e.g.:
      
    |CL_SCHEMA|VIEW_NAME|REFERENCE_NAME|CL_NAME|
    |------|------|------|------|
    |refs_admin|V_CURRENT_CPCS|CURRENT_CPCS|CPCS|
    |refs_admin|V_ENTITIES|ENTITIES|ENTITIES|
    |refs_data|V_PROCESSINGS_CE|DATA_PROCESSINGS_CE|PROCESSINGS|
    |refs_data|V_PROCESSINGS_DI|DATA_PROCESSINGS_DI|PROCESSINGS|
    |refs_data|V_PROCESSINGS_FA|DATA_PROCESSINGS_FA|PROCESSINGS|
    |refs_data|V_PROCESSINGS_FC|DATA_PROCESSINGS_FC|PROCESSINGS|
    |refs_data|V_PROCESSINGS_RC|DATA_PROCESSINGS_RC|PROCESSINGS|
    |refs_data|V_PROCESSINGS_SF|DATA_PROCESSINGS_SF|PROCESSINGS|
    |refs_fishery|V_FISHERIES_DETAILS|FISHERIES_DETAILS|FISHERIES|
    |refs_fishery|V_FISHERIES_OUT|FISHERIES|FISHERIES|
    |refs_admin|V_AFOB_ACTIVITY_TYPES|AFAD_ACTIVITY_TYPES|FOB_ACTIVITY_TYPES|
    |refs_admin|V_DFOB_ACTIVITY_TYPES|DFOB_ACTIVITY_TYPES|FOB_ACTIVITY_TYPES|
    |refs_admin|V_AFOB_TYPES|AFAD_TYPES|FOB_TYPES|
    |refs_admin|V_DFOB_TYPES|DFOB_TYPES|FOB_TYPES|
    
> This same file is originally available in the `iotc-reference-data` project, so it needs to be kept up-to-date with it.

-   the `[refs_meta].CODELISTS_VERSIONS` table, which has the following structure:
    -   `CL_SCHEMA` the name of a database schema
    -   `CL_NAME` the name of a _physical_ codelist (i.e., a table under that schema)
    -   `VERSION` the codelist version
    -   `LAST_UPDATE` the date of last update (be it the addition of a new record, or the deletion / update of an existing record) for that codelist 
    
    e.g.: 
    
    |CL_SCHEMA|VIEW_NAME|VERSION|LAST_UPDATE|
    |------|------|------|------|
    |refs_admin|COUNTRIES|0|2023-05-12 00:00:00.000|
    |refs_admin|CPC_HISTORY|0|2023-05-12 00:00:00.000|
    |refs_admin|CPC_TO_FLAGS|0|2023-05-12 00:00:00.000|
    |refs_admin|CPCS|0|2023-05-12 00:00:00.000|
    |refs_admin|ENTITIES|0|2023-05-12 00:00:00.000|
    |refs_admin|FLEET_TO_FLAGS_AND_FISHERIES|34|2024-01-19 10:58:11.950|
    |refs_admin|FLEETS|34|2024-01-19 10:41:37.673|
    |refs_admin|IO_MAIN_AREAS|0|2023-05-12 00:00:00.000|
    |refs_biological|BAIT_CONDITIONS|0|2023-05-12 00:00:00.000|
    |refs_biological|BAIT_TYPES|0|2023-05-12 00:00:00.000|
    |refs_biological|DEPREDATION_SOURCES|0|2023-05-12 00:00:00.000|
    |refs_biological|FATES|1|2024-02-01 08:53:36.873|
    
> Updating the version of a _physical_ codelist is done automatically through triggers defined for each table, and named `VER_INS_DEL_REFS_<_schema_name_>_<_table_name_>` (for `INSERT`/`DELETE` operations performed on the table) or `VER_UPD_REFS_<_schema_name_>_<_table_name_>` (for `UPDATE` operations performed on the table).

By combining these two datasets it is possible to determine the latest version (and hence the resource name) of all codelists - both _physical_ and _virtual_ - and therefore allow the initialization script to download all codelist elements from its remote location.

The initialization scripts takes also care of resolving issues related to the mapping between database schemata (on `IOTC_master`) and codelist domains being not as trivial as theu should have been. 

For instance, codelists under the `admin` domain are currently stored as tables under either the `refs_admin` or the `refs_gis` schemata (depending on the case) whereas the vast majority of other codelists directly maps its domain to the corresponding database schema (`_domain_` -\> `refs_<domain>`). 

Additionally, some *derived* codelists (e.g., [IOTC main areas](https://data.iotc.org/reference/latest/domain/admin/#IOTC_areas_(GISIOIAA)) which are modeled as *views* in the `IOTC_master` database, need to see their version updated anytime a change to the underlying reference table (`[refs_gis].AREAS` in this example) is detected, and this requires modeling the *derived* tables accordingly in the reference codelist mapping file described earlier.
