"248 Assignment 2 Part 2 - Photography Game" by Bjarke

[SETUP]
When play begins:
	say "You close the door behind you, and put the key in your pocket. Here you are. Franks house. You used to be friends. You think perhaps you still are, but maybe sneaking into his house will be the end of that. But you haven't heard from him, even after writing every week for the past month, so now you're worried, too. You brought your camera, in case you need to remember the past. [line break] [italic type]Use the 'photograph' action, or 'p' to take pictures of objects in the house. You can then open the camera to view the memories that object triggers. [line break] You can leave at any time by walking back out the door.[roman type] [line break]"

The player is carrying a camera. The description of the camera is "Your trusty camera. [italic type]You can take photographs with it. You can open it to view memories based on the photographs it contains[roman type]."
Instead of dropping the camera:
	say "You're not letting go. It feels almost sewn onto your fingers."

camera tutorial is a truth state that varies.

Instead of opening the camera:
	if the player is not in Inside the Camera, move the player to Inside the Camera;
	if the camera tutorial is false:
		now camera tutorial is true;
		say "[italic type]There are memories from each part of your life, the beginning, middle, and end. The setting governs which ones you are seeing at the moment. There are more than 1 memory in each part, though, so stick around (and examine elements of the memories) to see the others.[roman type][line break]".

Instead of closing the camera:
	if the player is in Inside the Camera, move the player to Entrance;

Instead of taking:
	if the player is not in Inside the camera:
		say "You don't want to mess Frank's things. That's what the camera is for.";
	otherwise:
		say "You don't have any hands here. How would you do that?"


[HOUSE]
The Entrance is a room. "The Entrance. The shoerack is the same, albeit a bit more dusty than you remember it. [line break]Further north is a living room, and up the stairs is a hallway above."
A shoerack is here. "A shoerack. Good as new, and empty."
A jacket is here. "A jacket hangs on the coathanger. It's his, you'd recognize it anywhere."

The Living Room is north of the Entrance. "The most prominent element in the living room his old dining table. Behind it are stacks of shelves. [line break]The east opens up to the kitchen. Back south is the entrance."
A supporter called a dining table is here. The description of the table is "You used to remember the story of how he got it. It was something to do with a misunderstanding. And a mistyped phone number."
A container called shelves is here. The description of the shelves is "Stacks of books. What looks like a project report. Opened letters. And one unmailed letter."
An unmailed letter is in the shelves. The description of the unmailed letter is "You open the unmailed letter. It's... empty. But addressed to you. The date? 3 years ago. You sigh. Guess he tried."
A picture is on the table. The description of the picture is "It is a picture of your friend, Frank. You don't remember taking this."
A project report is in the shelves. The description of the project report is "Our finals report. He really kept that. You can't even bear to flip through it. Too many things wrong with it."

The Kitchen is east of the Living Room. "A kitchen, just big enough for another person to squeeze by when one is cooking. The kitchen counters are clean. [line break]Back west is the living room."
The kitchen counter is scenery in the kitchen.
A set of knives is on the kitchen counter. The description of the set of knives is "He got those knives on one of his trips. Malaysia? Cuba? You don't remember. But he liked them."
A fridge is in the kitchen. "The fridge looks new." The description of the fridge is "You open it. Nothing fresh. No vegetables or moldy cheese. Some sauces, granola bars, things like that."

The Hallway is up from the Entrance. "A short hallway, just big enough for two doors. One east, one west."
A painting is here. "A painting is hanging on the wall." The description of the painting is "It's an art piece you don't know. A woman is sitting on a porch. Huh, not what you'd expect from him."

The Bedroom is east from the hallway. "His bedroom. It's very sparse. [line break]Back west is the hallway."
A book is here. "A book is on the nightstand." The description of the book is "some sci fi book you haven't heard of. But it's very much a thing he'd read."
A container called a diary is here. The diary is lockable. It is locked. The diary is either unread or read. The diary is unread.

