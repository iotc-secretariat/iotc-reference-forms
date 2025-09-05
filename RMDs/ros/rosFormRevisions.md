This document is a review of errors, inconsistencies, and updates needed in the ROS reporting forms and ROS form descriptions. 

## Longline Form

|Section | Reporting Form | Database | 
|:-------|:-----------------------------------|:----:| 
| V-INFO | 'REG_NUMBER' changed to 'REGISTRATION_NUMBER' | `ros_common.vessel_identification.registration_number` 
| V-ATTRIBUTES | 'TONNAGE' changed to 'GROSS_TONNAGE' - remove values reported in "GRT" from database | `ros_common.tonnages.value` |
| V-ATTRIBUTES | 'LENGTH' changed to 'LOA_M' - Remove unit and data reported in "KM" from database| `ros_common.lengths.value` |
| V-ATTRIBUTES | 'FISH_STORAGE_CAPACITY_VALUE' changed to "FISH_STORAGE_CAPACITY_M3" | `ros_common.capacities.value` |
| V-ATTRIBUTES | 'FISH_STORAGE_CAPACITY_UNIT' to remove - remove values reported in "MT" from database | `ros_common.capacities.unit` |
| V-ATTRIBUTES | 'METHOD_X_CODES' changed to 'METHOD_X' | `ros_common.vessel_attributes_fish_preservation_method.fish_preservation_method_code` |
| V-ATTRIBUTES | 'FISH_STORAGE_TYPE_X_CODE' changed to 'FISH_STORAGE_TYPE_X' | `ros_common.vessel_attributes_fish_storage_type.fish_storage_type_code` |
| V-ATTRIBUTES | 'DAYS \| NM" changed to 'AUTONOMY_RANGE_UNIT' | `ros_common.ranges.unit` |
| V-ATTRIBUTES | 'GPS' changed to 'GNSS' |  `ros_common.vessel_electronics.gps` |
| V-ATTRIBUTES | 'SATELLITE_COMS' changed to 'SATCOM' | `ros_common.vessel_electronics/satellite_communication_systems` |
| V-ATTRIBUTES | 'CATEGORY_X_CODE' changed to 'CATEGORY_X' | |
| V-ATTRIBUTES | 


| V-ATTRIBUTES | UPDATE REPORTING FORM - remove "other" column for waste management | **Agreed**

| G-CONFIG-BRANCHLINES| UPDATE REPORTING FORM - need to have 4 sections of Material type code, Length, and Diameter | noted | **no** 
| G-CONFIG-BRANCHLINES| UPDATE REPORTING FORM - change "CONFIGURATION NUMBER AND SECTION NUMBER TO CONFIGURATION IDENTIFIER AND SECTION IDENTIFIER, RESPECTIVELY | noted | **Agreed**
| G-CONFIG-MITIGATION-DEVICES | CHANGE REPORTING FORM - column: LINE_LENGTH_MAX should be one column, as there is already a second column for minimum. and they should each be called "STREAMER_LINE_LENGTH (min/max) | noted | **Remove empty column**
| G-CONFIG-MITIGATION-DEVICES | CHANGE DESCRIPTION FORM - towed objects number and type. Develop codelist for towed objects type or add code list to meta on PgAdmin | noted | **Get information on potential code list of towed objects**
| E-SET | UPDATE REPORTING FORM - mainline "value" should read "Mainline length value" | noted | **Keep VALUE and UNIT in the form but expand in Description** 
| E-SET | UPDATED REPORTING FORM - mainline "KM|NM" should read "Mainline length units" | noted | **UNIT**
| E-SET | UPDATE REPORTING FORM - "Branchline Length: should have fields for minimum and maximum length. 4 fields total | noted | **yes**
| E-SET | I added a new field in description to match reporting form, but unsure of contents | noted | **To clarify**
| E-SET-LIGHTS | UPDATE REPORTING FORM - NUM_LIGHTS looks like a hyperlink - very pedantic | noted | **Format to change in the form**
| E-SET-MITIGATION_MEASURES | should all mitigation measure codes (4) be mandatory? Or should 2-4 be optional? All mandatory in reporting form | noted | **Yes, captured by the code list - need to check with Tony**
| E-SET-BAITS | percentage description: "The approximate proportion (%) of bait species and condition used across all hooks in the set" need a new field for bait condition? | noted | **Check if in description form**
| E-SET-HAULING-BITEOFFS |  Configuration number to change to configuration identifier? | noted | **YES**
| E-SET-CATCHES | CHANGE FORM - change weight "KG|T" to "Unit" | noted | **YES**

