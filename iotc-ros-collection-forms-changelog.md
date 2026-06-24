# IOTC ROS Collection Forms – Changelog

# IOTC ROS data collection forms - tracked changes

## LL

## v4 ---> v5

The Secretariat determined that it was best to link the code lists within the data collection forms. All of the appropriate codelists from the IOTC data cateloge have been linked with the appripriate field name
to improve the accurate of logical response fields, a code list was create and linked in the appropriate field names

check - light attached - needs to be collected for SSI? 
added logical responses code lists

### 5-LL

#### Fields removed 
| 5-LL     | Length 1   | is straight                   | field removed   |
| 5-LL     | Length 2   | is straight                   | field removed   |





## v3 --> v4

## Updates througout (occurring in multiple places)
1. "number" changed to "ID" for example: observed trip number --> observed trip ID
2. Optional sections changed to GREEN from gray, but individual fields were changed to WHITE. This simiplifies the colours on the form. Either blue or white. BLUE is mandatory.
3. Numbering of the fields was removed
4. all linked code lists removed
5. version number updated

## Strutural changes
Sheets with code lists have been removed. 

### Shet 1 
| Sheet    | Section                 | Field (v3)                   |Change (v4)       |
|:---------|:------------------------|:-----------------------------|:-----------------|
| 1-LL     | Observer Identification | Observer registration number   | observer IOTC ID |
| 1-LL     | Vessel Identification   | Vessel country of registration | changed to optional (white) |
| 1-LL     | Vessel Identification   | Vessel phone                   | fields removed   |
| 1-LL     | Vessel Identification   | Vessel e-mail(s)               | fields removed
| 1-LL     | Vessel Identification   | vessel fax(es)                 | fields removed
| 1-LL     | Vessel owner and personnel|       NA                     | Heading changed to Personnel |
| 1-LL     | Personnel               | Registered owner fields        | fields removed   |
| 1-LL     | Personnel               | Charter/operator fields        | fields removed   |
| 1-LL     | Personnel               | Fishing Master fields          | changed to mandatory   |
| 1-LL     | Personnel               | Skipper / Captain fields       | changed to mandatory   |
| 1-LL     | Vessel attributes       | Tonnage and GT|GRT             | merged into a single field / no units   |
| 1-LL     | Vessel attributes       | Length Overall and m|ft        |  changed to length overall (LOA) in metres  |
| 1-LL     | Vessel attributes       | fishing storage capacity & t|m3 |  merged to one cell-Fish storage capacity in m3 |
| 1-LL     | Vessel electronics      | GPS  (Field changed)           | GNSS |
| 1-LL     | Vessel electronics      | expandable bathym              | field renamed: XBT |
| 1-LL     | Vessel electronics      | SST gauge                      | field removed      |
| 1-LL     | Vessel electronics      | waether facsimile              | field removed |
| 1-LL     | Vessel electronics      | all fields                     | changed to optional |
| 1-LL     | Waste Management        | all fields                     | changed to optional  |
| 1-LL     | Observed trip summary   | number of days searching       | changed to optional |
| 1-LL     | Observed trip summary   | number of active fishing days  | changed to optional |
| 1-LL     | Observed trip summary   | number of days lost            | changed to optional |


### Sheet 2


| 2-LL     | NA                      | observer name                  | removed | 
| 2-LL     | Branchline configurations     | section heading          | changed to green (optional) | 
| 2-LL     | Branchline configurations     | length fields            | optional | 
| 2-LL     | Branchline configurations     | diameter fields          | optional | 
| 2-LL     | additional branchline details | section heading          | changed to green (optional) | 
| 2-LL     | mitigation devices            | section heading          | changed to green (optional) | 
| 2-LL     | tori line details | section heading                      | changed to blue (indicating mandatory fields) | 
| 2-LL     | tori line details | tori line length                     | units field compressed into length value field, reported in m |
| 2-LL     | tori line details | streamer details                     | different format, new subsection | 
| 2-LL     | tori line details | streamer lengths                     | removed unit field, labeled in length field |
| 2-LL     | tori line details | distance between streamer fields     | removed unit field, labeled in distance field|
| 2-LL     | tori line details | towed objects                        | both fields now optional | 


### Sheet 3

