@ $4000 start
@ $4000 org

@ $4000 replace=/#CHARSET/#UDG(#PC)/
@ $4000 replace=/#SPRITE4/#UDGARRAY3,4;(#PC);(#PC+$10);(#PC+$20);(#PC+$08);(#PC+$18);(#PC+$28);(#PC+$C0);(#PC+$D0);(#PC+$E0);(#PC+$C8);(#PC+$D8);(#PC+$E8)
@ $4000 replace=/#SPRITE5/#UDGARRAY3,5;(#PC);(#PC+$10);(#PC+$20);(#PC+$08);(#PC+$18);(#PC+$28);(#PC+$30);(#PC+$40);(#PC+$50);(#PC+$38);(#PC+$48);(#PC+$58)
@ $4000 replace=/#SPRITE2/#UDGARRAY3,6;(#PC);(#PC+$10);(#PC+$20);(#PC+$08);(#PC+$18);(#PC+$28)
@ $4000 replace=/#SPRITE3/#UDGARRAY3,3;(#PC);(#PC+$10);(#PC+$20);(#PC+$08);(#PC+$18);(#PC+$28)
@ $4000 replace=/#SPRITE14/#UDGARRAY3,4;(#PC);(#PC+$10);(#PC+$20);(#PC+$08);(#PC+$18);(#PC+$28);(#PC+$30);(#PC+$40);(#PC+$50);(#PC+$38);(#PC+$48);(#PC+$58)

b $4000 Loading screen
D $4000 #UDGTABLE { #SCR2(loading) } TABLE#

u $5B00 Unused

c $607C Main entry point 1

g $607F Quasimodo Y co-ordinate
D $607F Values are between #N$38 (floor) and #N$26 (maximum)
g $6080 Quasimodo X co-ordinate
D $6080 Values are between #N00 (far left) and #N$1A (far right)
g $6081 Quasimodo sprite ID
g $6082 Y co-ordinate of current fireball / arrow / chasing knight
g $6083 X co-ordinate of current fireball / arrow / chasing knight
g $6084 Sprite ID to test (?)
g $6085 Jump flag
D $6085 0 - static, 1 - rising, 2 - falling
g $6086 Direction
D $6086 0 - left, 1 - right
g $6087 R - L Fireball / arrow attribute
g $6088 R - L Fireball / arrow X co-ordinate
g $6089 R - L Fireball / arrow Y co-ordinate
g $608A R - L Fireball / arrow sprite ID
g $608B Set to 1 for R - L fireballs or arrows
g $608C L - R Fireball / arrow attribute
g $608D L - R Fireball / arrow X co-ordinate
g $608E L - R Fireball / arrow Y co-ordinate
g $608F L - R Fireball / arrow sprite ID
g $6090 Set to 1 for L - R fireballs or arrows
g $6091 High L - R fireball / arrow attribute
g $6092 High L - R fireball / arrow X co-ordinate
g $6093 High L - R fireball / arrow Y co-ordinate
g $6094 High L - R fireball / arrow sprite ID
g $6095 Set to 1 for L - R high fireballs or arrows
g $6096 High R - L fireball / arrow attribute
g $6097 High R - L fireball / arrow X co-ordinate
g $6098 High R - L fireball / arrow Y co-ordinate
g $6099 High R - L fireball / arrow sprite ID
g $609A Set to 1 for R - L high fireballs or arrows
g $609B Set to 1 if this level has R - L fireballs or arrows
g $609C Set to 1 if this level has L - R fireballs or arrows
g $609D Set to 1 if this level has L - R high fireballs or arrows
g $609E Set to 1 if this level has R - L high fireballs or arrows
g $609F Set to 1 for collision
g $60A0 Current level
g $60A1 Score
g $60A8 Level bonus
g $60AD Number of bells rung
g $60AE
g $60AF State of rampart soldiers
D $60AF 0 - none, 1 - spear lowered, 2 - spear raised
g $60B0 Set to 1 to put soldiers in the ramparts
g $60B1 Set to 1 if this level has the fiery pit
g $60B2
g $60B3
g $60B4
g $60B5
g $60B6 Next sprite ID to use for L - R static objects
g $60B7 Next sprite ID to use for "high" static objects
g $60B8 Number of lives
g $60B9 Set to 1 if a Kempston joystick is installed (?)
g $60BA
g $60BB
g $60BC Score to award (in hundreds)
g $60BD Chasing knight Y co-ordinate
D $608D Starts at #N$A0 and decreases to #N$50
g $60BE Chasing knight UDG ID (climbing)
g $60BF
g $60C0
g $60C1
g $60C2 Time before the chasing knight should move
g $60C3
g $60C4 Set to 1 to put in a row of bells
g $60C5
g $60C6
g $60C7 Animation state of the "HELP" message on the last level
D $60C7 Alternates between 0 and 1
g $60C8
g $60C9
g $60CA Chasing knight X co-ordinate
g $60CB Chasing knight sprite ID (chasing)
g $60CC Time flag (?)
g $60CD
g $60CE
g $60CF
g $60D0 Set to 1 if awarding extra life
g $60D1 Set to 1 if Quasimodo has fallen off a ledge

