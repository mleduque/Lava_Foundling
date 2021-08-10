BEGIN L#Fou25J

////////////////////////////////
//////////CREATE BLADE//////////
////////////////////////////////

CHAIN IF ~Global("L#SMITH","LOCALS",1)~ THEN L#Fou25J CREATE00
@0 /* (Once in a lifetime, a shadow adept can create a magic blade.  Its power depends on the current power of the caster.  Do you want to create the blade now?) */
END
IF~~THEN REPLY @1 /* Yes. */ DO ~SetGlobal("L#SMITH","LOCALS",2)~ EXIT
IF~~THEN REPLY @2 /* No. */ DO ~SetGlobal("L#SMITH","LOCALS",0)~ EXIT



/////////////////////////////
////////ADVENTURING//////////
/////////////////////////////

CHAIN IF ~Global("L#FouToBTimeredTalk","GLOBAL",2)~ THEN L#Fou25J Adventure000
@3 /* New troubles.  You always find them.  But I think one day even you will just finish everything and hit a moment when there's nothing else. */ 
== KORGA25J IF ~InParty("KORGAN") !StateCheck("KORGAN",CD_STATE_NOTVALID)~ THEN @4 /* Ye always find som' heads t'smash!  Ye never run out of fools, har har! */
== L#Fou25J IF ~InParty("KORGAN") !StateCheck("KORGAN",CD_STATE_NOTVALID)~ THEN @5 /* There's always an end, Korgan.  There are no everlasting things. */
END
IF~~THEN REPLY @6 /* With my luck I'll never hit that kind of moment, Foundling.  There's always something trying to start a war or kill me. */ EXTERN L#Fou25J Adventure001
IF~~THEN REPLY @7 /* I would like that to happen, actually.  I've been a quiet <PRO_RACE> before.  It would be good to have a rest and just... do nothing. */ EXTERN L#Fou25J Adventure002
IF~~THEN REPLY @8 /* Ha!  I hope it's never going to end!  I can't imagine my life without all this hassle and rush! */ EXTERN L#Fou25J Adventure003

CHAIN L#Fou25J Adventure001
@9 /* I suppose you know it well. */
== L#Fou25J IF ~InParty("SAREVOK") !StateCheck("SAREVOK",CD_STATE_NOTVALID)~ THEN @10 /* ...Don't you, Sarevok? */
== SAREV25J IF ~InParty("SAREVOK") !StateCheck("SAREVOK",CD_STATE_NOTVALID)~ THEN @11 /* If you think you can bother me with your insinuations, mage, then you're wrong. */
EXTERN L#Fou25J Adventure004

CHAIN L#Fou25J Adventure002
@12 /* Nothing?  That would be different.  To just do nothing. */
EXTERN L#Fou25J Adventure004

CHAIN L#Fou25J Adventure003
@13 /* You like it, after all. */
EXTERN L#Fou25J Adventure004

CHAIN L#Fou25J Adventure004
@14 /* I am thinking what I'm going to do when this everything is over.  Or if you're dead.  This place and its sun are not for me, I can never get used to the glow, to illogical behaviors or so many people, the urge to have sex, procreate, make families, seek fame... */
END
IF~~THEN REPLY @15 /* When I'm dead?  Oh, thank you!  That was sooo encouraging. */ EXTERN L#Fou25J Adventure005
IF~~THEN REPLY @16 /* I still can't understand why you don't want to settle down and just be with a woman or man.  Whoever you want. */ EXTERN L#Fou25J Adventure006
IF~~THEN REPLY @17 /* You don't need to be with anyone.  You wish to be alone--you can be alone here.  Just work and find power, if that's what you want. */ EXTERN L#Fou25J Adventure007
IF~~THEN REPLY @18 /* You can stay with me, if you want.  I... like you.  Maybe I can just show you that closure isn't that bad.  That it has sense. */ EXTERN L#Fou25J Adventure008
IF~~THEN REPLY @19 /* I don't want to talk right now.  I think we should move on. */ EXTERN L#Fou25J Adventure009

CHAIN L#Fou25J Adventure005
@20 /* There is a relative chance that you'll die.  You're not immortal, nor am I. */
EXTERN L#Fou25J Adventure010

CHAIN L#Fou25J Adventure006
@21 /* I don't want to.  People do annoy me, they are driven by urges.  As I said already: most of them behave in an illogical way. */
EXTERN L#Fou25J Adventure010

CHAIN L#Fou25J Adventure007
@22 /* Power.  Power so I can never again be made a slave.  Yes, it seems a fair aim.  But there is something more that still troubles me. */
EXTERN L#Fou25J Adventure010

CHAIN L#Fou25J Adventure008
@23 /* No.  I do not seek the closure you talk about, <CHARNAME>.  You need to find someone else, not me. */
EXTERN L#Fou25J Adventure010

CHAIN L#Fou25J Adventure010
@24 /* What about the lives of your companions when you're gone?  What are they going to do when you can no longer affect their lives? */
END
IF~NumInPartyGT(2)~THEN REPLY @25 /* I have no idea.  I think you should ask them. */ EXTERN L#Fou25J Adventure01P
IF~NumInPartyLT(3)~THEN REPLY @26 /* You mean the others we travelled with before?  */ EXTERN L#Fou25J Adventure01NP
IF~~THEN REPLY @27 /* I don't want to talk about this.  We are too busy to waste our time.  Let us move on. */ EXTERN L#Fou25J Adventure009

CHAIN L#Fou25J Adventure01P
@28 /* What do you think they're going to do? */
END
IF~~THEN REPLY @29 /* I don't know but... I think they'll do quite well.  They are marvelous people.  To me, they're like a family. */ EXTERN L#Fou25J Adventure01P1
IF~~THEN REPLY @30 /* I don't want to know.  They're just my companions.  I don't care what's going to happen when we go our separate ways. */ EXTERN L#Fou25J Adventure01P2
IF~~THEN REPLY @31 /* You know, I don't think we should discuss it.  Let's move on. */ EXTERN L#Fou25J Adventure009

CHAIN L#Fou25J Adventure01P1
@32 /* I see... */
EXTERN L#Fou25J Adventure011

CHAIN L#Fou25J Adventure01P2
@33 /* So they're just tools?  I thought they meant more to you. */
EXTERN L#Fou25J Adventure011

CHAIN L#Fou25J Adventure01NP
@34 /* Yes.  They are no longer here, but you can still affect them, somehow.  Through the Fate Spirit, for example.  When you're gone completely, what's going to happen? */
END
IF~~THEN REPLY @35 /* I think they are already like a group of great individuals.  I'm sure they're doing really well. */ EXTERN L#Fou25J Adventure01NP1
IF~~THEN REPLY @36 /* I don't care what they're doing.  I don't need them anymore and rarely do I think about them. */ EXTERN L#Fou25J Adventure01NP2
IF~~THEN REPLY @37 /* I don't know.  And I don't want to talk about it. */ EXTERN L#Fou25J Adventure009

CHAIN L#Fou25J Adventure01NP1
@38 /* Hmm, you must really believe in their decisions and character, then. */
EXTERN L#Fou25J Adventure011

CHAIN L#Fou25J Adventure01NP2
@39 /* So they were nothing else, but tools. */
EXTERN L#Fou25J Adventure011

CHAIN L#Fou25J Adventure011
@40 /* I would like to know more about how you see your own future.  Something more than you already told me. */
END
IF~~THEN REPLY @41 /* I hope to just... be with someone I love.  I want to dedicate my life to a real relationship.  I want us to be free to go on an adventure, if we wish to, but also to have a home where we can go return together. */ EXTERN L#Fou25J Adventure012
IF~~THEN REPLY @42 /* I want gold.  I want fame.  I want everyone to know my name, the name of a Bhaalspawn.  I'm not your usual mortal, but a demi-god.  I would like to become better than others. */ EXTERN L#Fou25J Adventure012
IF~~THEN REPLY @43 /* I would like to start a business, I guess.  A tavern or a shop, probably something like Adventurer's Mart.  Ah, that would be something! */ EXTERN L#Fou25J Adventure012
IF~~THEN REPLY @44 /* I just want to adventure, nothing more.  I want quests, I want to feel the thrill. */ EXTERN L#Fou25J Adventure012
IF~~THEN REPLY @45 /* I don't want to talk about this.  Let us move on, fine? */ EXTERN L#Fou25J Adventure009

CHAIN L#Fou25J Adventure012
@46 /* Your plans seem shaped. */
END
IF~~THEN REPLY @47 /* You can shape your plans, too. */ EXTERN L#Fou25J Adventure013
IF~~THEN REPLY @48 /* I don't think we should discuss it any longer. */ EXTERN L#Fou25J Adventure009