| 3-LL     | NA                | observer name                        | field removed | 
| 3-LL     | Setting operations| vessel speed                         | changed to mandatory |
| 3-LL     | Setting operations| line setter speed                    | changed to mandatory |
| 3-LL     | Setting operations| line setter speed                    | units field removed |
| 3-LL     | Setting operations| mainline                             | **new field: mainline material |
| 3-LL     | Setting operations| mainline length                      | changed to optional |
| 3-LL     | Setting operations| number of hooks between floats       | changed to mandatory |
| 3-LL     | Setting operations| target species                       | only first one is mandatory |
| 3-LL     | Setting operations| VMS on                               | field removed |
| 3-LL     | Setting operations| Leader material (type and percent)   | **new fields added |
| 3-LL     | Setting operations| distance between branchlines         | field removed |
| 3-LL     | Setting operations| floatline length                     | field removed |
| 3-LL     | Setting operations| total no. radio/dhan buoys set       | field removed |
| 3-LL     | Setting operations| branchline length                    | **new field   |
| 3-LL     | Lights            | NA                                   | new section created |
| 3-LL     | Hooks             | % hooks                     | changed to optional |
| 3-LL     | Bait details      | type                        | changed to "condition" |
| 3-LL     | Bait details      | ratio                       | changed to "%" |
| 3-LL     | Mitigation measures| branchline weighted        | changed to optional |
| 3-LL     | mitigation measures| hooks set between dusk and dawn  | field removed |
| 3-LL     | mitigation measures| avg branchline weight    | field removed |
| 3-LL     | mitigation measures| Avg sinker weight        | **new field added |
| 3-LL     | mitigation measures| Underwater setting       | field removed |
| 3-LL     | mitigation measures| hook pods                | **new fields added|
| 3-LL     | Hauling operations | end hauling operations   | all fields changed to mandatory |
| 3-LL     | Hauling operations | methods to stun fish     | field removed |
| 3-LL     | Hauling operations | number of branchline haulings observerd  | **new field added |


### Sheet 4

| 4-LL     | NA                 | observer name            | field removed |
| 4-LL     | Catch details      | catch number             | changed to "catch ID" |
| 4-LL     | Catch details      | fate                     | split into two fields: fate type and fate code |
| 4-LL     | Catch details      | number                   | field name changed to number of fish |
| 4-LL     | Catch details      | unit (for weight)        | removed, weight is labeled as reported in kg |



### Sheet 5

| 5-LL     | NA                 | observer name            | field removed |
| 5-LL     | NA                 | set number               | changed to "Set ID" and moved to heading |
| 5-LL     | Catch details      | Catch ID and Specimen ID | **new fields |
| 5-LL     | Catch details      | length 2 section | **new fields (same as length 1 but optional) (moved from 6-LL v3) |
| 5-LL     | Catch details      | maturiy (sex and scale) | **new fields (revised from 6-LL v3) |
| 5-LL     | Catch details      | sample collected section | **new field (destination) (revised from 6-LL v3) |
| 5-LL     | Catch details      | depredation details section | **new fields (depredation source, observer predator) |


### Sheet 6* This sheet is now for SSI data. 

| 6-LL     | SSIs sheet         |  | **new sheet created specifically for SSI data |
| 6-LL     | SSIs sheet         | observed trip ID | **new sheet created specifically for SSI data |
| 6-LL     | SSIs sheet         | Set ID | **new sheet created specifically for SSI data |
| 6-LL     | Specimen details   | Specimen ID | **new field added |
| 6-LL     | Specimen details   | Condition at capture | **new field added |
| 6-LL     | Specimen details   | Condition at release | **new field added |
| 6-LL     | Specimen details   | Gear Interaction | **new field added |
| 6-LL     | Specimen details   | Hook type | **new field added |
| 6-LL     | Specimen details   | bait condition | **new field added |
| 6-LL     | Specimen details   | bait type | **new field added |
| 6-LL     | Specimen details   | Leader material | **new field added |
| 6-LL     | Specimen details   | Leader diameter | **new field added |
| 6-LL     | Specimen details   | light attached | **new field added |
| 6-LL     | Specimen details   | Dehooker device | **new field added |
| 6-LL     | Specimen details   | Brought onboard | **new field added |
| 6-LL     | Specimen details   | Handling method | **new field added |
| 6-LL     | Specimen details   | Revival | **new field added |
| 6-LL     | Specimen details   | Photo ID | **new field added |
| 6-LL     | Specimen details   | Depredation source | **new field added |
| 6-LL     | Specimen details   | Observed predator | **new field added |