Instead of examining the diary:
	if the diary is locked:
		say "His diary? Did he keep a diary? In any case, it's locked, so there's no way to know without a key.";
	otherwise:
		now the diary is read;
		say "With slight trepidation, you open the diary. Why are you doing this? You flip through the pages. It's not super well kept. Entries every... third week or so? First entry is a couple years after school. You flip through some more, all the way to the last page. Dated... 2 months ago. [line break]
[italic type]Excited about going to Cyprus tomorrow. Gonna be good to get away for a while. [roman type][line break]That's it. That's all it says. Shit."

A guitar is here. "An unplayed guitar is in the corner." The description of the guitar is "Unplayed is harsh, perhaps. He played it once or twice. Always said he'd pick it up again. You don't remember seeing him ever do."

The Guest Room is west from the hallway. "It's the same guest bed he always had. It was always mildly uncomfortable. But you could never get yourself to tell him. [line break]Back east is the hallway."
A potted plant is here. "A potted plant is on the windowsill. It's... pretty dead."
A computer charger is here. "A computer charger is plugged into the wall." The description of the computer charger is "Guess he didn't need that, wherever he is. It looks like a new Mac charger too, so you can't use it anyway. Since when did he get a Mac?"

Instead of examining the potted plant:
	say "Upon closer inspection, it is still dead.";

The brass key unlocks the diary. The brass key is inside the potted plant.
Before taking the brass key, say "(rummaging your hands through the potted plant, what a thing to do) you find the key in the mouldy earth."


There is a room called Inside the Camera. "Your vision is overtaken by dust and film. It smells like phosphor. Your body is weightless. As all good stories, this one has a beginning, a middle, and an end."
An empty picture is here. The empty picture is fixed in place. "An empty picture floats in the space." [should I do something with this? Is this the end condition?]

Instead of examining the empty picture:
	if setting is beginning:
		if beginning access is false:
			say "It is not entirely empty, upon inspection. There are some objects. A shirt? A raincoat? And dirt? Footprints? And words, lots of words. They are all fading in and out, difficult to tell apart, yet distinct.";
		otherwise:
			if jacket is not photographed:
				say "The empty picture shows an outline of some clothing. A shirt? A raincoat?";
			otherwise if shoerack is not photographed:
				say "It's faded, but there is a shelf, and some dirt.";
			otherwise if project report is not photographed:
				say "Documents, scattered on the table. Crossed out words, highlight markers.";
			otherwise:
				say "It is empty here.";
	if setting is middle:
		if middle access is false:
			say "It is vague, but there are shapes in there. Distant and foggy. A book spine. Glints of sharp objects. And a pen and paper? They are all fading in and out, difficult to tell apart, yet distinct.";
		otherwise:
			if the book is not photographed:
				say "The picture gives you a sense of descriptions and spaceships.";
			otherwise if the set of knives is not photographed:
				say "Several sharp objects, all together. You feel the prick just looking at it.";
			otherwise if the unmailed letter is not photographed:
				say "The picture gives you a sense of unfulfilled potential. Of something unfinished.";
			otherwise:
				say "It is empty here.";
	if the setting is end:
		if end access is false:
			say "There are shapes in there, deformed and uncertain, almost mere coffee stains on print, but some shapes and colors make it through. Green. Memories written down. Strings vibrating. They are all fading in and out, difficult to tell apart, yet distinct.";
		otherwise:
			if the potted plant is not photographed:
				say "A green spurt springs forth in the image, yet it doesn't seem healthy. An unhealthy green.";
			otherwise if the diary is not photographed:
				say "Memories locked tight behind lock and key.";
			otherwise if the guitar is not photographed:
				say "The picture is of music, despite how you struggle to understand how to photograph music. This picture has done it.";
			otherwise:
				say "It is empty."

A setting is here. The setting is fixed in place. The setting is either beginning, middle, or end. It is beginning. "You feel as if you can change a setting, to change the time."
Changing is an action applying to one visible thing. Understand "change [something]" as changing. 

Check changing:
	if the player is not in Inside the Camera:
		do nothing;
	if the noun is not the setting:
		do nothing;

