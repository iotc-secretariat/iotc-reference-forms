## Forms for Updates | 2026-06-24

The forms 3CE-update, 4SF-update, 3AA-update, and 3-DA-update have been removed as the general statistical forms can be used for data revisions

## Form-3DA

### Removals | 2026-06-24

3.	DELETED Mesh size (Surface raft) and (Subsurface tail)

### Additions | 2026-06-24

2.	ADDED Vessel Type

| Vessel type | Code |
|:-------------|------:|
| Supply Vessel | SP |
| Purse Seiner | PS | 

### Renamed | 2026-06-24

1.	UTC time RENAMED Date_Time

### Permitted values changed | 2026-06-24

#### Date_Time

**New format (ISO8601): YYYY-MM-DDThh:mm(Z | ±hh:mm)**

Examples for different time-zone recordings:

| Time zone | Description | Example |
|:-----------|:-------------|---------:|
| UTC | Time is recorded in UTC | 2025-01-25T07:13Z |
| Indian Standard Time | Time is 5 hours 30 minutes ahead of UTC | 2025-11-01T19:45+05:30 |
| Seychelles Time | Time is 4 ahead of UTC |2025-07-12T13:59+04:00 |


#### Mesh 

We have changed the code-list for Mesh, which makes these columns superfluous.

### Changes to the code-lists | 2026-06-24

#### Logic fields now have a code-list that contains:

| Code | Description |
|:-----|:-----------|
| TRUE | It is true or present|
| FALSE | It is false or absent|
| NAP | It is not applicable (eg no buoy, no dfad)|
| UNK | It is unknown (eg there was a FAD but FAD ID doesn’t exist)|
| NAV | Not available (replaces NA, not to be used in mandatory fields)|

The general logical response code list is available from the IOTC Reference Data catalogue: <https://data.iotc.org/reference/latest/domain/data/#logicalResponses>

#### New code-list for mesh (to be published)

| Code | Description |
|:-----|:-----------|
|NAP | no mesh |
|<7 | there is mesh with mesh size smaller than 7cm |
|>7 | there is mesh with mesh size bigger than 7cm |