### Sheet 7

Sheet 7 (for transhipments was removed)



### PS

#### v4 --> v5
- code list URLs all updated to be "/latest/" rather than "1.0.0" - did not change the contents of the code lists
- adding code lists to logical responses
- removing fields "is straight"

##### 1-PS

| Sheet    | Section                 | Field (v4)                   |Change (v5)       |
|:---------|:------------------------|:-----------------------------|:-----------------|
| 1-PS     | Observer trip details (embarkation) | Country      | Code list linked |
| 1-PS     | Observer trip details (embarkation) | Port         | Code list linked |
| 1-PS     | Observer trip details (disembarkation) | Country   | Code list linked |
| 1-PS     | Observer trip details (disembarkation) | Port      | Code list linked |
| 1-PS     | Vessel identification | Vessel flag/chartering state     | Code list linked |
| 1-PS     | Vessel identification | Vessel port of registration    | Code list linked |
| 1-PS     | Vessel identification | Vessel country of registration     | Code list linked |
| 1-PS     | Vessel identification | Licensed target species    | Code list linked |
| 1-PS     | Vessel identification | Main fishing gear     | Code list linked |
| 1-PS     | Vessel owner and personnel | fishing master: nationality     | Code list linked |
| 1-PS     | Vessel owner and personnel | skipper (captain): nationality     | Code list linked |
| 1-PS     | Vessel trip details | departure - country    | Code list linked |
| 1-PS     | Vessel trip details | departure - port   | Code list linked |
| 1-PS     | Vessel trip details | return - country    | Code list linked |
| 1-PS     | Vessel trip details | return - port    | Code list linked |
| 1-PS     | Vessel attributes | Hull material    | Code list linked |
| 1-PS     | Vessel attributes | Fish preservation methods    | Code list linked |
| 1-PS     | Vessel attributes | fish storage type    | Code list linked |
| 1-PS     | Vessel electronics | GNSS    | format changed, Code list linked |
| 1-PS     | Vessel electronics | VMS    | format changed, Code list linked |
| 1-PS     | Vessel electronics | AIS    | format changed, Code list linked |
| 1-PS     | Vessel electronics | Radars   | format changed, Code list linked |
| 1-PS     | Vessel electronics | Track plotter    | format changed, Code list linked |
| 1-PS     | Vessel electronics | Depth sounder    | format changed, Code list linked |
| 1-PS     | Vessel electronics | Sonar    | format changed, Code list linked |
| 1-PS     | Vessel electronics | Doppler current m   | format changed, Code list linked |
| 1-PS     | Vessel electronics | XBT    | format changed, Code list linked |
| 1-PS     | Vessel electronics | VHF radios   | format changed, Code list linked |
| 1-PS     | Vessel electronics | HF radios    | format changed, Code list linked |
| 1-PS     | Vessel electronics | Sat Comm    | format changed, Code list linked |
| 1-PS     | Vessel electronics | FIS    | format changed, Code list linked |
| 1-PS     | Waste management | waste category   | Code list linked |
| 1-PS     | Waste management | storage/disposal method   | Code list linked |
| 1-PS     | Observed trip summary | Reasons for lost days  | Code list linked |

##### 2-PS

| Sheet    | Section                 | Field (v4)                   |Change (v5)       |
|:---------|:------------------------|:-----------------------------|:-----------------|
| 2-PS     | Special equipment or machinery | power block  | format changed, Code list linked |
| 2-PS     | Special equipment or machinery | purse winch | format changed, Code list linked |


##### 3-PS

| Sheet    | Section                 | Field (v4)                   |Change (v5)       |
|:---------|:------------------------|:-----------------------------|:-----------------|
| 3-PS     | Setting operations | School sighting cues  | Code list linked |
| 3-PS     | Setting operations | School types  | Code list linked |
| 3-PS     | Setting operations | First detection method  | Code list linked |
| 3-PS     | Object details | Deployed  | format changed, Code list linked |
| 3-PS     | Object details | Retrieved | format changed, Code list linked |
| 3-PS     | Object details | Raft | Code list linked |
| 3-PS     | Object details | Tail | Code list linked |
| 3-PS     | Cetaceans and whale shark sightings | Sighted before setting  | format changed, Code list linked |
| 3-PS     | Cetaceans and whale shark sightings | Species | Code list linked |
| 3-PS     | Cetaceans and whale shark sightings | Caught in the net | format changed, Code list linked |


