"Trinity Remythologized" by Jeff Nyman

Include Trinity Remythologized by Jeff Nyman.

Volume - Story Mechanics

Book - Scenes

End of the World is a scene.
End of the World begins when the time of day is 4:01 PM.
End of the World ends when the story has ended.

When End of the World begins:
	end the story finally saying "TERMINAL STATE: Player has failed to escape the apocalypse."

Part - Changing the Time - not for release

Immanentize the eschaton is an action out of world.
Understand "ie" as immanentize the eschaton.

Carry out immanentize the eschaton:
	now the time of day is 3:59 PM.

Book - Time

When play begins:
	now the time of day is 3:30 PM.

The realistic time rule is listed instead of the advance time rule in the turn sequence rules.

Book - Direction and Orientation

Part - Status Display

Table of Trinity Status
left	central	right
"[location]"	"[watch time]"	""

Rule for constructing the status line:
	fill the status bar with the Table of Trinity Status;
	rule succeeds.

Volume - Story World

Book - Geography

Part - Kensington Gardens

Chapter - Locations

Section - Gates

Palace Gate is a room.
Black Lion Gate is a room.
Lancaster Gate is a room.

Section - Walks

Broad Walk is a room.
Flower Walk is a room.
Lancaster Walk is a room.

Section - Paths

Along Bayswater Road is a room.
Grassy Area is a room.

Section - Water Areas

Round Pond is a room.
Long Water is a room.

Section - Temporal Loci

Grassy Clearing is a room.
Sinkhole is a room.
Wading is a room.

Chapter - Connections

Broad Walk is north of Palace Gate.
Flower Walk is east of Palace Gate.
Lancaster Walk is north of Flower Walk.

Black Lion Gate is north of Broad Walk.
Lancaster Gate is north of Lancaster Walk.

Along Bayswater Road is east of Black Lion Gate and west of Lancaster Gate.
Along Bayswater Road is northeast of Broad Walk and northwest of Lancaster Walk.

Round Pond is east of Broad Walk and west of Lancaster Walk.
Round Pond is southeast of Black Lion Gate and southwest of Lancaster Gate.
Round Pond is south of Along Bayswater Road.

Grassy Clearing is south of Round Pond, northeast of Palace Gate, and northwest of Flower Walk.
Grassy Clearing is southeast of Broad Walk and southwest of Lancaster Walk.

Grassy Area is east of Lancaster Walk.
Long Water is east of Grassy Area.

A door called the tent is down from Long Water and up from Sinkhole.
The tent is closed and openable.

Wading is inside from Long Water.
Wading is east of Long Water.

Chapter - Regions

Kensington Gardens is a region.

The Gates are a region.
Palace Gate, Black Lion Gate and Lancaster Gate are in the Gates.

The Walks are a region.
Broad Walk, Flower Walk, and Lancaster Walk are in the Walks.

The Paths are a region.
Along Bayswater Road and Grassy Area are in the Paths.

The Water Areas are a region.
Round Pond and Long Water are in the Water Areas.

The Temporal Loci is a region.
Grassy Clearing, Sinkhole and Wading are in the Temporal Loci.

The Gates, Walks and Paths are in Kensington Gardens.
The Water Areas and Temporal Loci are in Kensington Gardens.

Book - Characters

Part - Protagonist

Chapter - Items

Section - Watch

The player wears a wristwatch.
Understand "watch" as the wristwatch.

The description of the wristwatch is "Your watch says it's [the time of day to the nearest one minute in words]."

To say watch time:
	if the player has the wristwatch:
		say "[realistic time]".
		
Section - Soccer Ball

A soccer ball is in Flower Walk.

The initial appearance of the soccer ball is "You can see a soccer ball partially hidden among the flowers."

The description of the soccer ball is "It's about as ordinary a soccer ball as you can imagine.[if the soccer ball was not handled] Looking around, you don't see anyone who looks ready to claim the ball." [Maybe even conditionalize the condition further? Maybe only say that if the ball hasn't been seen?]

Section - Tree

A container called crooked old tree is in Lancaster Gate.
The crooked old tree is scenery.

The description of the crooked old tree is "It's quite a nice looking tree[if the soccer ball is in the crooked old tree], marred slightly by the soccer ball you managed to wedge into its branches[end if]."

The examine containers rule does nothing when examining the crooked old tree.

Instead of throwing the soccer ball at the crooked old tree:
	say "The soccer ball wedges itself into the branches of the tree.";
	now the soccer ball is in the crooked old tree;
	rule succeeds.

Test ball_in_tree with "east / take ball / north / north / look at tree / throw ball at tree / look at tree".

Volume - Story Execution

Part - Movement

Instead of going east from Grassy Area:
	say "BARRIER: Player cannot get past this area yet."
	
Test long_water_blocked with "east" in Grassy Area.