c $60D2 Main entry point 2

c $6127 Start the game
c $619A Reset to level 1
c $61A6 Set up the playing field
c $61C4 Set up level 2
c $61CB Set up level 3
c $61DE Set up level 4
c $61F6 Set up level 5
c $6209 Set up level 6
c $6214 Set up level 7
c $6232 Set up level 8
c $6240 Set up level 9
c $6265 Set up level A
c $6274 Set up level B
c $6295 Set up level C
c $62A4 Set up level D
c $62AA Set up level E
c $62C8 Set up level F
D $62C8 Draw Esmerelda if it's the final level
c $62F0 Reset back to level 1 and run it
c $62FD Draw the game stats
c $633B Start a game
c $639F Move fireball or arrow L - R
c $641D Redraw Quasimodo while jumping
c $646A Copy player's co-ordinates to a test buffer
c $647D Copy player's co-ordinates from a test buffer
c $6490 Update all the objects on screen
c $65BA Check for moving right
c $65F1 Move right
c $6620 Handle state wrap-around moving right
c $662B Check for moving left
c $6652 Move left
c $6681 Handle state wrap-around moving left
c $6691 Check for jumping
c $66C3 Jump
c $66F5 Fall after jumping
c $6706 Reset the jump flag
c $670C Pause
D $670C The timing loop here is modified elsewhere to speed up (or slow down) the game
c $6715 Move fireball or arrow R - L
c $677A Draw a row of bells
c $67BA Check if there is an object colliding with Quasimodo on the floor
c $67CC Check if there is an object colliding with Quasimodo while jumping
c $67DE Check for an object colliding with Quasimodo on the floor
c $67FA Check for an object colliding with Quasimodo on the floor
c $681A Mark a collision
c $6820 Get an attribute from screen
R $6820 A On exit, holds the chosen attribute
R $6820 B Y co-ordinate
R $6820 C X co-ordinate
c $6831
c $687C
c $688A
c $68C5
c $68D3
c $68E5 Initialize the game
c $695D
c $696E Reset all the level flags to default
c $6A51 Level completed (?)
c $6AC9 Draw the main paying area
c $6AD1 Print the score
c $6AEB Display the score box
c $6B08
c $6B75
c $6B8E
c $6BAF
c $6BC4 Move fireball or arrow L - R
c $6C3C Move high fireball or arrow R - L
c $6CA1 Move high fireball or arrow L - R
c $6D1B Draw the remaining lives
c $6D3C Adjust the score for decimal arithmetic (?)
c $6D5B Move the chasing knight
c $6DBA Move the chasing knight towards Quasimodo
c $6DDE Adjust level bonus for decimal arithmetic (?)
c $6DFD Draw the level bonus
c $6E45
c $6E73
c $6EA9 Draw the "HELP" message on the last level
c $6ED7
c $6F0A
c $6F8B
c $6FE8
c $7021 Draw the attributes for the playing area
c $707C Swap Quasimodo's sprite between the main and working copy
c $7095 Swap memory
R $7095 HL Start of first memory
R $7095 DE Start of second memory
R $7095 BC Length
c $70A3
c $70CA
c $7121
c $7128
c $712D
c $7156
c $7174
c $71A1
c $71AA
c $71F7
c $7200
c $7209 Award an extra life every 10,000 points
c $721A Mark falling off a ledge
c $7222
c $7231
u $7238
D $7238 Disassembly
T $7238
b $7882
u $789C
D $789C Disassembly
T $789C
b $7918 Copy of Quasimodo R

