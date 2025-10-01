"No More Room" by Damian Nguyen

When play begins:
	say "You woke up from a quick nap on some cardboard box. The world through the apartment's window is straight out of your worst nightmare. People rustling garbage, scavenging for anything useful. Zombies roam the street, waiting for their next prey to feast on.";

Broken down apartment is a room."Your home, or at least a shell of what it was before the outbreak. Amidst all the chaos, you still chose this place at your base of operation."

The description of the player is "You, a weary survivor, wake up with the weight of the world on your shoulders. The familiar ache in your bones reminds you of how long it's been since you slept in a real bed. You look around to see your companions in the same state: exhausted, broken, yet somehow still here. You carry a backpack given to you by your parents, right before they start developing a taste for human flesh."

Laura is a woman in the Broken down apartment. The description of Laura is "The kid is still too young to fully understand the horror of what’s happening around her. Used to be a high school student and captain of the cheerleading team, her eyes carry a mixture of innocence and fear, but you can see a surprising resilience in her—she’s survived this long when so many others haven’t. Her hands tremble when she holds a weapon, but she’s learning fast."

David is a man in the Broken down apartment. The description of David is "Once full of life and confidence, the once brave firefighter now relies on a crutch to support his damaged leg. Despite his condition, his sharp eyes still retain a flicker of the person he used to be. His once gruff demeanor has softened, but it’s clear he struggles every day just to survive."


Talking to is an action applying to one visible thing. Understand "talk to [someone]" or “converse with [someone]”as talking to.

Check talking to: say "[The noun] doesn't reply."


Instead of talking to Laura in the Broken down apartment:
	If the hospital is visited:
		say "I'm glad we made it out of the ICU unscathed, that medical supplies is going to help us a lot in the upcoming journey, from this map that I have, we have to go north through the supermarket to reach the city border[paragraph break].";
	else:
		say "Laura: Just woke up huh. I think we have stayed here long enough, and we are running low on supplies, the city border is not too far away too. I really miss my parents, I have hope that she survived. Everything just happen really fast you know.";

Instead of talking to David in the Broken down apartment:
	if the hospital is visited:
		if David is infected:
			say "I am fine, things got a bit sticky in there, but I totally owned that zombie, there is still a lot of kick in this old man *cough* *cough*";
		if David is uninfected:
			say "That was brave of you guys going in there while a horde surrounds the ICU. I would not be able to make it at all.";
	else:
		say "David: Running out of lucky star now, I am on my last leg *chuckle*. You got a strong heart kid. Right now we need to resupply and focus on our journey to reach the city border. Maybe we should try for the hospital, there might be something useful there. The journey shouldn't be too far, it is just west from where we are."

A room can be visited or unvisited. A room is usually unvisited.
A person can be heard or unheard. A person is usually unheard.
A person can be hurt or fine. A person is usually fine.
A person can be infected or uninfected. A person is usually uninfected.
A person can be dead or alive. A person is usually alive.

The previous location is a room that varies.

Every turn:
	if the previous location is not the location of the player:
		if David is alive:
			move David to the location of the player;
		if Laura is alive:
			move Laura to the location of the player;
		say "Your companions follow close behind.";
	now the previous location is the location of the player;

The backpack is a container carried by the player. The description of the backpack is "A simple, worn-out backpack that holds your few remaining supplies. It's clear that you can’t carry much more, every item inside is critical to your survival."

Instead of dropping the backpack:
	say "You can't afford to leave your backpack behind. It's your lifeline."
	
After going to a room (called the new location):
	if the backpack is open:
		let dropped-item be a random thing in the backpack;
		if dropped-item is not nothing:
			remove dropped-item from play;
			say "As you step into [the new location], [dropped-item] slips out of your open backpack. You hear it clatter to the ground behind you, but by the time you look back, it's already gone.";
		now the backpack is closed.
	
Instead of opening the backpack:
	if the backpack is open:
		say "The backpack is already open.";
	otherwise:
		now the backpack is open;
		say "You unzip the backpack and see the few supplies you have left, carefully packed away. What do you want to take or do next?";