CHAIN L#Fou25J Adventure013
@49 /* I thought I said it before: I don't think I belong to this place. */
END
IF~~THEN REPLY @50 /* Take your time--there is still some work to do and I'm not going anywhere. */ EXTERN L#Fou25J Adventure014
IF~~THEN REPLY @51 /* Be strong.  You are a powerful mage.  You can do whatever you want. */ EXTERN L#Fou25J Adventure015
IF~~THEN REPLY @52 /* However it is, we can't spend any more time on talking.  Come, we should move on. */ EXTERN L#Fou25J Adventure009
IF~Global("L#BACKSHADOW","GLOBAL",0)~THEN REPLY @53 /* Maybe you should consider a return to the Plane of Shadows? */ DO ~SetGlobal("L#BACKSHADOW","GLOBAL",1)~ EXTERN L#Fou25J Adventure016

CHAIN L#Fou25J Adventure014
@54 /* I should just ignore it.  I suppose wondering about the future isn't worth it.  Many unexpected issues may arise. */
DO ~SetGlobal("L#FouToBTimeredTalk","GLOBAL",3)~ EXIT

CHAIN L#Fou25J Adventure015
@55 /* You may be right.  The future isn't worth being bothered about.  Not right now. */
DO ~SetGlobal("L#FouToBTimeredTalk","GLOBAL",3)~ EXIT

CHAIN L#Fou25J Adventure016
@56 /* Maybe.  Maybe that would be better.  But until we're done, the future is not worth the guessing game. */
DO ~SetGlobal("L#FouToBTimeredTalk","GLOBAL",3)~ EXIT

CHAIN L#Fou25J Adventure009
@57 /* Lead then. */
DO ~SetGlobal("L#FouToBTimeredTalk","GLOBAL",3)~ EXIT

//////////////////////////
//////HOW OLD/////////////
//////////////////////////

CHAIN IF ~Global("L#FouToBTimeredTalk","GLOBAL",5)~ THEN L#Fou25J Old000
@58 /* How old am I? */ 
END
IF~~THEN REPLY @59 /* How in the Nine Hells am I supposed to know? */ EXTERN L#Fou25J Old001
IF~~THEN REPLY @60 /* Uhm, where did that come from? */ EXTERN L#Fou25J Old001
IF~~THEN REPLY @61 /* Why? */ EXTERN L#Fou25J Old001
IF~~THEN REPLY @62 /* Don't bother me with that kind of question. */ EXTERN L#Fou25J Old002

CHAIN L#Fou25J Old001
@63 /* How old do you think I am?  I'm not sure what is the exact... pattern of getting older: how puberty proceeds.  You should be more familiar with it--that's why I asked you. */
END
IF~~THEN REPLY @64 /* Hmm, you don't seem to have fully developed facial hair and you look rather young. You may be around seventeen.  Everything depends on individual progress, though. */ EXTERN L#Fou25J Old003
IF~Race(PLAYER1,HUMAN)~THEN REPLY @65 /* I don't know, I'm not sure if that can be easily reckoned, Foundling.  But you are rather young, near the end of puberty.  Probably just a bit younger than myself. */ EXTERN L#Fou25J Old003
IF~!Race(PLAYER1,HUMAN)~THEN REPLY @66 /* I don't know, I'm not sure if that can be easily reckoned, Foundling.  But you are rather young, near the end of puberty for humans. */ EXTERN L#Fou25J Old003
IF~~THEN REPLY @67 /* There are more important issues than your exact age; I think we should move on. */ EXTERN L#Fou25J Old002

CHAIN L#Fou25J Old003
@68 /* I see.  So I am young. */
END
IF~~THEN REPLY @69 /* I think we talked about your age in the context of your parents.  I thought you knew more or less how old you are. */ EXTERN L#Fou25J Old004
IF~~THEN REPLY @70 /* There are some issues that are not worth the discussion.  Saying that, I believe we should move on rather than have some disputes about your age. */ EXTERN L#Fou25J Old002
IF~~THEN REPLY @71 /* I'm not sure why you would be bothered by your age.  It doesn't really matter, in the end. */ EXTERN L#Fou25J Old005

CHAIN L#Fou25J Old004
@72 /* Just more or less.  I could be wrong, too. */
EXTERN L#Fou25J Old006

CHAIN L#Fou25J Old005
@73 /* Probably, but even so I've decided that I would like to know. */
EXTERN L#Fou25J Old006

CHAIN L#Fou25J Old006
@74 /* I remember that we talked about my parents; I know that I was below ten when I was found, but I never tried to count the time.  That would be impossible in the Plane of Shadows anyway. */
== L#Fou25J @75 /* But you've seen other males grow up so your calculations are probably more accurate. */
== L#Fou25J @76 /* As for the reason--we've killed many and I started to wonder how long I am going to live.  Will I live as long as Irenicus?  How long do humans live? */
END
IF~!InParty("LRIRENIC")~THEN REPLY @77 /* Irenicus was an elf and they live much longer than humans.  Some humans may live until they're eighty or so.  Though there are some exceptions like Elminster. */ EXTERN L#Fou25J Old007
IF~!InParty("LRIRENIC")~THEN REPLY @78 /* Oh, humans grow old differently.  They get wrinkled and slow.  Irenicus was an elf.  Not even an old elf. */ EXTERN L#Fou25J Old007
IF~InParty("LRIRENIC")~THEN REPLY @79 /* Irenicus is an elf and they live much longer than humans.  Some humans may live until they're eighty or so.  Though there are some exceptions like Elminster. */ EXTERN L#Fou25J Old007i
IF~InParty("LRIRENIC")~THEN REPLY @80 /* Oh, humans grow old differently.  They get wrinkled and slow.  Irenicus is an elf.  Not even an old elf. */ EXTERN L#Fou25J Old007i
IF~~THEN REPLY @81 /* Why would you wonder about your own time?  You're young, you're not going to die any time soon. */ EXTERN L#Fou25J Old008
IF~~THEN REPLY @82 /* You know, I think there's no point in this kind of discussion. */ EXTERN L#Fou25J Old002

CHAIN L#Fou25J Old007
@83 /* I know he was an elf. */
EXTERN L#Fou25J Old008

CHAIN L#Fou25J Old007i
@84 /* I know he is an elf. */
EXTERN L#Fou25J Old008

CHAIN L#Fou25J Old008
@85 /* We killed many men and women--young and old.  I was wondering how I'm going to end: am I going to grow old, or shall I get murdered on the road?  And how much more time do I have? */
END
IF~~THEN REPLY @86 /* Are you afraid of a possible death? */ EXTERN L#Fou25J Old009
IF~~THEN REPLY @87 /* Can't we just move on?  I'm not in a mood for discussions like this one. */ EXTERN L#Fou25J Old002

CHAIN L#Fou25J Old009
@2 /* No. */
== L#Fou25J @88 /* I don't think I change much in this world.  Even though I have become free, I live just for myself.  I help you because I have nowhere else to go, but I'm hardly an altruist. */
END
IF~~THEN REPLY @89 /* Still, you help.  If you were living for yourself you would have left me when things got tense. */ EXTERN L#Fou25J Old010
IF~~THEN REPLY @90 /* An altruist?  I'm surprised you know the meaning of the word, actually. */ EXTERN L#Fou25J Old011
IF~~THEN REPLY @91 /* I'd rather move on, than waste our time on worthless chattering. */ EXTERN L#Fou25J Old002

CHAIN L#Fou25J Old010
@92 /* ... */
==L#Fou25J @93 /* You may think too highly of me. */
EXTERN L#Fou25J Old012

CHAIN L#Fou25J Old011
@94 /* Somehow, I know. */
EXTERN L#Fou25J Old012

CHAIN L#Fou25J Old012
@95 /* Nevertheless, if I understood you correctly, I still have much time.  I hope that even though there's much time, I'll still remain on the winning side. */
DO ~SetGlobal("L#FouToBTimeredTalk","GLOBAL",6)~ EXIT

CHAIN L#Fou25J Old002
@96 /* Fine.  I don't need to talk if that bothers you. */
DO ~SetGlobal("L#FouToBTimeredTalk","GLOBAL",6)~ EXIT

///////////////////////////
/////BEAST SHIFT///////////
///////////////////////////

CHAIN IF ~Global("L#FouToBTimeredTalk","GLOBAL",8)~ THEN L#Fou25J Slayer000
@97 /* Have you grown used to the transformation into the slayer? */
== JAHEI25J IF ~InParty("JAHEIRA") !StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN @98 /* Foundling!  That's not something you should ask about!  And I seriously doubt it's something you can get used to. */
END
IF~InParty("JAHEIRA") !StateCheck("JAHEIRA",CD_STATE_NOTVALID)~THEN REPLY @99 /* I'm afraid Jaheira is right--I mean, you can ask, but that's not something you can get used to. */ EXTERN L#Fou25J Slayer001
IF~~THEN REPLY @100 /* You know, it's a really peculiar feeling and I doubt anyone could get used to it. */ EXTERN L#Fou25J Slayer001
IF~~THEN REPLY @101 /* It's not that bad.  I wouldn't call it 'pleasant', but I think it looks worse than it feels. */ EXTERN L#Fou25J Slayer002
IF~~THEN REPLY @102 /* I must admit it's a rather nice feeling.  You feel the urge grow and suddenly you know nothing can stop you. */ EXTERN L#Fou25J Slayer003
IF~~THEN REPLY @103 /* I don't want to talk about this.  I consider it personal and you won't understand the feeling, anyway. */ EXTERN L#Fou25J Slayer004