u $7A8E
D $7A8E Disassembly
T $7A8E

c $80E8 Play the tune
b $8112
c $814C Play a note in the tune
R $814C BC Frequency
R $814C HL Length
c $8180
s $8182
b $81B0 Number of notes in the tune
b $81B1 Tune data
W $81B1,$40,4
D $81B1 Each entry contains frequency + length

s $81F1

u $8214
D $8214 Disassembly
T $8214
c $82DC
b $8309
u $8318
D $8318 Disassembly
T $8318
s $836C

c $86C4 See if Quasimodo has collied with something
c $8796
s $8807
c $8816 Collision : Get a buffer to a sprite given its index
R $8816 C Index
R $8816 DE On exit, holds buffer address
u $8822
C $8822
c $8826 Collision : Get the screen address from a co-ordinate
R $8826 D Y co-ordinate
R $8826 E X co-ordinate
R $8826 HL On exit, holds the screen address
s $8852
c $8854
g $885A
s $885B

b $88B8 Full wall graphics
B $88B8,$60,$3
b $8918 Pit wall graphics
B $8918,$60,$3
b $8978 Rampart wall graphics
B $8978,$60,$3
b $89D8 Rampart with soldiers wall graphics
B $89D8,$60,$3

s $8A38
c $8A48
c $8A71 Put the score on the high score table if necessary
c $8B0C
c $8B25
g $8B2B
c $8B2C
c $8B42
c $8B4B
c $8B4F
c $8B5F
c $8BA4
c $8BC4
c $8BF1
c $8BFC
c $8C13
c $8C38
c $8C45
b $8C52
t $8C54
b $8C70
t $8C73
b $8C7F
t $8C82
b $8C8E
t $8C91
b $8C9D
t $8CA0
b $8CAC
t $8CAF
b $8CBB
t $8CBE
b $8CC5
t $8CC8
b $8CCF
t $8CD2
b $8CD9
t $8CDC
b $8CE3
t $8CE6
b $8CED
t $8CF0
b $8CFA
t $8D11
b $8D17
t $8D1A
b $8D21
t $8D24
b $8D2C
t $8D2F
b $8D38
t $8D3B
b $8D48
t $8D4B
b $8D57
t $8D5A
c $8D61
c $8D78 Clear the screen
s $8D80
c $8DCC
s $8DED

b $9088 Graphics : Main playing area
B $9089,$1D0,$4
b $9259 Graphics : Ramparts (short) left edge
B $925A,$24,$4
b $92D4 Graphics : Blank bell area
B $92D5,$50,$4
b $927E Graphics : Pit left edge
B $927F,$24,$4
b $92A3 Graphics : Ramparts (long) left edge
B $92A4,$30,$4
b $9325 Graphics : Rampart soldiers
B $9326,$78,$4
b $939E Graphics : Rampart soldiers raised spears
B $939F,$24,$4
b $93C3 Graphics : Rampart soldiers raised foot
B $93C4,$18,$4
b $93DC Graphics : Rampart soldiers lowered spears
B $93DD,$24,$4
b $9401 Graphics : Rampart soldiers lowered foot
B $9402,$18,$4
b $941A Graphics : End of level score box
B $941B,$70,$4
b $948B Graphics : Start of game options
B $948C,$224,$4
b $96B0 Graphics : SCORE
B $96B1,$14,$4
b $96C5 Graphics : Row of bells
B $96C6,$90,$4
b $9756 Graphics : Esmerelda
B $9757,$88,$4
b $97DF Graphics : HELP
B $97E0,$10,$4
b $97F0 Graphics : Heart
B $97F1,$10,$4

