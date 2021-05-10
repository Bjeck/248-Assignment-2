"248 Assignment 2 Part 2 - Photography Game" by Bjarke

[SETUP]
The player is carrying a camera. "Your trusty camera."
Instead of dropping the camera:
	say "You're not letting go. It feels almost sewn onto your fingers."


[HOUSE]
The Entrance is a room. "The Entrance. The shoerack is the same, albeit a bit more dusty than you remember it."
A shoerack is here. "One pair of shoes. Good as new."
A jacket is here. "A jacket hangs on the coathanger. It's his, you'd recognize it anywhere."

The Living Room is north of the Entrance. "The most prominent element in the living room was always the old dining table".
A dining table is here. "You used to remember the story of how he got it. It was something to do with a misunderstanding. And a mistyped phone number."
A book is here. 
Shelves are here.
A picture is here. "A picture is stuck in the corner." The description of the picture is "It is a picture of your friend, Frank. You don't remember taking this."
A project report is here. The description of the project report is "Our finals report. He really kept that. You can't even bear to flip through it. Too many things wrong with it."

The Kitchen is east of the Living Room . "A kitchen, just big enough for another person to squeeze by when one is cooking."

The Hallway is up from the Entrance. "a short hallway, just big enough for two doors."
The bedroom is east from the hallway. "You never went in here much."
The Guest Room is west from the hallway. "The bed was always mildly uncomfortable. But you could never get yourself to tell him."


Forwards is a direction. Forwards has opposite backwards.
Backwards is a direction. Backwards has opposite forwards.

There is a room called Inside the Camera. "Your vision is overtaken by dust and film. It smells like phosphor. Your body is weightless. As all good stories, this one has a beginning, a middle, and an end."
An empty picture is here. "An empty picture floats in the space." [should I do something with this? Is this the end condition?]
A setting is here. The setting is either beginning, middle, or end. "You feel as if you can change the world as if you were to change a setting."

Changing is an action applying to one visible thing. Understand "change [something]" as changing.


Check changing setting:
	if the player is not in Inside the Camera:
		do nothing;
	if the noun is not the setting:
		do nothing;

Carry out changing setting:
	if the setting is end:
		now the setting is beginning;
		say "The world is beginning again";
	else if the setting is middle:
		now the setting is end;
		say "The world shifts to the end";
	else if the setting is beginning:
		now the setting is middle;
		say "The world shifts to the middle";



[hmm should there instead maybe be some sort of setting in the camera. a toggle, that can switch the scenes. from beginning, middle, end? Yeaah, that makes sense. ]




Instead of opening the camera:
	if the player is not in Inside the Camera, move the player to Inside the Camera;
	
Instead of closing the camera:
	if the player is in Inside the Camera, move the player to Entrance;

[Some sort of hint on how to do this]




[SCENE OBJECTS - these help fill in and ornament the scenes, but don't actually do anything.]
[oh shit all these objects can probably be like picked up and eaten and stuff lol]
A teacher is nowhere. The description of the teacher is "Clara Duvan, her name was. She was a good teacher. Got you through a lot."
The students are nowhere. The description of the students is "There were too many for you to know them all well. You had some friends in there though. So did Frank."
The post-it notes are nowhere. The description of the post-it notes are "They were his idea, mostly. You were never that organized. You tried to follow up, but your mind was always more chaotic than his."
The shoe is nowhere. The description of the shoe is "It was about some disagreement over a figure, or something equally stupid. You wanted it, he didn't. It got heated, and the shoe sort of fell off. "


[MEMORY SCENES]
beginning access is a truth state that varies.
middle access is a truth state that varies.
end access is a truth state that varies.


[OOK maybe we should do it with Event Table instead? like in Day One [§10.4] - but i need to test how that works, first (can you examine during them?)]



Beginning Memory Part One is a recurring scene. Beginning Memory Part Two is a recurring scene. Beginning Memory Part Three is a recurring scene.
Beginning Memory Part One begins when the player is in Inside the Camera and beginning access is true and the setting is beginning and Beginning Memory Part Two is not happening  and Beginning Memory Part Three is not happening. [First time, you only wait twice??]
Beginning Memory Part Two begins when Beginning Memory Part One ends.
Beginning Memory Part Three begins when Beginning Memory Part Two ends. [fuck these can only have one condition?]
Beginning Memory Part One begins when Beginning Memory Part Three ends.

Beginning Memory Part One ends when time since Beginning Memory Part One began is 3 minutes. 
Beginning Memory Part Two ends when time since Beginning Memory Part Two began is 3 minutes. 
Beginning Memory Part Three ends when time since Beginning Memory Part Three began is 3 minutes. 
[another problem is that when the player exits and reenters, it doesn't print the scene opening line, so there's no indication of where we are until we change scenes.
This can be solved with: Every turn during the Train Stop, say "Water is sluiced out of the tank and into the engine."  And just being clever about the language]
]