##### 4-PS

| Sheet    | Section                 | Field (v4)                   |Change (v5)       |
|:---------|:------------------------|:-----------------------------|:-----------------|
| 4-PS     | Catch details | Species  | Code list linked |
| 4-PS     | Catch details | Fate type  | Code list linked |
| 4-PS     | Catch details | Fate code  | Code list linked |
| 4-PS     | Catch details | Sampling method  | Code list linked |
| 4-PS     | Catch details | processing type  | Code list linked |
| 4-PS     | Catch details | Weight unit | field removed, value to be reported in kg |
| 4-PS     | Catch details | Estimation method  | Code list linked |
| 4-PS     | Tag details | Type  | Code list linked |

##### 5-PS

| Sheet    | Section                 | Field (v4)                   |Change (v5)       |
|:---------|:------------------------|:-----------------------------|:-----------------|
| 5-PS     | Catch details | Sampling method  | Code list linked |
| 5-PS     | Catch details | Length 1 - Type | Code list linked |
| 5-PS     | Catch details | Length 1 - measurement tool | Code list linked |
| 5-PS     | Catch details | Length 1 - Straight | Field removed |
| 5-PS     | Catch details | Length 2 - Type | Code list linked |
| 5-PS     | Catch details | Length 2 - Measurement tool | Code list linked |
| 5-PS     | Catch details | Length 2 - Straight | Field removed |
| 5-PS     | Catch details | Processing type | Code list linked |
| 5-PS     | Catch details | Weight measurement tool | Code list linked |
| 5-PS     | Catch details | Sex | Code list linked |
| 5-PS     | Catch details | Maturity stage | Code list linked |
| 5-PS     | Catch details | Sample collected - Type | Code list linked |
| 5-PS     | Catch details | Sample collected - preservation method | Code list linked |

##### 6-PS

| Sheet    | Section                 | Field (v4)                   |Change (v5)       |
|:---------|:------------------------|:-----------------------------|:-----------------|
| 6-PS     | Catch details | Condition at capture  | Code list linked |
| 6-PS     | Catch details | Condition at release  | Code list linked |
| 6-PS     | Catch details | Gear interaction  | Code list linked |
| 6-PS     | Catch details | Brought onboard  | format changed, Code list linked |
| 6-PS     | Catch details | Handling method  | Code list linked |
| 6-PS     | Catch details | Revival  | format changed, Code list linked |

##### 6-PS

| Sheet    | Section                 | Field (v4)                   |Change (v5)       |
|:---------|:------------------------|:-----------------------------|:-----------------|
| 7-PS     | Daily activities | Activity type | Code list linked |


#### v3 ---> v4

1. Instructions sheet added at the start
2. Field numbering removed
3. code lists de-linked



##### 1-PS