s $9801
b $9858 Copy of Quasimodo L
b $99D8
c $9A4C Print the main wall
R $94AC IX Pointer to graphic buffer
c $9A73 Convert Y co-ordinate to a screen address
R $9A73 D Y co-ordinate
R $9A73 HL On exit, holds the screen address
c $9A90 Print a graphic on screen
R $9A90 A Attribute
R $9A90 C Graphic ID
R $9A90 D Y co-ordinate
R $9A90 E X co-ordinate
c $9AAE Convert a graphic ID to an address in memory
R $9AAE C Graphic ID
R $9AAE DE On return, holds a memory address
c $9ABA Convert a screen address to attribute
R $9ABA HL Screen address
c $9ACA Print a group of graphics
D $9ACA The buffer contains the number of entries, 
. followed by the attribute, graphic ID, Y and X co-ordinates for each cell
R $9ACA IX Pointer to graphic buffer
c $9AEB Erase a group of graphics
D $9AEB The buffer contains the number of entries, 
. followed by the attribute, graphic ID, Y and X co-ordinates for each cell
R $9AEB IX Pointer to graphic buffer
c $9B0C Erase a graphic on screen
R $9B0C A Attribute
R $9B0C C Graphic ID
R $9B0C D Y co-ordinate
R $9B0C E X co-ordinate
g $9B2B
c $9B2C
c $9B43
s $9B4A

b $9C40 Title screen
  $9C40 #UDGTABLE { #SCR2,0,0,32,24,$9C40,$B440(title) } TABLE#

s $B740
c $B798 Draw a sprite
R $B798 A Attribute
R $B798 C Sprite ID
R $B798 D Y co-ordinate
R $B798 E X co-ordinate
c $B872
c $B8EA Get a buffer to a sprite given its ID
R $B8EA C Sprite ID
R $B8EA DE On exit, holds the buffer address
c $B8F6
c $B8FA Convert a Y co-ordinate to a screen address
R $B8FA D Y co-ordinate
R $B8FA HL On exit, holds screen address
s $B926
c $B928 Convert a screen address into an attribute
R $B928 HL Screen address
c $B939
s $B93A
c $B98C
c $B9BA
c $B9CE Draw the fiery pit
c $B9F7
c $B9FD
c $BA03
b $BA33
s $BB0E
b $BF68 Number of notes in the level completed tune
b $BF69 Level completed note data
W $BF69,$08,$04
b $BF71
b $BF77 Number of notes in the jump tune
b $BF78 Jump tune note data
W $BF78,$04,$04
b $BF7C Number of notes in the lost a life tune
b $BF7D Lost a life note data
W $BF7D,$18,$04
s $BF95
b $BFA4 Number of notes in the ???
b $BFA5 Note data
W $BFA5,$04,$04
s $BFA9
c $C030
c $C060
b $C06B
c $C0C6
s $C0CD
c $C0F8
c $C10E
c $C12E
b $C14C
c $C15C Play a sound effect
R $C15C IX Pointer to sound data
c $C182 Play a note in the sound data
c $C1B6
s $C1B8

b $C350 Sprite 00 - 07 : Quasimodo right
D $C350 This is a double-height sprite

@ $C350 label=Sprite_00-04
  $C350 #SPRITE4(Sprite_00-04)

@ $C380 label=Sprite_01-05
  $C380 #SPRITE4(Sprite_01-05)

@ $C3B0 label=Sprite_02-06
  $C3B0 #SPRITE4(Sprite_02-06)

@ $C3E0 label=Sprite_03-07
  $C3E0 #SPRITE4(Sprite_03-07)

b $C4D0 Sprite 08 - 0F : Quasimodo left
D $C4D0 This is a double-height sprite
B $C4D0,$180,$8

@ $C4D0 label=Sprite_08-0C
  $C4D0 #SPRITE4(Sprite_08-0C)

@ $C500 label=Sprite_09-0D
  $C500 #SPRITE4(Sprite_09-0D)

@ $C530 label=Sprite_0A-0E
  $C530 #SPRITE4(Sprite_0A-0E)

@ $C560 label=Sprite_0B-0F
  $C560 #SPRITE4(Sprite_0B-0F)

b $C650 Sprite 10 - 13 : Arrow left
B $C650,$C0,$8

@ $C650 label=Sprite_10
  $C650 #SPRITE2(Sprite_10)

@ $C680 label=Sprite_11
  $C680 #SPRITE2(Sprite_11)

@ $C6B0 label=Sprite_12
  $C6B0 #SPRITE2(Sprite_12)