Questions for TC:
- `ros_common.vessel_attributes_fish_preservation_method.fish_preservation_method_code`  - To rename to `ros_common.vessel_attributes_fish_preservation_method.fpm_code`?
- `ros_common.vessel_attributes_fish_storage_type.fish_storage_type_code` to rename to `ros_common.vessel_attributes_fish_storage_type.fst_code`?
- 



# Pole and Line form


| Line of Code|Section | Update needed | Status |
|:-------|:-------|:-----------------------------------:|:---------:|
| 25 - 31 | Description | review text for Description and data content | noted | DONE
| 60 | O-INFO --> Observer Identification | "Full Name"is optional in the reporting form, but mandatory in the form description | noted|- should be OPTIONAL 
| 223 - 238 | Trip Details --> vessel departure | In the form description I have IN PORT and AT SEA, but the form has no AT SEA section. | noted  | **CAN ADD AT SEA** - revisions across all forms
| 256 - 269 | Trip Details --> vessel return | In the form description I have IN PORT and AT SEA, but the form has no AT SEA section. | noted  | **CAN ADD AT SEA** - revision across all forms
| 290 | V-ATTRIBUTES | On the form their are two sections for "main engine", assuming there are 2 main engines. In the form description, there is 1. Duplicate section? | noted | **DUPLICATE IN DESCRIPTION FORM**
| 296 | V-ATTRIBUTES | ADD NEW FIELD TO FORM -for the subsection fish storage capacity, add another field to report units (m3 or t) | noted | **UNIT IS ALWAYS M3**
| 321 | V-ATTRIBUTES | CHANGE FORM - change field of the DAYS|NM column to "Autonomy range units"under Autonomy Range |  notes **UNIT**
| 328 | V-ATTRIBUTES | CHANGE -FORM - GPS column needs to be changed to GNSS | noted | **DONE**
| 341 - 376 | V-ATTRIBUTES | Waste management - there is a subcolumn called OTHER. Not sure what it is. ADD TO DESCRIPTION? | noted |**in description** for 1 - indicate the MAIN disposal method. Column OTHER will be removed.
| 457 - 461 | E-SET-TUNA | ADD NEW FIELD : Setting Operations - description for sighting cues says " sighting cues and types of schools detected". Add another field for Types of Schools Detected | noted |
| 480 | E-SET-TUNA | ADD NEW FIELD:  after school sighting cues, add a field or subsection for "bait type" | noted| **EACH SIGHTING CUE IS ASSOCIATED WITH ONE TYPE OF SCHOOL** **MAYBE CLARIFY DESCRIPTION**
| 515 | E-SET-TUNA-CATCHES-FISHING-TRIP | ADD NEW FIELD - add a "weight code" section before the value section | noted |**DISCUSS WITH SHIMAL TOMORROW** **MAYBE ADD PROCESSING CODE**
| 530 - 552 | E-SET-CATCHES-TUNA-FISHING-TRIP Catch Details|  section seems to be duplicated in the E-SET-TUNA-CATCHES section. Is this intentional? Which one should be kept? | noted |**YES INTENTIONAL**
| 625 - 626 | E-SET_CATHCES-BIOMETRIC | ADD NEW FIELD - for the WEIGHT section, the description form has a value column and a unit column. The reporting form just has one column |noted| **ALWAYS KG**
| 627 | E-SET-CATCHES-BIOMETRIC | check codelist - the reporting form has weight "measurement tool code" and the form description has weight "estimation methods" | noted | **BOTH CODE LIStS ARE thE SAME _ NEED to MERGE/PICK ONE**
| 635 - 636 | E-SET-CATCHES-BIOMETRIC | need to develop maturity codelists. Same on other forms | noted | **AGREED** |
| 638 - 645 | E-SET-CATCHES-BIOMETRIC | need to develop codelists for "sample collected" subsection |noted  | **AGREED**
| 663 | | E-SET-BAIT | in the file from the scientific committee, the first section is event number. Is that the same as Set ID? Do we have specific definitions for a "set" or "event"? In the reporting form it only has Set ID. | noted   | **NEED TO CLARIFY DEFINITION* 
| 705 | E-SET-BAIT | CHANGE FIELD - to keep things consistent, FT|M --> UNITS | noted |
| 716 - 725 | E-SET-BAIT-CATCHES | field names do not match. Verify which is correct and amend accordingly | noted| 
| 725 | E-SET-BAIT-CATCHES | Ammend link to codelists for weight estimations. code list added to PgAdmin? | noted| **NEED TO ADD WEIGHT CODE** **WEIGHT MEASUREMENT CODE IS THE SAME AS WEIGHT ESTIMATION CODE**
|DAILY-ACTIVITY | typo on the form: Dailiy --> Daily |   | 

 


