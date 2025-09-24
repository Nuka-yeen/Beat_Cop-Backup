"BEAT COP" by Logan Williamson

[THINGS]
Cord 1 is a thing.
Cord 1 is fixed in place.
Fake ID is a thing.
Volatile chemicals is a thing.
Volatile chemicals is in hidden compartment.

Cabinets is a closed container.
Cabinets is inside Kitchen.
	
Instead of opening Cabinets:
    say "You hear a string snap and a loud beep before a hidden bomb destroys the entire house, now there can't be any justice!";
    end the story saying "G A M E  O V E R".

	
Scratched Tile is a closed container.
Scratched Tile is in Kitchen
hidden compartment is inside Scratched Tile.
hidden compartment is a container.
Rifle is a thing.
Car is a thing.
Instead of taking Car, say "You're not superman dumbass."
Convicts Body is a thing. "Yep, they're dead. maybe they were hiding something on their person?"
Convicts Body is nowhere.

[containers]
Convicts pockets is a container.
Convicts pockets is a part of Convicts Body.
Fake ID is in Convicts pockets.
The Fake Rock is a closed openable container that is fixed in place.
instead of examining The Fake Rock, say "It seems like a plastic rock made for storing a spare key".
The Fake Rock is in Front Lawn.

[Thing placement]

[Rooms]
Front Lawn is a room. "No point standing out here, time to kick the door in and search the building for evidence!".

Bedroom is a room. "It's a bedroom, you're either sleeping or leaving. The bedroom looks to be in shambles with only a Closet, Dresser, and Nightstand being noteworthy enough to search. There's a bathroom to the South with the Closet being to the North".

Livingroom is a room. "There's not much here apart from a couch and countless empty beer bottles. There's two sets of stairs, one going Down to the Basement and one going Up to the Attic".

Bathroom is a room. "You have to cover your nose to even remotely stand being in this room, tiles fall off the walls as mold and who knows what else covers the floor".

Hall 1 is a room. "Another room of gateways to other rooms, the Kitchen is to the North with a garage to the South and more hallway ahead to the West".

Hall 2 is a room. "The room of gateways to other rooms, to the North is the Livingroom with a Bedroom to the West and more hallway behind you to the East".

Entrance is a room.

Kitchen is a room.

Garage is a room.

Attic is a room.

Basement is a room.

Closet is a room. "you can see Cord 1 is attached to an IED.".

[Room Placement]

Closet is north of Bedroom.
Livingroom is north of Hall 2.
Front Lawn is east of main door.
Bathroom is south of Bedroom.
Hall 2 is east of Bedroom.
Hall 1 is east of Hall 2. 
Attic is above Livingroom.
Basement  is below Livingroom.
Kitchen is north of Hall 1.
Garage is south of Hall 1.
Entrance is east of Hall 1.

[time bomb mechanic]

every turn:
	if player is not carrying a timebomb exactly 22 turns:
		end the story saying "The ground shakes as the house explodes into a mess of splinters and debris, the blast kills you instantly. now there can't be any justice! [line break] G A M E  O V E R".
		
[\/\/\/ tweak this refinement crap later, it's not crucial to the game right now \/\/\/]

[if the player takes A Timebomb:
	say "You pick up the timebomb and quickly difuse it before putting it into your pocket for evidence.";
	then continue the action.]


[Devices]

Cord 2 is a switched off device in the Closet. It is fixed in
place.

Carry out switching off Cord 2: now Closet is dark;

Carry out switching on Cord 2: now Closet is lighted;

Understand "pull [something switched off]" as switching on. Understand "pull
[something switched on]" as switching off. Understand "pull [something]" as
switching on.

After deciding the scope of the player when the location is Closet:
	place Cord 2 in scope;
	place Cord 1 in scope;

Entrance Key unlocks main door.
Entrance Key is inside fake rock.

[People]
Convict is a person.

[people placement]
Convict is in the Basement

[Scenes | Starts & Ends]
Convict Fight is a scene.
	
[Story Flow]

When play begins, say "You're a rookie cop whos been assigned to raid a criminals stash house for evidence of their crimes. You're looking for A Bomb they built, Volatile chemicals they were planning to mix, a Fake ID they were going to use to escape, and a bag of Cocaine they were stashing. Find all the evidence and bring the criminal to justice!"

the player is in Front Lawn.

The main door is a door. it is west of the Front Lawn and east of the Entrance.
The main door is locked.

instead of examining Front lawn, say "No point standing out here, time to kick down the door infront of you and search the building for evidence!"

[Kicking action]
    Kicking is an action applying to one thing.
    Understand " kick [something]" or "hit [something]" as kicking.
    Check kicking:
        if the noun is not a door, say "[The noun] is not something you can kick." instead.


Instead of kicking the Door:
    say "The door swings back instantly killing you";
    end the story saying "G A M E  O V E R.".

Instead of examining the main door, say "It's locked, You need to find the key".

Cord 1 and Cord 2 are in Closet.

Instead of pulling Cord 1:
    say "It was a trap! The house exploded!";
    end the story saying "G A M E  O V E R".

Instead of pulling Cord 2:
    say "The light clicks on, you can see a cardboard box up on a shelf and the other cord attached to an IED"

The description of the Toilet is "Take a shit and leave".

Car is in Garage.

instead of examining Car, say "There's nothing on the car's seats, but there is a trunk that you haven't checked".
Car Trunk is a part of car.
Car Trunk is a locked openable container.
A Timebomb is inside Car Trunk.

Trunk key unlocks Car Trunk.
Trunk key is in Attic.

Rifle is in Bedroom.

Cardboard Box is a thing.

Cardboard Box is in Closet.


[toilet puzzle]
toilet is a thing.
Instead of taking toilet, say "why."

instead of examining toilet, say "The toilet has a tank on it and a lid covering its bowl".
toilet is in bathroom.
toilet tank is a part of toilet.
toilet tank is a container.
toilet bowl lid is a part of toilet.
cocaine is inside toilet tank.

cocaine is an edible thing.
instead of examining cocaine, say "looks like you can eat it?".

instead of eating cocaine, say "Are YOU the criminal?"

[Win condition]
Every turn, if player carries A Timebomb and player carries Fake ID and player carries Cocaine and player carries Volatile Chemicals, end the story saying "You found all the evidence! Now the criminal can face justice. !!YOU WIN!! G A M E  O V E R."

[Health]

A person has a number called maximum hit points.
A person has a number called current hit points.

The maximum hit points of the player is 100.
The current hit points of the player is 100.

The maximum hit points of the Convict is 100.
The current hit points of the Convict is 100.

[Fighting]

Instead of attacking Convict:
	let the damage be a random number between 20 and 50;
	say "You attack [the noun], causing [damage] points of damage!";
	decrease the current hit points of the noun by the damage;
	if the current hit points of the noun is less than 0:
		say "[line break][The noun] lies on the ground dead";
		now the noun is nowhere;
		now Convicts Body is in the basement;
		stop the action;
	let the enemy damage be a random number between 10 and 30;
	say "[line break][The noun] attacks you, causing [enemy damage] points of damage!";
	decrease the current hit points of the player by the enemy damage;
	if the current hit points of the player is less than 0:
		say "[line break]You're killed by the convict! now there can't be any justice! [line break] G A M E  O V E R";
		end the story.
When Convict Fight begins:
	now the left hand status line is "You: [current hit points of player]";
	now the right hand status line is "Bug: [current hit points of Convict]".
