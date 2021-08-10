//////////////////////////
///SHADRA01 - Foundling///
//////////////////////////


// Talk 2: Dragon

CHAIN IF WEIGHT #-2 ~Global("L#FouPlot","GLOBAL",1) !Dead("L#FOU")~THEN SHADRA01 L#New000
@0 /* So, more flesh creatures intent on proving their foolishness? You're off to an excellent start. Fool enough to wake me, but to do so at the behest of my Foundling? That will be the last mistake you ever make. */
= @1 /* Oh, do not even attempt to deny it. I have a pair of ears in these ruins; I know he spoke with you. */
== ValygarJ IF ~InParty("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ @2 /* It seems this 'Foundling' forgot to tell us that he's this Shadow Dragon's servant.  I knew we could not trust him. */
== HaerdaJ IF ~InParty("haerdalis") !StateCheck("haerdalis",CD_STATE_NOTVALID)~ THEN @3 /* Only a most dreadful bird would have its nest in a forgotten dungeon such as this. Shall we knock it from its perch? */
== AnomenJ IF ~InParty("anomen") !StateCheck("anomen",CD_STATE_NOTVALID)~ THEN @4 /* We should prepare our weapons, <CHARNAME>. I've not heard of a dragon yet that failed to provide a fierce challenge. */ 
== AerieJ IF ~InParty("aerie") !StateCheck("aerie",CD_STATE_NOTVALID)~ THEN @5 /* Oh, no. This can't be good... */
== YoshJ IF ~InParty("yoshimo") !StateCheck("yoshimo",CD_STATE_NOTVALID)~ THEN @6 /* Be prepared for anything, my friend.  This wyrm could swallow us with ease. */
END
IF~~THEN REPLY @7 /* Your Foundling?  You mean the shadow we met at the entrance? */ EXTERN SHADRA01 L#New001
IF~~THEN REPLY @8 /* I'm not sure I know who you're talking about. */ EXTERN SHADRA01 L#New001
IF~~THEN REPLY @9 /* Erm... there's no need to get angry, you know. */ EXTERN SHADRA01 L#New002

CHAIN SHADRA01 L#New001
@10 /* The Foundling, yes.  My worthless servant.  He stopped you, but only long enough to have a word with you... for here you are, unscathed. Incompetent little thing.  I should have left him in the Plane of Shadows. */
== CerndJ IF ~InParty("cernd") !StateCheck("cernd",CD_STATE_NOTVALID)~ THEN @11 /* Plane of Shadows?  He does not belong to this land.  Children of shadows should not be allowed to affect the Material Plane. */
== KeldorJ IF ~InParty("keldorn") !StateCheck("keldorn",CD_STATE_NOTVALID)~ THEN @12 /* Nothing good could crawl out of the Shadow Plane.  Be prepared. */
== MazzyJ IF ~InParty("mazzy") !StateCheck("mazzy",CD_STATE_NOTVALID)~THEN @13 /* I face you again, Shadow Dragon, but this time I won't fall!  No matter what you do, more will come.  Where is Patrick, beast?  Where are my friends?! */
== SHADRA01 IF ~InParty("mazzy") !StateCheck("mazzy",CD_STATE_NOTVALID)~THEN @14 /* The prisoner is out, I see.  We should have smashed you as I smashed the others who opposed me. */
== MazzyJ IF ~InParty("mazzy") !StateCheck("mazzy",CD_STATE_NOTVALID)~THEN @15 /* You're not saying... I'll listen no more to your venomous words. If I'm alive, there are others.  They are no worse than myself and strong enough not to fall because of a mere beast like you. */
== SHADRA01 IF ~InParty("mazzy") !StateCheck("mazzy",CD_STATE_NOTVALID)~THEN @16 /* Entertaining as it is, your foolishness will get you nowhere. One of your friends is here, haha! But you won't see him... */
== MazzyJ IF ~InParty("mazzy") !StateCheck("mazzy",CD_STATE_NOTVALID)~THEN @17 /* I will listen no more, beast.  I will find him. */ 
EXTERN SHADRA01 L#New003

CHAIN SHADRA01 L#New002
@18 /* You give yourself too much credit: beings as inferior as yourselves could hardly provoke me to anger. Irritation, perhaps, as you have set loose my little toy. But even so, your pathetic antics do little more than amuse me. */
EXTERN SHADRA01 L#New003

CHAIN SHADRA01 L#New003
@19 /* I shall remind my Foundling to follow orders. Once I'm done with you, of course. */
END
IF~InParty("Jan") !StateCheck("jan",CD_STATE_NOTVALID)~THEN REPLY @20 /* Mind me asking how you got here?  My inquiring mind's got to know. And if I'm going to die, anyway, it won't make a bit of difference if you tell me first. Right? */ EXTERN JanJ L#New004J
IF~!InParty("Jan")~THEN REPLY @20 /* Mind me asking how you got here?  My inquiring mind's got to know. And if I'm going to die, anyway, it won't make a bit of difference if you tell me first. Right? */ EXTERN SHADRA01 L#New004
IF~InParty("Jan") StateCheck("jan",CD_STATE_NOTVALID)~THEN REPLY @20 /* Mind me asking how you got here?  My inquiring mind's got to know. And if I'm going to die, anyway, it won't make a bit of difference if you tell me first. Right? */ EXTERN SHADRA01 L#New004  // If Jan is in party, but can't talk
IF~~THEN REPLY @21 /* Done with me?  Ha! Good joke!  Stow it, already--show me what you've got! */ EXTERN SHADRA01 L#New005

CHAIN JanJ L#New004J
@22 /* I'm complaining, but are you sure that dealing with a dragon is safe?  I've heard a thing or two about dragons, myself; my great grand-uncle traded with one once, you know. Ran a peddling business, he did... or would have, if he had ever gotten it to take off. Arvil Kitediver? You've probably heard of him. He would take an idea and run with it, sometimes right into the ground. */
= @23 /* One day, he got it into his head to get rich selling the greatest turnip stew recipe in all the Heartlands! Luckily enough, his wife already had one, so Arvil planned to trade in her secret recipe for a pretty penny. And who could have more pennies than a dragon? Now, Uncle Arvil may not have had the best head for business, but he knew that recipe was worth a fortune: the most delicious words ever scribed! And sure enough, the dragon thought so, too; he gobbled that recipe right up. Unfortunately for Arvil, who was still holding on to it. */
= @24 /* Poor Auntie Jemirah was so shaken up she refused to cook her famous turnip stew ever again. She made a killer kobold dumpling, though, but that's another story. */
== SHADRA01 @25 /* Make him stop, or your doom will come sooner than you think. */
== SHADRA01 @26 /* As for your question... */
EXTERN SHADRA01 L#New004

CHAIN SHADRA01 L#New004
@27 /* Hmm... */
== SHADRA01 @28 /* Very well.  Know the generosity of Thaxll'ssillyia. */
== SHADRA01 @29 /* The Shade Lord and I travelled here from the Plane of Shadows.  Your kind is too weak to rule this world; you do not deserve it; we will take it from you. */ 
= @30 /* But first, we must prepare this land to receive us. */
== ValygarJ IF ~InParty("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @31 /* So that's what happened to these woodlands. */
== CerndJ IF ~InParty("cernd") !StateCheck("cernd",CD_STATE_NOTVALID)~ THEN @32 /* If we allow it to grow, the shadow will not only fall over this forest, but the whole of the Umar Hills! And it won't stop there. */
== MazzyJ IF ~InParty("mazzy") !StateCheck("mazzy",CD_STATE_NOTVALID)~ THEN @33 /* The corruption is terrible enough already. We cannot let it go any further! */
== JaheiraJ IF ~InParty("Jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @34 /* This must not happen, <CHARNAME>. Nor will it, while I have breath in me. */
== SHADRA01 @35 /* You worthless insects could not hope to stop us. Do not even try. */
== MinscJ IF ~InParty("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @36 /* The only bugs Boo sees here are you and your shadows. Meet the shadow of my boot heel, evil! Be squished as you should! */
END
IF~~THEN REPLY @37 /* If you're so mighty, what are you doing serving the Shade Lord? Can't do any better, I suppose? */ EXTERN SHADRA01 L#New006
IF~~THEN REPLY @38 /* Enough of this! It's time we fight, dragon! I will not let you win! */ EXTERN SHADRA01 L#New005
IF~~THEN REPLY @39 /* And what about this Foundling?  What's his part in all of this? */ EXTERN SHADRA01 L#New007
IF~~THEN REPLY @40 /* Whatever.  Let's just get this over with.  Prepare to die, wyrm. */ EXTERN SHADRA01 L#New005

CHAIN SHADRA01 L#New006
@41 /* Your taunts are as empty and pointless as your lives. Did you really believe that you might turn me against the Shade Lord? You know nothing. */
== EdwinJ IF ~InParty("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @42 /* You've jawed on long enough, wyrm. I'll not suffer another word from you lest it be your farewell: return to your Shadows or die as you should! */
EXTERN SHADRA01 L#New008

CHAIN SHADRA01 L#New007
@43 /* What do you care? You speak as though he might have a meaning, a purpose.  But he's just a toy.  A belonging. */
== KeldorJ IF ~InParty("keldorn") !StateCheck("keldorn",CD_STATE_NOTVALID)~ THEN @44 /* Less than human, perhaps, but more than an object. Dark as he may be, even such a creature deserves better. */
== AnomenJ IF ~InParty("anomen") !StateCheck("anomen",CD_STATE_NOTVALID)~ THEN @45 /* Those creatures deserve each other. */
EXTERN SHADRA01 L#New008

CHAIN SHADRA01 L#New008
@46 /* Rarely do I allow such insignificant morsels so much of my attention. Let our conversation be as brief as your flickering lives, those small sparks I douse with eagerness. Your ignorant chatter amused me for a time, but I begin to tire of it.  */
== MazzyJ IF ~InParty("mazzy") !StateCheck("mazzy",CD_STATE_NOTVALID)~ THEN @47 /* We won't listen to another of your insults, monster.  Your time is over. */
== SHADRA01 @48 /* Your deaths will be entertaining enough! */
DO ~SetGlobal("L#FouPlot","GLOBAL",2) Enemy()~
EXIT

CHAIN SHADRA01 L#New005
@49 /* Enough! You were foolish enough to cross Thaxll'ssillyia: you will pay with your lives! */
DO ~SetGlobal("L#FouPlot","GLOBAL",2) Enemy()~
EXIT 