Carry out changing:
	if the setting is end:
		now the setting is beginning;
		say "The world is beginning again";
	else if the setting is middle:
		now the setting is end;
		say "The world shifts to the end";
	else if the setting is beginning:
		now the setting is middle;
		say "The world shifts to the middle";

The exit is south of the Entrance. "Outside the house."

Instead of going to the exit:
	say "You leave the house.";
	end the story finally saying "Enough memories for one day. You had hoped to find a concrete answer[if end access is false and middle access is false and beginning access is false], but alas, you leave empty-handed[otherwise].[end if] [line break]
	[if the diary is read]Only clue there is 'Cyprus', which is vague and unhelpful. Especially two months late. Did something happen there? Was he planning on staying away that long? [end if]
[if end access is true]Had you just been drifting apart naturally? [end if][if middle access is true]You still had had some good times. [end if][if beginning access is true]As you think back on it, all your good memories were from school. All that happened after...[end if][line break]
[if end access is true and middle access is true and beginning access is true]Maybe it was best to just walk away. Leave him in peace.[end if]
[line break]You lock the door again and head down the street, camera in hand. [if end access is true or middle access is true or beginning access is true]At least you have some memories to cling to. [end if]"
	

[SCENE OBJECTS - these help fill in and ornament the scenes, gives the player something to inspect.]
A teacher is scenery. The teacher is nowhere. The description of the teacher is "Clara Duvan, her name was. She was a good teacher. Got you through a lot."
The students are scenery. The students are nowhere. The description of the students is "There were too many for you to know them all well. You had some friends in there though. So did Frank."
The post-it notes are scenery. The post-it notes are nowhere. The description of the post-it notes are "They were his idea, mostly. You were never that organized. You tried to follow up, but your mind was always more chaotic than his."
A shoe is scenery. The shoe is nowhere. The description of the shoe is "It was about some disagreement over a figure, or something equally stupid. You wanted it, he didn't. It got heated, and the shoe sort of... fell off."
A restaurant is scenery. The restaurant is nowhere. The description of the restaurant is "Italian? Maybe. Mediterranean? Frank had a knack for finding places you never really got. He kept saying he got them from his phone recommendations, but you never believed him. It felt too... well picked."
The work is scenery. The work is nowhere. The description of the work is "You got a job pretty quick after studies. Straightforward gig, really. Software engineer. Paid well. You still miss the coffee-machine from that place."
The text messages are scenery. The text messages are nowhere. The description of the text messages is "In hindsight... maybe there were more. But he also seemed busy. Or at least, you thought he was."
A bar is scenery. The bar is nowhere. The description of the bar is "Picked out by Frank, of course. A quiant little spot, close to our university. The prizes had gotten more expensive since we were students, but hey, now we had disposable income. For a while, at least."
The plants are scenery. The plants are nowhere. The description of the plants is "He always did this. Bought plants and had them die on him. He was never any good at taking care of them. He did use the pots for hiding keys in, though, once."
The ceremony is scenery. The ceremony is nowhere. The description of the ceremony is "It's a blur, most of the other students are just washed out faces. Someone did a speech, and you remembering snickering about its hopefulness with Frank afterwards."



[MEMORY SCENES]
[these states are used to access the memories]
beginning access is a truth state that varies.
middle access is a truth state that varies.
end access is a truth state that varies.


Beginning Memory Part One is a recurring scene. 
Beginning Memory Part Two is a recurring scene. 
Beginning Memory Part Three is a recurring scene.

Beginning Memory Part One begins when the player is in Inside the Camera and beginning access is true and the setting is beginning and Beginning Memory Part Two is not happening  and Beginning Memory Part Three is not happening.
Beginning Memory Part Two begins when Beginning Memory Part One ends happily.
Beginning Memory Part Three begins when Beginning Memory Part Two ends happily.
Beginning Memory Part One begins when Beginning Memory Part Three ends happily.