@ $C6E0 label=Sprite_13
  $C6E0 #SPRITE2(Sprite_13)

b $C710 Sprite 14 - 17 : Fireball left
B $C710,$C0,$8

@ $C710 label=Sprite_14
  $C710 #SPRITE3(Sprite_14)

@ $C740 label=Sprite_15
  $C740 #SPRITE3(Sprite_15)

@ $C770 label=Sprite_16
  $C770 #SPRITE3(Sprite_16)

@ $C7A0 label=Sprite_17
  $C7A0 #SPRITE3(Sprite_17)

b $C7D0 Sprite 18 - 1B : Arrow right
B $C7D0,$C0,$8

@ $C7D0 label=Sprite_18
  $C7D0 #SPRITE2(Sprite_18)

@ $C800 label=Sprite_19
  $C800 #SPRITE2(Sprite_19)

@ $C830 label=Sprite_1A
  $C830 #SPRITE2(Sprite_1A)

@ $C860 label=Sprite_1B
  $C860 #SPRITE2(Sprite_1B)

b $C890 Sprite 1C - 1F : Fireball right
B $C890,$C0,$8

@ $C890 label=Sprite_1C
  $C890 #SPRITE3(Sprite_1C)

@ $C8C0 label=Sprite_1D
  $C8C0 #SPRITE3(Sprite_1D)

@ $C8F0 label=Sprite_1E
  $C8F0 #SPRITE3(Sprite_1E)

@ $C920 label=Sprite_1F
  $C920 #SPRITE3(Sprite_1F)

b $C950 Sprite 20 - 27 : Quasimodo on rope
B $C950,$180,$8

@ $C950 label=Sprite_20-21
  $C950 #SPRITE14(Sprite_20-21)

@ $C9B0 label=Sprite_22-23
  $C9B0 #SPRITE14(Sprite_22-23)

@ $CA10 label=Sprite_24-25
  $CA10 #SPRITE14(Sprite_24-25)

@ $CA70 label=Sprite_26-27
  $CA70 #SPRITE14(Sprite_26-27)

b $CAD0 Sprite 28 - 2B : Chasing knight
B $CAD0,$C0,$8 

@ $CAD0 label=Sprite_28-29
  $CAD0 #SPRITE5(Sprite_28-29)

@ $CB30 label=Sprite_2A-2B
  $CB30 #SPRITE5(Sprite_2A-2B)

s $CB90

b $CD14 UDGs
B $CD14,$590,$8

@ $CD14 label=UDG_00
  $CD14 #CHARSET
@ $CD1C label=UDG_01
  $CD1C #CHARSET
@ $CD24 label=UDG_02
  $CD24 #CHARSET
@ $CD2C label=UDG_03
  $CD2C #CHARSET
@ $CD34 label=UDG_04
  $CD34 #CHARSET
@ $CD3C label=UDG_05
  $CD3C #CHARSET
@ $CD44 label=UDG_06
  $CD44 #CHARSET
@ $CD4C label=UDG_07
  $CD4C #CHARSET
@ $CD54 label=UDG_08
  $CD54 #CHARSET
@ $CD5C label=UDG_09
  $CD5C #CHARSET
@ $CD64 label=UDG_0A
  $CD64 #CHARSET
@ $CD6C label=UDG_0B
  $CD6C #CHARSET
@ $CD74 label=UDG_0C
  $CD74 #CHARSET
@ $CD7C label=UDG_0D
  $CD7C #CHARSET
@ $CD84 label=UDG_0E
  $CD84 #CHARSET
@ $CD8C label=UDG_0F
  $CD8C #CHARSET

@ $CD94 label=UDG_10
  $CD94 #CHARSET
@ $CD9C label=UDG_11
  $CD9C #CHARSET
@ $CDA4 label=UDG_12
  $CDA4 #CHARSET
@ $CDAC label=UDG_13
  $CDAC #CHARSET
@ $CDB4 label=UDG_14
  $CDB4 #CHARSET
@ $CDBC label=UDG_15
  $CDBC #CHARSET
@ $CDC4 label=UDG_16
  $CDC4 #CHARSET
@ $CDCC label=UDG_17
  $CDCC #CHARSET
@ $CDD4 label=UDG_18
  $CDD4 #CHARSET
