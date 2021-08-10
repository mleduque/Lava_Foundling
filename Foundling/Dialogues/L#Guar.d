BEGIN L#Guar

///////////////////////////
////TALK 11 - GUARDIAN/////
///////////////////////////


CHAIN IF ~Global("L#FouPlot","GLOBAL",15)~ THEN L#Guar Guardian000
@0 /* *Who is trying to take the sword?* */
== AerieJ IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @1 /* She--she's so august... */
== ValygarJ IF ~InParty("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @2 /* I knew he and his foul curse would get us into trouble. */
== ViconiJ IF ~InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @3 /* We should prepare, abbil.  This must be the guardian of the sword.  No priestess would leave an artifact without a single man to protect it.  It would be foolish. */
== YoshJ IF ~InParty("yoshimo") !StateCheck("yoshimo",CD_STATE_NOTVALID)~ THEN @4 /* Sou des' ka?  So that's the guardian?  I thought we would encounter one eventually. */
== NaliaJ IF ~InParty("nalia") !StateCheck("nalia",CD_STATE_NOTVALID)~ THEN @5 /* Where did she come from? I thought no-one could use magic in here. */
== Imoen2J IF ~InParty("imoen2") !StateCheck("imoen2",CD_STATE_NOTVALID)~ THEN @6 /* I bet she's not happy with our presence here. */
== HaerdaJ IF ~InParty("haerdalis") !StateCheck("haerdalis",CD_STATE_NOTVALID)~ THEN @7 /* Ah, another actor has entered the stage!  And just in time, as I was afraid we would become infected with boredom. */
== CerndJ IF ~InParty("cernd") !StateCheck("cernd",CD_STATE_NOTVALID)~ THEN @8 /* It seems we have disturbed the balance of this place. I'm afraid we won't be forgiven easily. */
== L#FouJ @9 /* We don't want to hurt anyone.  Just let us take this sword. */
== L#Guar @10 /* *This sword is to remain here, among the lying stones of Leira.  You cannot take it.  None of you can.* */
END
IF~~THEN REPLY @11 /* Is there anything we could do so we might be allowed to use it? */ EXTERN L#Guar Guardian001
IF~~THEN REPLY @12 /* There must be a way for us to take it. */ EXTERN L#Guar Guardian001
IF~~THEN REPLY @13 /* I'm not asking you for permission.  I'm taking it. */ EXTERN L#Guar Guardian002

CHAIN L#Guar Guardian001
@14 /* *No.* */
== L#Guar @15 /* (Her hair starts to burn as if someone had poured oil on her; she seems to burn with the fire of a fanatic, with the power of godlike support.) */
== L#Guar @16 /* *You forced your way here and now you are taking something that does not belong to you.  You are nothing more than a hyena feasting on blasphemy.* */
== AnomenJ IF ~InParty("anomen") !StateCheck("anomen",CD_STATE_NOTVALID)~ THEN @17 /* Is that it? That is how low we have sunk because of this creature, <CHARNAME>?  I'm no follower of Leira, but even so I feel ashamed. */
== KeldorJ IF ~InParty("keldorn") !StateCheck("keldorn",CD_STATE_NOTVALID)~ THEN @18 /* I understand we are doing this to free Foundling from the curse, but I fear we are crossing a line. */
== ViconiJ IF ~InParty("viconia") !StateCheck("viconia",CD_STATE_NOTVALID) OR(2)InParty("keldorn") InParty("anomen") OR(2)!StateCheck("anomen",CD_STATE_NOTVALID) !StateCheck("keldorn",CD_STATE_NOTVALID)~ THEN @19 /* There's no need to listen to those pious fools.  This blade may be of use.  Even in a fight with *your* enemies. */
== MinscJ IF ~InParty("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @20 /* Boo thinks we're getting into something really nasty. */
= @21 /* (Boo) *Squeak!* */ 
== L#FouJ @22 /* If I leave this blade here, I'll die. */
== L#Guar @23 /* *I have no obligations to aid you, mortal.* */
== L#FouJ @24 /* What are you? */
== L#Guar @25 /* *I am Falsehood, Maiden of this Mountain, Protector of Lies.  I am the one left to protect the artifacts of the past!* */
END
IF~~THEN REPLY @26 /* No one is here. You're free to leave.  I'll take care of this sword, I promise. */ EXTERN L#Guar Guardian003
IF~~THEN REPLY @27 /* Oh, just let us take it, please... */ EXTERN L#Guar Guardian003
IF~~THEN REPLY @28 /* I don't care who or what you are.  I'm taking the sword. */ EXTERN L#Guar Guardian002

CHAIN L#Guar Guardian003
@14 /* *No.* */
DO ~SetGlobal("L#FouPlot","GLOBAL",16) Enemy()~ EXIT


CHAIN L#Guar Guardian002
@29 /* *You shall perish, invaders!* */
DO ~SetGlobal("L#FouPlot","GLOBAL",16) Enemy()~ EXIT
