# Abstract

IOTC ROS Reporting Forms – Changelog



## Form ROS-LL

# from v4 to v5

#### updated code lists
- Code lists updated to "/latest/"

| Sheet                       | Field                         |
|:----------------------------|:------------------------------|
| O-INFO              | embarkation: country                  |
| O-INFO              | embarkation : port                    |
| O-INFO              | disembarkation: country        |
| O-INFO              | disembarkation : port              |
| O-INFO              | reasons for lost days (all fields)      |
| V-INFO              | flag or chartering state     |
| V-INFO              | country, port, target species, main fishing gear, nationality (already changed)
| V-INFO              | country |
| V-INFO              | port (already done) |
| V-ATTRIBUTES              | hull material, fish preservation methods, fish storage types, waste management categories, waste management storage disposal methods  |
| G-CONFIG-BRANCHLINES             | material type, branchline storage |
| G-CONFIG-MITIGATION-DEVICES             | type, mitigation devices |
| E-SET             | material, target species |
| E-SET             | leader material type (already done) |
| E-SET-LIGHTS            | type, color (already done) |
| E-SET-MITIGATION-MEASURES             | measures |
| E-SET-HOOKS           | type (already done) |
| E-SET-BAITS             | condition, species |
| E-SET-HAULING            | sampling protocol (already done) |
| E-SET-CATCHES           | species, sampling method,processing type, estimation method (already done) |
| E-SET-CATCHES           | fate type, fate code  |
| E-SET-CATCHES-SPECIMEN           | sampling period, sampling method, type, measuring tool, processing type,  estimation method, sex, preservation method, depredation source, observed predator  |
| E-SET-CATCHES-SPECIMEN           | length 1/2: is straight - field removed   |
| E-SET-CATCHES-SPECIMEN           | type (already done)    |
| E-SET-CATCHES-SPECIMEN           | maturity stage - code list added**  |
| E-SET-CATCHES-SPECIMEN-SSI          | condition at capture, condition at release, hook type, bait condition and type, material, dehooker device, handling method, depredation source, observed predator  |
| E-SET-TAG-DETAILS           | type  |



# From v3 (10.5281/zenodo.17191683) to v4 (10.5281/zenodo.17509753)
### 2026-06-02

#### Removed

| Sheet                 | Section          | Field       |
|:----------------------|:-----------------|:------------|
| E-SET-CATCH-SPECIMENS | Specimen Details | is_straight |

#### Updated Code List