| Sheet    | Section                 | Field (v3)                   |Change (v4)       |
|:---------|:------------------------|:-----------------------------|:-----------------|
| 1-PS     | Observer Identification | Observer registration number   | observer IOTC ID |
| 1-PS     | Observer Identification | Observer trip number   | observed trip ID |
| 1-PS     | Observer Identification | Observer nationality  | field removed |
| 1-PS     | Observer Trip details   | At sea embarkation (subsection)   | changed to blue (mandatory) |
| 1-PS     | Observer Trip details | date / time of embarkation (UTC) (subsection)  | changed to blue (mandatory) |
| 1-PS     | Observer Trip details   | At sea disembarkation (subsection)   | changed to blue (mandatory) |
| 1-PS     | Observer Trip details | date / time of disembarkation (UTC) (subsection)  | changed to blue (mandatory) |
| 1-PS     | Vessel information | Vessel IMO or Lloyds number  | changed to white (optional) |
| 1-PS     | Vessel information | Vessel port of registration | changed to white (optional) |
| 1-PS     | Vessel information | Vessel country of registration  | changed to white (optional) |
| 1-PS     | Vessel information | Vessel phone(s) | field removed |
| 1-PS     | Vessel information | Vessel fax(es) | field removed |
| 1-PS     | Vessel information | Vessel email(s) | field removed |
| 1-PS     | Vessel information | Licensed target species | changed to white |
| 1-PS     | Vessel information | Main fishing gear | changed to mandatory |
| 1-PS     | Vessel owner and personnel | registered owner | fields removed |
| 1-PS     | Vessel owner and personnel | charter/operator | fields removed |
| 1-PS     | Vessel owner and personnel | fishing master | changed to mandatory (blue) |
| 1-PS     | Vessel owner and personnel | Skipper (captain) | changed to mandatory (blue) |
| 1-PS     | Vessel trip details | Latitude/longitude | changed to mandatory (blue) |
| 1-PS     | Vessel trip details | date/time vessel sailed (UTC) | changed to mandatory (blue) |
| 1-PS     | Vessel attributes | tonnage | gross tonnage |
| 1-PS     | Vessel attributes | Length overall  | units merged into single field (reported in m) |
| 1-PS     | Vessel attributes | hull material | changed to operational (white) |
| 1-PS     | Vessel attributes | main engines (subsection) | changed to optional (white) |
| 1-PS     | Vessel attributes | fish storage capacity | units field merged into single field (reported in m3) |
| 1-PS     | Vessel attributes | fish storage capacity | changed to optional (white) |
| 1-PS     | Vessel electronics | all fields | changed to optional (white) |
| 1-PS     | Vessel electronics | GPS | GNSS |
| 1-PS     | Vessel electronics | SST guauge | field removed |
| 1-PS     | Vessel electronics | Weather facsmilie  | field removed |
| 1-PS     | Waste management | Waste category  | changed to optional (white) |
| 1-PS     | Waste management | storage / disposal method | changed to optional (white) |
| 1-PS     | Observed trip summary | Reason for days lost  | changed to optional (white) |


##### 2-PS


| Sheet    | Section                 | Field (v3)                   |Change (v4)       |
|:---------|:------------------------|:-----------------------------|:-----------------|
| 2-PS     | NA | Observer name  | field removed |
| 2-PS     | NA | Observed trip no. | Observed trip ID |
| 2-PS     | Special equipment or machinery | all fields | changed to optional (white) |
| 2-PS     | General gear attributes | all fields | changed to optional (white) |
| 2-PS     | General gear attributes | skiff power | fields removed |


##### 3-PS


| Sheet    | Section                 | Field (v3)                   |Change (v4)       |
|:---------|:------------------------|:-----------------------------|:-----------------|
| 3-PS     | NA | Observer name  | field removed |
| 3-PS     | NA | Observed trip no. | Observed trip ID |
| 3-PS     | NA | Set number | Set ID |
| 3-PS     | Setting operations | Beaufort | field removed |
| 3-PS     | Setting operations | School types | field added |
| 3-PS     | Setting operations | time net pursed | changed to date/time UTC format |
| 3-PS     | Setting operations | time start brailing | changed to date/time UTC format |
| 3-PS     | Setting operations | time end brailing | changed to date/time UTC format |
| 3-PS     | Setting operations | time skiff onboard | changed to date/time UTC format |
| 3-PS     | Setting operations | time skiff onboard | changed to mandatory (blue) |
| 3-PS     | Object details | Buoy ID | changed to optional (white) |
| 3-PS     | Object details | FAD equipped with artificial lights | changed to optional (white) |
| 3-PS     | Object details | Artificial FAD design | changed to FAD design |
| 3-PS     | Cetaceans and whale sharks sightings during setting | number sighted | changed to mandatory (blue) |
| 3-PS     | Support vessel | all fields | fields removed |
| 3-PS     | Current | all fields | fields removed |

##### 4-PS