Instead of closing the backpack:
	if the backpack is closed:
		say "The backpack is already closed.";
	otherwise:
		now the backpack is closed;
		say "You zip up the backpack, securing everything inside.";
		

Instead of taking something:
	if the noun is not in the backpack:
		move the noun to the backpack;
		say "[The noun] is now in your backpack.";


The knife is in the backpack. The description of the knife is "A small, sharp knife—your best weapon for close combat or cutting supplies." 
The bottle of water is in the backpack. The description of the bottle of water is "A nearly empty bottle of water, enough for one more drink if you're lucky."
The pistol is in the backpack. The pistol is a thing. 
The description of the pistol is "A standard 1911 pistol that shoots .45 ACP rounds. Besides your parents, this is the thing that you trust the most."

The Hospital is a room west of Broken down apartment. "A broken down hospital, its walls cracked and windows shattered. The air is thick with the scent of decay, and the flickering lights barely illuminate the bloodstained floors. Old hospital equipment lies abandoned, rusted and covered in dust. The faint sound of groaning and shuffling echoes from the ICU, where the infected have become trapped. A few scattered medical supplies glint under the dim light, offering a glimmer of hope amidst the chaos. This might come in handy in the future."

Instead of talking to David in the hospital:
	say "David: There is nothing out here. Damn savages have looted everything. It's a shame. We could also try our luck in the ICU. But the place is crawling with walkers. Who would have thought seperating a bunch of vulnerable people would create a hell hole on Earth."

Instead of talking to Laura in the hospital:
	say "If we have to go into the ICU, that would be very risky. We might disturb the horde and we don't know if we can find anything useful in there. It is your call, I trust your decision."
	


The ICU is a room west of The Hospital. 

The medical supplies is a thing inside the ICU. The description of the medical supplies is "A first aid kit along with some essential supplies for bite wounds, antibiotics and bandages"


Instead of going west from The Hospital:
	say "The ICU is a dark, ruined ward filled with overturned beds and broken medical equipment. The supplies are within reach, but so is death. The groans of the infected grow louder as you approach.";
	say "Who will go in? (Type 'send yourself', 'send David', or 'send Laura'.)";

Understand "send [text]" as choosing ICU runner.

Choosing ICU runner is an action applying to one topic.

Carry out choosing ICU runner:
	if the topic understood matches "yourself":
		say "You take a deep breath and step into the ICU. The sight is overwhelming, but you move quickly, grabbing as much as you can. Unfortunately, your movement stirs the horde, and they begin breaking free. You barely escape, but the threat is growing.";
		move medical supplies to backpack;
		now the player is in Broken down apartment;
	else if the topic understood matches "David":
		say "David nods and limps toward the ICU. He moves slower than you’d like, but he manages to grab the supplies. Just as he turns back, a zombie lunges at him—he barely fights it off and escapes. Back at the apartment, he insists he's fine.";
		move medical supplies to backpack;
		now David is infected;
		now the player is in Broken down apartment;
	else if the topic understood matches "Laura":
		say "Laura moves like a shadow, slipping through gaps in the horde. She returns with the supplies, completely unharmed. Maybe her cheerleading days actually paid off.";
		move medical supplies to backpack;
		now the player is in Broken down apartment;
	else:
		say "That’s not a valid choice. Type 'send yourself', 'send David', or 'send Laura'.";

Instead of going west from Broken down apartment:
	if the hospital is visited:
		say "There is nothing left for us in the hospital. We should focus on the journey to the city border.";
	otherwise:
		now the hospital is visited;
		continue the action.


The Supermarket is a room north of the Broken down apartment. "The supermarket is a chaotic mess, with overturned shelves, shattered glass, and rotting food scattered everywhere. The faint smell of decay lingers in the air. Despite the destruction, there might still be useful supplies here—if you're brave enough to search."

Instead of talking to David in the supermarket:
	if Laura is hurt:
		say "Poor child, well don't just stand there, do something. Quickly or she will die. D I E!";
	else:
		say "We should look around for anything that might be useful: food, water and any weapon is useful. It is a long road ahead";