When Beginning Memory Part One begins:
	now the teacher is in Inside the Camera;
	now the students are in Inside the Camera;
	say "[if Beginning Memory Part One has happened] The scene shifts back. [otherwise] A scene fills the space. [end if] A classroom. A teacher. You're sitting in the back, another 50 students or so, spread around the auditorium. It's new and too clean. The blackboard's barely been written on. [line break] 'You two, you're together', the teacher said. And you were, apparently. You had never met him before, but there you were, suddenly, forced to work together. [if jacket is photographed] You remember seeing his jacket in class earlier in the day, thinking he'd be way too flashy to be your friend. Glad you were wrong. [end if]"

When Beginning Memory Part Two begins:
	now the teacher is nowhere;
	now the students are nowhere;
	now the post-it notes are in Inside the Camera;
	if shoerack is photographed:
		now the shoe is in Inside the Camera;
	say "The scene shifts. You're in a group room, walls covered in post-it notes. You're both staring at our monitors, working out some problem. As you always did. [line break]You had your fights, sure. It's hazy, now, to even remember what they were about. [if shoerack is photographed]You remember throwing a shoe, once. [end if]"
[shoes]

When Beginning Memory Part Three begins:
	now the post-it notes are nowhere;
	if the shoe is in Inside the Camera:
		now the shoe is nowhere;
	say "The scene shifts. Before you knew it, you graduated. Together. The ceremony wasn't the fun part, but you did it. [if project report is photographed] You were damn ragged after staying up all night, fixing commas. But hey, you were alive. [end if] "









Middle Memory Part One is a recurring scene. Middle Memory Part Two is a recurring scene. Middle Memory Part Three is a recurring scene.
Middle Memory Part One begins when the player is in Inside the Camera and middle access is true and the setting is middle and Middle Memory Part Two is not happening and Middle Memory Part Three is not happening. [First time, you only wait twice??]
Middle Memory Part Two begins when Middle Memory Part One ends .
Middle Memory Part Three begins when Middle Memory Part Two ends.
Middle Memory Part One begins when Middle Memory Part Three ends.

Middle Memory Part One ends when time since Middle Memory Part One began is 3 minutes. 
Middle Memory Part Two ends when time since Middle Memory Part Two began is 3 minutes. 
Middle Memory Part Three ends when time since Middle Memory Part Three began is 3 minutes. 
[another problem is that when the player exits and reenters, it doesn't print the scene opening line, so there's no indication of where we are until we change scenes.]

When Middle Memory Part One begins:
	say "[if Middle Memory Part One has happened] The scene shifts back. [otherwise] A scene fills the space. You go to catch a movie, some months after graduation. "

When Middle Memory Part Two begins:
	say "The scene shifts. You're at work. Frank writes you a text message. You haven't responded in a few days. 'I've been busy' you write back. 'Sorry'."
[shoes]

When Middle Memory Part Three begins:
	say "The scene shifts. You're sitting in a bar. Catch-up time. It seems to happen less and less, these days. Him moving away didn't help either."





End Memory Part One is a recurring scene. End Memory Part Two is a recurring scene. End Memory Part Three is a recurring scene.
End Memory Part One begins when the player is in Inside the Camera and middle access is true and the setting is end and End Memory Part Two is not happening and End Memory Part Three is not happening. [First time, you only wait twice??]
End Memory Part Two begins when End Memory Part One ends .
End Memory Part Three begins when End Memory Part Two ends.
End Memory Part One begins when End Memory Part Three ends.

End Memory Part One ends when time since End Memory Part One began is 3 minutes. 
End Memory Part Two ends when time since End Memory Part Two began is 3 minutes. 
End Memory Part Three ends when time since End Memory Part Three began is 3 minutes. 
[another problem is that when the player exits and reenters, it doesn't print the scene opening line, so there's no indication of where we are until we change scenes.]