<<<<<<< HEAD:RMDs/ros/rosFormRevisions.Rmd
## Longline Form

SECTION: VESSEL INFORMATION: 
- IMO: update definition??: The International Maritime Organisation (IMO) unique vessel identifier Scheme (use NE if the vessel is Not Eligible, or PENDING if an IMO number has been requested but not yet assigned). __ ** DONT CHANGE**

| Line of Code|Section | Update needed | Status | Comment | 
|:-------|:-------|:-----------------------------------:|:---------:|:----:| 
| 303-308| V-ATTRIBUTES | DESCRIPTION CHANGE? - on the form their are sections for main engine 1 and main engine 2. Duplicate or form description? | noted | **2 rows**
| 315| V-ATTRIBUTES | UPDATE REPORTING FORM - change fish storage capacity column to be Storage capacity units | noted | **m3 by default - remove unit column**
| 337 | V-ATTRIBUTES | UPDATE REPORTING FORM - Autonomy range unit column instead of DAYS | NM | noted | **Agreed**
| 346 | V-ATTRIBUTES | UPDATE REPORTING FORM - change GPS column to GNSS to match description form | noted | **YES MANU!**
| 362 - 398 | V-ATTRIBUTES | UPDATE REPORTING FORM - remove "other" column for waste management | **Agreed**
| 423 - 430 | G-CONFIG-BRANCHLINES| UPDATE REPORTING FORM - need to have 4 sections of Material type code, Length, and Diameter | noted | **no** 
| 423 - 430 | G-CONFIG-BRANCHLINES| UPDATE REPORTING FORM - change "CONFIGURATION NUMBER AND SECTION NUMBER TO CONFIGURATION IDENTIFIER AND SECTION IDENTIFIER, RESPECTIVELY | noted | **Agreed**
| 461 - 462 | G-CONFIG-MITIGATION-DEVICES | CHANGE REPORTING FORM - column: LINE_LENGTH_MAX should be one column, as there is already a second column for minimum. and they should each be called "STREAMER_LINE_LENGTH (min/max) | noted | **Remove empty column**
| 471 -472 | G-CONFIG-MITIGATION-DEVICES | CHANGE DESCRIPTION FORM - towed objects number and type. Develop codelist for towed objects type or add code list to meta on PgAdmin | noted | **Get information on potential code list of towed objects**
| 529 | E-SET | UPDATE REPORTING FORM - mainline "value" should read "Mainline length value" | noted | **Keep VALUE and UNIT in the form but expand in Description** 
| 530 | E-SET | UPDATED REPORTING FORM - mainline "KM|NM" should read "Mainline length units" | noted | **UNIT**
|574 - 580| E-SET | UPDATE REPORTING FORM - "Branchline Length: should have fields for minimum and maximum length. 4 fields total | noted | **yes**
| 589 | E-SET | I added a new field in description to match reporting form, but unsure of contents | noted | **To clarify**
| 607| E-SET-LIGHTS | UPDATE REPORTING FORM - NUM_LIGHTS looks like a hyperlink - very pedantic | noted | **Format to change in the form**
| 645 - 650| E-SET-MITIGATION_MEASURES | should all mitigation measure codes (4) be mandatory? Or should 2-4 be optional? All mandatory in reporting form | noted | **Yes, captured by the code list - need to check with Tony**

