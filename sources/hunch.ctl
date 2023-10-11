@ $4000 start
@ $4000 org

@ $4000 replace=/#CHARSET/#UDG(#PC)/

@ $4000 replace=/#SPRITE2,\i,\i/#UDGARRAY3,\1;(\2);(\2+$10);(\2+$20);(\2+$08);(\2+$18);(\2+$28)
@ $4000 replace=/#SPRITE4,\i,\i/#UDGARRAY3,\1;(\2);(\2+$10);(\2+$20);(\2+$08);(\2+$18);(\2+$28);(\2+$C0);(\2+$D0);(\2+$E0);(\2+$C8);(\2+$D8);(\2+$E8)
@ $4000 replace=/#SPRITE5,\i,\i/#UDGARRAY3,\1;(\2);(\2+$10);(\2+$20);(\2+$08);(\2+$18);(\2+$28);(\2+$30);(\2+$40);(\2+$50);(\2+$38);(\2+$48);(\2+$58)
@ $4000 replace=/#SPRITE14,\i,\i/#UDGARRAY3,\1;(\2);(\2+$10);(\2+$20);(\2+$08);(\2+$18);(\2+$28);(\2+$30);(\2+$40);(\2+$50);(\2+$38);(\2+$48);(\2+$58)

@ $4000 replace=/#GX\i/(\1*8+$CD0C)/

b $4000 Loading screen
D $4000 #UDGTABLE { #SCR2(loading) } TABLE#

u $5B00 Unused

c $607C Main entry point 1
D $607C The game starts here after it has loaded

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
D $60D2 This entry point is called at the start of each level, or after losing a life
c $6120 Start the game

c $6127 Run the demo
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
c $638C Main loop (1)
c $641D Redraw Quasimodo while jumping
c $646A Copy player's co-ordinates to a test buffer
c $647D Copy player's co-ordinates from a test buffer
c $6490 Main loop (2) - Update all objects on screen
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

c $688A Throw Quasimodo off the wall as he's died
c $68E5 Reset the level after dying

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
c $6E45 Draw Quasimodo
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
c $7222 Draw a magenta stripe on the right of the screen
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
c $8A48 End the game after all lives have been lost
c $8A71 Put the score on the high score table if necessary
c $8B0C
c $8B25
g $8B2B
c $8B2C
c $8B42
c $8B4B

c $8B4F Display the high score table
c $8B5F Input a new entry in the high score table
C $8BA4 Add the selected character to the new high score name