When End Memory Part One begins:
	say "[if End Memory Part One has happened] The scene shifts back. [otherwise] A scene fills the space. Frank went on vacation. wants to share the stories with you."

When End Memory Part Two begins:
	say "The scene shifts. A fight. or something. you're stressed. he drags you along to a party?"
[shoes]

When End Memory Part Three begins:
	say "The scene shifts. You sit alone, in your room, checking Facebook. You stumble across an update from Frank. He got a new job. He didn't even tell you."







[oh a neat thing could be if a memory told you where he would hide a key, that you then find in the real world, to unlock his diary. or something.  ! ]






[
3 SCENES

Each scene has 3 steps - the steps are unlocked in the beginning but the descriptions are very vague/faint without the right items.
So that's
1:
	1, 2, 3
2:
	1, 2, 3
3:
	1, 2, 3

Nine Items to photograph.

Each scene of a different point in the life. 
meeting
turnaround
ending (last time I saw him)


Objects:
	shoerack
	jacket
	picture [of who?]

	a specific book
	a souvenir
	an unmailed letter

	potted plant (dead)
	diary
	an unplayed guitar



other ideas:
	diagram or flowchart or project structure or project report! "oh, he kept this too??"
	dining table. some other friend or something? 

]







[Photographing Rules]
A thing can be either photographed or not photographed.

Photographing is an action applying to one visible thing. Understand "photograph [something]" as photographing. Understand "p [something]" as photographing.

Check photographing:
	if the player is in Inside the Camera:
		say "you have no hands with which to use an object you are inside. Even the sentence refuses to make sense." instead;
	if the noun is the camera:
		say "that makes no sense." instead.

Carry out photographing:
	say "*click*";
	now the noun is photographed;
	if the shoerack is photographed:
		now beginning access is true;
	if the jacket is photographed:
		now beginning access is true;
	if the picture is photographed:
		now beginning access is true;
[	if the shoerack is photographed and the shelves are photographed:
		move the memory of the university meetup to Inside the Camera.]


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

score or something else just to keep track of how many memories the player has seen


STILL considering the idea that memories happen on turns when teh player is not there, so when they go into the camera, something new might happen than last time. but what memory? ALL of them? 


memories running on loop - multiple scenes.
running on loop in REAL TIME??

Linking like:
Train Stop is a recurring scene. Train Wait is a recurring scene. 
Train Wait begins when play begins. 
Train Stop begins when Train Wait ends. 
Train Wait begins when Train Stop ends. 




items unlock parts of the memory? 

]








[OLD STUFFF]



[Two ideas for how to do memories]
[1: as objects]
A memory is a kind of thing. A memory is fixed in place. 

[ this examine rule doesn't work for some reason. DOCUMENTATION IS WRONG??
Before examining a memory, say: "Machinic sounds spin around you, as if the entire world is a giant clock. Then the memory forms in front of you."]

A memory called memory of a shoerack is nowhere. The description of the memory of a shoerack is "'Oh, you still got those?' His voice is hollow, but warm. 'Yeah,' I shrug. I had those old boots for another two years. He puts his shoes on the rack and walks into the living room. "

A memory called memory of the university meetup is nowhere. The description of the memory of the university meetup is "We always worked together well in university. Got assigned a random group in an early semester, but sometimes luck strikes true, no?"


[2: as scenes]
[
Jacket Memory is a scene.

Jacket Memory begins when the player is in Inside the Camera and the jacket is photographed.

When Jacket Memory begins:
	say "You remember when he bought the jacket. You were in London, visiting for the first time, and he got an idea that jackets were cheaper in Britain. He was wrong, but he insisted. You followed him, dutifully, shaking your head all the way. Although, you will admit, he got a pretty darn good jacket out of it."

[could have this space be actually simulated, and have the friend be a real person and have you move around in the memory. would be a lot more writing but would be an actual simulation.]
]

Shelves Memory is a scene.

Shelves Memory begins when the player is in Inside the Camera and the shelves are photographed.

When Shelves Memory begins:
	say "All the books. He kept all the books, the mad man. I sold mine after we were done."

[it DOES start both scenes at the same time. HMM]