Instead of talking to Laura in the supermarket:
	if Laura is hurt and medical supplies is not in backpack:
		say "Laura: I don't want to die, you won't let me die right, I will live and find my parents *cough heavily*[paragraph break]";
		say "There is nothing you can do for Laura, all you can do now is continue west";
	if Laura is hurt and medical supplies is in backpack:
		say "Don't worry about me, we have medical supplies from earlier right. I will be back to my full strength in no time. Let's keep pushing west";
	else:
		say "I think after this stop we can continue west to the Deli store west of here. That will help us avoid the open street crawling with zombies. Yikes!";


The canned food is in the Supermarket. The description is "A dented can of beans. It doesn't look appetizing, but it's better than nothing."
The zombie is in the Supermarket. The description is "A shambling, groaning figure lurking near the entrance. Its milky eyes lock onto you as you approach."

Instead of taking the canned food when the zombie is in the Supermarket:
	if knife is not in backpack and pistol is not in backpack:
		say "You scramble back, realizing you're unarmed. You'll need a weapon to deal with this threat.";
		end the story saying "You were overwhelmed by the zombie.";
	otherwise:
		say "The zombie lunges at you as you reach for the canned food! You barely manage to dodge its grasp.";
		say "You have a split second to act. What will you do? (Type 'use knife' or 'use pistol'.)";


Understand "use [text]" as choosing a weapon.

Choosing a weapon is an action applying to one topic.

Carry out choosing a weapon:
	if the topic understood matches "knife":
		if knife is in backpack:
			say "You quickly pull out your knife and stab the zombie in the head. It collapses to the ground, lifeless.";
			now the zombie is nowhere;
		else:
			say "You reach into your backpack, only to find out you didn't close the backpack and have dropped the knife somewhere.";
			end the story saying "Without your weapon, you are defenseless. The zombie lunges at you, and everything fades to black.";
	if the topic understood matches "pistol":
		if pistol is in backpack:
			say "You pull out your gun and fire. The zombie's head snaps back, and it crumples to the floor. The gun made quite a sound, hopefully it does not attract unwanted attention.";
			now the zombie is nowhere;
			now the player is heard;
		else:
			say "You reach for your gun, but it's not there! You must have left it behind somewhere.";
			end the story saying "You fumble for a weapon that isn't there. The zombie pounces, and your vision fades to red.";


Instead of going north from the Supermarket:
	say "The way north is blocked by a collapsed ceiling. You'll have to find another route.";


The Deli Store is a room west of the Supermarket. "A small, cramped space with glass-fronted shelves stocked with non-perishable items. A faded neon sign hangs above the counter, flickering intermittently. Before the outbreak, you used to come here every day to get supplies."

Wallace is a man in the Deli Store.

Instead of going west from Supermarket when Wallace is in the Deli Store:
	if the player is unheard:
		say "On the way to the deli store, you spot a middle-aged man wearing some sort of white outfit with an orange hood. He holds an assault rifle, and some followers stand behind him, wearing the same outfit. They are mumbling something, almost chant-like. You, sensing a potential threat, decided to use the last of your bullets to distract him. You group waits for you back in the supermarket. [paragraph break]" ;
		remove Wallace from play;
	otherwise:
		say "Shadows shift in the corners. Hooded figures emerge from behind the counter. They are all wearing some sort of white outfits with orange hoods. One of them shouts, 'The unclean must be purged!' before gunfire erupts. You manage to drive them away with your pistol, but it seems that Laura caught a stray bullet. You carry Laura back to the supermarket to check on her. [paragraph break]";
		now Laura is hurt;
		remove Wallace from play;

