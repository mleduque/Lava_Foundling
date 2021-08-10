//DORN


CHAIN IF ~Global("L#FoundlingDorn","GLOBAL",0)
          CombatCounter(0)
          !StateCheck("L#Fou",CD_STATE_NOTVALID)
          InParty("DORN")
          See("DORN")
          !StateCheck("DORN",CD_STATE_NOTVALID)~
THEN L#FouB FoundlingDorn
  @0 /* ...I told you I have no intention of serving you, Dorn. */
  DO ~SetGlobal("L#FoundlingDorn","GLOBAL",1)~
  == BDORN @1 /* You live to serve. You have always served those of power, tool. */
  == L#FouB @2 /* I served the Shadow Dragon but I no longer do so. He's dead and everything I need to care about is presence and survival. */
  == BDORN @3 /* You have never earned the right to be called other than a slave, weakling. You live only because someone stronger killed your master. That makes you nothing but another possession. */
  == L#FouB @4 /* It's a matter of alliance, but not just that. It's also about tactics. It doesn't matter who did the final blow, but who is alive... */ 
        = @5 /* ... and who is dead. */
  == BDORN @6 /* Ha! It's more than that. It's about power and potential. You have none of these. */
  == BDORN @7 /* So obey--when you are told to do something, do so, slave. */
EXIT


CHAIN IF ~Global("L#FoundlingDornToB","GLOBAL",0)
          CombatCounter(0)
          !StateCheck("L#Fou",CD_STATE_NOTVALID)
          InParty("DORN")
          See("DORN")
          !StateCheck("DORN",CD_STATE_NOTVALID)~
THEN L#Fou25B FoundlingDorn25
  @8 /* How many have you killed? */
  DO ~SetGlobal("L#FoundlingDornToB","GLOBAL",1)~
  == BDORN25 @9 /* Many, servant. Many more than you'll ever kill in your entire life. */
  == L#Fou25B @10 /* <CHARNAME> has been requested to kill tyrants. Irenicus. Bodhi. A Matron Mother of the drow. Assassins and thugs of more than one kind. I wonder if one day you'll be marked as the new target. */
  == BDORN25 @11 /* Ha! That would be something. Finally someone better to face. */
  == BDORN25 @12 /* I would be thrilled to again fight someone who was once on my side. We'd know all each other's tricks. */
  == L#Fou25B @13 /* Wouldn't you hesitate? */
  == BDORN25 @14 /* The moment one hesitates is usually the last moment of that one's life. */
EXIT


//NEERA


CHAIN IF ~Global("L#FoundlingNeera","GLOBAL",0)
          CombatCounter(0)
          !StateCheck("L#Fou",CD_STATE_NOTVALID)
          InParty("NEERA")
          See("NEERA")
          !StateCheck("NEERA",CD_STATE_NOTVALID)~
THEN L#FouB FoundlingNeera
  @15 /* This magic of yours--can you even control it? You get overwhelmed by the energy you summon. */
  DO ~SetGlobal("L#FoundlingNeera","GLOBAL",1)~
  == BNEERA @16 /* I can control it. Well, most of the time. And the fact that sometimes we get a "puff--a demon is here" effect may be beneficial, too. It definitely throws excitement into things. */
  == L#FouB @17 /* Yes, but it also causes a threat to our own group. You should minimise use of your arcane powers. */
  == BNEERA @18 /* What? Oh, no no no no no. No. I'm fully capable of deciding on my own when we should give it a shot and risk a bit. And by the way, isn't this Shadow Weave of yours kinda risky, too? */
  == L#FouB @19 /* But it is predictable. */
  == BNEERA @20 /* Right... But you know, there's still the issue of raven dark energy bouncing around you, black thunders, creeping shadows, and, oh yes, shadow claws growing out of the blue. Or rather out of the black. It seems soooo much safer, right? */
  == L#FouB @21 /* It's still much more predictable. */
  == BNEERA @22 /* And a bit creepy. */
EXIT


CHAIN IF ~Global("L#FoundlingNeeraToB","GLOBAL",0)
          CombatCounter(0)
          !StateCheck("L#Fou",CD_STATE_NOTVALID)
          InParty("NEERA")
          See("NEERA")
          !StateCheck("NEERA",CD_STATE_NOTVALID)~