| 679 | E-SET-BAITS | percentage description: "The approximate proportion (%) of bait species and condition used across all hooks in the set" need a new field for bait condition? | noted | **Check if in description form**
| 750 | E-SET-HAULING-BITEOFFS |  Configuration number to change to configuration identifier? | noted | **YES**
| 789 | E-SET-CATCHES | CHANGE FORM - change weight "KG|T" to "Unit" | noted | **YES**



# Meeting with Shimal about revisions to the PL reporting form
=======
Meeting with Shimal about revisions to the PL reporting form
>>>>>>> f010a72846ff4a44f1e2112d03c3a937b8b8f968:RMDs/ros/rosFormRevisions.md
- change sheet names
      - should not be "SET", but instead by "TRIP" or "EVENT" level
During the meeting Cynthia changed the names of headings. Change form description to match updated headings
- for each sheet
      - specify specimen level or event level
      - write in the description if it is species/event level and define what that level means (ie. what is an event?)
O-INFO : number of days
      - Searching : is OPTIONAL should be MANDATORY
      - Actively Fishing: is OPTIONAL, should be MANDATORY
      - Lost: is OPTIONAL, should be MANDATORY
E-SET-TUNA-CATCHES - remove specimen ID
E-SET-TUNA-CATCHES
      - remove specimen ID because not on a specimen level, should be an event level
      - change EVENT NUMBER to EVENT_ID
      - removed depredation details  ---> consider this revision for purse seine as well
E-SET-TUNA
      - this section should comes after E-SET-TUNA-CATCHES-FISHING-TRIP
      - in each of these sheets have a description explaining what that sheet is supposed to do within the structure of the form. 
                - ex: This sheet gives a summary of the catch from the event. The next sheet will give details on a proportion/subsample of the catch from the set etc. 
                - clarify which sheets are trip level vs. event level vs. specimen level
       - BAIT - add NEW FIELD after "Used" called "Type code"          
Ensure that optional fields can still be applied to PL fisheries. Do not include just for uniformity. It is still confusing observers/reporters. Can also give better descriptions to clarify
V-ATTRIBUTES - which preservation methods are on board. If needed is there an NA category. 

E-SET-TUNA-CATCHES needs to come before BIOMETRIC sheet in the reporting form
      - make a clear description that the first form is detailing total catch and the BIOMATRIC form is a subsample of the catch from an event
      - are catches from PL homogenous? How many subsamples should be/ will be taken from an event

CATCH ID -> change to SUBSAMPLE ID?
      
BIOMETRIC sheet needs to be moved to before E-SET-TUNA-CATCHES-SSI
E-SET-TUNA-CATCHES-SSI
      - add fields: condition at capture and condition at release
      - change "Set ID" to "Event ID"
      
E-SET-CATCHES-BIOMETRIC
      - change "Set ID" to "Event ID"

BAIT-CATCHES
- add field for Bait conditions to clarify if bait is live bait

E-SET-TUNA: school sighting cues: the form description for this field is confusing. Should divide into two sections, create new codelists, and add new fields to reporting form

NOTE: SHIMAL would like previously submitted data shared so he can make prior data usable

OBSERVER ID - description - clarify that this identifier is issued by IOTC. Same for IOTC_ID. 


## Changes to be made to the PS reporting form

VESSEL-ATTRIBUTES : Autonomy range "DAYS | NM " --> change to "Autonomy range unit"
VESSEL-ATTRIBUTES : Vessel Electronics GPS --> GNSS
G-GENERAL : General gear attributes - for "net size" and "mesh size", change columns to be "unit"
E-SET-CATCHES : Weight --> change KG | T to be "unit"
E-SET-CATCHES-SPECIMEN : Sample Collected --> add a NEW FIELD called "Destination" 