| Sheet    | Section                 | Field (v3)                   |Change (v4)       |
|:---------|:------------------------|:-----------------------------|:-----------------|
| 4-PS     | NA | Observer name  | field removed |
| 4-PS     | NA | Set Number  | changed to Set ID |
| 4-PS     | NA | Set Number  | changed to mandatory (blue) |
| 4-PS     | Catch details | Catch Number  | changed to Catch ID |
| 4-PS     | Catch details | Catch Number  | changed to mandatory (blue) |
| 4-PS     | Catch details | Fate  | split into two mandatory columns: Fate type, fate code |
| 4-PS     | Catch details | Number  | changed to Number of fish |
| 4-PS     | Catch details | Number  | changed to mandatory (blue) |
| 4-PS     | Catch details | Processing type  | changed to mandatory (blue) |
| 4-PS     | Catch details | Value  | changed to mandatory (blue) |
| 4-PS     | Catch details | Unit | changed to mandatory (blue) |
| 4-PS     | Catch details | Estimation Method  | changed to mandatory (blue) |
| 4-PS     | Catch details | Additional details (condition at capture and condition at release)  | fields removed |
| 4-PS     | Specimen details | All fields  | removed from this sheet (moved to sheet 5-PS) |
| 4-PS     | Tag details | Catch number  | changed to Catch ID |
| 4-PS     | Tag details | Catch number  | changed to mandatory (blue) |
| 4-PS     | Tag details | Specimen number | changed to Specimen ID |
| 4-PS     | Tag details | Specimen number | changed to mandatory (blue) |
| 4-PS     | Tag details | Release | changed to optional (white) |
| 4-PS     | Tag details | Recovery | changed to optional (white) |
| 4-PS     | Tag details | Type | changed to optional (white) |
| 4-PS     | Tag details | Tag #1 | changed to optional (white) |
| 4-PS     | Tag details | Tag #2 | changed to optional (white) |
| 4-PS     | Tag details | Finder name and contact details | changed to optional (white) |
| 4-PS     | Tag details | Well | changed to optional (white) |


##### 5-PS

| Sheet    | Section                 | Field (v3)                   |Change (v4)       |
|:---------|:------------------------|:-----------------------------|:-----------------|
| 5-PS     | NA | Observer name  | field removed |
| 5-PS     | Catch details | Set Number  | changed to Set ID |
| 5-PS     | Catch details | Set Number  | changed to mandatory (blue) |
| 5-PS     | Catch details | Set Number  | moved to header |
| 5-PS     | Catch details | Catch ID  | New field added |
| 5-PS     | Catch details | Specimen Number  | changed to Specimen ID |
| 5-PS     | Catch details | Specimen Number  | changed to mandatory (blue) |
| 5-PS     | Catch details | Length 2 (type, value, measuring tool, straight)  | new fields added (mirrors Length 1 fields) |
| 5-PS     | Catch details | Weight (processing type, value, estimation method)  | changed to optional (white ) |
| 5-PS     | Catch details | Sex  | changed to optional (white) |
| 5-PS     | Catch details | Maturity (scale and stage)  | new fields added |
| 5-PS     | Catch details | Sample collected (type, preservation method, destination)  | new fields added |




##### 6-PS

| Sheet    | Section                 | Field (v3)                   |Change (v4)       |
|:---------|:------------------------|:-----------------------------|:-----------------|
| 6-PS     | NA | Observer name  | field removed |
| 6-PS     | Catch details | Set Number  | changed to Set ID |
| 6-PS     | Catch details | Set Number  | changed to mandatory (blue) |
| 6-PS     | Catch details | Set Number  | moved to header |
| 6-PS     | Catch details | Catch ID  | New field added |
| 6-PS     | Catch details | Specimen Number  | changed to Specimen ID |
| 6-PS     | Catch details | Specimen Number  | changed to mandatory (blue) |
| 6-PS     | Catch details | All other fields  | Field removed. These fields are now on 5-PS. |
| 6-PS     | Catch details | Condition at capture  | New field added |
| 6-PS     | Catch details | Condition at release  | New field added |
| 6-PS     | Catch details | Gear interaction  | New field added |
| 6-PS     | Catch details | Brought onboard  | New field added |
| 6-PS     | Catch details | Handling method | New field added |
| 6-PS     | Catch details | Revival  | New field added |
| 6-PS     | Catch details | Photo ID  | New field added |


##### 7-PS
- Transshipment section removed from data collection forms

##### 8-PS (now called 7-PS)

| Sheet    | Section                 | Field (v3)                   |Change (v4)       |
|:---------|:------------------------|:-----------------------------|:-----------------|
| 7-PS     | NA | Observer name  | field removed |
| 7-PS     | NA | Observed Trip no. | changed to Observed Trip ID |
| 7-PS     | Daily Activity | Activity  | Changed to Activity type |