c $8BC4 Display an entry in the high score table
R $8BC4 IX Pointer to high score data
D $8BC4 Used by the routine in #R$8B4F.
D $8BC4 The data has the format
. #TABLE()
. {=h Offset | =h Value }
. { 0 | Y co-ordinate }
. { 1 | X co-ordinate }
. { 2 - | The string to print, ending with #N$FF }
. TABLE#
c $8BF1 Display a character in the high score table
R $8BF1 HL Location on screen to print
R $8BF1 DE Address in the character set (relative to #N$3D00) to display
c $8BFC Convert a Y co-ordinate to a screen address
R $8BFC D Row to Convert
R $8BFC HL On exit, holds the screen address
c $8C13 Enter a character for the new high score name
c $8C38 Move the high score entry cursor right
c $8C45 Move the high score entry cursor left

t $8C52 High score 00 - text : A-Z
t $8C71 High score 01 - name 1
t $8C80 High score 02 - name 2
t $8C8F High score 03 - name 3
t $8C9E High score 04 - name 4
t $8CAD High score 05 - name 5
t $8CBC High score 06 - value 1
t $8CC6 High score 07 - value 2
t $8CD0 High score 08 - value 3
t $8CDA High score 09 - value 4
t $8CE4 High score 0A - value 5
t $8CEE High score 0B - "HIGH SCORE"
t $8CFB High score 0C - "1"
t $8CFF High score 0D - "2"
t $8D03 High score 0E - "3"
t $8D07 High score 0F - "4"
t $8D0B High score 10 - "5"
t $8D0F High score 11 - "Q-LEFT"
t $8D18 High score 12 - "W-RIGHT"
t $8D22 High score 13 - "0-DELETE"
t $8D2D High score 14 - "ENTER-END"
t $8D39 High score 15 - "S SHIFT-SELCT"
t $8D49 High score 16 - Numbers
t $8D58 Unused
t $8D59 Unused
t $8D5A Score text

c $8D61 Clear the screen blue (for high score display)
c $8D78 Clear the screen
s $8D80
c $8DCC Display the high score table in demo mode
s $8DED

b $9088 Graphics : Main playing area
D $9088 Used by the routine at #R$9ACA
B $9089,$1D0,$4

b $9259 Graphics : Ramparts (short) left edge
D $9259 Used by the routine at #R$9ACA
B $925A,$24,$4
D $9259 #UDGARRAY1,7;#GX$24;#GX$25;#GX$25(Ramparts)

b $92D4 Graphics : Blank bell area
D $92D4 Used by the routine at #R$9ACA
B $92D5,$50,$4

b $927E Graphics : Pit left edge
D $927E Used by the routine at #R$9ACA
B $927F,$24,$4
D $927E #UDGARRAY1,7;#GX$24;#GX$25;#GX$25;#GX$25;#GX$25;#GX$25;#GX$25;#GX$25;#GX$25(Pit_left)

b $92A3 Graphics : Ramparts (long) left edge
D $92A3 Used by the routine at #R$9ACA
B $92A4,$30,$4
D $92A3 #UDGARRAY1,7;#GX$24;#GX$25;#GX$25;#GX$25(Ramparts_long)

b $9325 Graphics : Rampart soldiers
D $9325 Used by the routine at #R$9ACA
B $9326,$78,$4
D $9325 #UDGARRAY2,6;#GX$52;#GX0;#GX$46;#GX0;#GX$47;#GX$48;#GX$49;#GX$4A;#GX$4B;#GX$4C;#GX$4D;#GX$4E(Soldier*) #UDGARRAY2,6;#GX$46;#GX0;#GX$4F;#GX0;#GX$47;#GX$48;#GX$49;#GX$4A;#GX$50;#GX$4C;#GX$51;#GX$4E(Soldier_raised*) #UDGARRAY*(Soldier;Soldier_raised)(Soldier_frames)

b $939E Graphics : Rampart soldiers raised spears
D $939E Used by the routine at #R$9ACA
B $939F,$24,$4
D $939E #UDGARRAY1,6;#GX$46;#GX$4F(Soldier_spear)

b $93C3 Graphics : Rampart soldiers raised foot
D $93C3 Used by the routine at #R$9ACA
B $93C4,$18,$4
D $93C3 #UDGARRAY1,6;#GX$50;#GX$51(Soldier_foot)

b $93DC Graphics : Rampart soldiers lowered spears
D $93DC Used by the routine at #R$9ACA
B $93DD,$24,$4
D $93DC #UDGARRAY1,6;#GX$46;#GX$46(Soldier_!spear)

b $9401 Graphics : Rampart soldiers lowered foot
D $9401 Used by the routine at #R$9ACA
B $9402,$18,$4
D $9401 #UDGARRAY1,6;#GX$4B;#GX$4D(Soldier_!foot)

b $941A Graphics : End of level score box
D $941A Used by the routine at #R$9ACA
B $941B,$70,$4
D $941A #UDGARRAY7,$96;#GX$55;#GX$56;#GX$56;#GX$56;#GX$56;#GX$56;#GX$57;#GX$58;#GX$52,7;#GX$52,7;#GX$52,7;#GX$52,7;#GX$52,7;#GX$59;#GX$58;#GX$52,7;#GX$52,7;#GX$52,7;#GX$52,7;#GX$52,7;#GX$59;#GX$5A;#GX$5B;#GX$5B;#GX$5B;#GX$5B;#GX$5B;#GX$5C(Scorebox)

b $948B Graphics : Start of game options
D $948B Used by the routine at #R$9ACA
B $948C,$224,$4
D $948B #UDGARRAY12,5;#GX$8C;#GX$90;#GX$90;#GX$90;#GX$90;#GX$90;#GX$90;#GX$90;#GX$90;#GX$90;#GX$90;#GX$8D;#GX$8B;#GX$7F;#GX$80;#GX$7F;#GX$83;#GX$85;#GX$86;#GX$7F;#GX$87;#GX$92;#GX$93;#GX$7E;#GX$8B;#GX$81;#GX$82;#GX$81;#GX$84;#GX$81;#GX$84;#GX$81;#GX$88;#GX$89;#GX$8A;#GX$7E;#GX$8E;#GX$91;#GX$91;#GX$91;#GX$91;#GX$91;#GX$91;#GX$91;#GX$91;#GX$91;#GX$91;#GX$8F(Opt_1)
. #UDGARRAY9,7;#GX$75;#GX$6D;#GX$6E;#GX$67;#GX$6E;#GX$76;#GX$6A;#GX$67;#GX0;#GX$7C;#GX$7B;#GX$76;#GX$7A;#GX$7C;#GX$72;#GX$6C;#GX$7A;#GX$70(Opt_2)
D $948B #UDGARRAY11,7;#GX$5E;#GX$6F;#GX0;#GX$70;#GX$6E;#GX$71;#GX$72;#GX$68;#GX$6C;#GX$6D;#GX$73(Opt_3)
D $948B #UDGARRAY22,7;#GX$5F;#GX$6F;#GX0;#GX$70;#GX$6E;#GX$74;#GX$75;#GX$67;#GX$6A;#GX$68;#GX$76;#GX0;#GX$78;#GX$76;#GX$6A;#GX$6E;#GX$6D;#GX$69;#GX$6C;#GX$7A;#GX$6E(Opt_4)
D $948B #UDGARRAY24,7;#GX$60;#GX$6F;#GX0;#GX$75;#GX$6D;#GX$68;#GX$6A;#GX$6E;#GX$70;#GX0;#GX$78;#GX$76;#GX$6A;#GX$6E;#GX$6D;#GX$69;#GX$6C;#GX$7A;#GX$6E(Opt_5)
D $948B #UDGARRAY20,7;#GX$61;#GX$6F;#GX0;#GX$78;#GX$76;#GX$6A;#GX$6E;#GX$6D;#GX$69;#GX$6C;#GX$7A;#GX$6E;#GX0;#GX$5F(Opt_6)
D $948B #UDGARRAY7,7;#GX$62;#GX$6F;#GX0;#GX$73;#GX$6E;#GX$74;#GX$68(Opt_7)

b $96B0 Graphics : SCORE
D $96B0 Used by the routine at #R$9ACA
B $96B1,$14,$4
D $96B0 #UDGARRAY5,7;#GX$67;#GX$79;#GX$68;#GX$6D;#GX$6E(Score)

b $96C5 Graphics : Row of bells
D $96C5 Used by the routine at #R$9ACA
B $96C6,$90,$4
D $96C5 #UDGARRAY11,6;#GX$26;#GX$27;#GX0;#GX$26;#GX$27;#GX0;#GX$26;#GX$27;#GX0;#GX$26;#GX$27;#GX$28;#GX$29;#GX0;#GX$28;#GX$29;#GX0;#GX$28;#GX$29;#GX0;#GX$28;#GX$29;#GX$2A;#GX0;#GX0;#GX$2A;#GX0;#GX0;#GX$2A;#GX0;#GX0;#GX$2A;#GX0;#GX$2A;#GX0;#GX0;#GX$2A;#GX0;#GX0;#GX$2A;#GX0;#GX0;#GX$2A;#GX0;#GX$2A;#GX0;#GX0;#GX$2A;#GX0;#GX0;#GX$2A;#GX0;#GX0;#GX$2A;#GX0;#GX$2A;#GX0;#GX0;#GX$2A;#GX0;#GX0;#GX$2A;#GX0;#GX0;#GX$2A;#GX0;#GX$2A;#GX0;#GX0;#GX$2A;#GX0;#GX0;#GX$2A;#GX0;#GX0;#GX$2A;#GX0(Bells)

b $9756 Graphics : Esmerelda
D $9756 Used by the routine at #R$9ACA
B $9757,$88,$4
D $9756 #UDGARRAY4,$3A;#GX0,0;#GX$A0,2;#GX$A1,2;#GX0,0;#GX$A0,2;#GX$A2,2;#GX$A2,2;#GX$A1,2;#GX$01;#GX$01;#GX$01;#GX$01;#GX$01;#GX$A4,6;#GX$A3,6;#GX$01;#GX$01;#GX$A6,6;#GX$A5,5;#GX$01;#GX$01;#GX$A8,2;#GX$A7,2;#GX$01;#GX$01;#GX$AA,2;#GX$A9,2;#GX$01;#GX$01;#GX$01;#GX$01;#GX$01;#GX$01;#GX$01;#GX$01;#GX$01(Esmerelda)

b $97DF Graphics : HELP
D $97DF Used by the routine at #R$9ACA
B $97E0,$10,$4
D $97DF #UDGARRAY2,2;#GX$AB;#GX$AC;#GX$AD;#GX$AE(Help*)

b $97F0 Graphics : Heart
D $97F0 Used by the routine at #R$9ACA
B $97F1,$10,$4
D $97F0 #UDGARRAY2,2;#GX$AF;#GX$B0;#GX$B1;#GX$B2(Heart*)#UDGARRAY*(Help;Heart)(HelpHeart)

s $9801
b $9858 Copy of Quasimodo L
s $99D8
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
D $9ACA The buffer contains the number of entries in the first byte, plus that number of the following:
. #TABLE(){ =h Offset | =h Field } { 0 | Attribute } { 1 | Y co-ordinate } { 2 | X co-ordinate } { 3 | UDG ID (offset from #R$CD0C) }TABLE#

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
D $C350 #SPRITE4,4,$C350(Sprite_00-04*)#SPRITE4,4,$C380(Sprite_01-05*)#SPRITE4,4,$C3B0(Sprite_02-06*)#SPRITE4,4,$C3E0(Sprite_03-07*);#UDGARRAY*(Sprite_00-04;Sprite_01-05;Sprite_02-06;Sprite_03-07)(Sprite_00-07)

@ $C350 label=Sprite_00-04

@ $C380 label=Sprite_01-05

@ $C3B0 label=Sprite_02-06

@ $C3E0 label=Sprite_03-07

b $C4D0 Sprite 08 - 0F : Quasimodo left
D $C4D0 This is a double-height sprite
B $C4D0,$180,$8
D $C4D0 #SPRITE4,4,$C4D0(Sprite_08-0C*)#SPRITE4,4,$C500(Sprite_09-0D*)#SPRITE4,4,$C530(Sprite_0A-0E*)#SPRITE4,4,$C560(Sprite_0B-0F*);#UDGARRAY*(Sprite_08-0C;Sprite_09-0D;Sprite_0A-0E;Sprite_0B-0F)(Sprite_08-0F)

@ $C4D0 label=Sprite_08-0C
 
@ $C500 label=Sprite_09-0D

@ $C530 label=Sprite_0A-0E

@ $C560 label=Sprite_0B-0F

b $C650 Sprite 10 - 13 : Arrow left
B $C650,$C0,$8

@ $C650 label=Sprite_10
D $C650 #SPRITE2,6,$C650(Sprite_10*)#SPRITE2,6,$C680(Sprite_11*)#SPRITE2,6,$C6B0(Sprite_12*)#SPRITE2,6,$C6E0(Sprite_13*)#UDGARRAY*(Sprite_10;Sprite_11;Sprite_12;Sprite_13)(Sprite_10-13)

@ $C680 label=Sprite_11

@ $C6B0 label=Sprite_12

@ $C6E0 label=Sprite_13

b $C710 Sprite 14 - 17 : Fireball left
B $C710,$C0,$8
D $C710 #SPRITE2,3,$C710(Sprite_14*)#SPRITE2,3,$C740(Sprite_15*)#SPRITE2,3,$C770(Sprite_16*)#SPRITE2,3,$C7A0(Sprite_17*)#UDGARRAY*(Sprite_14;Sprite_15;Sprite_16;Sprite_17)(Sprite_14-17)

@ $C710 label=Sprite_14
 
@ $C740 label=Sprite_15

@ $C770 label=Sprite_16

@ $C7A0 label=Sprite_17

b $C7D0 Sprite 18 - 1B : Arrow right
B $C7D0,$C0,$8
D $C7D0 #SPRITE2,6,$C7D0(Sprite_18*)#SPRITE2,6,$C800(Sprite_19*)#SPRITE2,6,$C830(Sprite_1A*)#SPRITE2,6,$C860(Sprite_1B*)#UDGARRAY*(Sprite_18;Sprite_19;Sprite_1A;Sprite_1B)(Sprite_18-1B)

@ $C7D0 label=Sprite_18

@ $C800 label=Sprite_19

@ $C830 label=Sprite_1A

@ $C860 label=Sprite_1B

b $C890 Sprite 1C - 1F : Fireball right
B $C890,$C0,$8
D $C890 #SPRITE2,3,$C890(Sprite_1C*)#SPRITE2,3,$C8C0(Sprite_1D*)#SPRITE2,3,$C8F0(Sprite_1E*)#SPRITE2,3,$C920(Sprite_1F*)#UDGARRAY*(Sprite_1C;Sprite_1D;Sprite_1E;Sprite_1F)(Sprite_1C-1F)

@ $C890 label=Sprite_1C

@ $C8C0 label=Sprite_1D

@ $C8F0 label=Sprite_1E

@ $C920 label=Sprite_1F

b $C950 Sprite 20 - 27 : Quasimodo on rope
B $C950,$180,$8
D $C950 #SPRITE14,4,$C950(Sprite_20-21*)#SPRITE14,4,$C9B0(Sprite_22-23*)#SPRITE14,4,$CA10(Sprite_24-25*)#SPRITE14,4,$CA70(Sprite_26-27*)#UDGARRAY*(Sprite_20-21;Sprite_22-23;Sprite_24-25;Sprite_26-27)(Sprite_20-27)

@ $C950 label=Sprite_20-21

@ $C9B0 label=Sprite_22-23

@ $CA10 label=Sprite_24-25

@ $CA70 label=Sprite_26-27

b $CAD0 Sprite 28 - 2B : Chasing knight
B $CAD0,$C0,$8 
D $CAD0 #SPRITE5,5,$CAD0(Sprite_28-29*)#SPRITE5,5,$CB30(Sprite_2A-2B*)#UDGARRAY*(Sprite_28-29;Sprite_2A-2B)(Sprite_28-2B)

@ $CAD0 label=Sprite_28-29

@ $CB30 label=Sprite_2A-2B

s $CB90

b $CD0C UDGs
B $CD0C,$598,$8

@ $CD0C label=UDG_00
  $CD0C #CHARSET

@ $CD14 label=UDG_01
  $CD14 #CHARSET
@ $CD1C label=UDG_02
  $CD1C #CHARSET
@ $CD24 label=UDG_03
  $CD24 #CHARSET
@ $CD2C label=UDG_04
  $CD2C #CHARSET
@ $CD34 label=UDG_05
  $CD34 #CHARSET
@ $CD3C label=UDG_06
  $CD3C #CHARSET
@ $CD44 label=UDG_07
  $CD44 #CHARSET
@ $CD4C label=UDG_08
  $CD4C #CHARSET
@ $CD54 label=UDG_09
  $CD54 #CHARSET
@ $CD5C label=UDG_0A
  $CD5C #CHARSET
@ $CD64 label=UDG_0B
  $CD64 #CHARSET
@ $CD6C label=UDG_0C
  $CD6C #CHARSET
@ $CD74 label=UDG_0D
  $CD74 #CHARSET
@ $CD7C label=UDG_0E
  $CD7C #CHARSET
@ $CD84 label=UDG_0F
  $CD84 #CHARSET
@ $CD8C label=UDG_10
  $CD8C #CHARSET

@ $CD94 label=UDG_11
  $CD94 #CHARSET
@ $CD9C label=UDG_12
  $CD9C #CHARSET
@ $CDA4 label=UDG_13
  $CDA4 #CHARSET
@ $CDAC label=UDG_14
  $CDAC #CHARSET
@ $CDB4 label=UDG_15
  $CDB4 #CHARSET
@ $CDBC label=UDG_16
  $CDBC #CHARSET
@ $CDC4 label=UDG_17
  $CDC4 #CHARSET
@ $CDCC label=UDG_18
  $CDCC #CHARSET
@ $CDD4 label=UDG_19
  $CDD4 #CHARSET
@ $CDDC label=UDG_1A
  $CDDC #CHARSET
@ $CDE4 label=UDG_1B
  $CDE4 #CHARSET
@ $CDEC label=UDG_1C
  $CDEC #CHARSET
@ $CDF4 label=UDG_1D
  $CDF4 #CHARSET
@ $CDFC label=UDG_1E
  $CDFC #CHARSET
@ $CE04 label=UDG_1F
  $CE04 #CHARSET
@ $CE0C label=UDG_20
  $CE0C #CHARSET

@ $CE14 label=UDG_21
  $CE14 #CHARSET
@ $CE1C label=UDG_22
  $CE1C #CHARSET
@ $CE24 label=UDG_23
  $CE24 #CHARSET
@ $CE2C label=UDG_24
  $CE2C #CHARSET
@ $CE34 label=UDG_25
  $CE34 #CHARSET
@ $CE3C label=UDG_26
  $CE3C #CHARSET
@ $CE44 label=UDG_27
  $CE44 #CHARSET
@ $CE4C label=UDG_28
  $CE4C #CHARSET
@ $CE54 label=UDG_29
  $CE54 #CHARSET
@ $CE5C label=UDG_2A
  $CE5C #CHARSET
@ $CE64 label=UDG_2B
  $CE64 #CHARSET
@ $CE6C label=UDG_2C
  $CE6C #CHARSET
@ $CE74 label=UDG_2D
  $CE74 #CHARSET
@ $CE7C label=UDG_2E
  $CE7C #CHARSET
@ $CE84 label=UDG_2F
  $CE84 #CHARSET
@ $CE8C label=UDG_30
  $CE8C #CHARSET

@ $CE94 label=UDG_31
  $CE94 #CHARSET
@ $CE9C label=UDG_32
  $CE9C #CHARSET
@ $CEA4 label=UDG_33
  $CEA4 #CHARSET
@ $CEAC label=UDG_34
  $CEAC #CHARSET
@ $CEB4 label=UDG_35
  $CEB4 #CHARSET
@ $CEBC label=UDG_36
  $CEBC #CHARSET
@ $CEC4 label=UDG_37
  $CEC4 #CHARSET
@ $CECC label=UDG_38
  $CECC #CHARSET
@ $CED4 label=UDG_39
  $CED4 #CHARSET
@ $CEDC label=UDG_3A
  $CEDC #CHARSET
@ $CEE4 label=UDG_3B
  $CEE4 #CHARSET
@ $CEEC label=UDG_3C
  $CEEC #CHARSET
@ $CEF4 label=UDG_3D
  $CEF4 #CHARSET
@ $CEFC label=UDG_3E
  $CEFC #CHARSET
@ $CF04 label=UDG_3F
  $CF04 #CHARSET
@ $CF0C label=UDG_40
  $CF0C #CHARSET

@ $CF14 label=UDG_41
  $CF14 #CHARSET
@ $CF1C label=UDG_42
  $CF1C #CHARSET
@ $CF24 label=UDG_43
  $CF24 #CHARSET
@ $CF2C label=UDG_44
  $CF2C #CHARSET
@ $CF34 label=UDG_45
  $CF34 #CHARSET
@ $CF3C label=UDG_46
  $CF3C #CHARSET
@ $CF44 label=UDG_47
  $CF44 #CHARSET
@ $CF4C label=UDG_48
  $CF4C #CHARSET
@ $CF54 label=UDG_49
  $CF54 #CHARSET
@ $CF5C label=UDG_4A
  $CF5C #CHARSET
@ $CF64 label=UDG_4B
  $CF64 #CHARSET
@ $CF6C label=UDG_4C
  $CF6C #CHARSET
@ $CF74 label=UDG_4D
  $CF74 #CHARSET
@ $CF7C label=UDG_4E
  $CF7C #CHARSET
@ $CF84 label=UDG_4F
  $CF84 #CHARSET
@ $CF8C label=UDG_50
  $CF8C #CHARSET

@ $CF94 label=UDG_51
  $CF94 #CHARSET
@ $CF9C label=UDG_52
  $CF9C #CHARSET
@ $CFA4 label=UDG_53
  $CFA4 #CHARSET
@ $CFAC label=UDG_54
  $CFAC #CHARSET
@ $CFB4 label=UDG_55
  $CFB4 #CHARSET
@ $CFBC label=UDG_56
  $CFBC #CHARSET
@ $CFC4 label=UDG_57
  $CFC4 #CHARSET
@ $CFCC label=UDG_58
  $CFCC #CHARSET
@ $CFD4 label=UDG_59
  $CFD4 #CHARSET
@ $CFDC label=UDG_5A
  $CFDC #CHARSET
@ $CFE4 label=UDG_5B
  $CFE4 #CHARSET
@ $CFEC label=UDG_5C
  $CFEC #CHARSET
@ $CFF4 label=UDG_5D
  $CFF4 #CHARSET
@ $CFFC label=UDG_5E
  $CFFC #CHARSET
@ $D004 label=UDG_5F
  $D004 #CHARSET
@ $D00C label=UDG_60
  $D00C #CHARSET

@ $D014 label=UDG_61
  $D014 #CHARSET
@ $D01C label=UDG_62
  $D01C #CHARSET
@ $D024 label=UDG_63
  $D024 #CHARSET
@ $D02C label=UDG_64
  $D02C #CHARSET
@ $D034 label=UDG_65
  $D034 #CHARSET
@ $D03C label=UDG_66
  $D03C #CHARSET
@ $D044 label=UDG_67
  $D044 #CHARSET
@ $D04C label=UDG_68
  $D04C #CHARSET
@ $D054 label=UDG_69
  $D054 #CHARSET
@ $D05C label=UDG_6A
  $D05C #CHARSET
@ $D064 label=UDG_6B
  $D064 #CHARSET
@ $D06C label=UDG_6C
  $D06C #CHARSET
@ $D074 label=UDG_6D
  $D074 #CHARSET
@ $D07C label=UDG_6E
  $D07C #CHARSET
@ $D084 label=UDG_6F
  $D084 #CHARSET
@ $D08C label=UDG_70
  $D08C #CHARSET

@ $D094 label=UDG_71
  $D094 #CHARSET
@ $D09C label=UDG_72
  $D09C #CHARSET
@ $D0A4 label=UDG_73
  $D0A4 #CHARSET
@ $D0AC label=UDG_74
  $D0AC #CHARSET
@ $D0B4 label=UDG_75
  $D0B4 #CHARSET
@ $D0BC label=UDG_76
  $D0BC #CHARSET
@ $D0C4 label=UDG_77
  $D0C4 #CHARSET
@ $D0CC label=UDG_78
  $D0CC #CHARSET
@ $D0D4 label=UDG_79
  $D0D4 #CHARSET
@ $D0DC label=UDG_7A
  $D0DC #CHARSET
@ $D0E4 label=UDG_7B
  $D0E4 #CHARSET
@ $D0EC label=UDG_7C
  $D0EC #CHARSET
@ $D0F4 label=UDG_7D
  $D0F4 #CHARSET
@ $D0FC label=UDG_7E
  $D0FC #CHARSET
@ $D104 label=UDG_7F
  $D104 #CHARSET
@ $D10C label=UDG_80
  $D10C #CHARSET

@ $D114 label=UDG_81
  $D114 #CHARSET
@ $D11C label=UDG_82
  $D11C #CHARSET
@ $D124 label=UDG_83
  $D124 #CHARSET
@ $D12C label=UDG_84
  $D12C #CHARSET
@ $D134 label=UDG_85
  $D134 #CHARSET
@ $D13C label=UDG_86
  $D13C #CHARSET
@ $D144 label=UDG_87
  $D144 #CHARSET
@ $D14C label=UDG_88
  $D14C #CHARSET
@ $D154 label=UDG_89
  $D154 #CHARSET
@ $D15C label=UDG_8A
  $D15C #CHARSET
@ $D164 label=UDG_8B
  $D164 #CHARSET
@ $D16C label=UDG_8C
  $D16C #CHARSET
@ $D174 label=UDG_8D
  $D174 #CHARSET
@ $D17C label=UDG_8E
  $D17C #CHARSET
@ $D184 label=UDG_8F
  $D184 #CHARSET
@ $D18C label=UDG_90
  $D18C #CHARSET

@ $D194 label=UDG_91
  $D194 #CHARSET
@ $D19C label=UDG_92
  $D19C #CHARSET
@ $D1A4 label=UDG_93
  $D1A4 #CHARSET
@ $D1AC label=UDG_94
  $D1AC #CHARSET
@ $D1B4 label=UDG_95
  $D1B4 #CHARSET
@ $D1BC label=UDG_96
  $D1BC #CHARSET
@ $D1C4 label=UDG_97
  $D1C4 #CHARSET
@ $D1CC label=UDG_98
  $D1CC #CHARSET
@ $D1D4 label=UDG_99
  $D1D4 #CHARSET
@ $D1DC label=UDG_9A
  $D1DC #CHARSET
@ $D1E4 label=UDG_9B
  $D1E4 #CHARSET
@ $D1EC label=UDG_9C
  $D1EC #CHARSET
@ $D1F4 label=UDG_9D
  $D1F4 #CHARSET
@ $D1FC label=UDG_9E
  $D1FC #CHARSET
@ $D204 label=UDG_9F
  $D204 #CHARSET
@ $D20C label=UDG_A0
  $D20C #CHARSET

@ $D214 label=UDG_A1
  $D214 #CHARSET
@ $D21C label=UDG_A2
  $D21C #CHARSET
@ $D224 label=UDG_A3
  $D224 #CHARSET
@ $D22C label=UDG_A4
  $D22C #CHARSET
@ $D234 label=UDG_A5
  $D234 #CHARSET
@ $D23C label=UDG_A6
  $D23C #CHARSET
@ $D244 label=UDG_A7
  $D244 #CHARSET
@ $D24C label=UDG_A8
  $D24C #CHARSET
@ $D254 label=UDG_A9
  $D254 #CHARSET
@ $D25C label=UDG_AA
  $D25C #CHARSET
@ $D264 label=UDG_AB
  $D264 #CHARSET
@ $D26C label=UDG_AC
  $D26C #CHARSET
@ $D274 label=UDG_AD
  $D274 #CHARSET
@ $D27C label=UDG_AE
  $D27C #CHARSET
@ $D284 label=UDG_AF
  $D284 #CHARSET
@ $D28C label=UDG_B0
  $D28C #CHARSET

@ $D294 label=UDG_B1
  $D294 #CHARSET
@ $D29C label=UDG_B2
  $D29C #CHARSET

s $D2A4
u $D5AC
D $D5AC Disassembly
T $D5AC
c $E60D
s $E64F
c $E650
c $E653
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
c $EA1D
c $EA34
c $EA3C
c $EA85
b $EAA8
c $EAC4 Flash the wall after dying
c $EAF1 Fill the wall with an attribute
R $EAF1 D Value to fill
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

u $EB50 Unused
D $EB50 Assembler data
T $EB50

c $EB81
b $EB8E
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
u $EDEA Unused
D $EDEA Assembler data
T $EDEA
u $EE45 Unused
C $EE45
i $EE48
