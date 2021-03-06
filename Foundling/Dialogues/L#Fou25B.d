BEGIN L#Fou25B

////Aerie

CHAIN IF ~InParty("AERIE")
See("AERIE")
!StateCheck("L#Fou",CD_STATE_NOTVALID)
!StateCheck("AERIE",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#FoundlingAerieTOB","GLOBAL",0)~ THEN L#Fou25B AerieFoundTOB01
@0 /* Have you finally accepted the loss of your wings?  Have you finally understood that nothing can bring them back? */
DO ~SetGlobal("L#FoundlingAerieTOB","GLOBAL",1)~
==BAerie25 @1 /* It's not that easy to forget, but... I think I'd rather tell you more about Baervan again, or other gods, rather than my wings.  I... I don't think discussing my loss can do us any good. */
==L#Fou25B @2 /* Neither do the stories of some gods that I don't praise. */
==BAerie25 @3 /* But--but can't they surprise you at all?  You don't find them interesting? */
==L#Fou25B @4 /* No. */
==Baerie25 @5 /* I thought... I thought they would.  You seemed interested last time. */
==L#Fou25B @6 /* I wasn't fascinated.  I just let you speak, that's all. */
==BAerie25 @7 /* I... */
==L#Fou25B @8 /* I'm afraid I can't grow as easily fascinated as you do, elf. */
==BAerie25 @9 /* But I still think you... you must have listened just a bit.  And now you just... lied. */
==L#Fou25B @10 /* Believe me not, if you must.  I don't think it will change anything. */
EXIT

////Anomen

CHAIN IF ~InParty("ANOMEN")
See("ANOMEN")
!Alignment("Anomen",MASK_GOOD)
!StateCheck("L#Fou",CD_STATE_NOTVALID)
!StateCheck("ANOMEN",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#FoundlingAnomenTOB","GLOBAL",0)~ THEN L#Fou25B AnomenFoundTOB01
@11 /* This failure has had a positive influence on you. */
DO ~SetGlobal("L#FoundlingAnomenTOB","GLOBAL",1)~ 
==BAnome25 @12 /* What do you mean?  Speak your mind and be clear, shadow adept. */
==L#Fou25B @13 /* You wished to join the Order, but when you failed, you became more pragmatic.  You left the rules that were binding you. */
==BAnome25 @14 /* You thought I would be so foolish as to follow the rules of the Order?  I did so--it didn't work. */
==L#Fou25B @15 /* It was the same back then--they didn't work, but you still followed them.  The rules are the same, you are not. */
==L#Fou25B @16 /* You are better. */
==BAnome25 @17 /* I care not for your opinions, mage, so leave me.  I have better things to do than listen to your thoughts. */
EXIT

CHAIN IF ~InParty("ANOMEN")
See("ANOMEN")
Alignment("Anomen",MASK_GOOD)
!StateCheck("L#Fou",CD_STATE_NOTVALID)
!StateCheck("ANOMEN",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#FoundlingAnomenTOB","GLOBAL",0)~ THEN L#Fou25B AnomenFoundTOB02
@18 /* You still are a knight of the Order you joined in Athkatla, aren't you? */
DO ~SetGlobal("L#FoundlingAnomenTOB","GLOBAL",1)~ 
==BAnome25 @19 /* Of course I am, shadow.  Why should it be otherwise? */
==L#Fou25B @20 /* You're far away from Athkatla.  I thought that as you are their knight, they would want to have some control over your doings rather than let you go so far to the south. */
==BAnome25 @21 /* You clearly misunderstand the relations that bind me with the Order.  I am not their servant, shadow, but I may act in their name.  I can do much more good here than in Athkatla.  Athkatla has more noble knights than this place, I'm afraid. */
==L#Fou25B @22 /* So why did you join the Order at all?  Couldn't you do the same thing without them? */
==BAnome25 @23 /* I could do as much as I do now, but once I joined I became a part of something greater: I can act in the name of the Order's code and its people. */
==L#Fou25B @24 /* These don't seem to be of any value. */
==BAnome25 @25 /* I knew you wouldn't understand, darkmage.  You are still nothing more than the same servant of shadows you were when <CHARNAME> first met you.  But now you serve your own sickness instead of the one Shadow Dragon that fed you. */
EXIT

////Cernd

CHAIN IF ~InParty("CERND")
See("CERND")
!StateCheck("L#Fou",CD_STATE_NOTVALID)
!StateCheck("CERND",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#FoundlingCerndTOB","GLOBAL",0)~ THEN L#Fou25B CerndFoundTOB01
@26 /* Do you still consider me an abnormal element in Faerun, Cernd? */
DO ~SetGlobal("L#FoundlingCerndTOB","GLOBAL",1)~ 
==BCernd25 @27 /* Never have I considered you an abnormal element, but a being out of its natural environment, Foundling.  A stone that has been thrown away from its land. */
==L#Fou25B @28 /* So nothing has changed.  My presence is still unnatural, in your opinion. */
==L#Fou25B @29 /* How much time must pass for one to be adopted, then?  May I ever--in your mind--be an acceptable part of your nature? */
==BCernd25 @30 /* In some situations, it may take generations, rather than months or even years, before the changes come. But I cannot tell you the exact time needed.  I am not a man of science, but a fruit of this soil. */
==L#Fou25B @31 /* Generations?  Are you trying to say that more than a lifetime is needed? */
==BCernd25 @32 /* It is possible, yes. */
==L#Fou25B @33 /* I see.  So there may be no place for me here, after all. */
EXIT

////Edwin

CHAIN IF ~InParty("EDWIN")
See("EDWIN")
!StateCheck("L#Fou",CD_STATE_NOTVALID)
!StateCheck("EDWIN",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#FoundlingEdwinTOB","GLOBAL",0)~ THEN L#Fou25B EdwinFoundTOB02
@34 /* ... I would rather you stop insulting me, Edwin. */
DO ~SetGlobal("L#FoundlingEdwinTOB","GLOBAL",1)~
==BEdwin25 @35 /* Bah!  I thought you would end up dead in the battle with Irenicus or Bodhi, but it seems some are like cockroaches. (And by some I mean most I am made to travel with.) */
==L#Fou25B @36 /* Like cockroaches? */
==BEdwin25 @37 /* Yes.  If you need to know what those are, just look into the mirror and stop bothering me.  Some say that your kind know how to survive a meteor swarm! (If only getting rid of cockroaches were that simple...!) */
==L#Fou25B @38 /* With you I seem to receive irritation much more than any other feeling, mage. */
==BEdwin25 @39 /* So just do me a favour and crawl away, bug!  I have no time for those of your kind. */
EXIT

////Haer'Dalis

CHAIN IF ~InParty("haerdalis")
See("haerdalis")
!StateCheck("L#Fou",CD_STATE_NOTVALID)
!StateCheck("haerdalis",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#FoundlingHaerdalisTOB","GLOBAL",0)~ THEN L#Fou25B HaerdaFoundTOB01
@40 /* Is there any reason you're looking at me, bard? */
DO ~SetGlobal("L#FoundlingHaerdalisTOB","GLOBAL",1)~
==BHaerd25 @41 /* Dear rook, I was wondering how to provide you a true resocialisation and I must admit that I have came up with an idea or two. */
==L#Fou25B @42 /* Never have I asked you to help me in understanding this place.  I don't consider myself strange, but I consider most of this plane irrational. */
==BHaerd25 @43 /* Ah, irrational, yes. Well, that does nothing else but add flavor and unexpectedness, my rook, and I am sure you would enjoy Faerun more than you do right now if you only knew how to use this flavor. */
==L#Fou25B @44 /* What do you mean? */
==BHaerd25 @45 /* I believe you should take part in one of the plays you hate so much.  I bet my own voice that it would be quite an experience--the thrill, the satisfaction when you hear the applause! */
==BHaerd25 @46 /* You would make a marvellous "dark character", as well.  With no big effort you would do better than most actors I know. */
==L#Fou25B @47 /* Your idea is more than doubtful, Haer'Dalis.  I need no applause.  I need freedom and power, so I can do whatever I want. */
==BHaerd25 @48 /* 'Tis because you know no different way, my rook.  Try it, one day, as it may provide you a "waking up" experience. */
EXIT

////Imoen

CHAIN IF ~InParty("imoen2")
See("imoen2")
!StateCheck("L#Fou",CD_STATE_NOTVALID)
!StateCheck("imoen2",CD_STATE_NOTVALID)
CombatCounter(0)
AreaCheck("AR4500")
Global("L#FoundlingImoenTOB","GLOBAL",0)~ THEN L#Fou25B ImoenFoundTOB01
@49 /* How do you feel here in the Pocket Plane, Imoen?  Do you feel at home? */
DO ~SetGlobal("L#FoundlingImoenTOB","GLOBAL",1)~
==BIMOEN25 @50 /* I don't think so...  Why?  Should I feel at home? */
==L#Fou25B @51 /* It is the place we fought Joneleth Irenicus and the domain of Bhaal.  If you're partially like <CHARNAME>, this place may seem somewhat different for you than it seems for others. */
==BIMOEN25 @52 /* I don't think so.  It seems weird and it's... it's like something from nightmares I would rather forget.  And it's not something I like to talk about, Foundling. */
==L#Fou25B @53 /* I see.  So it feels familiar.  Like from the dreams that come at rest.  Dreams you've seen before. */
EXIT

////Jaheira

CHAIN IF ~InParty("jaheira")
See("jaheira")
!StateCheck("L#Fou",CD_STATE_NOTVALID)
!StateCheck("jaheira",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#FoundlingJaheiraTOB","GLOBAL",0)~ THEN L#Fou25B JaheiraFoundTOB01
@54 /* Do you think Joneleth Irenicus deserved his punishment, Jaheira? */
DO ~SetGlobal("L#FoundlingJaheiraTOB","GLOBAL",1)~
==BJahei25 @55 /* Where has this question come from, Foundling?  Does the servant of the Shadow Dragon feel sorry for his suffering? */
==L#Fou25B @56 /* No.  I want to know your opinion, druid.  You seem more than confident about your doings. */
==BJahei25 @57 /* He tortured our leader, did unnatural experiments on those pathetic creatures in his hideout, and almost destroyed Suldanessallar.  He... killed my husband. */
==BJahei25 @58 /* There are no doings that provide no results, Foundling.  His punishment was unavoidable. */
==L#Fou25B @59 /* We also killed many.  Do we deserve punishment? */
==BJahei25 @60 /* We were made to take part in all of this, Foundling.  It's very different from acting with vengeance and wrath because of sick thoughts. */
==L#Fou25B @61 /* We had the option to decide more than once.  We weren't always made to take part in some of those issues. */
==BJahei25 @62 /* I trust we mostly did what we had to.  Even if we failed in some points, no one is perfect. */
EXIT

////Jan

CHAIN IF ~InParty("L#Fou")
See("L#Fou")
!StateCheck("L#Fou",CD_STATE_NOTVALID)
!StateCheck("jan",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#FoundlingJanTOB","GLOBAL",0)~ THEN BJAN25 JanFoundTOB01
@63 /* ...Foundling, please, you should try it!  It's something more than just salad!  I've been working on it for more than a month!  I mean, how to compose the ingredients, not this particular salad--the vegetables would grow old.  I can guarantee--you have never tried something like this!  Never ever before. */
==L#Fou25B @64 /* I told you not to bother me, gnome.  I'm not interested in the irrationalities you say, nor am I a man who would waste time on talk with someone like you. */
==BJAN25 @65 /* You shouldn't be that mean, Foundling, because we work together.  And I'm not irrational--I do my best to provide us the best possible, and what's even more important, the most nutritious meals.  If you do not eat well, you get weaker and it may be difficult to focus!  Believe me, I once skipped more than three meals--I'd been working on a new fertilizer--and I would have fainted if not for Petunia, who brought me a full bowl of carrot soup!  You don't want to faint, do you? */
==L#Fou25B @66 /* I warn you: insist for another second and you'll regret it. */
==BJAN25 @67 /* But-- */
==L#Fou25B @68 /* I warned you. */
DO ~SetGlobal("L#FoundlingJanTOB","GLOBAL",1) ForceSpellRES("l#fsp03","JAN")~
END

////Keldorn

CHAIN IF ~InParty("keldorn")
See("keldorn")
!StateCheck("L#Fou",CD_STATE_NOTVALID)
!StateCheck("keldorn",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#FoundlingKeldornTOB","GLOBAL",0)~ THEN L#Fou25B KeldornFoundTOB01
@69 /* Do you still think of the issues you left in Athkatla? */
DO ~SetGlobal("L#FoundlingKeldornTOB","GLOBAL",1)~
==BKeldo25 @70 /* Issues?  If you mean the Order and Maria--they are more than issues, Foundling, as they have had no small influence on my life.  And indeed, I still think of them. */
==L#Fou25B @71 /* You people get attached easily.  Why? */
==BKeldo25 @72 /* Everyone has something important in his or her life.  I would not be Keldorn Firecam if I did not have the experiences and memories that shaped me. */
==L#Fou25B @73 /* And what if there's nothing important in my life? */
==BKeldo25 @74 /* It takes time to understand the importance of things.  And maybe you are still trying to find that. */
==L#Fou25B @75 /* Importance... */
==L#Fou25B @76 /* You people consider things, issues, happenings and much more--you consider these important. */
==BKeldo25 @77 /* Indeed.  As I said, those can shape us. */
==L#Fou25B @78 /* I need to think about it. */
EXIT

////Korgan

CHAIN IF ~InParty("korgan")
See("korgan")
!StateCheck("L#Fou",CD_STATE_NOTVALID)
!StateCheck("korgan",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#FoundlingKorganTOB","GLOBAL",0)~ THEN BKorga25 KorganFoundTOB01
@79 /* Eh?  Whach'yer want, mageling? */
DO ~SetGlobal("L#FoundlingKorganTOB","GLOBAL",1)~
==L#Fou25B @80 /* I want something from you, dwarf. */
==L#Fou25B @81 /* I understood that if I want to never be enslaved again, ever, I need to be ready for everything.  I would like you to train me how to fight better. */
==BKorga25 @82 /* Ha!  Yer sure ye know what yer askin' fer? */
==L#Fou25B @83 /* Yes. */
==BKorga25 @84 /* Har har!  So yer have balls after all, he?  Fine!  I will! */
==L#Fou25B @85 /* Good.  Thank you. */
EXIT

////Mazzy

CHAIN IF ~InParty("mazzy")
See("mazzy")
!StateCheck("L#Fou",CD_STATE_NOTVALID)
!StateCheck("mazzy",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#FoundlingmazzyTOB","GLOBAL",0)~ THEN L#Fou25B MazzyFoundTOB01
@86 /* Do you still consider me an enemy, Mazzy? */
DO ~SetGlobal("L#FoundlingmazzyTOB","GLOBAL",1)~
==BMazzy25 @87 /* Enemy?  I have kept my eye on you, as I may always doubt your motives or your judgement, Shadow Mage, but no--you are not an enemy.  You have provided great aid to our leader. */
==L#Fou25B @88 /* Does it work that way?  I may become an ally because I help?  Only because of that? */
==BMazzy25 @89 /* You may become more.  You may become a companion if you prove that it is not just physical support you provide. And, I hope, you can become trustworthy. */
==L#Fou25B @90 /* So I'm not trustworthy yet, do I understand you? */
==BMazzy25 @91 /* I... don't know.  It is about more than aid. */
==L#Fou25B @92 /* I see.  There are answers that are hard to say aloud. */
EXIT

CHAIN IF ~InParty("mazzy")
See("mazzy")
!StateCheck("L#Fou",CD_STATE_NOTVALID)
!StateCheck("mazzy",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#FoundlingMazzyTOB","GLOBAL",1)~ THEN L#Fou25B MazzyFoundTOB02
@93 /* --Uh... */
DO ~SetGlobal("L#FoundlingMazzyTOB","GLOBAL",2)~
==BMazzy25 @94 /* This scar may be more serious than it seems. */
==L#Fou25B @95 /* That's what was left after our fight with Bodhi.  The wound healed, yet it still hurts from time to time. */
==BMazzy25 @96 /* Let me take a look. */
==BMazzy25 @97 /* I am afraid that she damaged your rib and it healed crookedly. */
==L#Fou25B @98 /* I see. */
==BMazzy25 @99 /* There's nothing we can do about it, right now. */
==L#Fou25B @100 /* --Why? */
==BMazzy25 @101 /* Because it's-- */
==L#Fou25B @102 /* --Why do you care, Mazzy.  You said--more than once--that I am not to be trusted.  You acknowledged me as an ally, but never as a true companion. */
==BMazzy25 @103 /* We all have our doubts and I am aware that you have had similar thoughts about myself--doubts in me and my judgement, Foundling.  I can never fully trust you, but it gives me no right to ignore you or your pain. */
EXIT

////Minsc

CHAIN IF ~InParty("minsc")
See("minsc")
!StateCheck("L#Fou",CD_STATE_NOTVALID)
!StateCheck("minsc",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#FoundlingMinscTOB","GLOBAL",0)~ THEN L#Fou25B MinscFoundTOB01
@104 /* ... */
DO ~SetGlobal("L#FoundlingMinscTOB","GLOBAL",1)~
==BMinsc25 @105 /* Boo told me that there's something wrong with you!  So, my dark friend--is it because you are bored?  We could do with some nice butt-kicking! */
==L#Fou25B @106 /* It's not that, Minsc. */
==BMinsc25 @107 /* What is it, then?  Is it because of the weather? */
==L#Fou25B @108 /* No.  I'm just thinking. */
==BMinsc25 @109 /* Oh!  Are you thinking about how to fight better?  I can help you with that!  Or ask Boo!  He's the bravest of all warriors! */
==L#Fou25B @110 /* I... I don't think you can help me. */
==L#Fou25B @111 /* Just let me think. */
EXIT

////Nalia

CHAIN IF ~InParty("nalia")
See("nalia")
!StateCheck("nalia",CD_STATE_NOTVALID)
!StateCheck("L#Fou",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#FoundlingNaliaTOB","GLOBAL",0)~ THEN L#Fou25B NaliaFoundTOB01
@112 /* Do you still consider shadow magic evil, Nalia?  Is that the reason why you're looking at me this way? */
DO ~SetGlobal("L#FoundlingNaliaTOB","GLOBAL",1)~
==BNalia25 @113 /* I--I think you should use it in a good way when this adventure is over? */
==L#Fou25B @114 /* Why?  Why would you say something like that? */
==BNalia25 @115 /* I've been thinking about it for a while already. */
==BNalia25 @116 /* There are moments when my powers serve their purpose, but your powers can be stronger. They are like the best possible solution, even if the source is... dark. */
==BNalia25 @117 /* It may help.  I couldn't stop many deaths from happening, but with--with extra help from you, it may become a significant support for many in need. */
==L#Fou25B @118 /* You speak in a confident manner about this. */
==BNalia25 @119 /* Because it became clear some time ago. */
==L#Fou25B @120 /* But some time ago you considered the Shadow Weave evil, not even trustworthy.  Why would you change your opinion, Nalia? */
==BNalia25 @7 /* I... */
==BNalia25 @121 /* The more we help, the more those in need come.  Sometimes we need more than just myself.  I would like to see you helping. */
==L#Fou25B @122 /* You seem to have planned the use of magic you do not own yourself, Nalia. */
==BNalia25 @123 /* Maybe... maybe I just hope to see it used that way because I can't use it myself... */
==BNalia25 @124 /* That's why I would like to see you helping. */
EXIT

////Valygar

CHAIN IF ~InParty("valygar")
See("valygar")
!StateCheck("valygar",CD_STATE_NOTVALID)
!StateCheck("L#Fou",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#FoundlingValygarTOB","GLOBAL",0)~ THEN L#Fou25B ValygarFoundTOB01
@125 /* Will you return to Athkatla when it's over? */
DO ~SetGlobal("L#FoundlingValygarTOB","GLOBAL",1)~
==BValyg25 @126 /* Why would you ask, mageling?  If you think I have any plans to continue these adventures, then I must sadden you.  Your presence is nothing more than an unpleasant necessity. */
==L#Fou25B @127 /* That's not the reason.  I asked because I've seen you many times, telling us what is the best solution, what can be done et cetera. */
==L#Fou25B @128 /* I am surprised that someone like you might speak as a revolutionary. */
==BValyg25 @129 /* Revolutionary?  I'm surprised you would "indulge" me with a statement like that. */
==L#Fou25B @130 /* I just think you can force some changes.  I wondered if you would change the government that considered you a traitor and murderer. */
==L#Fou25B @131 /* ... Or maybe you would try to slay them. */
==BValyg25 @132 /* I'm not a monster like you. */
==L#Fou25B @133 /* I wouldn't slay them.  I doubt I would go back to the place that considered me an unwelcome abomination. */
==BValyg25 @134 /* If you actually believed that, you would go back to your mother plane, shadow, away from Faerun and its daylight creatures. */
EXIT

////Viconia

CHAIN IF ~InParty("L#Fou")
See("L#Fou")
!StateCheck("viconia",CD_STATE_NOTVALID)
!StateCheck("L#Fou",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#FoundlingViconiaTOB","GLOBAL",0)~ THEN BVicon25 ViconiaFoundTOB01
@135 /* I must admit, barra, that your powers have become quite impressive.  So, will you become another power-obsessed man like Irenicus? */
DO ~SetGlobal("L#FoundlingViconiaTOB","GLOBAL",1)~
==L#Fou25B @136 /* Why would I? */
==BVicon25 @137 /* Once someone can't be made a slave, he becomes the master, in time.  The slaver.  Sometimes a lunatic.  So, is that who you're going to become, barra?  Another puppetmaster? */
==L#Fou25B @138 /* No.  I'm not a slave, and neither will I be one in future--but neither shall I become the tyrant. */
==BVicon25 @139 /* I do not believe you, Foundling.  All those of power in the end try to control the weak. */
==BVicon25 @140 /* The day will come when you will try to enslave at least one being.  Believe me, barra, you won't resist. */
END

////Sarevok

CHAIN IF ~InParty("L#Fou")
See("L#Fou")
!StateCheck("SAREVOK",CD_STATE_NOTVALID)
!StateCheck("L#Fou",CD_STATE_NOTVALID)
CombatCounter(0)
Global("L#FoundlingSarevTOB","GLOBAL",0)~ THEN BSarev25 SarevokFoundling
@141 /* Well, I must say that <CHARNAME> has powers that let <PRO_HIMHER> become a real freak-show.  And collect appropriate company: a Shadow Mage--ha!  And what will be next?  A battle-golem?  A chimera? */
DO ~SetGlobal("L#FoundlingSarevTOB","GLOBAL",1)~
==L#Fou25B @142 /* ...a man who tried to kill <PRO_HIMHER>. */
==BSarev25 @143 /* We have that one here.  Ha! */
==L#Fou25B @144 /* I'm not surprised that <PRO_HESHE> let you come with us.  It's better to keep an eye on a possible threat. */
END
