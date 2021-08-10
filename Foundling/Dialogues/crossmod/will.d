// SoA

CHAIN
IF ~InParty("L0Will")
See("L0Will")
!StateCheck("L0Will",CD_STATE_NOTVALID)
!StateCheck("L#FOU",CD_STATE_NOTVALID)
Global("L0WillFoundling1","GLOBAL",0)~ THEN L#FOUB L0WillFoundling1
@0 /* So... you died? */
DO ~SetGlobal("L0WillFoundling1","GLOBAL",1)~
== L0WILLB @1 /* Yes, a long time ago. I was a part of the Visionhive until <CHARNAME> met me. I suppose it must be hard to understand- */
== L#FOUB @2 /* You were a prisoner then. Am I correct in saying that? */
== L0WILLB @3 /* What? No, it was completely different. I was never a prisoner. I existed with the other spirits of the grotto, sharing our thoughts, memories, fear and strength. We were united as one. */
== L#FOUB @4 /* But you couldn't leave, yes? */
== L0WILLB @5 /* Well... you're right, I couldn't. At least, not for the longest time. Even now, if my structure was weakened greatly, I'd be called by the Visionhive, to return to my grave in the forest. */
== L#FOUB @6 /* So I suppose death is just another sort of prison for you. */
== L0WILLB @7 /* How ironic. Some believe death can be freedom, but it seems it can be the opposite. */
EXIT

CHAIN
IF ~InParty("L0Will")
See("L0Will")
!StateCheck("L0Will",CD_STATE_NOTVALID)
!StateCheck("L#FOU",CD_STATE_NOTVALID)
Global("L0WillFoundling2","GLOBAL",0)~ THEN L#FOUB L0WillFoundling2
@8 /* Do you ever feel cold? */
DO ~SetGlobal("L0WillFoundling2","GLOBAL",1)~
== L0WILLB @9 /* Me? No, I don't. I feel neither cold nor heat, at least not as you do. Fire can damage my form, but I never feel the warmth. */
== L0WILLB @10 /* At first, I believed I did feel a hint of something, but it was because I expected to feel warmth so... I imagined it. Now I realize it was all instinct. */
== L#FOUB @11 /* Fire and cold are different for me too. Inside the Plane of Shadow, the cold was more... biting. Fire was nothing like it is in this world. You could see it, but you couldn't feel it. At least, not much. It is as warm than the feel of flesh, no more. */
== L0WILLB @12 /* I see. Then perhaps you can discover new feelings in this world, and maybe feel even more alive. */ 
EXIT

// ToB

CHAIN
IF ~InParty("L0Will")
See("L0Will")
!StateCheck("L0Will",CD_STATE_NOTVALID)
!StateCheck("L#FOU",CD_STATE_NOTVALID)
Global("L0WillFoundlingToB","GLOBAL",0)~ THEN L#FOU25B L0WillFoundlingToB
@13 /* Do you feel strange? */
DO ~SetGlobal("L0WillFoundlingToB","GLOBAL",1)~
== L0WIL25B @14 /* Why should I feel strange, Foundling? */
== L#FOU25B @15 /* You've travelled far from your grave, the Visionhive, and the ruins of the old temple. */
== L0WIL25B @16 /* I wouldn't say the the distance makes me feel strange, but I know one thing: I never expected to travel so far again. */
== L0WIL25B @17 /* What's interesting to me is to hear you actually talking about feelings. Perhaps you, my friend, are the one that's feeling strange? */
== L#FOU25B @18 /* I'm not sure if that's the right word for it. */
EXIT