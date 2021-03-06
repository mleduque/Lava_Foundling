// SoA

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("L#Fou",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneFoundling1","GLOBAL",0)~ THEN L#FOUB C0SireneFoundling1
@0 /* You are such a strange person. Why do you wish to die so badly? */
DO ~SetGlobal("C0SireneFoundling1","GLOBAL",1)~
== BC0SIRE2 @1 /* I know not what you speak of, Foundling. Speak plainly. */
== L#FOUB @2 /* I've watched you when we fight- whenever one of us is in danger, you always defend us, even if it puts your life at risk. Aren't you afraid to die? */
== BC0SIRE2 @3 /* I wish I could say that I have no fear of dying in battle, but... I cannot. */
== L#FOUB @4 /* Then why do you do it? */
== BC0SIRE2 @5 /* Out of duty. I am sworn as a holy knight of Ilmater to defend the innocent. */
== L#FOUB @6 /* 'Duty'... I have heard you say the word before. But what is the point? What do you owe these so-called 'innocents'? */
== BC0SIRE2 @7 /* 'Tis not about what I owe them. What fear I have of death is nothing compared to the guilt upon my conscience for those that have fallen because of my failure to protect them. */
== L#FOUB @8 /* Your ideas are so confusing to me. In the Plane of Shadow, every creature is out for themselves. The thought of sacrificing yourself for another simply... did not exist. */
== BC0SIRE2 @9 /* Aye, but you are no longer in that world, Foundling. Perhaps in this one... you may learn what it means to truly be human. */
EXIT

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("L#Fou",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneFoundling2","GLOBAL",0)~ THEN L#FOUB C0SireneFoundling2
@10 /* Tell me about this 'Ilmater' of yours. Why do you serve him? What do you stand to gain? */
DO ~SetGlobal("C0SireneFoundling2","GLOBAL",1)~
== BC0SIRE2 @11 /* Some things have deeper meaning than what there is to gain alone. */
== L#FOUB @12 /* Really? So you are not rewarded at all for serving your god? */
== BC0SIRE2 @13 /* 'Twould depend on what you consider rewarding, I suppose... I find solace in the knowledge that others live because I suffered for their sake. For me, that is enough. */
== L#FOUB @14 /* You are beyond illogical... why do you do such things? I know you have the blood of fiends, and people fear you because of it... do you not despise them? Wouldn't you prefer that they suffered? */
== BC0SIRE2 @15 /* Perish the thought! I would be no better than the evil that taints my blood if I truly thought such things. */
== L#FOUB @16 /* The look in your eyes changed for a moment... are you angry? */
== BC0SIRE2 @17 /* *sigh* No, I am not, Foundling. I still do not know if your words are meant to offend, but I cannot afford to even think on them. I think 'twould be best if we both forgot about this conversation. */
== L#FOUB @18 /* As you wish. */
EXIT

// ToB

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("L#Fou",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneFoundlingToB","GLOBAL",0)~ THEN L#FOU25B C0SireneFoundlingToB
@19 /* You are still alive. */
DO ~SetGlobal("C0SireneFoundlingToB","GLOBAL",1)~
== BC0Sir25 @20 /* Aye, so I am... does that surprise you? */
== L#FOU25B @21 /* I'm not sure. You are quite strong- I won't deny it. But each time you throw yourself into harm to save others, I wonder if it will be the last time... but you're still here. How do you do it? */
== BC0Sir25 @22 /* To protect those that fight at my side... 'tis what gives me the will to survive. Though my life is worth little, I must live so that I may protect those I hold dear. */
== L#FOU25B @23 /* And... does that include me? */
== BC0Sir25 @24 /* Of course it does, Foundling. */
== L#FOU25B @25 /* I see. */
== BC0Sir25 @26 /* If you do not mind my asking... how does the knowledge make you feel? */
== L#FOU25B @27 /* I don't know... it's strange. I think the best way to put it would be to say... I feel less tense around you. */
EXIT