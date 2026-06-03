# IOTC Reporting Forms – Changelog

## Form-3BU

### [v1](10.5281/zenodo.16941788) – 2026-04-14

#### Added

- Addition of a column "Month" to facilitate the reporting of all data for a given year.

## Form ROS-LL

### [v1](10.5281/zenodo.17509753) – 2026-06-02

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