Beginning Memory Part One ends happily when the time since Beginning Memory Part One began is 3 minutes and the setting is beginning. 
Beginning Memory Part One ends sadly when the time since Beginning Memory Part One began is 3 minutes and the setting is not beginning. 
Beginning Memory Part Two ends happily when the time since Beginning Memory Part Two began is 3 minutes and the setting is beginning. 
Beginning Memory Part Three ends happily when the time since Beginning Memory Part Three began is 3 minutes and the setting is beginning. 
Beginning Memory Part Three ends sadly when the time since Beginning Memory Part Three began is 3 minutes and the setting is not beginning. 

When Beginning Memory Part One begins:
	if the player is in Inside the Camera:
		now the teacher is in Inside the Camera;
		now the students are in Inside the Camera;
		now the ceremony is nowhere;
		say "[if Beginning Memory Part One has happened] The scene shifts back. [otherwise] A scene fills the space. [end if] A classroom. A [italic type]teacher[roman type]. You're sitting in the back, another 50 [italic type]students[roman type] or so, spread around the auditorium. It's new and too clean. The blackboard's barely been written on. [line break] 'You two, you're together', the teacher said. And you were, apparently. You had never met him before, but there you were, suddenly, forced to work together. [if jacket is photographed] You remember seeing his jacket in class earlier in the day, thinking he'd be way too flashy to be your friend. Glad you were wrong. [end if]"

When Beginning Memory Part Two begins:
	if the player is in Inside the Camera:
		now the teacher is nowhere;
		now the students are nowhere;
		now the post-it notes are in Inside the Camera;
		if shoerack is photographed:
			now the shoe is in Inside the Camera;
		say "The scene shifts. You're in a group room, walls covered in [italic type]post-it notes[roman type]. You're both staring at our monitors, working out some problem. As you always did. [line break]You had your fights, sure. It's hazy, now, to even remember what they were about. [if shoerack is photographed]You remember throwing a [italic type]shoe[roman type], once. [end if]"

When Beginning Memory Part Three begins:
	if the player is in Inside the Camera:
		now the post-it notes are nowhere;
		if the shoe is in Inside the Camera:
			now the shoe is nowhere;
		now the ceremony is in Inside the Camera;
		say "The scene shifts. The scene shifts. Before you knew it, you graduated. Together. The [italic type]ceremony[roman type] wasn't the fun part, but you did it. [if project report is photographed] You were damn ragged after staying up all night, fixing commas. But hey, you were alive. [end if]"


Middle Memory Part One is a recurring scene. 
Middle Memory Part Two is a recurring scene. 
Middle Memory Part Three is a recurring scene.

Middle Memory Part One begins when the player is in Inside the Camera and middle access is true and the setting is middle and Middle Memory Part Two is not happening and Middle Memory Part Three is not happening.
Middle Memory Part Two begins when Middle Memory Part One ends happily.
Middle Memory Part Three begins when Middle Memory Part Two ends happily.
Middle Memory Part One begins when Middle Memory Part Three ends happily.

Middle Memory Part One ends happily when the time since Middle Memory Part One began is 3 minutes and the setting is middle. 
Middle Memory Part One ends sadly when the time since Middle Memory Part One began is 3 minutes and the setting is not middle. 
Middle Memory Part Two ends happily when the time since Middle Memory Part Two began is 3 minutes and the setting is middle. 
Middle Memory Part Three ends happily when the time since Middle Memory Part Three began is 3 minutes and the setting is middle. 
Middle Memory Part Three ends sadly when the time since Middle Memory Part Three began is 3 minutes and the setting is not middle. 

When Middle Memory Part One begins:
	if setting is middle and player is in Inside the Camera:
		now the restaurant is in Inside the Camera;
		now the bar is nowhere;
		say "[if Middle Memory Part One has happened] The scene shifts back. [otherwise] A scene fills the space. [end if] You go to catch a movie, some months after graduation. It was some sloppy action movie, you don't much remember the details of it, but it was a good time. [if book is photographed]At the [italic type]restaurant[roman type] later, you talk about books and games, quickly forgetting the movie. [end if]"