CHAIN L#Fou25J Slayer001
@104 /* Even after all the previous changes?  After you shifted in an uncontrollable manner back in Spellhold's maze?  I thought it would become more usual for you. */
EXTERN L#Fou25J Slayer005

CHAIN L#Fou25J Slayer002
@105 /* So it seems neutral.  Or natural. */
EXTERN L#Fou25J Slayer005

CHAIN L#Fou25J Slayer003
@106 /* So letting hunger take control gives you comfort, then. You let the potential of murder win. */
== SAREV25J IF ~InParty("SAREVOK") !StateCheck("SAREVOK",CD_STATE_NOTVALID)~ THEN @107 /* So, you prove that you're a Bhaalspawn, after all.  Not just with the battles you've won, but with the attitude. */
EXTERN L#Fou25J Slayer005

CHAIN L#Fou25J Slayer005
@108 /* It seems that Joneleth Irenicus did well. */
END
IF~~THEN REPLY @109 /* What?  You're not trying to say that stealing my soul was beneficial, are you?  No matter what the results, I suffered.  Suffered more than you can imagine! */ EXTERN L#Fou25J Slayer006
IF~~THEN REPLY @110 /* I'm not sure what you mean, Foundling, so if you want to say something, be more clear.  I've told you that more than once. */ EXTERN L#Fou25J Slayer006
IF~~THEN REPLY @111 /* What?!  What did he do well?!  Ripping out my soul or maybe leaving me with scars all over my body?! */ EXTERN L#Fou25J Slayer006
IF~~THEN REPLY @112 /* I don't want to talk about what happened back then, in his dungeons or in Athkatla... or even in Suldanessellar.  It's too painful. */ EXTERN L#Fou25J Slayer004

CHAIN L#Fou25J Slayer006
@113 /* He gave you power.  Even though the experiments hurt you, even though it took time, he is the one who gave you the chance to win the battles you could have lost without the change. */
== AERIE25J IF ~InParty("AERIE") !StateCheck("AERIE",CD_STATE_NOTVALID)~ THEN @114 /* But--but what he did was horrible!  Because of Irenicus many died and even more... more have suffered. */ 
== JAHEI25J IF ~InParty("JAHEIRA") !StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN @115 /* Your vision of Irenicus' doings is more than garbled, shadow adept.  Irenicus' true intention wasn't to gain <CHARNAME>'s power, but to lure <PRO_HIMHER> and steal <PRO_HISHER> soul. */
== JAHEI25J IF ~InParty("JAHEIRA") !StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN @116 /* It has nothing to do with "doing well". */
== VICON25J IF ~InParty("VICONIA") !StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN @117 /* We all know what Irenicus wanted, but without a doubt, you were given power many desire, abbil.  You shouldn't deny it. */
== NALIA25J IF ~InParty("NALIA") !StateCheck("NALIA",CD_STATE_NOTVALID)~ THEN @118 /* Many have died because of Irenicus... we shouldn't make any excuses for him now. */
== SAREV25J IF ~InParty("SAREVOK") !StateCheck("SAREVOK",CD_STATE_NOTVALID)~ THEN @119 /* He's right, <PRO_BROTHERSISTER>.  If I had that power back in Baldur's Gate, you would have died. */
== VALYG25J IF ~InParty("VALYGAR") !StateCheck("VALYGAR",CD_STATE_NOTVALID)~ THEN @120 /* Irenicus did nothing more than curse <CHARNAME> with his wicked desires and magic.  And nothing less than that. */
END
IF~~THEN REPLY @121 /* I would rather die in battle than accept the gift.  But no one asked me.  It was forced upon me, remember that. */ EXTERN L#Fou25J Slayer007
IF~~THEN REPLY @122 /* Would you accept the gift if you were me?  Would you let him experiment on you just to get some additional power? */ EXTERN L#Fou25J Slayer008
IF~~THEN REPLY @123 /* I think I'm grateful that this happened.  Now I can be less afraid of possible enemies.  And I can kill the Bhaalspawn that have become a threat. */ EXTERN L#Fou25J Slayer009
IF~~THEN REPLY @124 /* I don't think I want to continue this conversation. */ EXTERN L#Fou25J Slayer004

CHAIN L#Fou25J Slayer007
@125 /* Yes, it was, but no matter how it happened, it's better to have a chance, a gambit that can assure your survival, rather than to simply die. */
EXTERN L#Fou25J Slayer010

CHAIN L#Fou25J Slayer008
@126 /* Yes.  I would.  Some pain would be better than a feeling that I am weaker than I could be, that I may lose my life because of that.  Or that I may become someone's prisoner again. */
EXTERN L#Fou25J Slayer010

CHAIN L#Fou25J Slayer009
@127 /* Good.  You should be grateful--even if others say that you shouldn't, that you have a monster inside you, they can't know how it feels.  It is your key to victory and survival. */
EXTERN L#Fou25J Slayer010

CHAIN L#Fou25J Slayer010
@128 /* You need to control the beast, but once you have nothing to lose... */
END
IF~~THEN REPLY @129 /* Aren't you afraid that I may kill you when I'm in that form?  That I may lose control and become unstoppable? */ EXTERN L#Fou25J Slayer011
IF~~THEN REPLY @130 /* You know, I think I tire of this talk.  I think I don't want to talk more about my heritage or Irenicus, so let us move on. */ EXTERN L#Fou25J Slayer004

CHAIN L#Fou25J Slayer011
@131 /* It could happen anyway.  If I die because I encounter someone more powerful than myself, I am the only one to blame.  All I can do is make sure I have enough power to make it till the end. */
END
IF~~THEN REPLY @132 /* That sounds rather demanding.  I hope this philosophy of yours won't become your weakness, Foundling. */ EXTERN L#Fou25J Slayer012
IF~~THEN REPLY @133 /* Quite sane.  I suppose you're right--we are the ones responsible for winning battles. */ EXTERN L#Fou25J Slayer013
IF~~THEN REPLY @134 /* I see.  Well, I think that's all I wanted to say, so now let us move on. */ EXTERN L#Fou25J Slayer004

CHAIN L#Fou25J Slayer012
@135 /* What do you mean? */
END
IF~~THEN REPLY @136 /* Whoever fights monsters should see to it that in the process he does not become a monster, as well. */ EXTERN L#Fou25J Slayer014
IF~~THEN REPLY @137 /* You know... it's nothing.  I'm not sure what I wanted to say.  I think we should move on: it's getting late. */ EXTERN L#Fou25J Slayer004

CHAIN L#Fou25J Slayer013
@138 /* Exactly. */
DO ~SetGlobal("L#FouToBTimeredTalk","GLOBAL",9)~ EXIT

CHAIN L#Fou25J Slayer014
@139 /* That's the point.  There are moments when I think that being a monster would be better than being trash, a servant who can't decide on his own. */
DO ~SetGlobal("L#FouToBTimeredTalk","GLOBAL",9)~ EXIT

CHAIN L#Fou25J Slayer004
@140 /* Fine.  Let us move on. */
DO ~SetGlobal("L#FouToBTimeredTalk","GLOBAL",9)~ EXIT


//////////////////////////
////////LOVE?/////////////
//////////////////////////

CHAIN IF ~Global("L#FouToBTimeredTalk","GLOBAL",11)~ THEN L#Fou25J Love000 
@141 /* Does it make you happier? */ 
END
IF~~THEN REPLY @142 /* Does what make me happier?  You must be more precise if you want me to answer any of your questions, Foundling.  I hate guessing games. */ EXTERN L#Fou25J Love001
IF~~THEN REPLY @143 /* The answer is yes, probably, but just to make sure, let me know the rest of the question: what exactly are you asking me about? */ EXTERN L#Fou25J Love001
IF~~THEN REPLY @144 /* I have no time for this, Foundling, so better stow it already and just let us move on.  The situation is more tense than I would like it to be. */ EXTERN L#Fou25J Love002

