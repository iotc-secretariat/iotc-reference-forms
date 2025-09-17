This document is a review of the updates done in the ROS reporting forms and ROS form descriptions and required changed to be made in the ROS 3.3.0 database. 

# Missing Code Lists

The following code lists should be built by the Secretariat and added to the IOTCReferenceData and ROS databases:

| Sheet | Field | Database | Comment |
|:---------------------|:----------------- |:----------------------|:------ |
| E-SET-CATCH-SPECIMENS | Sample type | `ros_common.sample_collection_details.sample_type` | to do |
| E-SET-CATCH-SPECIMENS | Sample Preservation Method | `ros_common.sample_collection_details.preservation_method` | to do |
| E-SET-CATCH-SPECIMENS | Sample destination | `ros_common.sample_collection_details.destination` | to do |
| E-SET-CATCH-SPECIMENS | Maturity scale | `ros_common.maturity_stages.scale` | to do |
| E-SET-CATCH-SPECIMENS | Maturity stage | `ros_common.maturity_stages.maturity_level` | to do |
| G-CONFIG-MITIGATION-DEVICES | Towed object type | Code list of types of towed objects | to do |

# Renaming Fields in Database

| Schema | Table | Old | New | Comment |
| :---------- | :-------- | :-------------- | :--------------- |:-------------- |
| ros_common | | maturity_stages    | maturity_level | maturity_stage | Rename table to maturity | 
| ros_common | vessel_attributes_fish_preservation_method | fish_preservation_method_code | fpm_code | to discuss |
| ros_common | vessel_attributes_fish_storage_type | fish_storage_type_code | fst_code | to discuss |
| ros_common | waste_managements  | waste_category_code | wc_code | to discuss |
| ros_common | vessel_electronics | gps | gnss | to do |
| ros_common | vessel_electronics | satellite_communication_systems | satcom | to do |
| ros_ll     | branchline_configurations | configuration_number | configuration_id | may be mixed with id in branchline_configurations | 
| ros_ll     | branchline_sections | section_number | section_id | to do |
| ros_ll     | branchlines_set     | branchline_configuration_number | branchline_configuration_id | to discuss |
| ros_ll     | setting_operations | vessel_speed | vessel_speed_kn | to do |
| ros_ll     | setting_operations | line_setter_speed | line_setter_speed_ms | to do |
| ros_ll     | branchlines_set    | branchline_configuration_number | branchline_configuration_identifier | may be mixed with id | 
| ros_ll     | lights_by_type_and_colour | number_of_lights_by_type_and_colour | number of lights |

## Longline Form