@ $CDDC label=UDG_19
  $CDDC #CHARSET
@ $CDE4 label=UDG_1A
  $CDE4 #CHARSET
@ $CDEC label=UDG_1B
  $CDEC #CHARSET
@ $CDF4 label=UDG_1C
  $CDF4 #CHARSET
@ $CDFC label=UDG_1D
  $CDFC #CHARSET
@ $CE04 label=UDG_1E
  $CE04 #CHARSET
@ $CE0C label=UDG_1F
  $CE0C #CHARSET

@ $CE14 label=UDG_20
  $CE14 #CHARSET
@ $CE1C label=UDG_21
  $CE1C #CHARSET
@ $CE24 label=UDG_22
  $CE24 #CHARSET
@ $CE2C label=UDG_23
  $CE2C #CHARSET
@ $CE34 label=UDG_24
  $CE34 #CHARSET
@ $CE3C label=UDG_25
  $CE3C #CHARSET
@ $CE44 label=UDG_26
  $CE44 #CHARSET
@ $CE4C label=UDG_27
  $CE4C #CHARSET
@ $CE54 label=UDG_28
  $CE54 #CHARSET
@ $CE5C label=UDG_29
  $CE5C #CHARSET
@ $CE64 label=UDG_2A
  $CE64 #CHARSET
@ $CE6C label=UDG_2B
  $CE6C #CHARSET
@ $CE74 label=UDG_2C
  $CE74 #CHARSET
@ $CE7C label=UDG_2D
  $CE7C #CHARSET
@ $CE84 label=UDG_2E
  $CE84 #CHARSET
@ $CE8C label=UDG_2F
  $CE8C #CHARSET

@ $CE94 label=UDG_30
  $CE94 #CHARSET
@ $CE9C label=UDG_31
  $CE9C #CHARSET
@ $CEA4 label=UDG_32
  $CEA4 #CHARSET
@ $CEAC label=UDG_33
  $CEAC #CHARSET
@ $CEB4 label=UDG_34
  $CEB4 #CHARSET
@ $CEBC label=UDG_35
  $CEBC #CHARSET
@ $CEC4 label=UDG_36
  $CEC4 #CHARSET
@ $CECC label=UDG_37
  $CECC #CHARSET
@ $CED4 label=UDG_38
  $CED4 #CHARSET
@ $CEDC label=UDG_39
  $CEDC #CHARSET
@ $CEE4 label=UDG_3A
  $CEE4 #CHARSET
@ $CEEC label=UDG_3B
  $CEEC #CHARSET
@ $CEF4 label=UDG_3C
  $CEF4 #CHARSET
@ $CEFC label=UDG_3D
  $CEFC #CHARSET
@ $CF04 label=UDG_3E
  $CF04 #CHARSET
@ $CF0C label=UDG_3F
  $CF0C #CHARSET

@ $CF14 label=UDG_40
  $CF14 #CHARSET
@ $CF1C label=UDG_41
  $CF1C #CHARSET
@ $CF24 label=UDG_42
  $CF24 #CHARSET
@ $CF2C label=UDG_43
  $CF2C #CHARSET
@ $CF34 label=UDG_44
  $CF34 #CHARSET
@ $CF3C label=UDG_45
  $CF3C #CHARSET
@ $CF44 label=UDG_46
  $CF44 #CHARSET
@ $CF4C label=UDG_47
  $CF4C #CHARSET
@ $CF54 label=UDG_48
  $CF54 #CHARSET
@ $CF5C label=UDG_49
  $CF5C #CHARSET
@ $CF64 label=UDG_4A
  $CF64 #CHARSET
@ $CF6C label=UDG_4B
  $CF6C #CHARSET
@ $CF74 label=UDG_4C
  $CF74 #CHARSET
@ $CF7C label=UDG_4D
  $CF7C #CHARSET
@ $CF84 label=UDG_4E
  $CF84 #CHARSET
@ $CF8C label=UDG_4F
  $CF8C #CHARSET

@ $CF94 label=UDG_50
  $CF94 #CHARSET
@ $CF9C label=UDG_51
  $CF9C #CHARSET
@ $CFA4 label=UDG_52
  $CFA4 #CHARSET
@ $CFAC label=UDG_53
  $CFAC #CHARSET