CHAIN L#Fou25J Love001
@145 /* You seem to have found an appropriate partner.  I can see you two talk a lot and I started to think.  I wonder if everyone is to find a "match" before death comes. */
== AERIE25J IF ~InParty("AERIE") !StateCheck("AERIE",CD_STATE_NOTVALID) Global("AerieRomanceActive","GLOBAL",2)~ THEN @146 /* When you're with someone, life... life just changes.  And you become stronger. */
== JAHEI25J IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) Global("JaheiraRomanceActive","GLOBAL",2)~ THEN @147 /* No one is going to tell you what you should do or feel, Foundling, but that is the usual cycle--you find someone you can fight for. */
== VICON25J IF ~InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("ViconiaRomanceActive","GLOBAL",2)~ THEN @148 /* Maybe... maybe you should ignore him, <CHARNAME>.  It might be better, abbil. */
== ANOME25J IF ~InParty("ANOMEN") !StateCheck("ANOMEN",CD_STATE_NOTVALID) Global("AnomenRomanceActive","GLOBAL",2)~ THEN @149 /* Most do, but before it happens, you need to become a man instead of a boy or a monster.  Then you may be honored and fight for someone more than yourself. */
END
IF~~THEN REPLY @150 /* It's not a must.  There are as many goals as people.  One may seek family and love, another may be proud of his or her students, while others will look for hedonistic pleasure. */ EXTERN L#Fou25J Love003
IF~~THEN REPLY @151 /* I can talk only for myself.  I can't imagine my own life without my beloved.  It's amazing when other beings become part of your life.  It's something extraordinary. */ EXTERN L#Fou25J Love004
IF~~THEN REPLY @152 /* I'm not sure what to tell you.  You're different to most, I'm not sure if you can find someone for yourself, if that's the real question you'd like to ask. */ EXTERN L#Fou25J Love005
IF~~THEN REPLY @153 /* It's not something I would like to discuss, Foundling, so better focus on something else than that.  Just prepare some spells. Or just give me a break. */ EXTERN L#Fou25J Love002

CHAIN L#Fou25J Love003
@154 /* So there is no scheme for this?  It is even more complicated than I thought it was. */
== IMOEN25J IF ~InParty("IMOEN2") !StateCheck("IMOEN",CD_STATE_NOTVALID)~ THEN @155 /* It's the first time I've heard someone asking for a scheme of life...  Ya just need to think it over.  And there is a chance that the world will just surprise ya with its own plan. */
EXTERN L#Fou25J Love006

CHAIN L#Fou25J Love004
@156 /* It sounds so illogical... */
== AERIE25J IF ~InParty("AERIE") !StateCheck("AERIE",CD_STATE_NOTVALID) Global("AerieRomanceActive","GLOBAL",2)~ THEN @157 /* I... thank you, <CHARNAME>. For what you said. */
== JAHEI25J IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) Global("JaheiraRomanceActive","GLOBAL",2)~ THEN @158 /* Then you two become more than just companions.  You know you can trust each other. */
== VICON25J IF ~InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("ViconiaRomanceActive","GLOBAL",2)~ THEN @159 /* <CHARNAME>!  Cease this idle chatter they'll think I'm some kind of... "girl in love". */
== VICON25J IF ~InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("ViconiaRomanceActive","GLOBAL",2)~ THEN @160 /* I... I don't want to listen to this.  Talk if you must, I shall leave you and prepare my spells! */
== ANOME25J IF ~InParty("ANOMEN") !StateCheck("ANOMEN",CD_STATE_NOTVALID) Global("AnomenRomanceActive","GLOBAL",2)~ THEN @161 /* It's an honor to serve you with my shield and weapon, my love.  But I doubt this creature can understand it. */
EXTERN L#Fou25J Love006

CHAIN L#Fou25J Love005
@162 /* Find someone?  I don't think that's what I seek. */
== ANOME25J IF ~InParty("ANOMEN") !StateCheck("ANOMEN",CD_STATE_NOTVALID) Global("AnomenRomanceActive","GLOBAL",2)~ THEN @163 /* I'm not surprised.  Only your heart can compare with the blackness of your mind, Foundling. */
EXTERN L#Fou25J Love006

CHAIN L#Fou25J Love006
@164 /* I would never think about all of this if it wasn't because of you.  It makes me feel weird. */
== L#Fou25J @165 /* To me, you were always the strange one: the Bhaalspawn, the being tangled with plots and plans.  But then you found someone.  Now... now it looks like I'm the different one here.  I don't like it. */
== HAERD25J IF ~InParty("HAERDALIS") !StateCheck("HAERDALIS",CD_STATE_NOTVALID)~ THEN @166 /* So, the Foundling has heard the song of this Plane, after all!  Ah, I tell you, I know no other place that can be as easily changed--no other place than the First Plane. */
== MAZZY25J IF ~InParty("MAZZY") !StateCheck("MAZZY",CD_STATE_NOTVALID)~ THEN @167 /* You don't like feeling strange?  No one seems to like that.  I must admit that I am surprised that you can be bothered by something like that, though. */
END
IF~~THEN REPLY @168 /* So you are troubled with the circumstances, after all.  Why? */ EXTERN L#Fou25J Love007
IF~~THEN REPLY @169 /* These are difficult topics to discuss.  I don't want to talk about all these matters with you, Foundling. */ EXTERN L#Fou25J Love002
IF~Gender(Player1,MALE) OR(5) GlobalGT("SolaTalk","GLOBAL",14) Global("NathRomanceActive","GLOBAL",2) Global("FHFarenRomanceActive","GLOBAL",2) Global("LK#ArathRomanceActive","GLOBAL",2) Global("L7TsukiSexActive","GLOBAL",1)~THEN REPLY @170 /* There's nothing bad about feeling weird.  I felt so--a bit--when I, while being a man, started to... live with another man.  But now it feels right. */ EXTERN L#Fou25J Love008
IF~Gender(Player1,FEMALE) OR(5) Global("rh#IsraRomanceActive","GLOBAL",2) Global("ChloeRomanceActiveCR","GLOBAL",2) Global("SarahRomanceActive","GLOBAL",2) Global("T#DaceRomanceActive","GLOBAL",2) Global("SimeRomanceActive","GLOBAL",2)~THEN REPLY @171 /* There's nothing bad about feeling weird.  I felt so--a bit--when I, while being a woman, started to... live with another girl.  But now it feels right. */ EXTERN L#Fou25J Love008
IF~~THEN REPLY @172 /* Just stop bothering yourself with insignificant issues.  There are more important things than love.  You are who you are. */ EXTERN L#Fou25J Love009
IF~~THEN REPLY @173 /* Stop acting like a girl!  Just let us move on--oh, and don't bother me about love and stuff like that! */ EXTERN L#Fou25J Love002

CHAIN L#Fou25J Love007
@174 /* I do not know. */
EXTERN L#Fou25J Love010

CHAIN L#Fou25J Love008
@175 /* In your situation it's even more abstract--it's not about the procreation, but only because you feel like being in that kind of relationship.  Or at least that's how I see it.  I can't understand it at all. */
EXTERN L#Fou25J Love010

CHAIN L#Fou25J Love009
@176 /* You say so, but after all you are the one in a relationship. */
EXTERN L#Fou25J Love010

CHAIN L#Fou25J Love010
@177 /* If you are with your beloved, if you can be with someone--what about me?  I still ask: What is my purpose? */
END
IF~~THEN REPLY @178 /* You still think of it in pragmatic terms--the purpose isn't a must.  The chance of living your life as you want is what really matters. */ EXTERN L#Fou25J Love011
IF~~THEN REPLY @179 /* I don't know and I don't want to know, Foundling.  I'm not you and I don't want to focus on your life.  I have my own. */ EXTERN L#Fou25J Love011
IF~~THEN REPLY @180 /* I don't care.  And you know what?  I am fed up with your issues, so give me a break. I am too busy to listen to all of this. */ EXTERN L#Fou25J Love002
IF~~THEN REPLY @181 /* It may be difficult to find the answer... */ EXTERN L#Fou25J Love011

CHAIN L#Fou25J Love011
@92 /* ... */
== L#Fou25J @182 /* This answer is not enough... */
END
IF~~THEN REPLY @183 /* I'm sorry, but I just can't help you.  But look--you've made a friend.  You saved many.  You are no longer as cold as you were before.  Just keep that in mind and everything's going to be fine.  Everyone changes.  So does Foundling. */ EXTERN L#Fou25J Love012
IF~Global("L#BLACKSMITH","GLOBAL",0) OR(6) PartyHasItem("L#SBSW1") PartyHasItem("L#SBSW2") PartyHasItem("L#SBSW3") PartyHasItem("L#SBSW4") PartyHasItem("L#SBSW5") PartyHasItem("L#SBSW6")~THEN REPLY @184 /* But hey--you made a splendid weapon.  I know that maybe you're not into metallurgy, but maybe one day you can do more magical items?  Or become a blacksmith?  You don't need to be with anyone--you can become a craftsman and make beautiful things. */ DO ~SetGlobal("L#BLACKSMITH","GLOBAL",1)~ EXTERN L#Fou25J Love013
IF~~THEN REPLY @185 /* Whatever. Just think about it on your own -- and in silence.  I'm too busy for this. */ EXTERN L#Fou25J Love002
IF~~THEN REPLY @186 /* I am sure that one day you will change and find someone.  Everyone does. */ EXTERN L#Fou25J Love014
IF~!Global("L#BACKSHADOW","GLOBAL",1)~THEN REPLY @187 /* Maybe when all of this is over, after all the Bhaalspawn are stopped, perhaps you should return to the Shadow Plane?  Maybe that was your real home, after all? */ DO ~SetGlobal("L#BACKSHADOW","GLOBAL",1)~ EXTERN L#Fou25J Love015

