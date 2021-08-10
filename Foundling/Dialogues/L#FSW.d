BEGIN L#FSW

//////////////
///SWORD//////
//////////////

CHAIN IF ~Global("L#FouPlot","GLOBAL",13)~ THEN L#FSW Sword000
@0 /* You can see a strange sword levitating in the middle of the arcane circle; it is of unusual shape and has a dirty golden color. */
END
IF~~THEN REPLY @1 /* This must be the sword we are looking for. */ EXTERN L#FouJ Sword001
IF~~THEN REPLY @2 /* Foundling...? */ EXTERN L#FouJ Sword001

CHAIN L#FouJ Sword001
@3 /* This... this must be it. */
= @4 /* (Foundling takes the sword) */
DO ~SetGlobal("L#FouPlot","GLOBAL",14) GiveItemCreate("L#FSW","L#Fou",1,0,0) ActionOverride("L#FSW",DestroySelf())~
EXIT