- Inclusion of a standard code list ([Logical Responses](https://data.iotc.org/reference/latest/domain/data/#logicalResponses)) for "boolean-type" data previously proposing Yes/No/Unk as string values.

| Sheet                       | Field                         |
|:----------------------------|:------------------------------|
| V-ATTRIBUTES                | gnss                          |
| V-ATTRIBUTES                | vms                           |
| V-ATTRIBUTES                | ais                           |
| V-ATTRIBUTES                | radars                        |
| V-ATTRIBUTES                | track_plotters                |
| V-ATTRIBUTES                | depth_sounder                 |
| V-ATTRIBUTES                | sonar                         |
| V-ATTRIBUTES                | doppler_current_meter         |
| V-ATTRIBUTES                | xbt                           |
| V-ATTRIBUTES                | vhf_radios                    |
| V-ATTRIBUTES                | hf_radios                     |
| V-ATTRIBUTES                | satellite_comm                |
| V-ATTRIBUTES                | sst_gauge                     |
| V-ATTRIBUTES                | fis                           |
| G-GENERAL                   | line_setter                   |
| G-GENERAL                   | line_hauler                   |
| G-GENERAL                   | bait_casting_machine          |
| G-CONFIG-MITIGATION-DEVICES | reach_surface                 |
| G-CONFIG-MITIGATION-DEVICES | shark_lines_set               |
| G-CONFIG-MITIGATION-DEVICES | minimum_deck_lighting_used    |
| G-CONFIG-MITIGATION-DEVICES | branchline_weighted           |
| G-CONFIG-MITIGATION-DEVICES | hook_pods                     |
| G-CONFIG-MITIGATION-DEVICES | bird_scaring_device_at_hauler |
| E-SET-TAG-DETAILS           | release                       |
| E-SET-TAG-DETAILS           | recovery                      |
| E-SET-CATCH-SPECIMENS-SSI   | brought_onboard               |
| E-SET-CATCH-SPECIMENS-SSI   | revival                       |

```{=html}
<!--Already deprecated in version 4
| V-ATTRIBUTES | weather_fax |
"SETTING_OPERATIONS_VMS_ON": "logical"
"SETTING_OPERATIONS_MITIGATION_MEASURES_HOOKS_SET_BETWEEN_DUSK_DAWN": "!logical"
"SPECIMEN_DETAILS_ADDITIONAL_CATCH_DETAILS_SSI_LIGHT_ATTACHED": "logical" -->
| V-ATTRIBUTES                | sst_gauge                     |
```

## Form ROS-PS

### v4 --> v5
- all of the links to the code lists updated to "/latest/", but content of code list unchanged by this update

#### Fields removed

| Sheet    | Section                 | Field (v4)                   |Change (v5)       |
|:---------|:------------------------|:-----------------------------|:-----------------|
| E-SET-CATCHES               | Catch details | Weight unit | field removed, value to be reported in kg |
| E-SET-CATCHES-SPECIMEN      | Catch details | Length 1 - Straight | Field removed |
| E-SET-CATCHES-SPECIMEN      | Catch details | Length 2 - Straight | Field removed |



### [v1](10.5281/zenodo.17509753) – 2026-06-03

#### Removed

| Sheet                 | Section          | Field       |
|:----------------------|:-----------------|:------------|
| E-SET-CATCH-SPECIMENS | Specimen Details | is_straight |

#### Updated Code List

- Inclusion of a standard code list ([Logical Responses](https://data.iotc.org/reference/latest/domain/data/#logicalResponses)) for "boolean-type" data previously proposing Yes/No/Unk as string values.

| Sheet | Field | Comment |
|:---|:---|----|
| V-ATTRIBUTES | gnss |  |
| V-ATTRIBUTES | vms |  |
| V-ATTRIBUTES | ais |  |
| V-ATTRIBUTES | radars |  |
| V-ATTRIBUTES | track_plotters |  |
| V-ATTRIBUTES | depth_sounder |  |
| V-ATTRIBUTES | sonar |  |
| V-ATTRIBUTES | doppler_current_meter |  |
| V-ATTRIBUTES | xbt |  |
| V-ATTRIBUTES | vhf_radios |  |
| V-ATTRIBUTES | hf_radios |  |
| V-ATTRIBUTES | satellite_comm |  |
| V-ATTRIBUTES | fis |  |
| G-GENERAL | power_block |  |
| G-GENERAL | purse_winch |  |
| E-SET | at_deploy | artificial_lights; to remove |
| E-SET | on_retrieval | artificial_lights; to remove |
| E-SET-CETACEANS | sighting_before_setting |  |
| E-SET-CETACEANS | caught_inside_net |  |
| E-SET-CATCH-SPECIMENS-SSI | brought_onboard |  |
| E-SET-CATCH-SPECIMENS-SSI | revival |  |
| E-SET-CATCH-SPECIMENS-SSI | release | tag_details |
| E-SET-CATCH-SPECIMENS-SSI | recovery | tag_details |

### [v4](https://doi.org/10.5281/zenodo.17509753) - 2025-11-17

#### Changes by Section from v3 to v4

#### UI CHANGES
OBSERVED TRIP NUMBER --> OBSERVED TRIP IP
SET NUMBER --> SET ID 
*SAME CHANGES MADE FOR ALL UNIQUE IDENTIFIERS

COUNTRY CODE --> COUNTRY, PORT CODE --> PORT
*SAME CHANGES MADE EACH TIME FIELD APPEARS

#### META

Focal point name, focal point email (v3) --> v4 liaison officer full name/email, and Organization name/email
new field: Reporting year
new field: reporting entity
new field: data source

#### O-INFO
OBSERVED_TRIP_NUMBER --> OBSERVED_TRIP_ID
NATIONALITY_CODE (REMOVED)
NUMBER OF FISHING DAYS:
  - SEARCHING (NOW OPTIONAL)
  - ACTIVELY FISHING (NOW OPTIONAL)
  - LOST (NOW OPTIONAL)
  
#### V-INFO
COUNTRY CODE --> COUNTRY
PORT CODE --> PORT
NUMBER --> REGISTRATION NUMBER
CONTACT (FIELDS REMOVED)
LISCENCED TARGET SPECIES (NOW A SINGLE FIELD)
OWNER (ALL FIELDS REMOVED)
CHARTER OR OPERATOR (ALL FIELDS REMOVED)
FISHING MASTER (NOW MANDATORY)
SKIPPER CAPTAIN (NOW MANDATORY)

####V-TRIP
COUNTRY CODE --> COUNTRY
PORT CODE --> PORT

V-ATTRIBUTES
TONNAGE (MERGED INTO ONE FIELD) --> GROSS_TONNAGE (NOW OPTIONAL)
LENGTH_OVERALL (MERGED INTO ONE FIELD) --> LOA_M (NOW OPTIONAL)
HULL MATERIAL CODE --> HULL MATERIAL (NOW OPTIONAL)
ENGINE FIELDS (ALL NOW OPTIONAL)
KW | HP | BHP --> POWER_UNIT
FISH STORAGE CAPACITY FIELDS (MERGED INTO ONE) --> FISH_STORAGE CAPACITY_M3 (NOW OPTIONAL)
AUTONOMY RANGE: DAYS|NM --> UNIT
VESSEL ELECTRONICS SECTION (ALL NOW OPTIONAL)
    SATELLITE_COMM --> SATCOM
    SST_GAUGE (REMOVED)
    WEATHER_FAX (REMOVED)
WASTE MANAGEMENT
    CATEGORY 1 CODE --> CATEGORY 1 (SAME FOR ALL CATEGORIES IN THIS SECTION)
    STORAGE DISPOSAL METHOD CODE 1 --> STORAGE DISPOSAL METHOD 1 (SAME FOR ALL METHOD CODES IN THIS SECTION)

#### G-GENERAL
GENERAL GEAR ATTRIBUTES SECTION (REMOVED)
ADDITIONAL BRANCHLINE DETAILS SECTION (REMOVED)
MITIGATION DEVICES SECTION (REMOVED)
TORI LINE DETAILS SECTION (REMOVED)

#### G-CONFIG-BRANCHLINES
CONFIGURATION NUMBER --> CONFIGURATION ID
SECTION NUMBER --> SECTION ID
MATERIAL TYPE CODE --> MATERIAL TYPE
LENGTH (COMBINED INTO ONE SECTION) --> LENGTH_M
DIAMETER (SECTION COMBINED INTO ONE) --> DIAMETER_CM

#### G-CONFIG-MITIGATION-MEASURES
*SECTIONS TAKEN FROM G-GENERAL (SEE ABOVE)
TORI LINE LENGTH (SECTION MERGED INTO ONE FIELD) --> TORI_LINE_LENGTH
STREAMER 
    - TYPE CODE --> TYPE
    - LINE LENGTH MAX (SECTION MERGED INTO ONE FIELD) --> LINE_LENGTH_MAX_M