CHAIN L#Fou25J Love012
@188 /* I need to think about it. */
DO ~SetGlobal("L#FouToBTimeredTalk","GLOBAL",12)~ EXIT

CHAIN L#Fou25J Love013
@189 /* I'm not sure if that's for me, but I may think about it. */
DO ~SetGlobal("L#FouToBTimeredTalk","GLOBAL",12)~ EXIT


CHAIN L#Fou25J Love014
@190 /* I'm not everyone, though. */
DO ~SetGlobal("L#FouToBTimeredTalk","GLOBAL",12)~ EXIT

CHAIN L#Fou25J Love015
@191 /* Maybe. */
DO ~SetGlobal("L#FouToBTimeredTalk","GLOBAL",12)~ EXIT

CHAIN L#Fou25J Love002
@192 /* Fine.  I won't bother you. */
DO ~SetGlobal("L#FouToBTimeredTalk","GLOBAL",12)~ EXIT
 
//////////////////////////
///////SARADUSH///////////
//////////////////////////

CHAIN IF ~Global("L#FouSaradushTalk","GLOBAL",2)~ THEN L#FOU25J Saradush000
@193 /* They all died.  Even though you--we tried to stop the slaughter. */ 
== NALIA25J IF ~InParty("NALIA") !StateCheck("NALIA",CD_STATE_NOTVALID)~ THEN @194 /* I can't believe it happened.  So many innocent people just... killed without a real reason. */
== SAREV25J IF ~InParty("SAREVOK") !StateCheck("SAREVOK",CD_STATE_NOTVALID)~ THEN @195 /* It's not the first time a war has eradicated the weak. */
END
IF~~THEN REPLY @196 /* You actually care about that?  I thought they would be just another "pebble on the road" for you. */ EXTERN L#FOU25J Saradush001
IF~~THEN REPLY @197 /* There are just some... things that can't be stopped.  No matter how much we try. */ EXTERN L#FOU25J Saradush002
IF~~THEN REPLY @198 /* I don't want to talk about this. */ EXTERN L#FOU25J Saradush003
IF~~THEN REPLY @199 /* I... I thought we would succeed... */ EXTERN L#FOU25J Saradush002

CHAIN L#FOU25J Saradush001
@2 /* No. */
EXTERN L#FOU25J Saradush002

CHAIN L#FOU25J Saradush002
@200 /* They shouldn't have died.  I'm not sure why, but I think they should have stayed alive. */
END
IF~~THEN REPLY @201 /* You think?  I believe it's not something you think, but something you "feel".  You can't just know who should be alive and who may as well die, Foundling. */ EXTERN L#FOU25J Saradush004
IF~~THEN REPLY @202 /* I know, okay?  Just... stop saying that, it can do us no good.  We just need to remember... that we did everything we could. */ EXTERN L#FOU25J Saradush005
IF~~THEN REPLY @203 /* I don't care if they're dead or not.  Our goal is to survive, not to make sure every single bug on the way will greet the next day. */ EXTERN L#FOU25J Saradush006
IF~~THEN REPLY @204 /* I just... don't want to talk about it. */ EXTERN L#FOU25J Saradush003

CHAIN L#FOU25J Saradush004
@205 /* Feel?  Maybe.  Maybe that's a better word. */
EXTERN L#FOU25J Saradush007

CHAIN L#FOU25J Saradush005
@206 /* Remember?  We should remember that people died because of us being too late. */
EXTERN L#FOU25J Saradush007

CHAIN L#FOU25J Saradush006
@207 /* Indeed, we are those who must survive and we did after all.  It seems we are just stronger than they were. */
EXTERN L#FOU25J Saradush007

CHAIN L#FOU25J Saradush007
@208 /* I don't want to think about this, but the thought came on its own.  They were weaker, they tried to struggle, but they stood no chance in a battle with an army of warriors, giants, and a Bhaalspawn. */
= @209 /* We should have known that would happen soon. */
END
IF~~THEN REPLY @210 /* I think that you may be blaming yourself.  You may have spent your whole life in the Shadow Plane, but you're not a machine. */ EXTERN L#FOU25J Saradush008
IF~~THEN REPLY @211 /* You shouldn't trouble yourself.  We've seen more than one death, it's nothing extraordinary.  We can do nothing but get used to it. */ EXTERN L#FOU25J Saradush009
IF~~THEN REPLY @212 /* You're right... we should have expected this kind of outcome. */ EXTERN L#FOU25J Saradush010
IF~~THEN REPLY @213 /* I just don't want to talk about this, understood?  We should move on. */ EXTERN L#FOU25J Saradush003

CHAIN L#FOU25J Saradush008
@214 /* I don't want it.  I'm not on the losing side, why should I care that much, then? */
== MAZZY25J IF ~InParty("MAZZY") !StateCheck("MAZZY",CD_STATE_NOTVALID)~ THEN @215 /* It seems you're a human, after all, Foundling.  Maybe that can wake your conscience. */
EXTERN L#FOU25J Saradush011

CHAIN L#FOU25J Saradush009
@216 /* It's not even a matter of getting used to it.  We all should know that people die.  That mortals die. */
== JAHEI25J IF ~InParty("JAHEIRA") !StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN @217 /* Not all of them deserve to die in a pointless skirmish, though, Foundling. */
EXTERN L#FOU25J Saradush011

CHAIN L#FOU25J Saradush010
@1 /* Yes. */
EXTERN L#FOU25J Saradush011

CHAIN L#FOU25J Saradush011
@218 /* I will just try to forget about Saradush.  We won't get back there anyway.  We can't change the past and even if we could, why should we. */
END
IF~~THEN REPLY @219 /* I know you won't forget about something like that.  You have changed. */ EXTERN L#FOU25J Saradush012
IF~~THEN REPLY @220 /* There's no point in remembering all of this.  We should move forward; the past shouldn't slow us down. */ EXTERN L#FOU25J Saradush013
IF~~THEN REPLY @221 /* I... I think we've talked long enough.  Let us move on. */ EXTERN L#FOU25J Saradush003

CHAIN L#FOU25J Saradush012
@222 /* I think you don't know me, after all. */
DO ~SetGlobal("L#FouSaradushTalk","GLOBAL",3)~ EXIT

CHAIN L#FOU25J Saradush013
@223 /* I think you're right. */
DO ~SetGlobal("L#FouSaradushTalk","GLOBAL",3)~ EXIT

CHAIN L#FOU25J Saradush003
@224 /* Yes, let's go. */
DO ~SetGlobal("L#FouSaradushTalk","GLOBAL",3)~ EXIT

////////////////////////////
////SHADOW DRAGON SKILLS////
////////////////////////////

CHAIN IF ~Global("L#FouSkillTalk","GLOBAL",2) Global("L#FOUDRA","LOCALS",1)~ THEN L#Fou25J Skill000
@225 /* I didn't know I would end up with powers similar to those of my former master. */
END
IF~~THEN REPLY @226 /* Is it bad? */ EXTERN L#Fou25J Skill001
IF~~THEN REPLY @227 /* You mean like the breath of the shadow dragon?  Now you are no worse than the beast that imprisoned you. */ EXTERN L#Fou25J Skill002
IF~~THEN REPLY @228 /* You're becoming like a beast yourself.  Is that really what you wanted? */ EXTERN L#Fou25J Skill003
IF~~THEN REPLY @229 /* Whatever.  You just got some new powers, there's nothing unusual about this so just let us move on, okay? */ EXTERN L#Fou25J Skill004

CHAIN L#Fou25J Skill001
@2 /* No. */
EXTERN L#Fou25J Skill005

CHAIN L#Fou25J Skill002
@230 /* No worse, indeed. */
== VALYG25J IF ~InParty("VALYGAR") !StateCheck("VALYGAR",CD_STATE_NOTVALID)~ THEN @231 /* And no better than him. */
EXTERN L#Fou25J Skill005

CHAIN L#Fou25J Skill003
@232 /* All I wanted was to stay free.  With these powers I won't be imprisoned again. */
EXTERN L#Fou25J Skill005

CHAIN L#Fou25J Skill005
@233 /* Once he wanted to punish me--he was disappointed by preparations I was to look over some time before he and the Shade Lord came to this world.  He punished me by using his draining breath on me, just to heal me later. */
== L#Fou25J @234 /* He just wanted to cause me some pain, just to make sure I would remember how it feels.  And how it might feel again and again if I kept disappointing him. */
== L#Fou25J @235 /* Now he's dead and I do have the powers he had when he was still alive. */
END
IF~~THEN REPLY @236 /* You must feel satisfied, then.  You've become more powerful than he could ever be. */ EXTERN L#Fou25J Skill006
IF~~THEN REPLY @237 /* We have no time for the stories of a poor slave, Foundling, so let us move on. */ EXTERN L#Fou25J Skill004

