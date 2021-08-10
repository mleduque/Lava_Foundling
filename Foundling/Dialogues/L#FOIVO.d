BEGIN L#FOIVO

/////////////////////////////////
/////////IVORY WITCH/////////////
/////////////////////////////////

//1

CHAIN IF ~Global("L#FoundlingIvory","GLOBAL",0)~ THEN L#FOIVO IvoryWitch01x00
@0 /* You won't-- */
==L#FOIVO @1 /* Wait, you're not one of them. Who are you? Why would you come here, to this long forgotten place, human? Speak! */
END
IF~~THEN REPLY @2 /* We are looking for a certain object that has been hidden somewhere in this region. Who are you? */ EXTERN L#FOIVO IvoryWitch01x01
IF~~THEN REPLY @3 /* Our business has nothing to do with you, girl. Dare to ask more questions and I may be less polite. Who are you, anyway? */ EXTERN L#FOIVO IvoryWitch01x01

CHAIN L#FOIVO IvoryWitch01x01
@4 /* I am the Ivory Witch. I am as old as these rocks. */
==BKORGAN IF ~InParty("KORGAN") !StateCheck("KORGAN",CD_STATE_NOTVALID)~ THEN @5 /* Har! Another lunatic on 'ar way! Just spit under her feet an' she may run away! */
==BNALIA IF ~InParty("NALIA") !StateCheck("NALIA",CD_STATE_NOTVALID)~ THEN @6 /* She doesn't seem evil, <CHARNAME>, even though she seems more than out of place. We should listen to what she has to say. */
==BIMOEN2 IF ~InParty("IMOEN2") !StateCheck("IMOEN2",CD_STATE_NOTVALID)~ THEN @7 /* This creature... she's beautiful. She reminds me of the dryads *he* kept. Poor creatures. */
END
IF~~THEN REPLY @8 /* You thought we're "one of them". Who were you talking about? */ EXTERN L#FOIVO IvoryWitch01x02
IF~~THEN REPLY @9 /* Something wrong is going on here, right? There's some strange energy in the air. Tell us more about it. */ EXTERN L#FOIVO IvoryWitch01x02
IF~~THEN REPLY @10 /* Stop wasting our time and tell us about this passage. There's some business that we should finish as soon as possible, understood? */ EXTERN L#FOIVO IvoryWitch01x02

CHAIN L#FOIVO IvoryWitch01x02
@11 /* I knew you're not from here the very moment I saw your face, your skin, once I could smell the scent of your body. It's different to everything here, to all of these stones, ice shards, and snow. I can smell dirt on your hands. I can smell your musky whiff. */
==L#FOIVO @12 /* This place has been dead for a while. Dead, but in its very unique way. This place was cold, silent and... somehow perennial. But since we lived in the shadow of the mountain, the peace could not last forever. */
==L#FOIVO @13 /* That mountain over there used to be the home of those who served a specific being they called The Lady of the Mists. The shadow the mountain cast was never raven-black, but Gray. As Gray as time itself. */
==L#FOIVO @14 /* Some time ago the Gray shadows started to live. They started to walk. To crawl. To fly. And now this place is very different to what it used to be. */
END
IF~~THEN REPLY @15 /* That's horrible. Can we help you somehow? */ EXTERN L#FOIVO IvoryWitch01x03
IF~~THEN REPLY @16 /* Humph! That's your problem. Now we know which mountain we should check first. */ EXTERN L#FOIVO IvoryWitch01x04

CHAIN L#FOIVO IvoryWitch01x03
@17 /* You... you want to help? */
EXTERN L#FOIVO IvoryWitch01x05

CHAIN L#FOIVO IvoryWitch01x04
@18 /* I won't let you pass the ravine until you help me. I set a special barrier. */
==L#FOIVO @19 /* I can't fight on my own and you'll need to fight the Gray creatures anyway, if you want to get to the mountain. Taking another course would force you to wander for ten days. You would freeze. */
EXTERN L#FOIVO IvoryWitch01x05

CHAIN L#FOIVO IvoryWitch01x05
@20 /* Please. This place should get back to normal. All you need to do, is destroy the main creature that was created by the shadow of the mountain. You need to destroy the Gray Hag and put the Ivory Seed in the frozen pond. */
END
IF~~THEN REPLY @21 /* What will I get in exchange? */ EXTERN L#FOIVO IvoryWitch01x06
IF~~THEN REPLY @22 /* I will help you. You deserve some help, Witch. */ EXTERN L#FOIVO IvoryWitch01x07
IF~~THEN REPLY @23 /* I'll just kill you and then I'll freely walk through this place. If someone else gets in my way, I'll kill him or her, too. */ EXTERN L#FOIVO IvoryWitch01x08

CHAIN L#FOIVO IvoryWitch01x06
@24 /* I... I have some gold. Each of those who died here had at least one golden coin. Some of them had more than a hundred. You'll get every gold piece they had. And you will be able to pass through my barrier. */
==BNALIA IF ~InParty("NALIA") !StateCheck("NALIA",CD_STATE_NOTVALID)~ THEN @25 /* We should help her no matter what. The reward shouldn't matter! */
END
IF~~THEN REPLY @26 /* Fine. I'll help you, Witch. */ EXTERN L#FOIVO IvoryWitch01x07
IF~~THEN REPLY @27 /* I'll just kill you and then I'll walk through your barrier. Ready or not, your life is over. */ EXTERN L#FOIVO IvoryWitch01x08

CHAIN L#FOIVO IvoryWitch01x07
@28 /* Thank you, stranger. */
==L#FOIVO @29 /* Here, take the Ivory Seed and once the Gray Hag is dead, put the seed in the frozen pond. This should protect this place for the next few years. */
==L#FOIVO @30 /* If you need to rest, you can find me in my sanctuary. You can hide yourself from the cold there, too, if you want. */
DO ~SetGlobal("L#FoundlingIvory","GLOBAL",1) GiveItemCreate("L#FOSEED",Player1,1,0,0) EscapeAreaMove("l#fou4",200,200,6)~ EXIT

CHAIN L#FOIVO IvoryWitch01x08
@31 /* You vile creatures! I won't fall easily! */
DO ~SetGlobal("L#FoundlingIvory","GLOBAL",10) Enemy()~ EXIT

//2

CHAIN IF ~Global("L#FoundlingIvory","GLOBAL",1)~ THEN L#FOIVO IvoryWitch02x00
@32 /* It is you. I'm busy, but if you need to hide yourself from the cold, feel free. There should be some blankets near my bed. And take whatever you need, if that can help you in destroying the Gray Hag. */
END
IF~~THEN REPLY @33 /* Thank you. */ EXIT
IF~Global("L#PondIsClear","GLOBAL",1)~THEN REPLY @34 /* I killed the Hag and I left the seed in the pond. That should serve the purpose. */ EXTERN L#FOIVO IvoryWitch02x01

CHAIN L#FOIVO IvoryWitch02x01
@35 /* Yes! I can feel it! */
==L#FOIVO @36 /* I thank you so much, stranger. The perennial peace is back. The land is free. Even if there are some evil creatures left, they will die in days. */
==L#FOIVO @37 /* Here. This is the gold all the dead had. I took it from the ice. It's all I can give you. */
==L#FOIVO @38 /* Again--thank you. My barrier is gone already. */
DO ~SetGlobal("L#PondIsClear","GLOBAL",2) SetGlobal("L#FoundlingIvory","GLOBAL",2) AddExperienceParty(13000) GiveGoldForce(4250) EscapeArea()~ EXIT

