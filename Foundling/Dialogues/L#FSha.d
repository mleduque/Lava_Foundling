BEGIN L#Fsha

//////////////////////////////
///////TALK 14 - DRAGON///////
//////////////////////////////

CHAIN IF ~Global("L#FouPlot","GLOBAL",22)~ THEN L#Fsha ShadowCame000
@0 /* Foolish beings.  I told you at the very beginning that you should have ignored him.  You would be safe.  Now you will have to pay. */
== MazzyJ IF ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @1 /* Something is wrong.  Something has him! */
== EdwinJ IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @2 /* I knew your mindless decisions would get us in trouble!  Now prepare yourself--it's not your worthless friend talking to us.  (It's someone stronger.) */
== MinscJ IF ~InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @3 /* (squeak) Boo says our friend suddenly got darker and...and it smells with badness!  He looks different!  We should be careful. */ 
== NaliaJ IF ~InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @4 /* Foundling?  What happened to him, <CHARNAME>? */
== AerieJ IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @5 /* Look at his eyes... th-they are so dark... Is this because of the curse? */
== KeldorJ IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @6 /* This is no longer the man we knew, I'm afraid. */
== AnomenJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @7 /* What's going on?!  I told you he's not to be trusted. */
== ValygarJ IF ~InParty("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @8 /* It's some kind of dark magic.  I can feel the shiver.  We're in deadly trouble. */
== YoshJ IF ~InParty("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @9 /* The shiver.  The dark aura.  I've hunted bounties for years and never have I experienced anything like that, <CHARNAME>.  I suppose my katana won't rest today. */
== ViconiJ IF ~InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @10 /* Shar!  Protect us! */
END
IF~~THEN REPLY @11 /* What are you? */ EXTERN L#Fsha ShadowCame001
IF~~THEN REPLY @12 /* Foundling? What are you saying? */ EXTERN L#Fsha ShadowCame002
IF~~THEN REPLY @13 /* And you are...? */ EXTERN L#Fsha ShadowCame001
IF~~THEN REPLY @14 /* Well, it seems that we'll finally have some fun. */ EXTERN L#Fsha ShadowCame003

CHAIN L#Fsha ShadowCame001
@15 /* You don't recognize me?  That's because of this weak flesh. */
EXTERN L#Fsha ShadowCame004

CHAIN L#Fsha ShadowCame002
@16 /* You're really that stupid?  He's no longer here. */
EXTERN L#Fsha ShadowCame004

CHAIN L#Fsha ShadowCame003
@17 /* You're more than a fool. */
EXTERN L#Fsha ShadowCame004

CHAIN L#Fsha ShadowCame004
@18 /* You weren't careful enough and that was my chance.  And that's how Thaxll'ssillyia came back to life. */
== CerndJ IF ~InParty("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @19 /* It seems we brought back the monster. */
== JaheiraJ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @20 /* It is him?  What games are you playing, wyrm?! */
END
IF~~THEN REPLY @21 /* How is that possible?! */ EXTERN L#Fsha ShadowCame005
IF~~THEN REPLY @22 /* Hmm, quite crafty of you. */ EXTERN L#Fsha ShadowCame005

CHAIN L#Fsha ShadowCame005
@23 /* It wasn't that difficult to trick you and my servant. */
== EdwinJ IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @24 /* The Shadow Dragon must have changed the glyphs on the token.  (Quite clever, I must admit.) */
== ValygarJ IF ~InParty("valygar") !StateCheck("valygar",CD_STATE_NOTVALID)~ THEN @25 /* Hmm, it must have been something more than a simple curse.  That's why we needed to do more than just visit a temple to dispel it. */
== JaheiraJ IF ~InParty("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @26 /* Gloria mentioned some strange markings on the token we gave her.  That must have been it. */
== Imoen2J IF ~InParty("imoen2") !StateCheck("imoen2",CD_STATE_NOTVALID)~ THEN @27 /* Why does everyone have to set traps and use dirty tricks these days?  Can't we just have a good brawl out on open ground, or something? */
== L#Fsha @28 /* Do you really think that I would not prepare everything?  The token.  The markings.  The curse. Foundling.  All of these were just parts of a puzzle.  Figures in a game of chess. */
END
IF~~THEN REPLY @29 /* Explain yourself. Now. */ EXTERN L#Fsha ShadowCame006
IF~~THEN REPLY @30 /* What do you mean?! */ EXTERN L#Fsha ShadowCame006
IF~~THEN REPLY @31 /* You couldn't know I would come! I didn't know about these ruins in the beginning. */ EXTERN L#Fsha ShadowCame007
IF~~THEN REPLY @32 /* I... I don't understand. */ EXTERN L#Fsha ShadowCame006

CHAIN L#Fsha ShadowCame007
@33 /* But I knew *someone* would come after those fleshy little adventurers that came before you. */
== MazzyJ IF ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @34 /* I won't let you insult Patrick and my other friends, wyrm. */
== L#Fsha IF ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @35 /* Haha, obviously, little thing. */
EXTERN L#Fsha ShadowCame006

CHAIN L#Fsha ShadowCame006
@36 /* First of all, I needed someone I could control.  The Foundling--my foolish little toy.  I had to prepare him, that's why I let him study a little magic.  He became the egg I would use to incubate myself if the Shade Lord and his plans were stopped. */
== L#Fsha @37 /* I prepared the token to give him an illusion of freedom.  He thought that it would save him.  So he followed the lure. To make sure it wasn't too easy, I told one of the shadows to run away--thanks to him it seemed less suspicious.  Along with that dispelling potion, he swallowed my own essence.  That was the second step. */
== L#Fsha @38 /* The markings on the token indeed were prepared to remove the curse, but I modified the signs so they would not only dispel the bindings, but allow me to incubate as well.  I was half-present in him already. */
END
IF~~THEN REPLY @39 /* You knew about the ritual sword? */ EXTERN L#Fsha ShadowCame008
IF~~THEN REPLY @40 /* You couldn't know about Leira's Lie! */ EXTERN L#Fsha ShadowCame008

CHAIN L#Fsha ShadowCame008
@41 /* I knew he would find a way.  He was dying.  There are plenty of ways to destroy the bindings.  What's more, I made sure that you had the feeling that you were winning.  Am I right? (grins) */
== L#Fsha @42 /* When the ritual was done and the curse was defeated, I could hatch.  And so I did. */
== AerieJ IF ~InParty("aerie") !StateCheck("aerie",CD_STATE_NOTVALID)~ THEN @43 /* So... so this--everything was a game?  It's just... horrible! */
== EdwinJ IF ~InParty("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @44 /* I must admit that the plan is really impressive, but as long as Edwin Odesseiron is here we're not going to lose, so fear my powers, wyrm.  (Or just take these monkeys here as we would never have fallen for this were it not because of our inferior leadership.) */
== JanJ IF ~InParty("jan") !StateCheck("jan",CD_STATE_NOTVALID)~ THEN @45 /* Oh! Uhm... that was an... amazing plan, but we're not going to give up, yet!  I am a Jansen and Jansens do not give up just like that--as then we would never have made all of our tales!  So... uhm, I believe with <CHARNAME> we can still do it!  We can, can't we? */
== KorganJ IF ~InParty("korgan") !StateCheck("korgan",CD_STATE_NOTVALID)~ THEN @46 /* Ah, too much talkin', too little fightin'!  We shoul' shut his jaws already! */
== L#Fsha @47 /* Thaxll'ssillyia never loses. */
END
IF~~THEN REPLY @48 /* And why are you telling me this? */ EXTERN L#Fsha ShadowCame009
IF~~THEN REPLY @49 /* Indeed, a good plan that was, but still--I won't let you win. */ EXTERN L#Fsha ShadowCame010
IF~~THEN REPLY @50 /* I think there is a blind spot in all of this. A Bhaalspawn. Me. You won't take me down easily. */ EXTERN L#Fsha ShadowCame011
IF~~THEN REPLY @51 /* And you're telling me all of this because...? */ EXTERN L#Fsha ShadowCame009
IF~~THEN REPLY @52 /* You're talking, but all I hear is 'blah blah blah'. Are you done already? */ EXTERN L#Fsha ShadowCame012
IF~~THEN REPLY @53 /* I already killed you once.  Tell me why I should be afraid of you? */ EXTERN L#Fsha ShadowCame012
IF~CheckStatGT(Player1,10,CHR)~THEN REPLY @54 /* A nice plan. Maybe I should fall in league with someone like you instead of your servant. */ EXTERN L#Fsha ShadowCame013

CHAIN L#Fsha ShadowCame009
@55 /* Because it pleases me to see you hear about the traps you fell for. */
EXTERN L#Fsha ShadowCame014

CHAIN L#Fsha ShadowCame010
@56 /* You won't let me win?  That's a good one. */
EXTERN L#Fsha ShadowCame014

CHAIN L#Fsha ShadowCame011
@57 /* And you really think I'm afraid of a dead god's bastard? */
EXTERN L#Fsha ShadowCame014

CHAIN L#Fsha ShadowCame012
@58 /* Hmm, enjoying your time?  Talk, if you must.  Those are your last words. */
EXTERN L#Fsha ShadowCame014

CHAIN L#Fsha ShadowCame013
@59 /* Hmm... */
== AnomenJ IF ~InParty("anomen") !StateCheck("anomen",CD_STATE_NOTVALID)~ THEN @60 /* Don't even joke like that! We would never join with something... something like that. */
== L#Fsha @61 /* Too risky. You helped Foundling. I don't need potential traitors, as I can still use some tricks even without the Shade Lord. */
EXTERN L#Fsha ShadowCame014

CHAIN L#Fsha ShadowCame014
@62 /* So? Anything else you would like to know before you become the first victim of the reborn Shadow Dragon, or should I just get rid of you already? */
END
IF~~THEN REPLY @63 /* Is Foundling still there? */ EXTERN L#Fsha ShadowCame015
IF~~THEN REPLY @64 /* Will you let us go? */ EXTERN L#Fsha ShadowCame016
IF~~THEN REPLY @65 /* I need nothing more from you, dragon. I won't let someone like you escape--no matter if he's still there, or not, I must stop you. Prepare to die! */ EXTERN L#Fsha ShadowCame017
IF~~THEN REPLY @66 /* You are really pathetic! It will be a pleasure to kill you once again! */ EXTERN L#Fsha ShadowCame017
IF~~THEN REPLY @67 /* Just give me back Foundling, understood? */ EXTERN L#Fsha ShadowCame018
IF~~THEN REPLY @68 /* Please, spare us our lives, shadow dragon. We're no threat to you! Please. */ EXTERN L#Fsha ShadowCame016

CHAIN L#Fsha ShadowCame015
@69 /* I know what you're planning. But you can never succeed. */
DO ~SetGlobal("L#FouPlot","GLOBAL",23) Enemy()~
EXIT

CHAIN L#Fsha ShadowCame016
@70 /* You really think I would ever let you go?  I'll pay you back for everything you did. */
DO ~SetGlobal("L#FouPlot","GLOBAL",23) Enemy()~
EXIT

CHAIN L#Fsha ShadowCame017
@71 /* Just try. */
DO ~SetGlobal("L#FouPlot","GLOBAL",23) Enemy()~
EXIT

CHAIN L#Fsha ShadowCame018
@72 /* You never cease to amaze me.  Now die. */
DO ~SetGlobal("L#FouPlot","GLOBAL",23) Enemy()~
EXIT

/////////////////////////////
///////TALK 15 - DIE/////////
/////////////////////////////

CHAIN IF ~Global("L#FouPlot","GLOBAL",24)~ THEN L#Fsha ShadowDeadForEver0
@73 /* No! You... you will never... win... */
== HaerdaJ IF ~InParty("haerdalis") !StateCheck("haerdalis",CD_STATE_NOTVALID)~ THEN @74 /* Ha! I'm afraid you've already lost your nest and there are no other eggs you could hatch from, Shadow Drake. It is time to leave the stage. */
== L#Fsha @75 /* You... you will all rot in the Nine Hells...! You will all... rot...!!! */
DO ~SetGlobal("L#FouPlot","GLOBAL",25) DropInventory() DestroySelf()~ EXIT 