CHAIN L#Fou25J Skill006
@238 /* It makes me feel better, that is a fact. */
END
IF~~THEN REPLY @239 /* I think that even now you are a bit afraid of your past.  That you can become overwhelmed and dominated by a creature like the Shadow Dragon or the Shade Lord. */ EXTERN L#Fou25J Skill007
IF~~THEN REPLY @240 /* It's good.  It is a kind of progress--if you want to be as powerful as an archmage, you need to be aware of your own abilities.  You need to know how powerful you are. */ EXTERN L#Fou25J Skill008
IF~~THEN REPLY @241 /* I would rather you forget about this and become more normal.  Like a human who can feel normal feelings, not just... fear, hatred and... and other things like that. */ EXTERN L#Fou25J Skill009
IF~~THEN REPLY @242 /* I don't want to discuss such nonsense, mage, so just stow it and let us move on, fine? */ EXTERN L#Fou25J Skill004

CHAIN L#Fou25J Skill007
@243 /* No, I'm not.  I fought the curse: I won't be dominated again. */
EXTERN L#Fou25J Skill010

CHAIN L#Fou25J Skill008
@244 /* It's more than "a kind of progress".  Now I'm more powerful than he was. */
EXTERN L#Fou25J Skill010

CHAIN L#Fou25J Skill009
@245 /* More normal?  I'm not going to change just to be like others of this plane. */
EXTERN L#Fou25J Skill010

CHAIN L#Fou25J Skill010
@246 /* Don't you feel better after you defeat powerful enemies and become even more powerful yourself? */
END
IF~~THEN REPLY @247 /* Well, I do, but not because I become stronger than they were; it's because they are no longer a threat to me or innocent people. */ EXTERN L#Fou25J Skill011
IF~~THEN REPLY @248 /* I do feel better, indeed.  After they die by my hand, I prove they were nothing more than weaklings, that I am the one who sets the rules. */ EXTERN L#Fou25J Skill011
IF~~THEN REPLY @249 /* I feel better, you are right.  That's how I felt when I killed your master.  Twice. */ EXTERN L#Fou25J Skill011
IF~~THEN REPLY @250 /* I don't feel any better than they.  Sometimes I feel even... worse.  With every death I become like a monster myself. */ EXTERN L#Fou25J Skill012
IF~~THEN REPLY @251 /* You know, I don't want to talk about this.  There are some limits.  Now, let us move on. */ EXTERN L#Fou25J Skill004

CHAIN L#Fou25J Skill011
@252 /* So you feel better after all.  Even though it's not always "justified", death can be satisfying. */
END
IF~~THEN REPLY @253 /* I don't think it's that easy, Foundling.  Death ends everything for one. */  EXTERN L#Fou25J Skill013
IF~~THEN REPLY @254 /* You know, it sounds horrible, but there is some truth in that statement. */ EXTERN L#Fou25J Skill014
IF~~THEN REPLY @255 /* You know, I think we should move on.  And I don't want to discuss how justified death can be. */ EXTERN L#Fou25J Skill004

CHAIN L#Fou25J Skill012
@256 /* You don't feel better?  That you appear to be the strongest link?  The unbreakable one? */
END
IF~~THEN REPLY @257 /* No.  Death is something really serious: it ends life and affects other lives. */ EXTERN L#Fou25J Skill013
IF~~THEN REPLY @258 /* I... I think I feel better, but it's a bit difficult to admit that. */ EXTERN L#Fou25J Skill014
IF~~THEN REPLY @259 /* Eh, let us move on, instead, will you? */ EXTERN L#Fou25J Skill004

CHAIN L#Fou25J Skill013
@260 /* I don't try to underestimate death.  It's bizarre how death can change so many issues.  Change slaves into masters and fill the empty hole inside one's chest. */
DO ~SetGlobal("L#FouSkillTalk","GLOBAL",3)~ EXIT

CHAIN L#Fou25J Skill014
@261 /* Power becomes a fact once you win.  Admitting that it has influence isn't wrong.  It's just speaking the truth. */
DO ~SetGlobal("L#FouSkillTalk","GLOBAL",3)~ EXIT


CHAIN L#Fou25J Skill004
@262 /* You can cut the talk easily. */
DO ~SetGlobal("L#FouSkillTalk","GLOBAL",3)~ EXIT

///////////////////////////
//////HUMAN SKILL//////////
///////////////////////////

CHAIN IF~Global("L#FouSkillTalk","GLOBAL",2) Global("L#FOUHUM","LOCALS",1)~THEN L#Fou25J HumanSkill000
@263 /* Why do ideas change? */
END
IF~~THEN REPLY @264 /* Why would you ask? */ EXTERN L#Fou25J HumanSkill001
IF~~THEN REPLY @265 /* Is everything fine?  You look pale--or rather, more pale than usual. */ EXTERN L#Fou25J HumanSkill001
IF~~THEN REPLY @266 /* It's a difficult question.  Why? */ EXTERN L#Fou25J HumanSkill001
IF~~THEN REPLY @267 /* Just give me a break.  We have no time.  Go and set up a philosopher's corner, if you need to, but we are moving. */ EXTERN L#Fou25J HumanSkill002

CHAIN L#Fou25J HumanSkill001
@268 /* Some time ago I would choose to have all the power of the Shadow Dragon so I could be better.  Stronger.  But now I prefer to be human. */
==L#Fou25J @269 /* Humans are weak.  Reckless.  Why would I be like them?  I can do better than that. */
END
IF~~THEN REPLY @270 /* I think you're wrong.  The human race is complex.  Humans aren't weak--they are more intense.  Vivid, I believe. */ EXTERN L#Fou25J HumanSkill003
IF~~THEN REPLY @271 /* I myself would choose the power, no matter what.  The power of the Shadow Dragon must be supreme. */ EXTERN L#Fou25J HumanSkill004
IF~~THEN REPLY @272 /* I myself would choose power, but even "common beings" may be strong, Foundling.  Humans are the most surprising beings, I think.  Fragile, but they can shape ages. */ EXTERN L#Fou25J HumanSkill003

CHAIN L#Fou25J HumanSkill003
@273 /* You speak highly of the human race.  There must be something: a reason. */
EXTERN L#Fou25J HumanSkill005

CHAIN L#Fou25J HumanSkill004
@274 /* Indeed, but somehow I am fine with being human. */
EXTERN L#Fou25J HumanSkill005

CHAIN L#Fou25J HumanSkill005
@275 /* Being human makes me feel stronger and more fragile.  It doesn't even make sense. */
== MAZZY25J IF ~InParty("MAZZY") !StateCheck("MAZZY",CD_STATE_NOTVALID)~ THEN @276 /* It makes sense, Foundling.  Perhaps you do not wish to see it, though. */
== VALYG25J IF ~InParty("VALYGAR") !StateCheck("VALYGAR",CD_STATE_NOTVALID)~ THEN @277 /* Pretending you feel more human does not make you one.  I think of you more as an imposter, shadow mage. */
END
IF~~THEN REPLY @278 /* I'm surprised that you used the "feel" verb.  Rarely do you use it. */ EXTERN L#Fou25J HumanSkill006
IF~~THEN REPLY @279 /* Indeed, it has no sense. */ EXTERN L#Fou25J HumanSkill007
IF~~THEN REPLY @280 /* I'm happy to hear you're feeling less... dark. */ EXTERN L#Fou25J HumanSkill008

CHAIN L#Fou25J HumanSkill006
@281 /* Indeed, but it seemed accurate. */
EXTERN L#Fou25J HumanSkill009

CHAIN L#Fou25J HumanSkill007
@282 /* ...I may need to analyze it. */
EXTERN L#Fou25J HumanSkill009

CHAIN L#Fou25J HumanSkill008
@283 /* Never have I said that I feel less dark.  I have watched this world long enough to say that many humans, elves, halflings, and others seem dark. */
EXTERN L#Fou25J HumanSkill009

CHAIN L#Fou25J HumanSkill009
@92 /* ... */
END
IF~~THEN REPLY @284 /* Do you want to say something more?  You look so... */ EXTERN L#Fou25J HumanSkill010
IF~~THEN REPLY @285 /* Well, that was kinda awkward.  I think we should move on.  Let's go. */ EXTERN L#Fou25J HumanSkill002
IF~~THEN REPLY @286 /* I think we should move on.  Come. */ EXTERN L#Fou25J HumanSkill002
IF~~THEN REPLY @287 /* Remember that there are difficult moments and quite often we ask ourselves about them and get no answers, in the beginning.  They may come later. */ EXTERN L#Fou25J HumanSkill011

CHAIN L#Fou25J HumanSkill010
@288 /* No.  It's nothing.  I just want to move on. */
DO ~SetGlobal("L#FouSkillTalk","GLOBAL",3)~ EXIT

CHAIN L#Fou25J HumanSkill011
@289 /* I just want to think about it.  Let me do so. */
DO ~SetGlobal("L#FouSkillTalk","GLOBAL",3)~ EXIT

