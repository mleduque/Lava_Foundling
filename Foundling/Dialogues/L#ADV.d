BEGIN L#ADV1
BEGIN L#ADV2
BEGIN L#ADV3

////////////////////////////
///TALK 10 - ADVENTURERS////
////////////////////////////

CHAIN IF ~Global("L#FouPlot","GLOBAL",12) Global("L#ADV","LOCALS",0)~ THEN L#Adv1 Adventurers000
@0 /* ... there must be something! Gah, if only I could use my magic! I would crack this annoying sculpture! */
==L#Adv2 @1 /* Calm down, Toracz. Patience is equal to dignity and as we-- */
==L#Adv1 @2 /* Just give me a break, will you? I can't stand this ranting of yours, Joah! */
==L#Adv3 @3 /* I'll never understand you, boys. One day you love one another and the next you want to kill each other. Oh, come on! Give him a kiss! I won't look! */
==L#Adv2 @4 /* Sonya! */
==L#Adv1 @5 /* Stop it, already! */
==L#Adv3 @6 /* Oh, there's nothing to hide, boys. But fine, just stop looking at me that way. I suppose we should focus on work. */
==L#Adv1 @7 /* There's no time for-- */
==L#Adv1 @8 /* Well, well, well. It seems we've got some company, friends. */
==YoshJ IF ~InParty("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @9 /* Be careful, wise leader; they don't seem to be simple trespassers. */
==JaheiraJ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @10 /* We might manage to avoid a fight, <CHARNAME>, so try being nice. */
END
IF~~THEN REPLY @11 /* I'm <CHARNAME>. Did you find the passage? */ EXTERN L#Adv1 Adventurers001
IF~~THEN REPLY @12 /* Get out of my way, idiots. I've got some business here. */ EXTERN L#Adv1 Adventurers002
IF~~THEN REPLY @13 /* Greetings, adventurers. It seems we have the same goal. */ EXTERN L#Adv1 Adventurers003
IF~~THEN REPLY @14 /* Whatever. Prepare to die, fools! */ EXTERN L#Adv1 Adventurers002
IF~~THEN REPLY @15 /* So you two are lovers? Huh, you must be an interesting group of adventurers! */ EXTERN L#Adv1 Adventurers001

CHAIN L#Adv1 Adventurers001
@16 /* What?! It--it's not your business! */
EXTERN L#Adv1 Adventurers004

CHAIN L#Adv1 Adventurers003
@17 /* Uhm... yeah, so it seems! */
EXTERN L#Adv1 Adventurers004

CHAIN L#Adv1 Adventurers004
@18 /* We are the "Golden Jokers", the best group of adventurers in this part of Faerun! This place is ours, so leave. We'll let you go! */
==KorganJ IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @19 /* *Ye'll* let *us* go?! Ha! */
END
IF~~THEN REPLY @20 /* Calm down. We just need one old sword. You can take everything else. We should work together. */ EXTERN L#Adv1 Adventurers005
IF~~THEN REPLY @21 /* Stop shouting. We don't want to fight. We'll help you. We just want to take a look at the things that are behind this wall. */ EXTERN L#Adv1 Adventurers005
IF~~THEN REPLY @22 /* We won't go anywhere! Just get out of my way! */ EXTERN L#Adv1 Adventurers002
IF~~THEN REPLY @23 /* You really think that I'm going to listen to your threats? Prepare to die, fools! */ EXTERN L#Adv1 Adventurers002
IF~~THEN REPLY @24 /* We are a group of researchers. We'll pay you if you tell us everything you know. */ EXTERN L#Adv1 Adventurers005

CHAIN L#Adv1 Adventurers005
@25 /* Hmm, do you think we can trust them? */
==L#Adv2 @26 /* I'm not sure... */
==L#Adv3 @27 /* If they make trouble, we can just kill them--right? */
==L#Adv1 @28 /* Fine. */
==L#Adv1 @29 /* It seems that before we can check what's inside, we need to find some... some things. There is some empty space in both of the eyes and I guess we need to put something in there. */
==L#Adv1 @30 /* I suppose that would open the door. */
END
IF~~THEN REPLY @31 /* Hmm, I'll check those cracks over there. We need to open the door. */ EXTERN L#Adv1 Adventurers006
IF~~THEN REPLY @32 /* We'll help you. */ EXTERN L#Adv1 Adventurers007
IF~~THEN REPLY @33 /* Now I know everything! Prepare to die, fools! */ EXTERN L#Adv1 Adventurers002
IF~~THEN REPLY @34 /* You know, I'm afraid this won't work. Take your swords and fight. */ EXTERN L#Adv1 Adventurers002

CHAIN L#Adv1 Adventurers006
@35 /* Fine. We'll wait here and check if there's something more here. */
DO ~SetGlobal("L#FouPlot","GLOBAL",13) SetGlobal("L#ADV","LOCALS",1)~
EXIT

CHAIN L#Adv1 Adventurers007
@36 /* Good. Look for something... round, I guess. We'll check if there are any more hints here. */
DO ~SetGlobal("L#FouPlot","GLOBAL",13) SetGlobal("L#ADV","LOCALS",1)~
EXIT

CHAIN L#Adv1 Adventurers002
@37 /* What? We won't fall easily! */
DO ~SetGlobal("L#FouPlot","GLOBAL",13) SetGlobal("L#ADV","LOCALS",10) Enemy() ActionOverride("L#ADV2",Enemy()) ActionOverride("L#ADV3",Enemy())~
EXIT

//not yet

CHAIN IF ~Global("L#ADV","LOCALS",1) Global("L#FouMou","GLOBAL",0)~ THEN L#Adv1 AdvX
@38 /* Keep looking. We're trying to find another way in. */
EXIT

////////////////////////////
//TALK 10 - ADVENTURERS 2///
////////////////////////////

CHAIN IF ~Global("L#FouMou","GLOBAL",1) Global("L#ADV","LOCALS",1)~ THEN L#Adv1 AdvDeadWillBe000
@39 /* Ha! We did it! */
==L#FouJ @40 /* Good. Now we need to find the ritual sword to stop it. */
==L#Adv3 @41 /* What did he say? The ritual sword? */
==L#Adv2 @42 /* I'm afraid so, yes. */
==L#Adv3 @43 /* I'm afraid you can't get it. I heard that it is the precious treasure of these mountains! */
==L#Adv1 @44 /* Hmm, so it seems we can't work together after all. */
==KeldorJ IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @45 /* Be wise. There's no need to fight. We need this item to dispel a curse. */
==ValygarJ IF ~InParty("valygar") !StateCheck("valygar",CD_STATE_NOTVALID)~ THEN @46 /* Do you really want to die for some damn magic sword? */
==MazzyJ IF ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @47 /* This is insane! */
==MinscJ IF ~InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @48 /* Minsc and Boo never have seen such young and greedy adventurers! That's not how it should be! */
==KorganJ IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @49 /* At last some fightin'! Haha! */
END
IF~CheckStatGT(Player1,12,CHR)~THEN REPLY @50 /* Look, there's no point in fighting. You may have heard about me. I'm the one who stopped the war between Baldur's Gate and Amn. */ EXTERN L#Adv1 AdvDeadWillBe001
IF~CheckStatGT(Player1,12,CHR)~THEN REPLY @51 /* You want a fight? You'll get it! */ EXTERN L#Adv1 AdvDeadWillBe002
IF~CheckStatLT(Player1,13,CHR)~THEN EXTERN L#Adv1 AdvDeadWillBe002

CHAIN L#Adv1 AdvDeadWillBe001
@52 /* What? Y-you are... <CHARNAME> the Bhaalspawn?! */
END
IF~~THEN REPLY @53 /* Yes. */ EXTERN L#Adv1 AdvDeadWillBe003
IF~~THEN REPLY @54 /* It doesn't matter.  You shouldn't have messed with me.  Prepare to die. */ EXTERN L#Adv1 AdvDeadWillBe002

CHAIN L#Adv1 AdvDeadWillBe003
@55 /* Oh... */
==L#Adv2 @56 /* Hmm... */
==L#Adv3 @57 /* Boys! They may be bluffing! */
==L#Adv1 @58 /* I'm not eager to test that. Joah, we should leave. */
==L#Adv2 @28 /* Fine. */
==L#Adv3 @59 /* Boys?! */
==L#Adv3 @60 /* J-just wait for me! */
DO ~SetGlobal("L#ADV","LOCALS",2) AddexperienceParty(10000) ActionOverride("L#ADV2",EscapeArea()) ActionOverride("L#ADV3",EscapeArea()) EscapeArea()~
EXIT

CHAIN L#Adv1 AdvDeadWillBe002
@61 /* No more talking! Sonya! Joah! Get them! */
DO ~SetGlobal("L#ADV","LOCALS",10) Enemy() ActionOverride("L#ADV2",Enemy()) ActionOverride("L#ADV3",Enemy())~
EXIT
