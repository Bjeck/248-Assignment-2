"248 Assignment 2 Part 2 - Photography Game" by Bjarke

The player is carrying a camera. "Your trusty camera."
Instead of dropping the camera:
	say "You're not letting go. It feels almost sewn onto your fingers."


The Entrance is a room. "The Entrance. The shoerack is the same, albeit a bit more dusty than you remember it."
A shoerack is here. "One pair of shoes. Good as new."
A jacket is here. "A jacket hangs on the coathanger. It's his, you'd recognize it anywhere."

The Living Room is north of the Entrance. "The most prominent element in the living room was always the old dining table".
A dining table is here. "You used to remember the story of how he got it. It was something to do with a misunderstanding. And a mistyped phone number."
A book is here. 
Shelves are here.
A picture is here. "A picture is stuck in the corner." The description of the picture is "It is a picture of your friend, Frank. You don't remember taking this."

The Kitchen is east of the Living Room . "A kitchen, just big enough for another person to squeeze by when one is cooking."

The Hallway is up from the Entrance. "a short hallway, just big enough for two doors."
The bedroom is east from the hallway. "You never went in here much."
The Guest Room is west from the hallway. "The bed was always mildly uncomfortable. But you could never get yourself to tell him."


There is a room called Inside the Camera. "Your vision is overtaken by dust and film. It smells like phosphor. Your body is weightless."
An empty picture is here. "An empty picture floats in the space."

Instead of touching the camera:
	if the player is not in Inside the Camera, move the player to Inside the Camera;
	otherwise move the player to the Entrance.


[Two ideas for how to do memories]
[1: as objects]
A memory is a kind of thing. A memory is fixed in place. 

[ this examine rule doesn't work for some reason. DOCUMENTATION IS WRONG??
Before examining a memory, say: "Machinic sounds spin around you, as if the entire world is a giant clock. Then the memory forms in front of you."]

A memory called memory of a shoerack is nowhere. The description of the memory of a shoerack is "'Oh, you still got those?' His voice is hollow, but warm. 'Yeah,' I shrug. I had those old boots for another two years. He puts his shoes on the rack and walks into the living room. "


[2: as scenes]
Jacket Memory is a scene.

Jacket Memory begins when the player is in Inside the Camera and the jacket is photographed.

When Jacket Memory begins:
	say "You remember when he bought the jacket. You were in London, visiting for the first time, and he got an idea that jackets were cheaper in Britain. He was wrong, but he insisted. You followed him, dutifully, shaking your head all the way. Although, you will admit, he got a pretty darn good jacket out of it."

[could have this space be actually simulated, and have the friend be a real person and have you move around in the memory. would be a lot more writing but would be an actual simulation.]



[Photographing Rules]
A thing can be either photographed or not photographed.

Photographing is an action applying to one visible thing. Understand "photograph [something]" as photographing. 

Check photographing:
	if the player is in Inside the Camera:
		say "you have no hands with which to use an object you are inside. Even the sentence refuses to make sense." instead;
	if the noun is the camera:
		say "that makes no sense." instead.

Carry out photographing:
	say "*click*";
	now the noun is photographed;
	if the shoerack is photographed:
		move the memory of a shoerack to Inside the Camera.


Report photographing:
	say "[the noun] is photographed. The camera whirs.";


[some every turn stuff - this will change]
Every turn:
	If the book is photographed:
		say "The book screams."; [This is not final, this was just a test]
	If the memory of a shoerack is in Inside the Camera and the player is not in Inside the Camera:
		say "the camera smells like shoeshine".
		


[
NOTES
instead of touching object: move to X

running multiple scenes simultaneously?


You could have the camera space be a copy of the house that you populate by taking photography. While inside you can trigger a scene that is incomplete depending on which items are missing.
]