CHAIN L#Fou25J HumanSkill002
@290 /* Lead. */
DO ~SetGlobal("L#FouSkillTalk","GLOBAL",3)~ EXIT



/////////////////////////
///TALK 1 - GLOVES///////
/////////////////////////

CHAIN IF ~PartyHasItem("L#FGLV") Global("L#FouToBQuest","GLOBAL",0)~ THEN L#Fou25J Quest01x00
@291 /* I know these gloves.  I have read about them in the scrolls of the Shade Lord. */
== ANOME25J IF ~InParty("ANOMEN") !StateCheck("ANOMEN",CD_STATE_NOTVALID)~ THEN @292 /* Leave them, shadow mage, they can do us no good. */
END
IF~~THEN REPLY @293 /* What are they?  Are they something useful? */ EXTERN L#Fou25J Quest01x01
IF~~THEN REPLY @294 /* I have a bad feeling about this... */ EXTERN L#Fou25J Quest01x01

CHAIN L#Fou25J Quest01x01
@295 /* They are called the Blackscratchers.  These powerful gloves are said to rip through the plane and open a kind of portal to a small, hidden sphere--something like your Pocket Plane, but smaller and without the Fate Spirit. */
== CERND25J IF ~InParty("CERND") !StateCheck("CERND",CD_STATE_NOTVALID)~ THEN @296 /* There are some rules of nature that should not be broken or ripped.  I do not think these gloves would obey those rules. */
== L#Fou25J @297 /* A mage can hide in there if the situation gets too tense. */
END
IF~~THEN REPLY @298 /* That sounds quite useful but they don't seem to be in a good state.  Does the magic need some kind of activation? */ EXTERN L#Fou25J Quest01x02
IF~~THEN REPLY @299 /* I don't think they work, though... I think they are nothing more than some stylish garbage. */ EXTERN L#Fou25J Quest01x02
IF~~THEN REPLY @300 /* Keep talking. */ EXTERN L#Fou25J Quest01x02

CHAIN L#Fou25J Quest01x02
@301 /* There are some missing parts, I think.  Look--two of the gems are missing.  I don't think the magic can be activated as long as the gloves aren't fixed.  To do so we need to find those gems. */
END
IF~~THEN REPLY @302 /* Is it safe? */ EXTERN L#Fou25J Quest01x03
IF~~THEN REPLY @303 /* But we can fix them, yes? */ EXTERN L#Fou25J Quest01x03

CHAIN L#Fou25J Quest01x03
@1 /* Yes. */
== AERIE25J IF ~InParty("AERIE") !StateCheck("AERIE",CD_STATE_NOTVALID)~ THEN @304 /* I don't think it's a good idea to play with... with this shadow magic... */
== EDWIN25J IF ~InParty("EDWIN") !StateCheck("EDWIN",CD_STATE_NOTVALID)~ THEN @305 /* Splendid!  Just let the monkey play with them, maybe he'll prove that he can be useful! (The best scenario is that the group will have to deal with the loss of one pointless head.) */
== NALIA25J IF ~InParty("NALIA") !StateCheck("NALIA",CD_STATE_NOTVALID)~ THEN @306 /* Do you think that fixing this item is a good idea?  It may cause some unnecessary deaths of innocents. */
== L#Fou25J @307 /* If you want to fix them, we need to look for the missing gems. They may be somewhere near. */
== L#Fou25J @308 /* Let's hope we find them. */
DO ~SetGlobal("L#FouToBQuest","GLOBAL",1)~ EXIT

/////////////////////////
///TALK 2 - GEMS/////////
/////////////////////////

CHAIN IF ~PartyHasItem("L#FGLV") PartyHasItem("L#FGem1") PartyHasItem("L#FGem2") Global("L#FouToBQuest","GLOBAL",1)~ THEN L#Fou25J Quest02x00
@309 /* Yes, we have them.  These are the gems we need to fix the gloves. */
== VALYG25J IF ~InParty("VALYGAR") !StateCheck("VALYGAR",CD_STATE_NOTVALID)~ THEN @310 /* If we want to recreate these foul gloves at all.  I doubt it's a good idea.  Just let them rot somewhere. */
END
IF~~THEN REPLY @311 /* Good.  Before we continue, can you tell us anything more? */ EXTERN L#Fou25J Quest02x01
IF~~THEN REPLY @312 /* I see... Well, I'm not sure if I want to fix this thing.  What can it do, anyway? Apart from opening the portal, that is. */ EXTERN L#Fou25J Quest02x01
IF~InParty("VALYGAR") !StateCheck("VALYGAR",CD_STATE_NOTVALID)~THEN REPLY @313 /* Let me do the talking, Valygar!  So, Foundling: can those gloves do anything else other than open the portal to this small sphere? */ EXTERN L#Fou25J Quest02x01

CHAIN L#Fou25J Quest02x01
@314 /* Until they are fixed, they can just insignificantly improve the power of spells.  The thing is that only a shadow adept may use them properly.  To use them, you need to be one--or be a shadow creature. */
== MAZZY25J IF ~InParty("MAZZY") !StateCheck("MAZZY",CD_STATE_NOTVALID)~ THEN @315 /* That doesn't sound encouraging, <CHARNAME>.  Think twice before you let him fix these gloves. */
== ANOME25J IF ~InParty("ANOMEN") !StateCheck("ANOMEN",CD_STATE_NOTVALID)~ THEN @316 /* You heard that?  We shouldn't even consider forging the damned things.  They were made with a vile magic, I tell you. */
== KELDO25J IF ~InParty("KELDORN") !StateCheck("KELDORN",CD_STATE_NOTVALID)~ THEN @317 /* If you even consider taking care of this job, <CHARNAME>, make sure these won't be used to hurt anyone. */
== JAHEI25J IF ~InParty("JAHEIRA") !StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN @318 /* You are to decide if you want to have anything to do with these, <CHARNAME>, farbeit that *I* should tell you what to do.  But before you make up your mind, think it over again. */
END
IF~~THEN REPLY @319 /* Usable only by a shadow mage...? Oh... */ EXTERN L#Fou25J Quest02x02
IF~~THEN REPLY @320 /* We have a shadow adept--you.  We may use these things--especially since we're going to face some powerful enemies. */ EXTERN L#Fou25J Quest02x02

CHAIN L#Fou25J Quest02x02
@321 /* These gloves can help us to slay our enemies; we should use them.  That's my opinion. */
END
IF~~THEN REPLY @322 /* But how can we fix them?  Can you do it? */ EXTERN L#Fou25J Quest02x03
IF~~THEN REPLY @323 /* Is there some kind of trick? */ EXTERN L#Fou25J Quest02x03
IF~~THEN REPLY @324 /* Hmm, I'm not sure if I want to play with... with something like *that*. */ EXTERN L#Fou25J Quest02x04

CHAIN L#Fou25J Quest02x04
@325 /* It's up to you, but I think I should tell you how to fix them, just in case you change your mind.  Be wise. */
EXTERN L#Fou25J Quest02x03

CHAIN L#Fou25J Quest02x03
@326 /* I can't fix them myself.  We may need someone skilled with powerful items. */
END
IF~~THEN REPLY @327 /* Like Cespenar? */ EXTERN L#Fou25J Quest02x05
IF~~THEN REPLY @328 /* Hmm, I knew it would be something.  Anyway, good riddance!  At least the vile item will remain unusable! */ EXTERN L#Fou25J Quest02x06

CHAIN L#Fou25J Quest02x05
@329 /* Yes.  Your imp servant should be able to fix them. */
== VALYG25J IF ~InParty("VALYGAR") !StateCheck("VALYGAR",CD_STATE_NOTVALID)~ THEN @330 /* I warn you, <CHARNAME>: shadow magic can't help us, only cause more trouble. */
== MAZZY25J IF ~InParty("MAZZY") !StateCheck("MAZZY",CD_STATE_NOTVALID)~ THEN @331 /* Again: think twice before you fix those, sire. */
== L#Fou25J @332 /* Now, let us keep moving.  Take us to the Pocket Plane when you're ready to ask Cespenar. */
DO ~SetGlobal("L#FouToBQuest","GLOBAL",2)~ EXIT

CHAIN L#Fou25J Quest02x06
@333 /* It would be wiser to use them properly. */
== ANOME25J IF ~InParty("ANOMEN") !StateCheck("ANOMEN",CD_STATE_NOTVALID)~ THEN @334 /* Good, they shouldn't be fixed.  Prove your leading skills, <CHARNAME>, and leave them as they are! */
DO ~SetGlobal("L#FouToBQuest","GLOBAL",2)~ EXIT

/////////////////////////
///TALK 3 - CESPENAR/////
/////////////////////////

EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("L#FGLV") Global("L#FouToBQuest","GLOBAL",2)~ THEN GOTO Quest03x00
END

