BEGIN L#FFAM

CHAIN IF ~Global("L#TalkNow","LOCALS",0)~ THEN L#FFAM Familiar000
@0 /* (You can see a strange creature--probably the familiar you were expecting to find - which attacks you on sight.) */
DO ~SetGlobal("L#TalkNow","LOCALS",1) Enemy()~ EXIT