Instead of going west from Supermarket when Laura is hurt:
	if medical supplies is in backpack:
		say "Laura can't continue the journey with an untreated bullet hole. Luckily, with the supplies retrieve from ICU, you administer a dose of painkiller and carefully cauterize her wound and wrap it up. She lost a lot of blood, but she is stable for now";
		now Laura is fine;
		continue the action;
	if medical supplies is not in backpack:
		say "Laura can't continue the journey with an untreated bullet hole. Without supplies to treat the wound, Laura quickly stumble to the ground, laying in a pool of her own blood. Soon, she succumb to death. [paragraph break]";
		end the story saying "Although it is not your fault, with David yelling at your for letting Laura die, the sheer horror of Laura drowning in her own blood was too much for you. With a quick motion, you slit your own throat and lay next to Laura. David, limping away from the body, never to be seen again.";


Instead of going west from The Deli Store when David is infected:
	say "David starts to experience a violent spasm. His eyes twitch, and his hands claw at the dirt. His mouth foams as he groans in pain. You spot a bite mark about two centimeters deep in his good leg—he must have gotten that in the ICU and hid it from you. [paragraph break] What will you do? (Amputate David or End David)";
	
Amputating is an action applying to one visible thing.
Ending is an action applying to one visible thing.

Understand "amputate [something]" as amputating.
Understand "end [something]" as ending.

Instead of amputating David when David is infected:
	say "Without hesitation, you take the bonesaw in the medical supplies and start hacking away David's leg. Although he is turning, the pain is still too much for a person to handle. He lets out a bloodcurdling scream as the sawblade digs into his flesh. After a clean cut, you quickly wrap his leg in bandages and cauterize the wound. He seems to be stable, for now. [paragraph break]";
	Now David is uninfected;
	Now David is hurt;
	
Instead of ending David when David is infected:
	say "David stumbles back, groaning. His skin darkens, his breath ragged. His body twitches uncontrollably as the infection fully takes hold. His eyes, once familiar, now stare at you with a vacant, predatory hunger. With a swift stab to the skull, you quickly end his suffering. [paragraph break]";
	now David is uninfected;
	now David is dead;


Instead of talking to David in the Deli Store:
	if David is infected:
		say "David mumbles something under his breath, his voice thick, words slurring. 'Hot... burnin' up...' His fingers twitch against his crutch. 'We... go... whessst...' His eyelids flutter as he grips his forehead, his breath coming in ragged gasps.";
	if David is hurt:
		say "David leans against a shelf, his breath shallow. 'Still kicking, haha' he says with a weak chuckle, though pain laces his voice. 'Not exactly how I pictured my golden years, but I guess I owe you one.";
	if David is dead:
		say "David’s body lies still on the cold floor, his features frozen in a grimace. The deli’s dim light casts long shadows over his lifeless form. Your knife is still slick with his blood, a reminder of the choice you had to make. For a moment, silence fills the store";
	if David is uninfected and David is alive:
		say "David eyes the shelves, his sharp gaze scanning for anything useful. 'Damn shame... Places like this used to be a lifesaver. Now they’re just tombs.' He sighs, then looks at you. 'We should keep moving. No sense in standing around.";
		
	
Instead of talking to Laura in the Deli Store:
	if David is hurt:
		say "Laura glances at David, her face pale. 'I can't believe he's still alive after that...' she mutters. She bites her lip, shifting nervously. 'Is he going to make it?";
	if David is dead:
		say "Laura looks at you, eyes red from crying. 'You... you really did it.' She swallows hard, hugging herself. 'I know he was turning, but... I can't believe he's gone.' She looks away, unable to meet your gaze.";
	else:
		say "Laura runs her fingers over a dusty countertop, a wistful look in her eyes. 'My mom used to take me to a place like this,' she says softly. 'She always let me pick out a treat. I’d always go for the chocolate-covered pretzels—she hated them but bought them anyway.' She shakes her head, snapping herself out of the memory. 'Anyway, we should keep moving. I think we need to head west.";


	
The Office Complex is a room west of The Deli Store. The Office is south of the Park. "A dilapidated office building with shattered windows and debris scattered everywhere. The air smells of dust and decay. A lone survivor stands near the entrance, looking desperate. Your group seems lost, you should ask someone for direction. [paragraph break]"

The Park is a room north of the Office Complex. "A large, open park that was once a place of joy and relaxation. Now, it's a grim reminder of the world's collapse. A military supply crate sits in the center, surrounded by the remains of a zombie horde. [paragraph break]"

