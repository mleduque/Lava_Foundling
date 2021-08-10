BEGIN L#SHA1

// Talk 4?

///////////////////////
//Shade lord is alive//
///////////////////////

CHAIN
IF~Global("L#FouPlot","GLOBAL",3) !Dead("SHADEL")~THEN L#SHA1 Item000
@0 /* Foundling--what are you doing here?!  You shouldn't be here, so-- */
== L#FouJ @1 /* Thaxll'ssillyia is dead.  You duty is over.  Hand me the token, I'm in a hurry. */
== L#SHA1 @2 /* What?!  You--it's your fault.  You betrayed him!  You weakling.  I can see you have found some new allies.  Be sure that the Lord will find out about this! */
== L#FouJ @3 /* Just hand over the token and maybe we'll let you live.  I'm no longer afraid of the Shade Lord.  I saw <CHARNAME> kill Thaxll'ssillyia, so the death of the Lord is just a matter of time. */
== L#SHA1 @4 /* You're wrong.  With the altar our Lord is invincible-- */
== L#FouJ @5 /* It can be destroyed, too. */
== L#Sha1 @6 /* You wouldn't dare! */
== L#FouJ @7 /* I'm no longer on your side. */
== L#FouJ @8 /* Actually, we've never been on the same side.  I've been treated like scum!  Now, it's time to pay you back for everything. I do not serve the Lord and once I get the token, I'll be free from the curse. */
== L#Sha1 @9 /* You won't get it, then. */
== L#FouJ @10 /* Are you that foolish? */
== L#Sha1 @11 /* I'd rather die here than anger the Shade Lord. */
== L#Sha1 @12 /* Prepare to die! */
DO ~SetGlobal("L#FouPlot","GLOBAL",4) Enemy()~
EXIT

///////////////////////
//shade lord is dead///
///////////////////////

CHAIN
IF~Global("L#FouPlot","GLOBAL",3) Dead("SHADEL")~THEN L#SHA1 Item000
@13 /* W-what are you doing here?!  You shouldn't be here, so-- */
== L#FouJ @14 /* Thaxll'ssillyia is dead.  So is the Shade Lord.  Your duty is over.  Hand me the token, I'm in a hurry. */
== L#SHA1 @15 /* What?!  You--it's your fault.  You betrayed him!  You weakling.  And--I can see you have found some new allies. */
== L#FouJ @16 /* Just hand over the token and maybe we'll let you live.  You're no threat to me.  I saw <CHARNAME> kill both Thaxll'ssillyia and the Lord.  Would you like to join them? */
== L#SHA1 @17 /* But with the altar our Lord is invincible-- */
== L#FouJ @18 /* He was 'vincible'. The altar was destroyed, too. */
== L#Sha1 @19 /* What?! */
== L#FouJ @20 /* ...and I'm no longer on your side. */
== L#FouJ @21 /* Actually, we've never been on the same side.  I've been treated like scum!  I'm free from my master and the Lord and once I get the token, I'll be free from the curse. */
== L#Sha1 @22 /* You won't get it. */
== L#FouJ @10 /* Are you that foolish? */
== L#Sha1 @23 /* I'd rather die here than burn in the sunlight! */
DO ~SetGlobal("L#FouPlot","GLOBAL",4) Enemy()~
EXIT
