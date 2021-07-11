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

To say soccer-ball-context:
	if the soccer ball was not handled:
		say " Looking around, you don't see anyone who looks ready to claim the ball"

The description of the soccer ball is "It's about as ordinary a soccer ball as you can imagine.[if unexamined][soccer-ball-context].[end if]"

Section - Tree

A container called crooked old tree is in Lancaster Gate.
The crooked old tree is scenery.

The description of the crooked old tree is "[if unexamined]It's clearly pretty old. It's tall enough and big enough that its canopy shades people as they walk along the path. [end if]It's quite a nice looking tree[if the soccer ball is in the crooked old tree], marred slightly by the soccer ball you managed to wedge into its branches[end if]."

The examine containers rule does nothing when examining the crooked old tree.

Instead of throwing the soccer ball at the crooked old tree:
	say "The soccer ball wedges itself into the branches of the tree.";
	now the soccer ball is in the crooked old tree;
	rule succeeds.

Test ball_in_tree with "kstate tree / kstate ball / east / kstate ball / examine ball / kstate ball / take ball / north / north / kstate tree / look at tree / throw ball at tree / look at tree".

Section - Perambulator

There is a closed openable container called a perambulator.
The perambulator is fixed in place and pushable between rooms.

Understand "pram" and "carriage" and "baby carriage" and "stroller" and "baby stroller" as the perambulator.

Section - Old Oriental Woman

A woman called an old woman is in Lancaster Gate.

The initial appearance of the old woman is "[if Lancaster Gate is unvisited]There's an old woman under the tree, clearly struggling to open an umbrella. The stiff wind isn't making it easy for her.[end if]"

The description of the old woman is "[if unexamined]Her face is ... [i]wrong[/i].[p]You look a little closer and you actually have to conciously try not to make your shudder visible. The entire left side of her head is scarred with deep red lesions, twisting her oriental features into a hideous mask. She must have been in a really bad accident or something.[otherwise]She was clearly in a terrible accident, perhaps a fire. Now that she's aware of you, the oriental woman appears to furtively glance at you, quickly looking away if your eyes meet.[end if]"

After examining the old woman for the first time:
	now the printed name of the old woman is "old oriental woman";
	now the old woman is proper-named;
	continue the action.
	
Understand "oriental" as the old woman when the old woman is proper-named.

Test describe_woman with "look / examine old woman / look" in Lancaster Gate.

Section - Umbrella

The old woman carries an umbrella.

Volume - Story Execution

Part - Movement

Instead of going east from Grassy Area:
	say "BARRIER: Player cannot get past this area yet."
	
Test long_water_blocked with "east" in Grassy Area.