The horde is a thing in the Park. The description of the horde is "A massive horde of zombies blocks the way to the park. They shuffle and moan, creating an insurmountable wall of death. [paragraph break]"

Jisoo is a woman in the Office Complex. The description of Jisoo is "A weary survivor with a determined look in her eyes. She seems to be guarding the entrance, but her posture suggests she's in need of help. [paragraph break]"


Instead of talking to Jisoo:
	if the player carries the canned food and the player carries the bottle of water:
		say "'Do you have any food or water?' Jisoo asks, her voice trembling. 'I haven't eaten in days...'";
		say paragraph break;
		say "You hand her the canned food and water. Her eyes light up with gratitude. 'Thank you so much!' she says, clutching the items tightly.";
		say paragraph break;
		say "After a moment, she looks at you with a serious expression. 'Listen, there's a military supply drop happening at the park north of here. But there's a horde of zombies blocking the way. I can help you get past them.'";
		say paragraph break;
		say "Jisoo steps forward and begins singing a haunting melody. The zombies, drawn to the sound, start shuffling toward her. 'Go now!' she whispers. 'I'll keep them distracted.'";
		say paragraph break;
		now the canned food is carried by Jisoo;
		now the bottle of water is carried by Jisoo;
		now the horde is nowhere;  
		remove the horde from play;
	otherwise:
		say "'Do you have any food or water?' Jisoo asks, her voice trembling. 'I haven't eaten in days... I need both to survive.'";
		if the player carries the canned food:
			say "You offer her the canned food, but she shakes her head. 'I need water too... Please, I can't survive without both.'";
		otherwise if the player carries the bottle of water:
			say "You offer her the water, but she shakes her head. 'I need food too... Please, I can't survive without both.'";
		otherwise:
			say "You don't have anything to give her. She looks at you with despair in her eyes. 'Please... come back if you find anything.'";
		say paragraph break;
		
Instead of talking to Laura in the Office Complex:
	say "Laura glances around the ruined office, her expression somber. 'Y'know... my mom used to work in a place like this. She'd pick me up after her shift, and we'd grab dinner together. Those were good days.' She exhales, forcing a smile. 'But that was another lifetime ago, huh? We should keep moving. But I do not know where to go, let's ask that suvivor over there'";

Instead of talking to David in the Office Complex:
	if David is hurt:
		say "David exhales sharply, shifting his weight awkwardly on his crutch. 'Y'know, never thought I’d be a one-legged man in a zombie apocalypse.' He forces out a dry chuckle, though the pain in his voice is evident. 'Guess there’s a first for everything.' He nods toward Jisoo. 'She seems desperate. If she’s offering help, might be worth listenin’ to.";
	else:
		say "David looks around the ruined office space with a thoughtful expression. 'Used to know a guy who worked in a place like this. Always complained about the coffee.' He chuckles, shaking his head. 'Bet he’d take burnt coffee over this any day.'";


Instead of going north from the Office Complex when the horde is in the Park:
	say "A massive horde of zombies blocks the way to the park. You'll need to find a way to distract them.";

Instead of going north from the Office Complex when the horde is nowhere:
	say "With Jisoo's song drawing the zombies away, you quickly make your way to the park.";
	continue the action;
	
Instead of talking to Laura in the Park:
	say "Laura stares at the military crate, her eyes wide. 'I can't believe this is still here,' she says, running her fingers over the worn insignia. 'My dad always said the military would come through when things got bad... Guess they tried.' She looks around the ruined park, shaking her head. 'We should grab what we can and keep moving. The city border’s south from the Office Complex, we should head back and continue.'";
	
Instead of talking to David in the Park:
	if David is hurt:
		say "Despite everything, David’s eyes light up when he spots the M249. 'Now that... is a beauty,' he says, almost forgetting his pain for a moment. '5.56 belt-fed machine gun, 1200 rounds per minute. Hell, I used to dream about gettin’ my hands on one of these.' He chuckles, shaking his head. 'Damn shame I ain’t in shape to carry it now... but you? You could turn a hundred walkers into paste with this thing.'";
	if David is dead:
		say "David is in the past now, may he rest in peace";
	if David is alive and David is uninfected:
		say "David’s eyes widen as he approaches the military crate. 'Now that—' he points at the M249 with an appreciative nod '—is a beauty. Belt-fed, full-auto, military grade. If this baby’s still in working condition, we’ve got a real game-changer on our hands.'";

