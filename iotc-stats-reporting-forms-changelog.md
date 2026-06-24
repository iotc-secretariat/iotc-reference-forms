## Forms for Updates | 2026-06-24

The forms 3CE-update, 4SF-update, 3AA-update, and 3-DA-update have been removed as the general statistical forms can be used for data revisions

## Form-3DA

### Removals | 2026-06-24

3.	DELETED Mesh size (Surface raft) and (Subsurface tail)

### Additions | 2026-06-24

2.	ADDED Vessel Type
a.	SP: Supply vessel
b.	PS: Purse Seiner

### Renamed

1.	UTC time RENAMED Date_Time

### Permitted values changed

#### Date Time

a.	 New format (ISO8601): YYYY-MM-DDThh:mm(Z | ±hh:mm)

i.	Example for time recorded in UTC:
2025-01-25T07:13Z
ii.	time recorded in local time (Indian Standard Time):
2025-11-01T19:45-05:30
iii.	time recorded in local time (Seychelles Time):
2025-07-12T13:59-05:00

#### Mesh, 

We have changed the code-list for Mesh, which makes these columns superfluous.
Changes to the code-lists
1.	Logic fields now have a code-list that contains:
a.	TRUE, FALSE
b.	NAP := not applicable (eg no buoy, no dfad)
c.	UNK := unknown (eg there was a FAD but FAD ID doesn’t exist)
d.	NAV := Not available (not to be used in mandatory fields)
2.	New code-list for mesh (to be published)
a.	NAP := no mesh
b.	<7:= there is mesh with mesh size smaller than 7cm
c.	>7:= there is mesh with mesh size bigger than 7cm

