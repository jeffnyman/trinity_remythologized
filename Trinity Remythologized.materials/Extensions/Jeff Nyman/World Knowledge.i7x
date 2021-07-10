Version 1/210706 of World Knowledge by Jeff Nyman begins here.

"Mechanics to represent the player's knowledge and understanding about the world."

"based partly on Epistemology by Eric Eve and Optimized Epistemology by Andrew Plotkin"

Part - Observability (for use without Epistemology by Eric Eve)

To mark-everything-in-scope-as-seen:
	(- MarkSeenScopeFor(player); -).

Include (-
! This performs a scope search for the given actor.
! It will apply seen/familiar to every item in scope.
[ MarkSeenScopeFor obj;
	LoopOverScope(((+ familiarization +)-->1), obj);
];
-);

Part - Sight (for use without Epistemology by Eric Eve)

A thing can be examined or unexamined.
A thing is usually unexamined.

After examining something:
	now the noun is examined.

A thing can be seen or unseen.
A thing is usually unseen.

Carry out looking (this is the mark items as seen when looking rule):
	mark-everything-in-scope-as-seen.

Carry out opening a container (this is the mark items as seen upon opening a container rule):
	mark-everything-in-scope-as-seen.

The mark items as seen upon opening a container rule is listed after the standard opening rule in the carry out opening rules.

Part - Familiarity (for use without Epistemology by Eric Eve)

A thing can be familiar or unfamiliar.
A thing is usually unfamiliar.

To familiarize (T - thing) (this is familiarization):
	now T is familiar;
	now T is seen.

Part - Knowledge State

Definition: a thing is known rather than unknown if it is familiar or it is seen.

Section - Subjects

A subject is a kind of thing.

A subject is familiar.

The specification of a subject is "Represents a concept, entity or idea that conversations can refer to but that has no real-world presence or functionality."

Section - Suppositions

A supposition is a kind of thing.

The specification of a supposition is "Represents an uncertain belief on the part of the player character."

Awareness relates various people to various suppositions.
The verb to be aware of means the awareness relation.

Section - Facts

A fact is a kind of thing.

The specification of a fact is "Represents something that is known or proved to be true from the standpoint of the player character."

Knowledge relates various people to various facts.
The verb to establish means the knowledge relation.

Definition: a fact is unconfirmed rather than confirmed if it is not established by the player.

Part - Testing - not for release

Requesting knowledge status of is an action out of world applying to one visible thing.

Understand "kstate [any thing]" as requesting knowledge status of.

Report requesting knowledge status of (this is the report knowledge status rule):
	say "[noun] [line break]
	[if the noun is examined]examined[otherwise]unexamined[end if] /
	[if the noun is seen]seen[otherwise]unseen[end if] /
	[if the noun is familiar]familiar[otherwise]unfamiliar[end if] /
	[if the noun is known]known[otherwise]unknown[end if]";
	if the noun is a supposition:
		say " / [if the player is aware of the noun]aware of[otherwise]not aware of[end if]";
	if the noun is a fact:
		say " / [if the noun is established by the player]established[otherwise]not established[end if] /
		[if the noun is unconfirmed]unconfirmed[otherwise]confirmed[end if]";
	say "." (A).

World Knowledge ends here.

---- DOCUMENTATION ----

This extension is partly based on one called "Epistemology" by Eric Eve. Epistemology is the study of how we know what we know. As such, the title of the original extension was a bit grandiose at best since it dealt not at all with concepts like the scope of knowledge, epistemic justification, or the rationality of belief.

The aim here is a bit simpler, which is to model the very basics of how people come to know certain thigns about the world around them.

Given that more modest goal, the purpose of the extension is quite simply to keep track of what objects the player character knows about, either because they have seen the objects or because they are already familiar with them for some other reason, such as prior knowledge. This extension will also model the idea of being aware of something (a supposition) and direct knowledge of something (a fact).

Section: Sight and Familiarity

With this extension in place, all objects in the story world have the following either-or distinctions:

(1) seen or unseen

(2) familiar or unfamiliar

(3) known or unknown

By default, all objects start unseen and unfamiliar and hence unknown. As an author you can, of course, change this for individual objects, groups of objects or kinds. A few points are important:

(1) The seen/unseen and familiar/unfamiliar pairs can be tested or set as is required.

(2) The known/unknown status may be tested for but not directly changed in code.

That second point must be the case since the known/unknown status derives from the other two.

Section: State of Knowledge

Given the above points, the following general rule holds: a thing is considered to be known if it is either seen or familiar; otherwise it is unknown.

These distinctions exist to model different kinds of knowledge. Consider, for example, that the player character may well know about things they have yet to see. For example, a detective character is sent to investigate a particular crime. That certainly means they, at the very least, know of the crime and, possibly, they know who the crime was committed against.

The player character may also know of or be familiar with things that can't be seen, such as concepts like crime (in a general sense) or justice and so on. Likewise, a detective may come to be familiar with certain motivations that some other character had for committing the crime. A motivation could be something internal that the player character learns about but also tied to something tangible, such as finding incriminanting evidence. Of those aspects, only one could be said to be "seen" in any sense.

Things that are known about but as yet unseen or concepts that are abstract can be marked as familiar, either from the outset, or when the player learns about them during the course of the game. Also, there may be cases where it's important to distinguish whether the player character has actually seen something -- like, say, a crime scene -- or merely knows about it.

Section: Implementation

As far as possible, the extension tries to keep track of what the player character has seen in two ways.

(1) Marking as seen (and familiar) everything that's in plain view (i.e., in scope) in the location when a LOOK command is executed.

(2) Marking eveything as seen (and familiar) in plain view within a container when that container is opened.

This is a lot of calculation and this extension does incorporate changes made by Andrew Plotkin to Eric Eve's extension, essentially putting in some optimizations to the algorithm to avoid potential performance issues with games that have a lot of objects in the model world.

In general a few points about how this works:

(1) When the player opens a container, all objects in the room (not just the container) are marked "seen".

(2) When the player LOOKs or OPENs, objects added to scope (with the "deciding the scope of" activity) are marked "seen".

The simple way to summarize all this is that this extension only marks objects "seen" when the player looks around, opens a container, or examines something. This includes the case of when they move to a different room, which invokes LOOK. This does mean, however, that objects which are moved into a room might not be "seen" until the player does LOOK or EXAMINE.

Section: Familiarizing

The phrase "familiarize (thing)" is provided to mark a thing as both "seen" and "familiar".

You can also use the phrase "mark-everything-in-scope-as-seen" to re-scan the entire room. In fact, if you want to be absolutely certain about marking every object that appears, you can add this rule:

	Every turn: mark-everything-in-scope-as-seen.

Do note that this may come at the expense of some game speed.

Section: Subjects

A new kind called "subject" is provided for more abstract objects such as criminal behavior, ancient history, quantum mechanics, and so on.

Unlike all other things in the game world, subjects are considered familiar by default.
