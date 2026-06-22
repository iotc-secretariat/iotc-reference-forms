# IOTC ROS Collection Forms – Changelog

# IOTC ROS data collection forms - tracked changes

## v4 ---> v5

remove the fields "is straight"
update with the new code lists








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