THEN L#Fou25B FoundlingNeera25
  @23 /* Are you still afraid of the Shadow Weave magic, Neera? */
  DO ~SetGlobal("L#FoundlingNeeraToB","GLOBAL",1)~
  == BNEERA25 @24 /* Afraid? Who said that I was afraid at all? */
  == L#Fou25B @25 /* "Raven dark energy bouncing around you, black thunders, creeping shadows--" */
  == BNEERA25 @26 /* Ah, that. Well, I just said it's creepy and that my magic is no worse than your... dark powers. I never actually said that I'm afraid of it. */
  == L#Fou25B @27 /* So you're not afraid of it? */
  == BNEERA25 @28 /* Well, it is a bit creepy. */
  == L#Fou25B @29 /* You are afraid of this magic then. */
  == BNEERA25 @30 /* If you think I'll admit it directly, then you're wrong. */
EXIT


//RASAAD


CHAIN IF ~Global("L#FoundlingRasaad","GLOBAL",0)
          CombatCounter(0)
          !StateCheck("L#Fou",CD_STATE_NOTVALID)
          InParty("RASAAD")
          See("RASAAD")
          !StateCheck("RASAAD",CD_STATE_NOTVALID)~
THEN L#FouB FoundlingRasaad
  @31 /* Who is Selune, monk? */
  DO ~SetGlobal("L#FoundlingRasaad","GLOBAL",1)~
  == BRASAAD @32 /* Someone much different to Shar who gave you your powers, Foundling. I'm surprised that you ask about her. */
  == L#FouB @33 /* Shar is the one who created the Shadow Weave, not me. */
  == BRASAAD @34 /* Indeed, she created the Shadow Weave that had influence on you, I'm afraid. Just as she did the Plane of Shadows. I pity you, Foundling, as you were not given a choice to be different. */
  == L#FouB @35 /* There is no need to pity me, Rasaad. */
  == BRASAAD @36 /* The more words I hear from you, shadow adept, the more convinced I am that a huge wrongness has been done to you. */
EXIT


CHAIN IF ~Global("L#FoundlingRasaadToB","GLOBAL",0)
          CombatCounter(0)
          !StateCheck("L#Fou",CD_STATE_NOTVALID)
          InParty("RASAAD")
          See("RASAAD")
          !StateCheck("RASAAD",CD_STATE_NOTVALID)~
THEN L#Fou25B FoundlingRasaad25
  @37 /* Do you believe I should return to the Plane of Shadows, Rasaad? */
  DO ~SetGlobal("L#FoundlingRasaadToB","GLOBAL",1)~
  == BRASAA25 @38 /* You have to ask yourself. I cannot take responsibility for your decisions. */
  == L#Fou25B @39 /* I'm not asking you to take any responsibility. */
  == BRASAA25 @40 /* You ask me about what you should do. Or you at least seek the answer in my opinion, while this should be solely your decision. */
  == L#Fou25B @41 /* And what if I do not know the answer, monk? */
  == BRASAA25 @42 /* If you do not know it, how should I know? */
EXIT


//HEXXAT


CHAIN IF ~Global("L#FoundlingHexxat","GLOBAL",0)
          CombatCounter(0)
          !StateCheck("L#Fou",CD_STATE_NOTVALID)
          InParty("HEXXAT")
          See("HEXXAT")
          !StateCheck("HEXXAT",CD_STATE_NOTVALID)~
THEN L#FouB FoundlingHexxat
  @43 /* I have no doubts that you are a powerful creature, Hexxat. You are much more than just a significant ally. */
  DO ~SetGlobal("L#FoundlingHexxat","GLOBAL",1)~
  == BHEXXAT @44 /* Thank you. I'm happy to hear that this group has more than just one wise member. */
  == BHEXXAT @45 /* You should know that I'm actually quite entertained with your presence, adept. I've seen before a man who was good enough to use the Shadow Weave. He died in the end, but in a splendid fight. */
  == L#FouB @46 /* With whom? */
  == BHEXXAT @47 /* Me. */
EXIT


CHAIN IF ~Global("L#FoundlingHexxatToB","GLOBAL",0)
          CombatCounter(0)
          !StateCheck("L#Fou",CD_STATE_NOTVALID)
          InParty("HEXXAT")
          See("HEXXAT")
          !StateCheck("HEXXAT",CD_STATE_NOTVALID)~
THEN L#Fou25B FoundlingHexxat
  @48 /* How did it feel when Bodhi died? Was it like any other death you caused? */
  DO ~SetGlobal("L#FoundlingHexxatToB","GLOBAL",1)~
  == BHEXXA25 @49 /* It was a kind of satisfaction. */
  == L#Fou25B @50 /* Because she was a powerful enemy? */
  == BHEXXA25 @51 /* Because Bodhi thought she was better than me. I am a very different kind of vampire. I'm stronger. She thought otherwise. */
  == BHEXXA25 @52 /* It was my responsibility to show her her own mistakes. */
  == L#Fou25B @53 /* Why? */
  == BHEXXA25 @54 /* Superior beings should show the lower ones their own foolishness. That's the only way to make them learn. */
EXIT