The military supply crate is in the Park. The description of the military supply crate is "A large, sturdy crate marked with military insignia. It's filled with essential supplies: ammunition, medical kits, and rations."

M249 is in the Park. The description of M249 is "A machine gun with 1200 rounds magazine, capable of spitting 1200 rounds per minute." 


The City Border is a room south of the Office Complex. "The city border is the final stop before your group makes it out of the state. A massive horde of zombies blocks the road, their groans echoing in the empty streets."


Instead of going south from the Office Complex:
	if the player carries the M249:
		if David is fine:
			say "You grip the M249 tightly and unleash a storm of bullets into the horde. The sheer firepower tears through the undead, clearing a path. 'Go! Now!' you shout, leading the group forward.";
			say "David, still strong and steady despite everything, keeps pace with you. Laura follows close behind. The three of you push forward, breaking past the city border.";
			say "'We actually made it...' Laura breathes, almost in disbelief.";
			say "David nods, placing a hand on your shoulder. 'Wouldn't have happened without you.'";
			end the story finally saying "You and your group escape, together and whole.";
		otherwise if David is hurt:
			say "You grip the M249 tightly and unleash a storm of bullets into the horde. The sheer firepower tears through the undead, clearing a path. 'Go! Now!' you shout, leading the group forward.";
			say "David struggles with his crutch, his injured body barely keeping up, but you and Laura support him as you push past the carnage.";
			say "'Made it, huh?' David exhales, collapsing onto the pavement once you reach safety. 'Didn’t think I’d live to see the outside.'";
			end the story finally saying "You, Laura, and a wounded David escape the city.";
		otherwise:
			say "With the M249 in your hands, you tear through the horde, mowing down anything in your way. The path ahead clears, but David isn't here to see it.";
			say "Laura glances at you, then back at the devastation. 'He should've been here too,' she murmurs, but there’s no time to grieve now. Together, you escape the city.";
			end the story finally saying "You and Laura make it out, but David didn't make it.";
	otherwise:
		if David is uninfected and David is alive:
			say "You turn to David and Laura. 'There's no way all of us make it unless someone buys time.'";
			say "Before they can protest, you sprint forward, yelling, drawing the horde away. As the undead swarm toward you, you see David—strong, uninjured—grab Laura’s wrist and pull her to safety.";
			say "You fight until the bitter end, but there's too many. Your vision fades as the zombies overwhelm you.";
			end the story finally saying "You gave your life so David and Laura could live.";
		otherwise if David is hurt:
			say "You turn to David and Laura. 'There's no way all of us make it unless someone buys time.'";
			say "David, weak from his injuries, shakes his head. 'No... I’ll do it.'";
			say "Before you can argue, he grips his crutch and limps toward the horde. 'Take care of her,' he says over his shoulder. Then, with his last ounce of strength, he starts screaming, drawing the zombies toward him.";
			say "Laura gasps as David disappears into the mass of undead. 'David—!' But there’s no stopping him now.";
			say "You grab her hand, forcing yourself forward. You make it through, but David is gone.";
			end the story finally saying "David sacrificed himself so you and Laura could live.";
		otherwise:
			say "Laura stares at the massive horde, gripping your arm. 'We can’t make it,' she whispers, fear in her eyes.";
			say "There’s no time to hesitate. 'Go, Laura,' you say firmly. 'I’ll hold them off.'";
			say "She shakes her head, but you push her back. 'Live, for David and for me.'";
			say "Tears stream down her face as she nods and bolts through an opening. The last thing you hear before the horde consumes you is the sound of Laura running, surviving.";
			end the story finally saying "You sacrificed yourself to ensure at least one of you made it out.";