When Middle Memory Part Two begins:
	if setting is middle and player is in Inside the Camera:
		now the restaurant is nowhere;
		now the work is in Inside the Camera;
		if unmailed letter has been photographed:
			now the text messages are in Inside the Camera;
		say "The scene shifts. You're at [italic type]work[roman type]. Frank writes you a text message. You haven't responded in a few days. 'I've been busy' you write back. 'Sorry'. [if unmailed letter has been photographed]He says he's been trying to get in contact with you. You feel he's exaggerating how much he's been trying, really. There were a couple of [italic type]text messages[roman type]. [end if]A long time passes, and he replies. 'Ok. Hang out next weekend?' You remember your calendar with dread."

When Middle Memory Part Three begins:
	if setting is middle and player is in Inside the Camera:
		now the work is nowhere;
		now the text messages are nowhere;
		now the bar is in Inside the Camera;
		say "The scene shifts. You're sitting in a [italic type]bar[roman type]. Catch-up time. It seems to happen less and less, these days. Him moving away didn't help either. [if set of knives have been photographed]He's busy talking about his latest vacation. He got a very fancy set of knives there, which was probably too expensive, he admits. But the[otherwise]The[end if] talking is still good, though. You can feel the warmth, even all this time later. What happened to end it like this?"



End Memory Part One is a recurring scene. 
End Memory Part Two is a recurring scene. 
End Memory Part Three is a recurring scene.

End Memory Part One begins when the player is in Inside the Camera and end access is true and the setting is end and End Memory Part Two is not happening and End Memory Part Three is not happening.
End Memory Part Two begins when End Memory Part One ends happily.
End Memory Part Three begins when End Memory Part Two ends happily.
End Memory Part One begins when End Memory Part Three ends happily.

End Memory Part One ends happily when the time since End Memory Part One began is 3 minutes and the setting is end. 
End Memory Part One ends sadly when the time since End Memory Part One began is 3 minutes and the setting is not end. 
End Memory Part Two ends happily when the time since End Memory Part Two began is 3 minutes and the setting is end. 
End Memory Part Three ends happily when the time since End Memory Part Three began is 3 minutes and the setting is end. 
End Memory Part Three ends sadly when the time since End Memory Part Three began is 3 minutes and the setting is not end. 

When End Memory Part One begins:
	now the plants are in Inside the Camera;
	say "[if End Memory Part One has happened] The scene shifts back. [otherwise] A scene fills the space.[end if] Frank went on vacation. wants to share the stories with you. [if potted plant is photographed] You sit there, and listen. And meanwhile, you're trying to figure out how to tell him you got fired. Instead, you make a bad joke on how his [italic type]plants[roman type] didn't like him being away from home for that long. [end if]He asks how you're doing. You say 'fine.' And leave it there. He doesn't look satisfied, but doesn't pry."

When End Memory Part Two begins:
	now the plants are nowhere;
	say "The scene shifts. It's the fight. The Fight. The one you were bound to have eventually. 'I feel like you never talk anymore'. 'I don't know what's happening in your life'. Was that what happened? [if the diary has been photographed]He said it all. You didn't listen at the time. Maybe he was right.[otherwise]You told him what you thought, and that was that.[end if] But there was nothing about this fight, at the time, that said that this was the end. It was just a dumb scrap. At the time."

When End Memory Part Three begins:
	say "The scene shifts. You sit alone, in your room, checking Facebook. You stumble across an update from Frank. He got a new job. He didn't even tell you. [if guitar has been photographed]In another update, he shares some guitar he'd been doing. Perhaps he played the guitar more than you thought. Maybe he picked it up after.[end if] You've been busy, you tell yourself. You can feel the excuses build up, even all this time after. They felt safe and real at the time."




[Photographing Rules]
A thing can be either photographed or not photographed. Usually things are not photographed.

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
	if the project report is photographed:
		now beginning access is true;
	if the book is photographed:
		now middle access is true;
	if the set of knives is photographed:
		now middle access is true;		
	if the unmailed letter is photographed:
		now middle access is true;
	if the potted plant is photographed:
		now end access is true;
	if the diary is photographed:
		now end access is true;
	if the guitar is photographed:
		now end access is true;


Report photographing:
	say "[the noun] is photographed. The camera whirs.";