APPEND BOTSMITH
  IF ~~ THEN BEGIN Quest03x00
 SAY @335 /* Oh, why would you hold some cut off hands in your pack?!  And they have such long nails... Oh!  Those are gloves! */
= @336 /* Ah, these are the Blackscratchers!  Cespenar knows these!  They are quite powerful and they can do much more than just scratch!  You can scratch yourself with almost everything, but these can do much more than that! */
= @337 /* If you want, Cespenar can fix those!  Hmm, we would need the gloves, of course, and... the gems.  Two of them, actually, but there's something more!  A mimic's glue would do!  Oh, a rhyme!  But since mimic's blood is quite sticky, it would be fine, too. */
= @338 /* That would cost 5,000--after a discount for my favorite Bhaalspawn! */
    IF ~Global("L#FouToBQuest","GLOBAL",2)
      PartyGoldGT(4999)
      PartyHasItem("L#FGLV")
      PartyHasItem("L#FGEM1")
      PartyHasItem("L#FGEM2")
      PartyHasItem("MISC6Y")
      ~ THEN REPLY @339 /* Let's do this. */ DO ~SetGlobal("ItemMaker","GLOBAL",377)
                                 SetGlobal("L#FouToBQuest","GLOBAL",3)
                                 TakePartyItem("L#FGLV")
                                 TakePartyItem("L#FGEM1")
                                 TakePartyItem("L#FGEM2")
                                 TakePartyItemNum("MISC6Y",1)
                                 DestroyItem("L#FGLV")
                                 DestroyItem("L#FGEM1")
                                 DestroyItem("L#FGEM2")
                                 DestroyItem("MISC6Y")
                                 TakePartyGold(5000)
                                 DestroyGold(5000)~ GOTO 11
    // 11 starts "cutsmith" cutscene, which sets ImpForgeStuff, which triggers BOTSMITH.baf, which gives L#FGLVF item and reenters Caspenar dialogue, which triggers talk 4 below

 
    IF ~~ THEN REPLY @340 /* No thank you, not now. */ GOTO Quest03x01
    END

    IF ~~ THEN BEGIN Quest03x01 SAY @341 /* Okay!  Let's check if you've got something more here! */
      COPY_TRANS BOTSMITH 4
    END
  END

/////////////////////////
///TALK 4 - RECREATED////
/////////////////////////

CHAIN IF ~Global("L#FouToBQuest","GLOBAL",3) PartyHasItem("L#FGLVF")~ THEN L#Fou25J Quest04x00 // we start this chain from Caspenar's dialogue
@342 /* Here they are. */
== ANOME25J IF ~InParty("ANOMEN") !StateCheck("ANOMEN",CD_STATE_NOTVALID)~ THEN @343 /* I am disappointed.  I thought you wouldn't create these... things. */
== AERIE25J IF ~InParty("AERIE") !StateCheck("AERIE",CD_STATE_NOTVALID)~ THEN @344 /* I hope they won't cause any bad things to happen. */
== CERND25J IF ~InParty("CERND") !StateCheck("CERND",CD_STATE_NOTVALID)~ THEN @345 /* Let us hope these gloves won't affect the balance. */
== EDWIN25J IF ~InParty("EDWIN") !StateCheck("EDWIN",CD_STATE_NOTVALID)~ THEN @346 /* Now, go on monkey, try them! (I hope they explode once you have them on.) */
== VALYG25J IF ~InParty("VALYGAR") !StateCheck("VALYGAR",CD_STATE_NOTVALID)~ THEN @347 /* I hope you know what you did.  Don't make me hold them if you don't want to fix them again. */ 
== IMOEN25J IF ~InParty("IMOEN2") !StateCheck("IMOEN2",CD_STATE_NOTVALID)~ THEN @348 /* Uh, just don't make me wear those, okay?  They look creepy.  They would look better on... Xzar, or someone. */
== MINSC25J IF ~InParty("MINSC") !StateCheck("MINSC",CD_STATE_NOTVALID)~ THEN @349 /* Boo says they smell bad!  You should keep an eye on them! */
== VICON25J IF ~InParty("VICONIA") !StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN @350 /* I must admit they look rather impressive now.  As distinguished as drow crafting, abbil. */
== L#Fou25J @351 /* Cespenar did well. */
END
IF~~THEN REPLY @352 /* So, what now?  Can you use them already? */ EXTERN L#Fou25J Quest04x01
IF~~THEN REPLY @353 /* Are they fine? */ EXTERN L#Fou25J Quest04x01

CHAIN L#Fou25J Quest04x01
@354 /* Hmm, strange... */
END
IF~~THEN REPLY @355 /* What? Something's wrong? */ EXTERN L#Fou25J Quest04x02
IF~~THEN REPLY @356 /* Oh, don't tell me it's not over... */ EXTERN L#Fou25J Quest04x02

CHAIN L#Fou25J Quest04x02
@357 /* It seems there is someone inside the plane.  It seems that the previous owner left a familiar inside.  I'm not sure how or why, but... */
END
IF~~THEN REPLY @358 /* What now?  Are you sure it's not the mage him- or herself? */ EXTERN L#Fou25J Quest04x03
IF~~THEN REPLY @359 /* Hmm, how can you be sure it's none of the mage's friends? */ EXTERN L#Fou25J Quest04x03

CHAIN L#Fou25J Quest04x03
@360 /* Only one person can get inside--no friends, no foes.  Familiars are allowed, because a mage and one's familiar share a special link. */
END
IF~~THEN REPLY @361 /* Can you get inside and get rid of the familiar, then? */ EXTERN L#Fou25J Quest04x04
IF~~THEN REPLY @362 /* What's our next move, then? */ EXTERN L#Fou25J Quest04x04

CHAIN L#Fou25J Quest04x04
@363 /* I can enter the plane as the new owner of the gloves.  I will have to defeat the familiar on my own. */
== L#Fou25J @364 /* Let me go inside when we have a moment.  If you have something I may find useful, give it to me before I leave. */
DO ~SetGlobal("L#FouToBQuest","GLOBAL",4)~ EXIT

/////////////////////////
///TALK 5 - DONE/////////
/////////////////////////

CHAIN IF ~Global("L#FouToBQuest","GLOBAL",6)~ THEN L#Fou25J Quest05x00
@365 /* The work is done.  We have managed to fix the gloves and take back control of the plane.  From now on, the gloves should work fine. */
DO ~SetGlobal("L#FouToBQuest","GLOBAL",7)~ EXIT


///////////////////////////////////////////
////////////INTERJECTION///////////////////
///////////////////////////////////////////

INTERJECT_COPY_TRANS HGNYA01 1 L#FoundlingNya1
== L#Fou25J IF ~InParty("L#FOU") !StateCheck("L#FOU",CD_STATE_NOTVALID)~ THEN
@366 /* Be prepared.  This witch seems to have lost her senses. */
END

INTERJECT_COPY_TRANS YAGCON 0 L#FoundlingYagaSlave1
== L#Fou25J IF ~InParty("L#FOU") !StateCheck("L#FOU",CD_STATE_NOTVALID)~ THEN
@367 /* A slave?  So Yaga-Shura is no better than Thaxll'ssillyia. */
END

INTERJECT_COPY_TRANS AMTGEN01 0 L#FoundlingGen1
== L#Fou25J IF ~InParty("L#FOU") !StateCheck("L#FOU",CD_STATE_NOTVALID)~ THEN
@368 /* Another lunatic. */
END

INTERJECT_COPY_TRANS ABAZIGAL 0 L#FoundlingAba1
== L#Fou25J IF ~InParty("L#FOU") !StateCheck("L#FOU",CD_STATE_NOTVALID)~ THEN
@369 /* He watched us?  Be careful, we might have lost our chance to surprise him. */
END

EXTEND_BOTTOM FINSOL01 27
IF~InParty("L#Fou") !StateCheck("L#Fou",CD_STATE_NOTVALID)~ EXTERN L#Fou25J L#EndLine
END
CHAIN L#Fou25J L#EndLine
@370 /* Think sagaciously.  Your decision will have great influence on other beings.  If you choose power, you will never be afraid again.  You will become invincible... and absent from the world. */ 
END
COPY_TRANS FINSOL01 27

/////////VOLO

EXTEND_BOTTOM SARVOLO 9 #4
+ ~InParty("L#FOU") !StateCheck("L#FOU",CD_STATE_NOTVALID)~ + @371 /* Do you have anything to say about Foundling? */ + L#FouBio
END

CHAIN SARVOLO L#FouBio
@372 /* Ah, yes!  Of course I do! */
== SARVOLO 
@373 /* Foundling, the shadow adept, the "hatchling" of the shadow dragon.  Out of place, out of his world, he aids <CHARNAME> however he can, adding some enigmatic thrill to the Bhaalspawn's adventure.  He's always ready to support his leader with mysterious powers. */
== L#Fou25J
@374 /* Hatchling?  I'm no hatchling.  But write whatever you want, stranger.  I care not for your words. */
EXTERN SARVOLO 9