@ $CFB4 label=UDG_54
  $CFB4 #CHARSET
@ $CFBC label=UDG_55
  $CFBC #CHARSET
@ $CFC4 label=UDG_56
  $CFC4 #CHARSET
@ $CFCC label=UDG_57
  $CFCC #CHARSET
@ $CFD4 label=UDG_58
  $CFD4 #CHARSET
@ $CFDC label=UDG_59
  $CFDC #CHARSET
@ $CFE4 label=UDG_5A
  $CFE4 #CHARSET
@ $CFEC label=UDG_5B
  $CFEC #CHARSET
@ $CFF4 label=UDG_5C
  $CFF4 #CHARSET
@ $CFFC label=UDG_5D
  $CFFC #CHARSET
@ $D004 label=UDG_5E
  $D004 #CHARSET
@ $D00C label=UDG_5F
  $D00C #CHARSET

@ $D014 label=UDG_60
  $D014 #CHARSET
@ $D01C label=UDG_61
  $D01C #CHARSET
@ $D024 label=UDG_62
  $D024 #CHARSET
@ $D02C label=UDG_63
  $D02C #CHARSET
@ $D034 label=UDG_64
  $D034 #CHARSET
@ $D03C label=UDG_65
  $D03C #CHARSET
@ $D044 label=UDG_66
  $D044 #CHARSET
@ $D04C label=UDG_67
  $D04C #CHARSET
@ $D054 label=UDG_68
  $D054 #CHARSET
@ $D05C label=UDG_69
  $D05C #CHARSET
@ $D064 label=UDG_6A
  $D064 #CHARSET
@ $D06C label=UDG_6B
  $D06C #CHARSET
@ $D074 label=UDG_6C
  $D074 #CHARSET
@ $D07C label=UDG_6D
  $D07C #CHARSET
@ $D084 label=UDG_6E
  $D084 #CHARSET
@ $D08C label=UDG_6F
  $D08C #CHARSET

@ $D094 label=UDG_70
  $D094 #CHARSET
@ $D09C label=UDG_71
  $D09C #CHARSET
@ $D0A4 label=UDG_72
  $D0A4 #CHARSET
@ $D0AC label=UDG_73
  $D0AC #CHARSET
@ $D0B4 label=UDG_74
  $D0B4 #CHARSET
@ $D0BC label=UDG_75
  $D0BC #CHARSET
@ $D0C4 label=UDG_76
  $D0C4 #CHARSET
@ $D0CC label=UDG_77
  $D0CC #CHARSET
@ $D0D4 label=UDG_78
  $D0D4 #CHARSET
@ $D0DC label=UDG_79
  $D0DC #CHARSET
@ $D0E4 label=UDG_7A
  $D0E4 #CHARSET
@ $D0EC label=UDG_7B
  $D0EC #CHARSET
@ $D0F4 label=UDG_7C
  $D0F4 #CHARSET
@ $D0FC label=UDG_7D
  $D0FC #CHARSET
@ $D104 label=UDG_7E
  $D104 #CHARSET
@ $D10C label=UDG_7F
  $D10C #CHARSET

@ $D114 label=UDG_80
  $D114 #CHARSET
@ $D11C label=UDG_81
  $D11C #CHARSET
@ $D124 label=UDG_82
  $D124 #CHARSET
@ $D12C label=UDG_83
  $D12C #CHARSET
@ $D134 label=UDG_84
  $D134 #CHARSET
@ $D13C label=UDG_85
  $D13C #CHARSET
@ $D144 label=UDG_86
  $D144 #CHARSET
@ $D14C label=UDG_87
  $D14C #CHARSET
@ $D154 label=UDG_88
  $D154 #CHARSET
@ $D15C label=UDG_89
  $D15C #CHARSET
@ $D164 label=UDG_8A
  $D164 #CHARSET
@ $D16C label=UDG_8B
  $D16C #CHARSET
@ $D174 label=UDG_8C
  $D174 #CHARSET
@ $D17C label=UDG_8D
  $D17C #CHARSET
@ $D184 label=UDG_8E
  $D184 #CHARSET
@ $D18C label=UDG_8F
  $D18C #CHARSET

@ $D194 label=UDG_90
  $D194 #CHARSET
