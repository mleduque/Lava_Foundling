BEGIN L#FouB

////////////////////////////////
///////////Banters//////////////
////////////////////////////////

////Aerie

CHAIN IF ~InParty("AERIE")
See("AERIE")
!StateCheck("L#Fou",CD_STATE_NOTVALID)
!StateCheck("AERIE",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#FoundlingAerie","GLOBAL",0)~ THEN L#FouB AerieFound01
@0 /* So you are the one who lost her wings, yes? */
DO ~SetGlobal("L#FoundlingAerie","GLOBAL",1)~
== BAerie @1 /* Yes but--who told you? I don't remember talking to you about my... loss. */
== L#FouB @2 /* I just heard you or <CHARNAME> mentioning it. Although, I don't understand why you are complaining about the lack as I'm sure there are some spells that would let you at least levitate. Maybe even fly. */
== BAerie @3 /* But it's not the same! It can't be compared to the feel of feathers being... being touched by the winds. */
== L#FouB @4 /* Is it that different? Maybe wind won't touch your wings, but you can still feel it. */
== BAerie @5 /* You just don't understand... */
== BAerie @6 /* It's... it's like with freedom. Being alive but chained is different to being alive and free. And I feel as if I were... bound. */
== L#FouB @7 /* I suppose it makes some sense. But being bound doesn't mean you can't fight for your freedom. */
== BAerie @8 /* But I just can't change my past, no matter how much I wish I could... */
== L#FouB @9 /* Do what you want, but if I were you, I would at least try to do more than complain. You can use magic--master the skill and you'll feel less bound. More powerful. */
== BAerie @10 /* But it's not the same. It's not a matter of power, Foundling. */
== L#FouB @11 /* I find it difficult to understand. And I must admit that this dispute is a tiresome one: you're just crying about something that can't be changed. */
== L#FouB @12 /* You have two good legs. You could lose more than your wings. */
== BAerie @13 /* I know I could, but... */
== L#FouB @14 /* I told you already--I doubt I can understand your complaints, Aerie. */
== BAerie @15 /* I thought you would because of the... curse. */
== L#FouB @16 /* It seems you are as wrong as I was about your loss. I suppose you can do or feel whatever you want, but it doesn't mean everyone else can understand it. */
== L#FouB @17 /* We should move on. We're causing a delay. */
EXIT

CHAIN IF ~InParty("AERIE")
See("AERIE")
!StateCheck("L#Fou",CD_STATE_NOTVALID)
!StateCheck("AERIE",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#FoundlingAerie","GLOBAL",1)~ THEN L#FouB AerieFound02
@18 /* Why are you looking at me, Aerie? Do you still hold a grudge against me because of our talk? */
DO ~SetGlobal("L#FoundlingAerie","GLOBAL",2)~
== BAerie @19 /* I'm not someone who would hold a grudge on anyone, Foundling. I wish you could understand how I feel, that's all. */
== L#FouB @20 /* All I understand is that your wings were more than significant to you. I think I can understand it, somehow. Breaking free was more than significant to me, as well, when I was kept by my former master. */
== BAerie @21 /* So you actually understood what I have said? */
== L#FouB @22 /* Partially. */
== BAerie @23 /* I... I'm glad. */
== L#FouB @24 /* I doubt I can *ever* fully understand it, as it's possible to find a substitute for your wings, while there is no substitution for freedom. */
== BAerie @25 /* So you don't understand after all... No substitution is good enough... */
== L#FouB @26 /* If you say so. I suppose it's rather subjective; it's hard to find any logic in this. */
== BAerie @27 /* I believe that there are some issues that can't be understood with only logic... */
== L#FouB @28 /* I'm afraid I haven't seen many issues like that in the Shadow Plane. */
== BAerie @29 /* That sounds rather horrible... it must have been more than just a dark place. It must have been cold and... drained. */
== L#FouB @30 /* Cold--yes. But there were rules and as long as you could follow them, most things stayed the same. */
== L#FouB @31 /* It was different from this subjective place. */
EXIT

////Anomen

CHAIN IF ~InParty("ANOMEN")
See("ANOMEN")
!StateCheck("L#Fou",CD_STATE_NOTVALID)
!StateCheck("ANOMEN",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#FoundlingAnomen","GLOBAL",0)~ THEN L#FouB AnomenFound01
@32 /* Those rules you follow--did you come up with them on your own, Anomen? */
DO ~SetGlobal("L#FoundlingAnomen","GLOBAL",1)~ 
== BAnomen @33 /* These are more than just some rules that could be created by *any* man, but I suppose their concepts would be too complex for a creature from the Shadow Plane. */
== L#FouB @34 /* Creature? I'm not sure if you mean it this way, but you sound as if you don't consider me a human being. Why is that? */
== BAnomen @35 /* You came from the Shadow Plane and you do not belong to Faerun. You came here along with a fierce beast from your homeland, and you should have been treated like it was treated. */
== BJaheir IF ~InParty("JAHEIRA") !StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN @36 /* Even though I'm not happy to work with him, Anomen, I believe you're going too far with this. He might be different--maybe even more than that--but getting rid of the inconvenient would be cruel. */
== BAnomen IF ~InParty("JAHEIRA") !StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN @37 /* He's not inconvenient. He is an eldritch threat to the innocent, Jaheira. */
== L#FouB @38 /* I'm not a shadow, nor am I a Shadow Dragon. */
== BAnomen @39 /* And neither are you one of us. */
== L#FouB @40 /* What if I'm not like those you fought in the ruins, either? */
== BAnomen @41 /* The fact is that you're from the Shadow Plane. If you hurt my kind, I will be responsible for this as I let you live. */
== L#FouB @42 /* Indeed. It's logical. But you can't be sure of what I will or won't do. */
EXIT

CHAIN IF ~InParty("ANOMEN")
See("ANOMEN")
!StateCheck("L#Fou",CD_STATE_NOTVALID)
!StateCheck("ANOMEN",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#FoundlingAnomen","GLOBAL",1)
HPPercentLT("L#Fou",90)~ THEN L#FouB AnomenFound02 //(when he's hurt)
@43 /* This wound may need some help so I can keep supporting <CHARNAME>, Anomen. */
DO ~SetGlobal("L#FoundlingAnomen","GLOBAL",2)~
== BAnomen @44 /* I would rather not waste the spells provided by Helm's Grace on you. */
== L#FouB @45 /* You've already spent some of them on me, as well as on some others we have met on the road. */
== BAnomen @46 /* I did so because our leader asked me to do so. When <CHARNAME> decides that your wounds are serious enough, I shall help, but I am *not* your servant.  Do not expect me to use my power every time you ask for it. */
== BViconi IF ~InParty("VICONIA") !StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN @47 /* Hmm, I shall use my spells on you, Foundling--not necessarily to support you, no, but rather to show that this rivvil is more than useless. */
== L#FouB IF ~InParty("VICONIA") !StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN @48 /* Good enough, Viconia. Seems better than wasting time on *talking* about healing. */
== BAnomen IF ~InParty("VICONIA") !StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN @49 /* What are you trying to prove, drow? If you think-- */
== BViconi IF ~InParty("VICONIA") !StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN @50 /* That I'll find proof that you're but a useless fool? I don't even need to prove it, iblith. */
== BAnomen IF ~InParty("VICONIA") !StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN @51 /* Say one more word, vile creature, and-- */
== BViconi IF ~InParty("VICONIA") !StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN @52 /* --and what? Will you hit me? Or show me my place, perhaps? */
== L#FouB IF ~InParty("VICONIA") !StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN @53 /* This discussion is pointless. */
== BAnomen IF ~InParty("VICONIA") !StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN @54 /* You won't gibbet me, drow, nor can you make me change my mind about you two. I have my honour. */
== BViconi IF ~InParty("VICONIA") !StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN @55 /* Worthless scum. Iblith, I spit on you. */
== BViconi IF ~InParty("VICONIA") !StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN @56 /* As for you, Foundling--do not even try to read through my motives. Never do I say something pointless. */
EXIT

CHAIN IF ~InParty("ANOMEN")
See("ANOMEN")
!StateCheck("L#Fou",CD_STATE_NOTVALID)
!StateCheck("ANOMEN",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#FoundlingAnomen","GLOBAL",2)~ THEN L#FouB AnomenFound03
@57 /* How does it feel to believe in something as much as you do, Anomen? */
DO ~SetGlobal("L#FoundlingAnomen","GLOBAL",3)~
==BAnomen @58 /* It is a graceful feeling you'll never experience. */
==L#FouB @59 /* Try to describe it, then. */
==BAnomen @60 /* It is like a light that can show you the correct path when your lose your vision, a light that can cast away darkness--all the shadows. */
== L#FouB @61 /* I see. */
== BAnomen @62 /* No. You don't. I'm more than sure of it. Belief changes us--us humans. We become greater, stronger, and wiser. This light lets me show mercy. */
== BAnomen @63 /* Even to... something like you. */
== L#FouB @64 /* You may be right. It's hard to understand the idea of the madness you speak of. It may sound noble, perhaps even appealing, but it can't be true. */
== L#FouB @65 /* How? How did you acquire such insanity that lets you believe in all of this? */
== BAnomen @66 /* You do not acquire such a thing. It can't be bought or learned like the skill to set someone on fire. */
== BAnomen @67 /* Now begone, pitiful thing. I shall speak no more to you. */
EXIT

////Cernd

CHAIN IF ~InParty("CERND")
See("CERND")
!StateCheck("L#Fou",CD_STATE_NOTVALID)
!StateCheck("CERND",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#FoundlingCERND","GLOBAL",0)~ THEN L#FouB CerndFound01
@68 /* ...so does it mean you can cure most of the poisons known in the Prime Material Plane? */
DO ~SetGlobal("L#FoundlingCERND","GLOBAL",1)~ 
== BCernd @69 /* No, for Nature has more substances and forms than stars in the sky--I'm afraid that there are many toxins I have never heard about. There are also some poisons that are so deadly, no herbs or potions can overcome them. */
== L#FouB @70 /* Hmm, they sound very useful. If we had access to one of those, our quest would become easier. */
== BCernd @71 /* Even though such poisons and toxins are known to Nature, I would hesitate to use them--human beings weren't equipped with them, so it's not natural for us to play with them. */
== L#FouB @72 /* I don't know many men from Faerun, but many of those I've heard or read about seemed venomous to me. But that's fine--one should use an opportunity when it appears. It doesn't seem wrong at all. */
== BCernd @73 /* Indeed, there are venomous people; I've met some of them--but I'm afraid opportunity does not excuse the use of poison. */
== L#FouB @74 /* I wouldn't hesitate. And not because I find pleasure in the usage of poison. I wouldn't hesitate, as poison is just a tool--as swords and magic are tools. */
== BCernd @75 /* Everything seems easy when you talk about it, but when one is moved from words to acts, it becomes more complex. More questions appear along with--doubts. */
== L#FouB @76 /* I remember how my master once used a moment of doubt on me. It was like a death sentence. I wish not to fall as did those who hesitated. */
== BValyga IF ~InParty("VALYGAR") !StateCheck("VALYGAR",CD_STATE_NOTVALID)~ THEN @77 /* I doubt he will understand what you mean, Cernd. Men like him follow no rules. They are like crude beasts. */
== BCernd IF ~InParty("VALYGAR") !StateCheck("VALYGAR",CD_STATE_NOTVALID)~ THEN @78 /* A stag uses his antlers, and a wild boar his tush.  It is for Foundling to choose his own weaponry. We have no right to change his nature, Valygar. */
== BValyga IF ~InParty("VALYGAR") !StateCheck("VALYGAR",CD_STATE_NOTVALID)~ THEN @79 /* Maybe. But it doesn't mean he can do anything he wants. */
== BCernd IF ~InParty("VALYGAR") !StateCheck("VALYGAR",CD_STATE_NOTVALID)~ THEN @80 /* Valygar--we have many enemies already. We should not search out more trouble. */
EXIT

CHAIN IF ~InParty("CERND")
See("CERND")
!StateCheck("L#Fou",CD_STATE_NOTVALID)
!StateCheck("CERND",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#FoundlingCERND","GLOBAL",1)~ THEN L#FouB CerndFound02
@81 /* I find it difficult to get used to your sun. */
DO ~SetGlobal("L#FoundlingCERND","GLOBAL",2)~ 
== BCernd @82 /* That is to be expected. As the star-nosed mole dislikes an aspen's swaying branches, you are out of your place. Even though you are human, you spent most of your life with a Shadow Dragon, in a place where no sun can be seen in the sky. */
== L#FouB @83 /* It doesn't mean there was no light. There was some, but less aggressive. Less piercing. It was more like a weak, blue glow. Much better than a globe you can't even look at. */
== BViconi IF ~InParty("VICONIA") !StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN @84 /* Shar, it seems you have brought me a companion in my pain. Ah, barra, I would give much to lock up the sun; none of these fools can understand why I curse this--this burning globe! */
== BCernd @85 /* I myself can't imagine a world without the sun. It's a shining gem in Nature's crown--it can give protection and warmth. Without it, we would freeze; we would get lost easily. */
== L#FouB @86 /* But still, there are places which exist even without this "gem", as you call it. */
== BCernd @87 /* Indeed, but they are different. Their inhabitants are different, as are their fauna. The sun is specific to our world and it determines all of Nature's children. */
== L#FouB @88 /* So you may be right--I do not belong with this place. */
== L#FouB @89 /* ...but I am already here and I have nowhere else to go. */
EXIT

////Edwin

CHAIN IF ~InParty("EDWIN")
See("EDWIN")
!StateCheck("L#Fou",CD_STATE_NOTVALID)
!StateCheck("EDWIN",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#FoundlingEdwin","GLOBAL",0)~ THEN L#FouB EdwinFound01
@90 /* Why are you always wearing those red robes, mage? Has it something to do with your religion? */
DO ~SetGlobal("L#FoundlingEdwin","GLOBAL",1)~
== BEdwin @91 /* Religion?! You don't even know who the Red Wizards are, you useless gibbon? (Why is he bothering me at all? Fools should know their place.) */
== L#FouB @92 /* I'm not familiar with cults from this place, nor have I heard about Red Wizards. Is this some kind of sect? Are those robes part of your dogma? */
== BEdwin @93 /* Edwin Odesseiron does not belong to any sect, gibbon! I am from Mount Thay; I studied with other mages and so I became probably the most powerful mage you will ever see! (...as your life won't last much longer, I presume.) */
== L#FouB @94 /* I suppose that's a place where those of your kind learn arcane magic. */
== L#FouB @95 /* Let me ask, are there any requirements? Can anyone join this... Mount Thay place? */
== BEdwin @96 /* What?! */
== Bjaheir IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @97 /* A good point. Well, it seems that you're right, Foundling--they may be accepting anyone. */
== BYoshim IF ~InParty("yoshimo") !StateCheck("yoshimo",CD_STATE_NOTVALID)~ THEN @98 /* Ah! It seems that you have stepped on a dog's tail, my dark friend. */
== L#FouB @99 /* You don't look much different--excluding those red robes, but you probably wore those after joining this... organization. */
== BEdwin @100 /* You don't understand a thing, you--you crawling louse! I am much powerful than everyone else in this group! More powerful than anyone who ever joined <CHARNAME>! (And the most powerful man that will *ever* join <PRO_HIMHER>.) */
== BValyga IF ~InParty("valygar") !StateCheck("valygar",CD_STATE_NOTVALID)~ THEN @101 /* Don't overreact, mage. I'm keeping an eye on you, we don't need any dirty tricks here. */
== L#FouB @102 /* I don't understand your excitement, Odesseiron, but I don't wish to be insulted. */
== BEdwin @103 /* Insulted?! I would rather say that the louse was insult-*ing*. */
== L#FouB @104 /* It seems that it's getting us nowhere. */
== BEdwin @105 /* Indeed, *you* are getting us nowhere, louse! (I hope you die soon enough.) */
EXIT

CHAIN IF ~InParty("EDWIN")
See("EDWIN")
!StateCheck("L#Fou",CD_STATE_NOTVALID)
!StateCheck("EDWIN",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#FoundlingEdwin","GLOBAL",1)~ THEN L#FouB EdwinFound02
@106 /* Are there mages who can use Shadow Weave in this... Mount you're from? */
DO ~SetGlobal("L#FoundlingEdwin","GLOBAL",2)~
== BEdwin @107 /* It's Thay Academy, we're not some troglodytes living *in* Mount Thay, you louse! (Who does he think we are?) */
== BEdwin @108 /* And no! We're not interested in limiting ourselves with... with some ritual and promises made to Shar. Bah! We can reach more without her mere powers! */
== BViconi IF ~InParty("VICONIA") !StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN @109 /* I doubt you will ever accomplish *anything*, Odesseiron, as you are nothing more than useless rivvil. And do not underestimate lady Shar when I'm near, male. */
== BEdwin IF ~InParty("VICONIA") !StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN @110 /* I'm not afraid of you, dark elf, as I'm not afraid of your goddess. */
== BViconi IF ~InParty("VICONIA") !StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN @111 /* Watch your tongue, dog! Nindyn Vel'uss Kyorl Nind Ratha Thalra Elghinn Dal Lil Alust! */
== L#FouB @112 /* What do you mean by "limiting myself"? */
== BEdwin @113 /* I mean what I say. You are out of reach of the true powers of the arcane magic we shape! */
== L#FouB @114 /* But I got something else in exchange. And I never had a chance to decide. This was forced upon me. */
== BEdwin @115 /* I care not, louse! I wasted enough time on chattering with creatures that do not deserve my time. */
EXIT

////Haer'Dalis

CHAIN IF ~InParty("haerdalis")
See("haerdalis")
!StateCheck("L#Fou",CD_STATE_NOTVALID)
!StateCheck("haerdalis",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#Foundlinghaerdalis","GLOBAL",0)~ THEN L#FouB HaerdaFound01
@116 /* You've seen other planes, too, am I right? Have you ever been to the Shadow Plane? */
DO ~SetGlobal("L#Foundlinghaerdalis","GLOBAL",1)~
== BHaerda @117 /* Ah, my rook, I must admit that no, never have I seen the corners of your home plane, as I know of no parts of it that would welcome me, Raelis, and our group. */
== L#FouB @118 /* But I think you know the place more or less--I mean, you seem to understand how it works and how different it is. */
== BHaerda @119 /* Ha! The fact that I have heard tales about the Shadow Plane is no evidence that I have ever seen it with my own eyes, rook. But yes, I have heard about it, as Raelis has been there, once. */
== L#FouB @120 /* And what did your friend say about it? */
== BHaerda @121 /* That there are no parts of it that would welcome us! */
== L#FouB @122 /* I am sure she said something more than that, I bet. */
== BHaerda @123 /* Well, indeed, she said that it's not a place we should ever visit, as not only does it lack light, but it's wild as well. And cold. Colder than death or an icy wind. */
== L#FouB @124 /* So she was right. */
== Bhaerda @125 /* ...but rook--why do you ask? Ah, don't tell me that you're homesick! */
== L#FouB @126 /* I'm not even sure if I know what it means. But this place still seems different and puzzling. */
== L#FouB @127 /* I'm not sure if I like it. */
EXIT

CHAIN IF ~InParty("haerdalis")
See("haerdalis")
!StateCheck("L#Fou",CD_STATE_NOTVALID)
!StateCheck("haerdalis",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#Foundlinghaerdalis","GLOBAL",1)~ THEN L#FouB HaerdaFound02
@128 /* Doesn't it annoy you? */
DO ~SetGlobal("L#Foundlinghaerdalis","GLOBAL",2)~
== BHaerda @129 /* If you want me to answer your question, rook, you first need to tell me what the "it" is, as never have I had the power of thought-reading. */
== L#FouB @130 /* I mean being someone other than yourself on the stage--that's what you did with your friend... Raelis, if I'm correct. */
== BHaerda @131 /* Ah, so that is what bothers you, our black-winged companion! And no--it never annoyed me. If it did, I would have left them sooner; I must say that it was most fascinating and refreshing to steal a face for a while. */
== L#FouB @132 /* But it's illogical. And pointless. */
== BHaerda @133 /* Well, I know at least a few dozen spectators that wouldn't agree with you, rook, as they would come and watch our plays every time we were there to act. */
== BHaerda @134 /* So, I doubt it can be called 'pointless'. */
== BKorgan IF ~InParty("korgan") !StateCheck("korgan",CD_STATE_NOTVALID)~ THEN @135 /* Ha! The striplin' is right!  Ye'd do mo'e  swingin' and smashin' with no girlish toyin' on yer stage! */
== L#FouB @136 /* You are Haer'Dalis--why should I pretend you're someone else when you're on the stage? I see no reason; isn't it pretending that the one who's watching is mad? */
== BHaerda @137 /* No. And even if that were so, isn't that intriguing? Letting the delusion rule for an hour or two? */
== L#FouB @138 /* No, I don't think so. I'd rather stay sane. */
EXIT



////Imoen

CHAIN IF ~InParty("imoen2")
See("imoen2")
!StateCheck("L#Fou",CD_STATE_NOTVALID)
!StateCheck("imoen2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#FoundlingImoen","GLOBAL",0)~ THEN L#FouB ImoenFound01
@139 /* What did Irenicus tell you when he kept you? Maybe he said something we can use? */
DO ~SetGlobal("L#FoundlingImoen","GLOBAL",1)~
==BJaheir IF ~InParty("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @140 /* Foundling! You shouldn't ask questions like that! This child has suffered enough. */
==BImoen2 @141 /* He said many... many things I would rather forget, nothing we could use. And I don't like that you even asked... I could hardly stand my time with him... */
==BJaheir IF ~InParty("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @142 /* You don't need to say anything, Imoen. He shouldn't have asked. */
==BImoen2 IF ~InParty("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @143 /* Thank you, Jaheira. */
==BImoen2 @144 /* It was just... He would come and say things about <CHARNAME>, about Bhaal... He would come every day... */
==BImoen2 @145 /* I would like to forget. */
==L#FouB @146 /* I doubt you can. He must have said something; maybe he *did* say something that would be a clue that would let us spot his weakness-- */
==BJaheir IF ~InParty("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @147 /* Foundling! */
==BImoen2 @148 /* I don't want to think about it, so don't ask me about Irenicus, Foundling. He would just come and tell me that <CHARNAME> wouldn't come, that I'd stay there, that he'd experiment... */
==BImoen2 @149 /* If I knew something, I would have told <CHARNAME> about it. Now leave me, please... */
==L#FouB @150 /* We can't change the past. We should use it instead. */
==L#FouB @151 /* But I suppose that's enough for now. We should move on. */
EXIT

/* deprecated
CHAIN IF ~InParty("imoen2")
See("imoen2")
!StateCheck("L#Fou",CD_STATE_NOTVALID)
!StateCheck("imoen2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#FoundlingImoen","GLOBAL",1)~ THEN L#FouB ImoenFound02
~Did you see someone else when he kept you? Did he have any allies?~
DO ~SetGlobal("L#FoundlingImoen","GLOBAL",2)~
==BJaheir IF ~InParty("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN ~Ask one more question and you'll regret it. I've already said you shouldn't bother Imoen with questions like that.~
==BMinsc IF ~InParty("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) InParty("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN ~Boo says that Jaheira is right! You can hold him for a while if you want, Imoen. Boo can cheer you up!~
==BImoen2 IF ~InParty("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) InParty("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN ~Thank you, Minsc. I... I'm fine.~
==BImoen2 ~I told you that I don't want to talk about it, Foundling, so please--leave me be.~
==L#FouB ~I don't want to die because you don't want to speak about something that already happened.~
END
IF~~THEN REPLY ~She gave you her answer already--no.  Leave her be.~ EXTERN BImoen2 ImoenFound02-1
IF~~THEN REPLY ~Just answer, Imoen.~ EXTERN BImoen2 ImoenFound02-2
IF~~THEN REPLY ~Stop it--both of you. I don't need a bunch of children quarrelling when I'm trying to think.~ EXTERN BImoen2 ImoenFound02-3

CHAIN BImoen2 ImoenFound02-1
~Thank you, <PRO_BROTHERSISTER>...~
==L#FouB ~I don't understand why you two are so nervous, but fine. I won't ask any more questions if it annoys you two that much.~
==L#FouB ~Just make sure we win with this Irenicus.~
EXIT

CHAIN BImoen2 ImoenFound02-2
~What...? I told you everything, I know nothing more.~
==BImoen2 ~I thought you would be on my side, but... but it seems I was wrong. Just--just let us go, will you?~
EXIT

CHAIN BImoen2 ImoenFound02-3
~Yes, I think we should stop it and... and just move on.~
==L#FouB ~Fine. But at least make sure we win with this Irenicus, <CHARNAME>. I don't want to die just because you didn't want her to give us some details on him.~
EXIT
*/

// T1 version
CHAIN IF ~InParty("imoen2")
See("imoen2")
!StateCheck("L#Fou",CD_STATE_NOTVALID)
!StateCheck("imoen2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#FoundlingImoen","GLOBAL",1)~ THEN L#FouB ImoenFound02
@152 /* Did you see anyone else when he kept you? Did he have any allies? */
DO ~SetGlobal("L#FoundlingImoen","GLOBAL",2)~
== BImoen2 @153 /* No. */
== L#FouB @154 /* The more we know about our enemy-- */
== BImoen2 @155 /* Foundling, talking about that man *hurts* me. */  
= @156 /* *Thinking* about him hurts me. */  
= @157 /* You want me to do something that causes me pain?  Fine.  But it'll cost ya. */
== L#FouB @158 /* I don't think you would like learning Shadow Weave Magic, Imoen.  And <CHARNAME> keeps the party purse. */
== BImoen2 @159 /* Oh no, Foundling, nothing so simple.  I want something *big* from you--something... real.  Something that shakes you to your foundations. */
== BImoen2 @160 /* Gimme a joke. */
== L#FouB @161 /* You are holding back tactical information for humour?  That's... ridiculous. */
== BImoen2 @162 /* But not ridiculous enough, 'cause I ain't laughing yet. */
== L#FouB @163 /* ... */
== L#FouB @164 /* I don't know any jokes, Imoen. */
== BImoen2 @165 /* Oh, what a *terrible shame*... */
EXIT

// After Imoen has her soul back
// from T1 - check, Lava?

CHAIN IF ~InParty("imoen2") 
See("imoen2")
!StateCheck("L#Fou",CD_STATE_NOTVALID)
!StateCheck("imoen2",CD_STATE_NOTVALID)
CombatCounter(0)
Dead("Bodhi")
GlobalGT("L#FouPlot","GLOBAL",29) /* solved F's main plot */
Global("L#FoundlingImoen","GLOBAL",2)~ THEN L#FouB ImoenFoundSoul 
@166 /* Does it feel different?  With your soul restored to your body? */
DO ~SetGlobal("L#FoundlingImoen","GLOBAL",3)~
== BImoen2 @167 /* I'm at least 20 percent pinker! */
== L#FouB @168 /* Really?  Your hair looks-- */
== BImoen2 @169 /* That was a joke, Foundling. */ 
== L#FouB @170 /* Humour, again. */
== BImoen2 @171 /* You say that like it's a bad thing. */
= @172 /* It's all bright now--the colours of flowers burn my eyes.  I could stay up all night, drunk on the sound of crickets chirping.  Everything feels so *big*. */  
= @173 /* But also--I see <CHARNAME> fading a bit more with every step.  I'm terrified of meeting... that man again.  Every heartbeat I'm teetering 'tween tears and laughter. */
= @174 /* What about you, Foundling?  When you got the last of that dragon scraped out of you, didja feel different about things? */
== L#FouB @175 /* No.  No different. */
= @176 /* Nothing changed for me. */
EXIT

////Jaheira

CHAIN IF ~InParty("jaheira")
See("jaheira")
!StateCheck("L#Fou",CD_STATE_NOTVALID)
!StateCheck("jaheira",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#FoundlingJaheira","GLOBAL",0)~ THEN L#FouB JaheiraFound01
@177 /* What did I do to earn those looks of yours, Jaheira? */
DO ~SetGlobal("L#FoundlingJaheira","GLOBAL",1)~
== BJaheir @178 /* I am being careful. I won't easily trust someone who used to be in an alliance with shadows--even though you were a prisoner, you worked for them. */
== BJaheir @179 /* I won't forget about it, not as a druid, not as a Harper. */
== L#FouB @180 /* Harper? What has some... instrument to do with this? */
== BJaheir @181 /* A Harper, not a harpist. I am a Harper--we make sure that no organization with a suspicious reputation or motivation is a threat to Faerun. That should explain my suspicion. */
== L#FouB @182 /* I'm not "an organization with a doubtful reputation or motivation". I'm just myself and the fact that I was *forced* to work with the Shade Lord doesn't mean that I was ever one of them. */
== L#FouB @183 /* I don't care for--this place, but I'm not a threat to it. I am just discovering it and being free. */
== BJaheir @184 /* That's fine, but you're not from here and your presence is unnatural. It's an unfortunate situation, as letting you remain under the Shadow Dragon's influence would be equally inappropriate. */
== BValyga IF ~InParty("valygar") !StateCheck("valygar",CD_STATE_NOTVALID)~ THEN @185 /* I don't agree. It would be better if we left him. */
== L#FouB @186 /* We differ. I am aware that my presence here isn't natural, but I'm no threat to it. */
== BJaheir @187 /* I understand. So you won't mind if I keep an eye on you, for a while. */
EXIT

CHAIN IF ~InParty("jaheira")
See("jaheira")
!StateCheck("L#Fou",CD_STATE_NOTVALID)
!StateCheck("jaheira",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#FoundlingJaheira","GLOBAL",1)~ THEN L#FouB JaheiraFound02
@188 /* Have you always worked for those... Harpers? */
DO ~SetGlobal("L#FoundlingJaheira","GLOBAL",2)~
== BJaheir @189 /* For most of my life, yes. */
== L#FouB @190 /* And what about this... Khalid? */
== BJaheir @191 /* Where did you hear this name? Never mind--just never ask about him, Foundling. This matter shouldn't concern you. */
== L#FouB @192 /* I heard you saying the name. */
== L#FouB @193 /* Was he your friend? */
== BJaheir @194 /* A husband. Khalid was my husband, Foundling. And he's dead--murdered by Irenicus. */
== L#FouB @195 /* Is that why you're supporting <CHARNAME>? Do you want to avenge him? */
== BJaheir @196 /* If you believe I'm a vengeful person, then you're wrong. I support <CHARNAME> because I believe my help is needed. I also knew <PRO_HISHER> foster father. */
== L#FouB @197 /* Foster father? */
== BJaheir @198 /* The man who took care of <PRO_HISHER>--Gorion. He was a Harper. */
== L#FouB @199 /* I suppose I understand. */
== BJaheir @200 /* So? Is that all you wanted to know? I hope you are satisfied--expect no more answers from me. */
== L#FouB @201 /* So why did you tell me this? */
== BJaheir @202 /* I wanted you to understand what you've gotten into and who we are. */
== BJaheir @203 /* But now we should move on. */
EXIT

////Jan

CHAIN IF ~InParty("L#Fou")
See("L#Fou")
!StateCheck("L#Fou",CD_STATE_NOTVALID)
!StateCheck("jan",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#FoundlingJan","GLOBAL",0)~ THEN BJAN JanFound01
@204 /* Oh, Foundling! I was wondering--are there any vegetables in the Shadow Plane? Oh, I am sure Uncle Gerhard would be interested in trying them out: he is really into vegetables and he knows every detail when it comes to turnips! So, that's why I ask--are there turnips in the Shadow Plane? Are they any different? */
DO ~SetGlobal("L#FoundlingJan","GLOBAL",1)~ 
== L#FouB @205 /* I don't know what you are talking about, gnome. */
== BJan @206 /* Really? Well, I'm sure you must know something interesting about the vegetables of the Shadow Plane. I must say that never have I seen any books about them! Not a single one. Not that I looked for them, but... but even so I should know at least one and I don't. */
== L#FouB @207 /* I doubt there are any books about them, but--I must say that I don't understand most things you're talking about and I'd rather you stay away from me. */
== BJan @208 /* Oh, but I can be more clear; you know, I am sure Gerhard would like to talk to you so maybe we should visit our house one day so you two could-- */
== L#FouB @209 /* Just stop it. */
== L#FouB @210 /* You irritate me. Or maybe trouble me. But anyway, I don't want you to speak with me: you're just wasting my time. */
== BJan @211 /* But-- */
== L#FouB @212 /* Just get away from me. */
EXIT

CHAIN IF ~InParty("L#Fou")
See("L#Fou")
!StateCheck("L#Fou",CD_STATE_NOTVALID)
!StateCheck("jan",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#FoundlingJan","GLOBAL",1)~ THEN BJAN JanFound02
@213 /* Do you remember that we're to visit uncle Gerhard, Foundling? I was wondering if I should go back and let him know that we would pay him a visit, but you never told me when we would go there. I must say, it's really exciting-- */
DO ~SetGlobal("L#FoundlingJan","GLOBAL",2)~
==L#FouB @214 /* I never said that we would visit this... Gerhard. And I told you to stop bothering me. */
==BJan @215 /* So that was for real? Oh, you must be joking, and you know what? I really appreciate your good humor, Foundling! I have a feeling that we can become good friends. */
==L#FouB @216 /* I'm not joking! Just leave me be, gnome, or else I'll have to use something more than words. */
==L#FouB @217 /* We'll never become friends. You're the most illogical person I have ever met. Now, leave me be. */
EXIT


////Keldorn

CHAIN IF ~InParty("keldorn")
See("keldorn")
!StateCheck("L#Fou",CD_STATE_NOTVALID)
!StateCheck("keldorn",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#FoundlingKeldorn","GLOBAL",0)~ THEN L#FouB KeldornFound01
@218 /* Who is this... Torm, knight? */
DO ~SetGlobal("L#FoundlingKeldorn","GLOBAL",1)~
== BKeldor @219 /* He's the Loyal Fury, the one that guides me. */
== L#FouB @220 /* Loyal Fury? */
== BKeldor @221 /* That is the title some use for Torm. He is the god of duty and loyalty. "Salvation may be found through service," says the prayer, and that is what I follow. */
== L#FouB @222 /* Salvation through service? It doesn't seem right. I had to serve Thaxll'ssillyia for years. I obeyed him because if I hadn't, I would be dead. */
== BKeldor @223 /* You misunderstood me, Foundling. By service I mean one should follow Torm's guidance and help those who require aid. To support law and order. */
== L#FouB @224 /* Are there many like you? */
== BKeldor @225 /* Yes, there is the Order of the Radiant Heart in Athkatla's Temple District, as well as those who aren't members of our Order: those who came to Athkatla with a mission. There are many others like me in the city and outside of it. */
== L#FouB @226 /* That's strange. */
== L#FouB @227 /* Never have I met those of your kind in the Shadow Plane. */
EXIT

CHAIN IF ~InParty("keldorn")
See("keldorn")
!StateCheck("L#Fou",CD_STATE_NOTVALID)
!StateCheck("keldorn",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#FoundlingKeldorn","GLOBAL",1)~ THEN L#FouB KeldornFound02
@228 /* Don't you think that your work is pointless, Keldorn? */
DO ~SetGlobal("L#FoundlingKeldorn","GLOBAL",2)~
== BKeldor @229 /* No, I believe it is essential to help the Order, as there are plenty who would destroy it. */
== L#FouB @230 /* Still, isn't it pointless? Rules are set by the strongest ones; those who are strong enough will survive and set their own rules that the weaker will have to obey. */
== L#FouB @231 /* Isn't it natural? */
== BKeldor @232 /* But it would be inhumane--most of society would become nothing but slaves and servants to the tyrants. It is not a reality Torm or the Order would seek. */
== L#FouB @233 /* I have lived in that reality for years. */
== BKeldor @234 /* I'm afraid that's no excuse. */
== BKeldor @235 /* This world is different than the Shadow Plane, Foundling, and the rules you had to obey there, do not work here. That's why you're a free man here. */
== L#FouB @236 /* Unless one of your kind decides that what I do isn't "the right thing". */
== BKeldor @237 /* As long as you don't harm others, you're free. Believe me, none of "my kind" would force you to change as long as it concerns only your life. */
== L#FouB @238 /* Seems fair enough. */
EXIT

////Korgan

CHAIN IF ~InParty("korgan")
See("korgan")
!StateCheck("L#Fou",CD_STATE_NOTVALID)
!StateCheck("korgan",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#FoundlingKorgan","GLOBAL",0)~ THEN BKorgan KorganFound01
@239 /* Ha! <CHARNAME> must lo'e takin' som' girlish lads on trips! */
DO ~SetGlobal("L#FoundlingKorgan","GLOBAL",1)~
== L#FouB @240 /* What? */
== BKorgan @241 /* Why else woul' <PRO_HESHE> take ye with us? Ha! I knew <PRO_HESHE> likes youn' boys! */
== L#FouB @242 /* I don't know what you are talking about, dwarf. I'm not much younger than <CHARNAME>, I think. */
== BKorgan @243 /* <PRO_HESHE> will giv' ye some wubbin'--why else woul' <CHARNAME> let a girlie like ye join, e? */
== L#FouB @244 /*  Still, I have no idea what you are talking about. We have had no sexual intercourse. What's more, your insinuations are rather dull, so stop it. */
== BKorgan @245 /* Ha! Tha' was a goo' one! */
EXIT

CHAIN IF ~InParty("korgan")
See("korgan")
!StateCheck("L#Fou",CD_STATE_NOTVALID)
!StateCheck("korgan",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#FoundlingKorgan","GLOBAL",1)~ THEN BKorgan KorganFound02
@246 /* So? <CHARNAME> a'ready played with yer staff, eh mage? Ha! */
DO ~SetGlobal("L#FoundlingKorgan","GLOBAL",2)~ 
== L#FouB @247 /* I told you before--we are not having any sexual intercourse, dwarf, if that's what you mean. */
== BKorgan @248 /* Why so shy, girlie? We all kno' wha' grown up boys do, haha! An' you're a'most one! Ye jus' need some hair on tha' face and chest of yers! */
== L#FouB @249 /* So I'm not a 'girl' anymore? Now I should grow a beard? */
== BKorgan @250 /* Ye're a girlie, bu' even som' girls can grow a beard and say tha' they'r boys, hehe. */
== L#FouB @251 /* You're being ridiculous. I'm not going to listen to that. */
== BKorgan @252 /* Haha, right! */
EXIT

////Mazzy

CHAIN IF ~InParty("mazzy")
See("mazzy")
!StateCheck("L#Fou",CD_STATE_NOTVALID)
!StateCheck("mazzy",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#Foundlingmazzy","GLOBAL",0)~ THEN L#FouB MazzyFound01
@253 /* ...I just want to say that I didn't kill any of your friends, Miss Mazzy. */
DO ~SetGlobal("L#Foundlingmazzy","GLOBAL",1)~
== BMazzy @254 /* But you were there, with the Shadow Dragon and the Shade Lord. It makes you partially responsible for the terrors that occurred in the Umar Hills. */
== BMazzy @255 /* Also, I find it hard to believe that you were just an errand boy, Foundling. */
== BValyga IF ~InParty("valygar") !StateCheck("valygar",CD_STATE_NOTVALID)~ THEN @256 /* I doubt there were any errands to do at all, more like a suspicious kind of work.  A merciless kind of work. */
== L#FouB @257 /* Believe me or not, it's not my problem but yours. I was responsible for some lowly chores, mostly taking care of the equipment and getting rid of the troublesome boulders in the passage. That's all. */
== BMazzy @258 /* But you saw my companions--Patrick and the others. I know it. */
== L#FouB @259 /* Yes, I did, but they were doomed once they entered Amaunator's temple. They weren't as experienced as <CHARNAME>. If you want to blame someone for their deaths, blame the Shade Lord and themselves. */
== BMazzy @260 /* I won't blame my friends! Don't you dare say something like that ever again, Foundling. They did what they could to aid the villagers of Imnesvale as well as the other lands that would have eventually been attacked by the Shade Lord. */
== L#FouB @261 /* They should have known that it wasn't enough. */
== BMazzy @262 /* You don't understand and I suppose you never shall. */
EXIT

CHAIN IF ~InParty("mazzy")
See("mazzy")
!StateCheck("L#Fou",CD_STATE_NOTVALID)
!StateCheck("mazzy",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#Foundlingmazzy","GLOBAL",1)~ THEN L#FouB MazzyFound02
@263 /* You again? What do you want, Mazzy? */
DO ~SetGlobal("L#Foundlingmazzy","GLOBAL",2)~
== BMazzy @264 /* Why would you help <CHARNAME> and myself in this mission? You're free to go, aren't you? */
== L#FouB @265 /* Because I want to stay. There's nowhere else I could go, anyway. */
== BMazzy @266 /* But it's not your battle. */
== L#FouB @267 /* I am fed up with explaining myself and everything I do, Mazzy. I don't care if you believe me or not. But I know that whatever I say, you still "know better" in regards to what I want and what my motives are. */
== L#FouB @268 /* Maybe you should just stop asking me about anything. You "know everything", after all. */
== BMazzy @269 /* Our work is not just some sightseeing, Foundling. We are taking care of important matters, and I don't want us to fail. */
== BMazzy @270 /* But fine--I will not tell you to explain yourself. I will still observe you, but I won't judge you until you give me another reason to do so. */
== L#FouB @271 /* Good. */
== L#FouB @272 /* Now we should go. */
EXIT

CHAIN IF ~InParty("mazzy")
See("mazzy")
!StateCheck("L#Fou",CD_STATE_NOTVALID)
!StateCheck("mazzy",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#Foundlingmazzy","GLOBAL",2)~ THEN L#FouB MazzyFound03
@273 /* You seem tired. */
DO ~SetGlobal("L#Foundlingmazzy","GLOBAL",3)~
== BMazzy @274 /* Does it make you feel triumphant?  I *am* tired, indeed, as I have not been able to find sleep for some time. */
== L#FouB @275 /* Why should I feel triumphant? */
== BMazzy @276 /* Because--nevermind.  I promised not to accuse you until you give me a reason to do so.  I had nightmares.  They always come, eventually, but they do not redeem pointless whining or laments.  If you want to help, then focus on your own matters. */
== L#FouB @277 /* I would like you to tell me about these dreams, Mazzy. */
== BMazzy @153 /* No. */
== L#FouB @278 /* Why? */
== BMazzy @279 /* My dreams and nightmares, my fears are my own concern. */
EXIT

CHAIN IF ~InParty("mazzy")
See("mazzy")
!StateCheck("L#Fou",CD_STATE_NOTVALID)
!StateCheck("mazzy",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#Foundlingmazzy","GLOBAL",3)~ THEN BMAZZY MazzyFound04
@280 /* ...N-no... this... NO!!! */
DO ~SetGlobal("L#Foundlingmazzy","GLOBAL",4)~
== L#FouB @281 /* Mazzy?  Wake up.  It is another nightmare.  If it continues, you may wake <CHARNAME>. */
== BMazzy @282 /* What's... */
== BMazzy @283 /* It is you, Foundling.  Ah, it was but a dream.  Just a bad dream. */
== L#FouB @284 /* Was it about the temple? */
== BMazzy @285 /* The ruins, yes, if you must know, Shadow Adept.  And you were there. */
== L#FouB @286 /* It's not far from the truth, then, but I suppose there's something more.  Was I the culprit and the reason behind those screams? */
== BMazzy @287 /* I told you before, Foundling: that matter is not for ears such as yours. */
== L#FouB @288 /* I take that as a yes. */
EXIT


CHAIN IF ~InParty("mazzy")
See("mazzy")
!StateCheck("L#Fou",CD_STATE_NOTVALID)
!StateCheck("mazzy",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#Foundlingmazzy","GLOBAL",4)~ THEN L#FouB MazzyFound05
@289 /* I have something you may want to look at. */
DO ~SetGlobal("L#Foundlingmazzy","GLOBAL",5)~
== BMazzy @290 /* What is it, Foundling?  Somehow I doubt that you have anything that would catch my attention. */
== L#FouB @291 /* I found it in the temple. */
== BMazzy @292 /* It's-- */
== BMazzy @293 /* It used to belong to Patrick.  It is... was his lucky arrow.  It's different somehow.  It seems... corrupted. */
== L#FouB @294 /* That may be the influence of the Shadow Lord's power */
== BMazzy @295 /* The arrow and its corruption remind me of what happened to my dear friends, Foundling.  Is that what you desired? */
== L#FouB @296 /* I thought you'd rather keep it.  I do not understand you people much.  You seem to care about the belongings of those who died. */
== BMazzy @297 /* Because we want to feel closer to them.  Yet you offer me but pain, Foundling, as you were there too, and by giving me this... corrupted memento... */
== L#FouB @298 /* Break it, if you want, or throw it away.  I myself do not need it. */
== BMazzy @163 /* ... */
== BMazzy @299 /* I will keep it. */
== L#FouB @300 /* But you said-- */
== BMazzy @301 /* I know what I said, Foundling.  I will keep it as a memento--it will remind me of what I stand for and against when I fight. */
== BMazzy @302 /* It is good that you gave it to me, after all. */
EXIT



////Minsc

CHAIN IF ~InParty("minsc")
See("minsc")
!StateCheck("L#Fou",CD_STATE_NOTVALID)
!StateCheck("minsc",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#Foundlingminsc","GLOBAL",0)~ THEN L#FouB MinscFound01
@303 /* How do you communicate with this mouse, warrior? */
DO ~SetGlobal("L#Foundlingminsc","GLOBAL",1)~
== BMinsc @304 /* Boo is not a mouse! He is a hamster! And not just a hamster, but a miniature giant space hamster! He's much smarter than other hamsters and much more brave! */
== BEdwin IF ~InParty("EDWIN") !StateCheck("EDWIN",CD_STATE_NOTVALID)~ THEN @305 /* Bah! Apparently this rodent is smarter than the owner! (One day I should just ignite the annoying creature. One day...) */
== BMinsc IF ~InParty("EDWIN") !StateCheck("EDWIN",CD_STATE_NOTVALID)~ THEN @306 /* Minsc and Boo aren't talking to you, Red Wizard, so go and study your book! And remember--Boo is watching you. */
== BEdwin IF ~InParty("EDWIN") !StateCheck("EDWIN",CD_STATE_NOTVALID)~ THEN @307 /* Ridiculous! I'm not going to waste my time on you foolish lunatics. (I'd rather plan on how to get rid of you.) */
== L#FouB @308 /* Hmm, so--do you understand it? */
== BMinsc @309 /* Of course, Foundling! We're friends and friends always understand one another! That's why they are friends, right Boo? */
== BMinsc @310 /* (Boo) *Squeak!* */ 
== L#FouB @311 /* That's not what I mean. Can you understand its *language*? */
== BMinsc @312 /* I do! Boo and Minsc share a special... bond! We can understand one another without a single problem. */
== BMinsc @313 /* That's why we make such a splendid team! */
== L#FouB @314 /* I still find it difficult to understand how you two work together. A man and a hamster. Fighting together. */
==Bminsc @315 /* That's what Minsc and Boo do. */
==L#FouB @316 /* I see... */
EXIT

CHAIN IF ~InParty("minsc")
See("minsc")
!StateCheck("L#Fou",CD_STATE_NOTVALID)
!StateCheck("minsc",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#Foundlingminsc","GLOBAL",1)~ THEN L#FouB MinscFound02
@317 /* ...I understand, Minsc, but does he really fight? Can Boo fight? */
DO ~SetGlobal("L#Foundlingminsc","GLOBAL",2)~
== BMinsc @318 /* Of course! He is as brave as Minsc, and even more accurate when it comes to deadly blows! He's really talented and he can find weak points and blind spots as no one else can! */
== BEdwin IF ~InParty("EDWIN") !StateCheck("EDWIN",CD_STATE_NOTVALID)~ THEN @319 /* So maybe ask this creature to find your sanity, foolish barbarian. That would do us more good than the support of that dirty rodent! */
== BMinsc IF ~InParty("EDWIN") !StateCheck("EDWIN",CD_STATE_NOTVALID)~ THEN @320 /* I warn you, Red Wizard. Boo has sharp ears and he can hear you. */
== BMinsc @321 /* Boo may look like a small furry creature, but he would kill a dragon if he wanted to! */
== L#FouB @322 /* The thing is that I can't remember a single battle when he actually fought anyone. */
== Bminsc @323 /* Maybe you didn't look close enough, my friend! */
== L#FouB @324 /* Probably. */
== BJaheir IF ~InParty("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @325 /* No matter how many times you ask him these questions, he'll always tell you about Boo's prowess. That's how he is. */
== L#FouB IF ~InParty("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @326 /* And you don't mind it at all? */
== BJaheir IF ~InParty("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @327 /* No. I think we've all grown used to our unusual companion. */
== L#FouB IF ~InParty("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @328 /* I didn't know that <CHARNAME>'s group was this... unusual. */
== BJaheir IF ~InParty("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @329 /* You'll get used to it eventually, Foundling. */
EXIT
 

////Nalia

CHAIN IF ~InParty("nalia")
See("nalia")
!StateCheck("nalia",CD_STATE_NOTVALID)
!StateCheck("L#Fou",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#Foundlingnalia","GLOBAL",0)~ THEN L#FouB NaliaFound01
@330 /* You seem nervous. */
DO ~SetGlobal("L#Foundlingnalia","GLOBAL",1)~
== BNalia @331 /* Excuse me? What--what did you say? */
== L#FouB @332 /* I said that you seem nervous. */
== BNalia @333 /* It's nothing. It's not a matter that would concern you. I was thinking about--about my father. */
== L#FouB @334 /* Indeed, it doesn't concern me. Why does it absorb you that much? */
== BNalia @335 /* He was murdered--I think it's obvious it may concern me and my whole family. */
== L#FouB @336 /* And that's all? */
== BNalia @337 /* Yes--that's...that's all. */
EXIT

CHAIN IF ~InParty("nalia")
See("nalia")
!StateCheck("nalia",CD_STATE_NOTVALID)
!StateCheck("L#Fou",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#Foundlingnalia","GLOBAL",1)~ THEN L#FouB NaliaFound02
@338 /* You seem to be nervous again, Nalia. */
DO ~SetGlobal("L#Foundlingnalia","GLOBAL",2)~
== L#FouB @339 /* I have a feeling that you're not telling me something. It's not a matter of your father, is it? */
== BNalia @340 /* It's not that. It's also because of my father, but--there's something more. It's about you. I feel uncomfortable when adventuring with someone who can control those... bizarre and dark powers. */
== L#FouB @341 /* Indeed, they're dark, but they're not that bizarre. Some get power from the Weave, while others may have access to different sources. */
== BNalia @342 /* I don't trust those other sources. The Shadow Weave seems so... cold. */
== BNalia @343 /* It gives me this strange feeling. And it doesn't seem right. */
== L#FouB @344 /* It's just different. I suppose you are afraid of something that's unfamiliar. You will get used to me and Shadow Weave magic in time. */
== BNalia @345 /* I don't think so. */
EXIT

////Valygar

CHAIN IF ~InParty("valygar")
See("valygar")
!StateCheck("valygar",CD_STATE_NOTVALID)
!StateCheck("L#Fou",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#Foundlingvalygar","GLOBAL",0)~ THEN L#FouB ValygarFound01
@346 /* You must be good at setting the appropriate snares and luring your prey to them, Valygar. Have you hunted down many animals?  */
DO ~SetGlobal("L#Foundlingvalygar","GLOBAL",1)~
== BValyga @347 /* I'm not a poacher, shadow. */
== L#FouB @348 /* Nor am I a shadow. */
== BValyga @349 /* You create shadows. You know how to perform deadly gambits. Just as the Shade Lord did. */
== L#FouB @350 /* But I don't use it the way he did. I help our group. */
== BValyga @351 /* Keep using your dark magic and you'll become as warped as he was. */
EXIT

CHAIN IF ~InParty("valygar")
See("valygar")
!StateCheck("valygar",CD_STATE_NOTVALID)
!StateCheck("L#Fou",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#Foundlingvalygar","GLOBAL",1)~ THEN L#FouB ValygarFound02
@352 /* So? Are you still trying to make stories about me being like the Shade Lord, Valygar, or have you found some sanity in that skull of yours? */
DO ~SetGlobal("L#Foundlingvalygar","GLOBAL",2)~
== BValyga @353 /* I won't change my words for I know what I'm talking about, Foundling. You are not an innocent adept of magic--if something like that *ever* existed. */
== L#FouB @354 /* How can you tell? Maybe you don't only make up stories--perhaps you can read minds, as well? */
== BValyga @355 /* I don't need to read your mind to tell that your arcane powers are even worse than the ones used by the usual mages or Cowled Wizards. */
== L#FouB @356 /* So you must know quite a bit about magical energy, then. */
== BValyga @357 /* It's not your business. */
EXIT

////Viconia

CHAIN IF ~InParty("L#Fou")
See("L#Fou")
!StateCheck("viconia",CD_STATE_NOTVALID)
!StateCheck("L#Fou",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#Foundlingviconia","GLOBAL",0)~ THEN BViconi ViconiaFound01
@358 /* So, barra, what is it like? */
DO ~SetGlobal("L#Foundlingviconia","GLOBAL",1)~
== L#FouB @359 /* What is what? */
== BViconi @360 /* The home of all shadows, of course. The only place where Shar could feel at home: a place with no cursed sun in the sky. */
== L#FouB @361 /* It seems you know *something* already, but there is much more to it. */
== L#FouB @362 /* Almost everything differs somewhere, but indeed--the most significant difference is the lack of this... blinding sphere, the lack of stars or moon. And everything is less vivid. More... faded. */
== BViconi @363 /* It seems much better than the Surface. But I know it must differ even more. Tell me more, male. */
== L#FouB @364 /* I'm not sure how to... well, fire--both magical and natural--is more cold. There are fewer travelers, but you can encounter some maybe once a year, if you're lucky enough. Some of them ended up there because of the shadow quakes. */
== BCernd IF ~InParty("CERND") !StateCheck("CERND",CD_STATE_NOTVALID)~ THEN @365 /* So it's even more different than I thought: it sounds more like a night terror than a place of Nature. */
== BVICONI IF ~InParty("CERND") !StateCheck("CERND",CD_STATE_NOTVALID)~ THEN @366 /* No one told you to listen, foolish druid. Go back to your flowers and brews--let the dark ones talk. */
== BViconi @367 /* Speak more clearly if you want my attention, barra. What are shadow quakes? */
== L#FouB @368 /* It's... well, when there is a shadow quake, everything shakes and trembles. Earth, trees, or magic. It can disturb those who use the Shadow Walk spell--they may be thrown days off-course or walk farther than they intended to travel. */
== L#FouB @369 /* And some of them may be imprisoned in there. */
== BViconi @370 /* These fools must have underestimated the power of shadows. */
== L#FouB @371 /* I think it's more a lack of fortune--I'm not sure if anyone can predict the shadow quakes. */
== BViconi @372 /* I have heard enough. */
== BViconi @373 /* You managed to interest me, but now I wish to move on. My legs are getting numb. */
EXIT

CHAIN IF ~InParty("L#Fou")
See("L#Fou")
!StateCheck("viconia",CD_STATE_NOTVALID)
!StateCheck("L#Fou",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#Foundlingviconia","GLOBAL",1)~ THEN BViconi ViconiaFound02
@374 /* So, barra, you were a gift to Shar, yes? She deserves more than a poor rothe like you. */
DO ~SetGlobal("L#Foundlingviconia","GLOBAL",2)~
== L#FouB @375 /* That's what you wanted to tell me? That I'm not good enough for Shar? Maybe. Maybe not. I might have been given to her, but it seems I wasn't fully taken. */
== BViconi @376 /* It seems she knew your value. But I am surprised that she even let you live. I suppose she knew you would become a servant and decided that was a suitable role for a weak male such as you. */
== BViconi @377 /* Indeed, you're no good. I've met smarter than you, stronger than you. And I doubt you would do as an appropriate mate, either. You're almost worthless. */
== L#FouB @378 /* Almost worthless? */
== BViconi @379 /* Take it as a compliment, but at least you're not obsessed like the mad men who tried to kill me. And you can do as a mule, barra. */
== L#FouB @380 /* A mule? Hardly--you said that I'm not strong enough, and indeed, I think I can be of greater purpose than carrying trash. */
== BViconi @381 /* And that is? */
== L#FouB @382 /* I can learn and surpass the confident ones. */
== BViconi @383 /* Struggle, if you want. I will eagerly observe how you "get better". */
EXIT

////Yoshimo

CHAIN IF ~InParty("yoshimo")
See("yoshimo")
!StateCheck("yoshimo",CD_STATE_NOTVALID)
!StateCheck("L#Fou",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#Foundlingyoshimo","GLOBAL",0)~ THEN L#FouB YoshiFound01
@384 /* Your traps are really effective. Most of them wouldn't be useful with huge creatures like... the Shadow Dragon, for example. But still, they serve the purpose in most situations. */
DO ~SetGlobal("L#Foundlingyoshimo","GLOBAL",1)~
== BYoshim @385 /* Ah, my dark friend, I thank you for your kind words, but even though I know how to set some mousetraps, I would rather try some other ways of getting the mouse. */
== L#FouB @386 /* Is that so? Does that mean you're not satisfied with your snares? */
== BYoshim @387 /* Ha! I am satisfied with them, but even though they may help to catch the mouse, I prefer to use the cheese, without the deadly mechanism part. */
== BYoshim @388 /* In other words, I prefer to use less bloody methods, like considering what my prey wants or just... observing the mouse. */
== L#FouB @389 /* So you must be a good hunter, if you can catch the "mice" even without the bait. */
== BYoshim @390 /* Ah, it seems I'm blessed with some fortune--I got some compliments even though I wasn't fishing for them. */
== BYoshim @391 /* But I suppose we should move on before the mice run away. */
EXIT

CHAIN IF ~InParty("yoshimo")
See("yoshimo")
!StateCheck("yoshimo",CD_STATE_NOTVALID)
!StateCheck("L#Fou",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#Foundlingyoshimo","GLOBAL",1)~ THEN L#FouB YoshiFound02
@392 /* Why do you look different? I mean, your skin, eyes and hair are different than that of most of the people here. */
DO ~SetGlobal("L#Foundlingyoshimo","GLOBAL",2)~
== BYoshim @393 /* That is because I'm not from here, Foundling. I'm from a distant land--Kozakura, in Kara-Tur. Most people of Kozakura look as I do. */
== BYoshim @394 /* Hehe, I might say that I look unique. */
== L#FouB @395 /* Koza...? */
== BYoshim @396 /* Kozakura of the Shining East. */
== L#FouB @397 /* So most men of Kozakura look like you? */
== BYoshim @398 /* Well, yes, I suppose, but only if we consider the way we look, of course!  When it comes to personality, you won't find many like the great Yoshimo! */
== L#FouB @399 /* So this place must seem strange to you. */
== BYoshim @400 /* Ah, I have seen many bizarre things and people in my life, my friend, so I am not surprised easily; this place seems as strange as Kozakura itself! */
== L#FouB @401 /* Hmm... you seem to be like a dog with no house. */
== BYoshim @402 /* Hmm, why so? */
== L#FouB @403 /* You're not one of these people, and you left your home. I suppose you've got no place to go. */
== BYoshim @404 /* Well, it seems we're both dogs, then. */
EXIT