| Section | Old field | New field | Database | Comment |
|:--------------| :--------- | :--------- |:--------- | :------ |
| V-INFO | REG_NUMBER | REGISTRATION_NUMBER | `ros_common.vessel_identification.registration_number` | ok | 
| V-ATTRIBUTES | TONNAGE | GROSS_TONNAGE | `ros_common.tonnages.value` | Remove values reported in "GRT" |
| V-ATTRIBUTES | LENGTH | LOA_M | `ros_common.lengths.value` | Remove unit - loss of data reported in "KM" | 
| V-ATTRIBUTES | FISH_STORAGE_CAPACITY_VALUE | FISH_STORAGE_CAPACITY_M3 | `ros_common.capacities.value` | ok |
| V-ATTRIBUTES | FISH_STORAGE_CAPACITY_UNIT | remove | `ros_common.capacities.unit` | to do - loss of values reported in "MT" |
| V-ATTRIBUTES | METHOD_X_CODES | METHOD_X | `ros_common.vessel_attributes_fish_preservation_method.fish_preservation_method_code` | ok |
| V-ATTRIBUTES | FISH_STORAGE_TYPE_X_CODE | FISH_STORAGE_TYPE_X | `ros_common.vessel_attributes_fish_storage_type.fish_storage_type_code` | ok |
| V-ATTRIBUTES | DAYS \| NM" | AUTONOMY_RANGE_UNIT | `ros_common.ranges.unit` | ok |
| V-ATTRIBUTES | GPS | GNSS | `ros_common.vessel_electronics.gps` | rename field |
| V-ATTRIBUTES | SATELLITE_COMS | SATCOM | `ros_common.vessel_electronics.satellite_communication_systems` | rename field |
| V-ATTRIBUTES | CATEGORY_X_CODE | CATEGORY_X | `ros_common.waste_managements.waste_category_code` | ok |
| V-ATTRIBUTES | STORAGE_DISPOSAL_METHOD_X_CODE | STORAGE_DISPOSAL_METHOD_X | `ros_common.waste_managements.waste_storage_or_disposal_method_code` | ok |
| V-ATTRIBUTES | 4 fields "OTHER" removed for waste management details | | `-` | ok |
| G-CONFIG-BRANCHLINES | CONFIGURATION NUMBER | CONFIGURATION_ID | `ros_ll.branchline_configurations.configuration_number` | rename field |
| G-CONFIG-BRANCHLINES | SECTION NUMBER | SECTION_ID | `ros_ll.branchline_sections.section_number` | rename field |
| G-GENERAL | LINE_SETTER/SHOOTER | LINE_SETTER | `ros_ll.special_equipment.line_setter` | ok |
| G-CONFIG-BRANCHLINES | LENGTH | BRANCHLINE_LENGTH_M | `ros_ll.branchline_sections.lengths.value` | unit given in `ros_common.lengths.unit` |
| G-CONFIG-BRANCHLINES | DIAMETER | BRANCHLINE_DIAMETER_CM | `ros_ll.branchline_sections.diameters.value` | unit given in `ros_ll.branchline_sections.diameters.unit` |
| G-CONFIG-BRANCHLINES | STORAGE_X_CODE | STORAGE_X | | missing from `ros_ll.branchline_sections`? |
| G-CONFIG-MITIGATION-DEVICES | LINE_LENGTH_MAX (M) | STREAMER_LINE_LENGTH_MAX_M | `ros_ll.tori_line_details.streamer_line_length_max_id` | value and unit given in `ros_common.lengths.unit` (unit set to m?) |
| G-CONFIG-MITIGATION-DEVICES | LINE_LENGTH_MIN (M) | STREAMER_LINE_LENGTH_MIN_M | `ros_ll.tori_line_details.streamer_line_length_min_id` | value and unit given in `ros_common.lengths.unit` (unit set to m?)  |
| G-CONFIG-MITIGATION-DEVICES | NUMBER_PER_LINE | STREAMER_NUMBER_PER_LINE | `ros_ll.tori_line_details.number_of_streamers_per_line` | ok | 
| G-CONFIG-MITIGATION-DEVICES | TORI_LINE_ATTACHED_HEIGHT (M) | TORI_LINE_ATTACHED_HEIGHT_M | `ros_ll.tori_line_details.attached_height_id` | value and unit given in `ros_common.heights` (unit set to m?) |
| G-CONFIG-MITIGATION-DEVICES | DEVICE_X_CODE | DEVICE_X | `ros_ll.gear_specifications_mitigation_device.mitigation_device_code` | ok | 
| E-SET | MAINLINE VALUE | MAINLINE_LENGTH_VALUE | `ros_ll.setting_operations.mainline_set_length_id` | value given in `ros_common.lengths.value` | 
| E-SET | BRANCHLINE | CLIP_ON_TIME_BRANCHLINE | `ros_ll.setting_operations.branchline_clip_on_time` | ok | 
| E-SET | BUOYS | CLIP_ON_TIME_BUOYS | `ros_ll.setting_operations.buoys_clip_on_time` | ok | 
| E-SET | KM|NM to MAINLINE_LENGTH_UNIT | `ros_ll.setting_operations.mainline_set_length_id` | value given in `ros_common.lengths.unit` |
| E-SET | **NA** | BRANCHLINE_LENGTH_MINIMUM_VALUE | missing from `ros_ll.setting_operations`? | to add |
| E-SET | **NA** | BRANCHLINE_LENGTH_MINIMUM_UNIT | missing from `ros_ll.setting_operations`? | to add |
| E-SET | **NA** | BRANCHLINE_LENGTH_MAXIMUM_VALUE | missing from `ros_ll.setting_operations`? | to add |
| E-SET | **NA** | BRANCHLINE_LENGTH_MAXIMUM_UNIT | missing from `ros_ll.setting_operations`? | to add |
| E-SET | SHARK_LINES_NUMBER_LINES | SHARK_LINES_NUMBER | `ros_ll.setting_operations.number_of_shark_lines_set` | ok | 
| E-SET | NUM_TOTAL_HOOKS_SET | NUMBER_TOTAL_HOOKS_SET | `ros_ll.setting_operations.total_number_of_hooks_set` | ok | 
| E-SET | NUM_TOTAL_FLOATS_SET | NUMBER_TOTAL_FLOATS_SET | `ros_ll.setting_operations.total_number_of_floats_set` | ok | 
| E-SET | NUM_HOOKS_BETWEEN_FLOATS | NUMBER_HOOKS_BETWEEN_FLOATS | `ros_ll.setting_operations.number_of_hooks_set_between_floats` | ok |
| E-SET | VALUE_KNOTS | VESSEL_SPEED_KN | `ros_ll.setting_operations.vessel_speed` | rename field |
| E-SET | VALUE_MS | LINE_SETTER_SPEED_MS | `ros_ll.setting_operations.line_setter_speed` | rename field | 
| E-SET | VMS ON   | Removed by SC | `-` | ok | 
| E-SET-HAULING | NUM_HOOKS_RETRIEVED_DURING_OBSERVATION | Removed by SC | `ros_ll.hauling_operations.number_of_hooks_observed` | to remove - loss of data |
| E-SET-HAULING | NUM_BRANCHLINE_HAULINGS_OBSERVED | missing | `ros_ll.hauling_operations.number_of_branchline_haulings_observed` | to add |
| E-SET-HAULING-BITEOFFS | CONFIGURATION_NUMBER | CONFIGURATION_ID | `ros_ll.branchlines_set.branchline_configuration_number` | rename field |
| E-SET-HAULING-BITEOFFS | NUM_BITEOFFS | NUMBER_OF_BITEOFFS | `ros_ll.biteoffs_by_branchlines_set.number_of_biteoffs` | ok |
| E-SET-LIGHTS | NUM_LIGHTS | NUMBER_OF_LIGHTS | `ros_ll.lights_by_type_and_colour.number_of_lights_by_type_and_colour` | rename field |
| E-SET-CATCHES | NUM_FISH | NUMBER_OF_FISH | `ros_ll.catch_details.estimated_catch_in_numbers` | ok |  
| E-SET-CATCHES | KG\|T | "UNIT" | `ros_ll.catch_details.estimated_weight_id` | unit given in `ros_common.estimated_weights` | 
| E-SET-MITIGATION-MEASURES | NUM_TORI_LINES_DEPLOYED | NUMBER_TORI_LINES_DEPLOYED | `ros_ll.mitigation_measures.number_of_tori_lines_deployed` | ok | 
| E-SET-MITIGATION-MEASURES | MIN_DECK_LIGHTING_USED | MINIMUM_DECK_LIGHTING_USED | `ros_ll.mitigation_measures.minimum_deck_light_used` | ok | 
| E-SET-MITIGATION-MEASURES | HOOKS_SET_BETWEEN_DUSK_DAWN | Removed | `ros_ll.mitigation_measures.hooks_set_between_dusk_and_dawn` | to remove | 
| E-SET-MITIGATION-MEASURES | AVG_BRANCHLINE_WEIGHT_G | AVERAGE_SINKER_WEIGHT_G | `ros_ll.mitigation_measures.average_sinker_weight_id` | value and unit given in `ros_common.estimated_weights` |
| E-SET-MITIGATION-MEASURES | PERC_BRANCHLINE_WEIGHTED | PERCENT_BRANCHLINE_WEIGHTED | `ros_ll.mitigation_measures.percentage_of_branchlines_weighted` | ok | 
| E-SET-CATCH-SPECIMENS | LENGTH_X_VALUE | LENGTH_X_VALUE_CM | `ros_ll.specimens.biometric_information_id` | value in `ros_common.lengths` through `ros_common.bioletric_information.measured_length_id` | 
| E-SET-CATCH-SPECIMENS | WEIGHT_VALUE | WEIGHT_VALUE_KG | `ros_common.biometric_information.estimated_weight_id` | value in `ros.common.weights.value` | 
| E-SET-CATCH-SPECIMENS | WEIGHT UNIT | Removed | `ros_ll.specimens.biometric_information_id` | unit given in `ros_common.weights.unit`  | 
| E-SET-CATCH-SPECIMENS | **NA** | SAMPLE_DESTINATION | `ros_common.sample_collection_details` | ok | 
| E-SET-TAG_DETAILS     | TAG_X_NUMBER | TAG_X_ID | | |

