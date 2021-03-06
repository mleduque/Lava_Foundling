EXTEND_TOP L#FOU 49
+ ~Specifics(Player1,12)~ + @0 /* I may not have been to the Plane of Shadow, but as a shadow adept, I know it well. */ EXTERN L#FOU a1
END

CHAIN L#FOU a1
@1 /* I see. So you understand more than I expected. */
EXTERN L#FOU 54

EXTEND_TOP L#FOUJ 131
+ ~Specifics(Player1,12)~ + @2 /* Not all of us, but I *am* a shadow adept, you know. */ EXTERN L#FOUJ a2
END

CHAIN L#FOUJ a2
@3 /* I am aware of that. Maybe I should explain more carefully. */
EXTERN L#FOUJ 135

EXTEND_TOP L#FOUJ 141
+ ~Specifics(Player1,12)
!Class(Player1,SORCERER)
OR(2)
Class(Player1,MAGE_ALL)
Class(Player1,BARD_ALL)~ + @4 /* My magic originated from a magical rift that I found in Candlekeep. From what I've learned, it was an open wound in the Shadow Weave that infused itself with my very being. */ EXTERN L#FOUJ a2.1
END

EXTEND_TOP L#FOUJ 141
+ ~Specifics(Player1,12)
Class(Player1,SORCERER)~ + @5 /* From what I understand, I've always wielded the Shadow Weave. I've heard such powers are blessing from Shar. */ EXTERN L#FOUJ a2.1
END

CHAIN L#FOUJ a2.1
@6 /* If that's true, then it would explain why your magic's so different. You gained your power from touching the Shadow Weave directly. */
= @7 /* The connection you have is far stronger than mine, but also dangerous. I've seen how it affects your vitality. The more you use it, the more likely it is to kill you. I'm not sure if your power is a blessing or a curse. */
= @8 /* ... */
EXTERN L#FOUJ 148

EXTEND_TOP L#FOUJ 150
+ ~Specifics(Player1,12)~ + @9 /* My magic is not so different from yours. Why would I distrust you? */ EXTERN L#FOUJ a2.2
END

CHAIN L#FOUJ a2.2
@10 /* Is that all it takes to gain your trust? I don't think our similarities mean I'm any less dangerous to you. */
= @11 /* Although perhaps you would be capable of defeating me easily, given you are more experienced than I am. Perhaps you don't see me as a threat. */
EXTERN L#FOUJ 154