@ $D19C label=UDG_91
  $D19C #CHARSET
@ $D1A4 label=UDG_92
  $D1A4 #CHARSET
@ $D1AC label=UDG_93
  $D1AC #CHARSET
@ $D1B4 label=UDG_94
  $D1B4 #CHARSET
@ $D1BC label=UDG_95
  $D1BC #CHARSET
@ $D1C4 label=UDG_96
  $D1C4 #CHARSET
@ $D1CC label=UDG_97
  $D1CC #CHARSET
@ $D1D4 label=UDG_98
  $D1D4 #CHARSET
@ $D1DC label=UDG_99
  $D1DC #CHARSET
@ $D1E4 label=UDG_9A
  $D1E4 #CHARSET
@ $D1EC label=UDG_9B
  $D1EC #CHARSET
@ $D1F4 label=UDG_9C
  $D1F4 #CHARSET
@ $D1FC label=UDG_9D
  $D1FC #CHARSET
@ $D204 label=UDG_9E
  $D204 #CHARSET
@ $D20C label=UDG_9F
  $D20C #CHARSET

@ $D214 label=UDG_A0
  $D214 #CHARSET
@ $D21C label=UDG_A1
  $D21C #CHARSET
@ $D224 label=UDG_A2
  $D224 #CHARSET
@ $D22C label=UDG_A3
  $D22C #CHARSET
@ $D234 label=UDG_A4
  $D234 #CHARSET
@ $D23C label=UDG_A5
  $D23C #CHARSET
@ $D244 label=UDG_A6
  $D244 #CHARSET
@ $D24C label=UDG_A7
  $D24C #CHARSET
@ $D254 label=UDG_A8
  $D254 #CHARSET
@ $D25C label=UDG_A9
  $D25C #CHARSET
@ $D264 label=UDG_AA
  $D264 #CHARSET
@ $D26C label=UDG_AB
  $D26C #CHARSET
@ $D274 label=UDG_AC
  $D274 #CHARSET
@ $D27C label=UDG_AD
  $D27C #CHARSET
@ $D284 label=UDG_AE
  $D284 #CHARSET
@ $D28C label=UDG_AF
  $D28C #CHARSET

@ $D294 label=UDG_B0
  $D294 #CHARSET
@ $D29C label=UDG_B1
  $D29C #CHARSET

s $D2A4
u $D5AC
D $D5AC Disassembly
T $D5AC
c $E5F2
c $E60D
c $E647
s $E64F
c $E650
c $E653
c $E663
c $E676
c $E67E
c $E69C
c $E6A3
s $E6AF
c $E6B0
s $E6C0
c $E6C1
c $E6C9
b $E6EC
t $E709
b $E70D
t $E731
b $E735
t $E742
b $E746
t $E74A
b $E74E
t $E78B
b $E78F
t $E849
b $E84F
t $E8A2
b $E8A7
t $E8C2
b $E8C6
t $E8CB
b $E8CF
t $E8D9
b $E8DF
t $E8EA
b $E8EE
t $E8F4
b $E8F7
t $E94C
b $E94F
t $E9A1
b $E9A6
t $E9C3
b $E9C6
t $E9DC
b $E9DF
t $EA02
b $EA0B
t $EA12
c $EA1D
c $EA34
c $EA3C
c $EA85
b $EAA8
c $EAB0
c $EAF1
c $EB06
c $EB12
s $EB14
c $EB1A
s $EB1C
c $EB20
c $EB2C
c $EB38
c $EB3A
c $EB46
c $EB50
t $EB5A
b $EB5E
t $EB5F
b $EB64
t $EB66
b $EB6A
t $EB6B
b $EB71
t $EB72
c $EB79
b $EB8E
t $EBBD
b $EBDF
t $EBE0
b $EC07
c $EC08
c $EC1B
c $EC3A
c $EC41
c $EC69
c $EC6E
c $EC9C
c $ECBB
c $ECCE
c $ECFE
c $ED05
c $ED2E
c $ED3A
c $ED47
c $ED54
c $ED6B
c $ED81
c $EDA4
c $EDA8
c $EDD5
b $EDEA
t $EE08
b $EE2D
t $EE3F
b $EE44
i $EE48