<!-- 
## Purse Seine Form

VESSEL-ATTRIBUTES : Autonomy range "DAYS | NM " -> change to "Autonomy range unit"
VESSEL-ATTRIBUTES : Vessel Electronics GPS -> GNSS
G-GENERAL : General gear attributes - for "net size" and "mesh size", change columns to be "unit"
E-SET-CATCHES : Weight -> change KG | T to be "unit"
E-SET-CATCHES-SPECIMEN : Sample Collected -> add a NEW FIELD called "Destination" 

# Pole-and-Line Form

| Line of Code | Section | Update needed | Status |
|:-------|:-------|:-----------------------------------:|:---------:|
| 25 - 31 | Description | review text for Description and data content | noted | DONE
| 60 | O-INFO -> Observer Identification | "Full Name"is optional in the reporting form, but mandatory in the form description | noted|- should be OPTIONAL 
| 223 - 238 | Trip Details -> vessel departure | In the form description I have IN PORT and AT SEA, but the form has no AT SEA section. | noted  | **CAN ADD AT SEA** - revisions across all forms
| 256 - 269 | Trip Details -> vessel return | In the form description I have IN PORT and AT SEA, but the form has no AT SEA section. | noted  | **CAN ADD AT SEA** - revision across all forms
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
| 705 | E-SET-BAIT | CHANGE FIELD - to keep things consistent, FT|M -> UNITS | noted |
| 716 - 725 | E-SET-BAIT-CATCHES | field names do not match. Verify which is correct and amend accordingly | noted| 
| 725 | E-SET-BAIT-CATCHES | Ammend link to codelists for weight estimations. code list added to PgAdmin? | noted| **NEED TO ADD WEIGHT CODE** **WEIGHT MEASUREMENT CODE IS THE SAME AS WEIGHT ESTIMATION CODE**
|DAILY-ACTIVITY | typo on the form: Dailiy -> Daily |   | 


# Meeting with Shimal about revisions to the PL reporting form

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
      - removed depredation details  -> consider this revision for purse seine as well
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

-->

