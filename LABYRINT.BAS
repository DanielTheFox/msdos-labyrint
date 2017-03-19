SCREEN 1
CLEAR
x = 2
y = 3
ON KEY(31) GOSUB rerun
KEY(31) ON
ON ERROR GOTO hand
DIM SHARED llave1 AS INTEGER
DIM SHARED llave2 AS INTEGER
DIM SHARED llave3 AS INTEGER
DIM SHARED front%
ini:
CLS
PRINT "Andrew's B&C Presents..."
REM L
DRAW "BM50, 50 D10 R10"
PLAY "O1T120L8MLdcP10d"
REM A
DRAW "BM65, 60 U10 R10 D10 BU3 L10"
PLAY "P4O2dcP10d"
REM B
DRAW "BM80, 50 R10 D10 L10 BR2 U10 BD5 R8"
PLAY "P4O3dcP10d"
REM Y
DRAW "BM95, 50 D5 R10 U5 D10 L10"
PLAY "P4O4dcP10d"
REM R
DRAW "BM110, 50 D10 BU10 R10 D5 L10 M120, 60"
PLAY "P4O4dcde"
REM I
DRAW "BM125, 50 R10 BL5 D10 BL5 R10"
PLAY "P4O5dcde"
REM N
DRAW "BM140, 60 U10 M150, 60 U10"
PLAY "P4O4dcde"
REM T
DRAW "BM155, 50 R10 BL5 D10"
PLAY "P4O2dcdc"
REM H
DRAW "BM170, 50 D10 U5 R10 U5 D10"
LOCATE 23
PRINT "Press Space bar to continue"
DO: LOOP UNTIL INKEY$ = CHR$(32)
pass:
DO
SCREEN 1
WIDTH 80, 25
PRINT "Would you like to load a game?"
PRINT ""
INPUT "[Y/N] ", var$
IF var$ = "n" OR var$ = "N" THEN GOTO keys
IF var$ = "y" OR var$ = "Y" THEN yes = 1
LOOP UNTIL yes = 1
clave:
CLS
SHELL "Dir *.cit"
PRINT ""
PRINT "Type the name of the saved data."
PRINT "Write a new game to create a new game."
INPUT "The name should not have dots or spaces: ", name$
 largo = LEN(name$)
 IF largo > 8 OR largo = 0 THEN ERROR 64
 DO
 dot$ = MID$(name$, buc, 1)
 SELECT CASE dot$
 CASE ".": ERROR 64
 CASE CHR$(34): ERROR 64
 CASE " ": ERROR 64
 CASE "(": ERROR 64
 CASE ")": ERROR 64
 CASE ",": ERROR 64
 CASE "\": ERROR 64
 CASE "/": ERROR 64
 CASE "|": ERROR 64
 CASE "*": ERROR 64
 CASE "?": ERROR 64
 CASE "<": ERROR 64
 CASE ">": ERROR 64
 CASE ":": ERROR 64
 CASE ";": ERROR 64
 END SELECT
 buc = buc + 1
 LOOP UNTIL buc = largo
 file$ = name$ + ".cit"
 OPEN file$ FOR INPUT AS #1
 INPUT #1, text$
IF text$ = "QBSCKRNL" THEN
 llave1 = 1
ELSEIF text$ = "DNFRRSTW" THEN
 llave2 = 1
ELSEIF text$ = "BFFTNNNQ" THEN
 llave3 = 1
ELSEIF text$ = "WNDSCLSD" THEN
 llave1 = 1
 llave2 = 1
ELSEIF text$ = "BPSMCLKS" THEN
 llave1 = 1
 llave3 = 1
ELSEIF text$ = "STRNGWRS" THEN
 llave2 = 1
 llave3 = 1
ELSEIF text$ = "MLSPWRSG" THEN
 llave1 = 1
 llave2 = 1
 llave3 = 1
END IF
keys:
 ON KEY(11) GOSUB arr
 ON KEY(12) GOSUB izq
 ON KEY(13) GOSUB der
 ON KEY(14) GOSUB aba
 ON KEY(1) GOSUB pause
 ON KEY(2) GOSUB status
 KEY(11) ON
 KEY(12) ON
 KEY(13) ON
 KEY(14) ON
 KEY(1) ON
 KEY(2) ON
 CLS
 SCREEN 0
 WIDTH 40, 25
 front% = 15
 COLOR front%, 0
game:
 CLS
 DO
 IF mapx = 0 AND mapy = 0 THEN GOSUB map0x0
 IF mapx = 1 AND mapy = 1 THEN GOSUB map1x1
 IF mapx = 1 AND mapy = 2 THEN GOSUB map1x2
 IF mapx = 2 AND mapy = 2 THEN GOSUB map2x2
 IF mapx = 1 AND mapy = 3 THEN GOSUB map1x3
 IF mapx = 2 AND mapy = 3 THEN GOSUB map2x3
 IF mapx = 2 AND mapy = 4 THEN GOSUB map2x4
 IF mapx = 10 AND mapy = 10 THEN GOSUB map10x10
 IF mapx = 9 AND mapy = 10 THEN GOSUB map9x10
 IF mapx = 9 AND mapy = 11 THEN GOSUB map9x11
 IF mapx = 10 AND mapy = 11 THEN GOSUB map10x11
 IF mapx = 11 AND mapy = 11 THEN GOSUB map11x11
 IF mapx = 11 AND mapy = 10 THEN GOSUB map11x10
 IF mapx = 12 AND mapy = 10 THEN GOSUB map12x10
 IF mapx = 12 AND mapy = 9 THEN GOSUB map12x9
 IF mapx = 11 AND mapy = 9 THEN GOSUB map11x9
 IF mapx = 11 AND mapy = 8 THEN GOSUB map11x8
 IF mapx = 12 AND mapy = 8 THEN GOSUB map12x8
 IF mapx = 12 AND mapy = 7 THEN GOSUB map12x7
 IF mapx = 12 AND mapy = 6 THEN GOSUB map12x6
 IF mapx = 20 AND mapy = 20 THEN GOSUB map20x20
 IF mapx = 19 AND mapy = 20 THEN GOSUB map19x20
 IF mapx = 19 AND mapy = 19 THEN GOSUB map19x19
 IF mapx = 20 AND mapy = 19 THEN GOSUB map20x19
 IF mapx = 21 AND mapy = 19 THEN GOSUB map21x19
 IF mapx = 21 AND mapy = 20 THEN GOSUB map21x20
 IF mapx = 21 AND mapy = 21 THEN GOSUB map21x21
 IF mapx = 20 AND mapy = 21 THEN GOSUB map20x21
 IF mapx = 19 AND mapy = 21 THEN GOSUB map19x21
 IF mapx = 19 AND mapy = 18 THEN GOSUB map19x18
 IF mapx = 20 AND mapy = 18 THEN GOSUB map20x18
 IF mapx = 21 AND mapy = 18 THEN GOSUB map21x18
 IF mapx = 21 AND mapy = 17 THEN GOSUB map21x17
 IF mapx = 22 AND mapy = 17 THEN GOSUB map22x17
 IF mapx = 21 AND mapy = 16 THEN GOSUB map21x16
 IF mapx = 10 AND mapy = 12 THEN GOSUB egg
 IF mapx = 100 AND mapy = 100 THEN GOSUB final
 LOCATE y, x
 PRINT "Û"
 LOCATE 1, 1
 PRINT "You're on level:"; lvl
 SLEEP
 LOOP
status:
 CLS
 PRINT "Current level:"; lvl
 PRINT ""
 IF llave1 = 1 THEN PRINT "You have key 1"
 IF llave2 = 1 THEN PRINT "You are holding key 2"
 IF llave3 = 1 THEN PRINT "You took the key 3"
 PRINT ""
 PRINT "Actual location:"; mapx; ","; mapy
 PRINT ""
 PRINT "Hora: "; TIME$
 SLEEP 0
 CLS
 RETURN
arr:
 y = y - 1
 IF y < 2 THEN mapy = mapy - 1: y = 22: CLS
 IF mapy < 0 THEN mapy = 0
 LOCATE y + 1, x
 PRINT " "
 RETURN
izq:
 x = x - 1
 IF x < 2 THEN x = 39: mapx = mapx - 1: CLS
 IF mapx < 0 THEN mapx = 0
 LOCATE y, x + 1
 PRINT " "
 RETURN
der:
 x = x + 1
 IF x > 39 THEN x = 2: mapx = mapx + 1: CLS
 LOCATE y, x - 1
 PRINT " "
 RETURN
aba:
 y = y + 1
 IF y > 22 THEN y = 2: mapy = mapy + 1: CLS
 LOCATE y - 1, x
 PRINT " "
 RETURN
pause:
 DO
 CLS
 PRINT "Pausing..."
 PLAY "O3T255MLL7fcfc"
 CLS
 PRINT "Pause menu"
 PRINT ""
 PRINT "1. Continue"
 PRINT "2. Exit"
 PRINT "3. Help"
 PRINT "4. Save data"
 PRINT "5. Change color"
 PRINT ""
 INPUT "Option: ", opt
 IF opt = 1 THEN RETURN game
 IF opt = 2 THEN SYSTEM
 IF opt = 3 THEN GOSUB ayuda
 IF opt = 4 THEN GOSUB saver
 IF opt = 5 THEN GOSUB cambcolor
 LOOP
rerun:
 RUN
map0x0:
 LOCATE 2
 PRINT "Step on the level you want to go"
 PRINT ""
 PRINT ""
 PRINT ""
 PRINT "     1          2         3"
 IF llave1 + llave2 + llave3 = 3 THEN
  LOCATE 10, 17
  PRINT "F"
  IF x = 17 AND y = 10 THEN
   LOCATE 20
   PRINT "Passing to the final level"
   SLEEP 3
   CLS
   lvl = 0
   mapx = 100
   mapy = 100
   x = 20
   y = 22
  END IF
 END IF
 IF x > 37 THEN x = x - 1
 IF y > 21 THEN y = y - 1
 IF x = 6 AND y = 6 THEN
  LOCATE 20
  PRINT "Going to choosen level"
  SLEEP 2
  CLS
  lvl = 1
  mapx = 1
  mapy = 1
  x = 3
  y = 3
 ELSEIF x = 17 AND y = 6 THEN
 LOCATE 20
 PRINT "Going to choosen level"
 SLEEP 2
 CLS
 lvl = 2
 mapx = 10
 mapy = 10
 x = 10
 y = 4
 ELSEIF x = 27 AND y = 6 THEN
 LOCATE 20
 PRINT "Going to choosen level"
 SLEEP 2
 CLS
 lvl = 3
 mapx = 20
 mapy = 20
 x = 18
 y = 13
 GOSUB map20x20
 END IF
 RETURN
map1x1:
 LOCATE 2, 1
 PRINT "ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿"
 PRINT " E              ³"
 PRINT "ÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿ ³"
 PRINT "              ³ ³"
 PRINT "              ³ ³"
 PRINT "              ³ ³"
 PRINT "              ³ ÀÄÄÄÄÄÄÄÄÄÄÄÄ±±±±"
 PRINT "              ³              ±±±±"
 PRINT "              ³ ÚÄÄÄÄÄÄÄÄÄÄÄÄ±±±±"
 PRINT "              ³ ³"
 PRINT "              ³ À¿"
 PRINT "              ³  ³"
 PRINT "              ³  ³"
 PRINT "              ³± ³"
 PRINT "              ³± ³"
 PRINT "              ³  ³"
 PRINT "              ³  ³"
 PRINT "              ³  ³"
 PRINT "              ³  ³"  'L¡nea 20
 PRINT "              ³ ±³"
 PRINT "              ³  ³"
 PRINT "              ³  ³"
 IF x < 18 AND y = 2 THEN y = y + 1
 IF x < 16 AND y = 4 THEN y = y - 1
 IF x = 17 AND (y > 1 AND y < 8) THEN x = x - 1
 IF (x > 16 AND x < 30) AND y = 8 THEN y = y + 1
 IF x = 15 AND (y > 3 AND y < 25) THEN x = x + 1
 IF x = 17 AND (y > 9 AND y < 13) THEN x = x - 1
 IF x = 17 AND y = 11 THEN y = y + 1
 IF x = 18 AND (y > 12 AND y < 25) THEN x = x - 1
 IF x = 30 AND y = 9 THEN GOSUB gameover
 IF x = 16 AND (y = 16 OR y = 15) THEN GOSUB gameover
 IF x = 17 AND (y > 20 AND y < 22) THEN GOSUB gameover
 IF (x = 2 AND y = 3) AND llave1 = 1 THEN GOSUB complete1
 IF (x = 2 AND y = 3) AND llave1 = 0 THEN
  CLS
  lvl = 0
  mapy = 0
  mapx = 0
  x = 2
  y = 3
 END IF
 RETURN
map1x2:
 LOCATE 2
 PRINT "              ³  ³"
 PRINT "              ³  ³"
 PRINT "              ³  ³"
 PRINT "              ³  ³"
 PRINT "              ³  ³"
 PRINT "              ³  ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ"
 PRINT "              ³"
 PRINT "              ³"
 PRINT "              ³  ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ°±±ÄÄ"
 PRINT "              ³  ³"
 PRINT "              ³  ³"
 PRINT "              ³  ³"
 PRINT "              ³  ³"
 PRINT "              ³  ³"
 PRINT "              ³  ³"
 PRINT "              ³  ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ"
 PRINT "              ³"
 PRINT "              ³  ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ°°°" 'L¡nea 19
 PRINT "              ³  ³" 'L¡nea 20
 PRINT "              ³  ³"
 PRINT "              ³  ³"
 PRINT "              ³  ³"
 IF x < 16 THEN x = x + 1
 IF x = 18 AND y < 8 THEN x = x - 1
 IF x = 18 AND (y > 9 AND y < 18) THEN x = x - 1
 IF x > 17 AND y = 7 THEN y = y + 1
 IF (x > 17 AND x < 36) AND y = 10 THEN y = y - 1
 IF x > 17 AND y = 19 THEN y = y - 1
 IF x > 17 AND y = 17 THEN y = y + 1
 IF (x = 37 OR x = 38) AND y = 10 THEN GOSUB gameover
 IF x > 17 AND y > 19 THEN x = x - 1
 RETURN
map2x2:
 LOCATE 2
 PRINT ""
 PRINT ""
 PRINT ""
 PRINT ""
 PRINT ""
 PRINT "ÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿"
 PRINT "      ±±±±±   ³"
 PRINT "      ±±±±±   ³"
 PRINT "ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ"
 PRINT ""
 PRINT ""
 PRINT ""
 PRINT ""
 PRINT ""
 PRINT ""
 PRINT "ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿"
 PRINT "                  ³"
 PRINT "ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿ ³"
 PRINT "                ³ ³" 'L¡nea 20
 PRINT "                ³ ³"
 PRINT "                ³ ³"
 PRINT "                ³ ³"
 IF x >= 1 AND y = 7 THEN y = y + 1
 IF x >= 1 AND y = 10 THEN y = y - 1
 IF x >= 1 AND y = 17 THEN y = y + 1
 IF (x > 0 AND x < 18) AND y = 19 THEN y = y - 1
 IF x = 19 AND y > 16 THEN x = x - 1
 IF x = 17 AND y > 18 THEN x = x + 1
 IF x = 7 AND (y = 8 OR y = 9) THEN GOSUB gameover
 RETURN
map1x3:
 LOCATE 2
 PRINT "              ³  ³"
 PRINT "              ³  ³"
 PRINT "              ³  ³"
 PRINT "              ³  ³"
 PRINT "              ³  ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ"
 PRINT "              ³"
 PRINT "              ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ"
 IF x = 15 AND y < 9 THEN x = x + 1
 IF x = 18 AND y < 7 THEN x = x - 1
 IF x > 18 AND y = 6 THEN y = y + 1
 IF x > 14 AND y = 8 THEN y = y - 1
 RETURN
map2x3:
 LOCATE 2
 PRINT "                ³ ³"
 PRINT "                ³ ³"
 PRINT "                ³ ³"
 PRINT "                ³ ³"
 PRINT "ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ ³"
 PRINT "                  ³"
 PRINT "ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿ ³"
 PRINT "                º º"
 PRINT "                º º"
 PRINT "                º º"
 PRINT "                º º"
 PRINT "                º º"
 PRINT "                º º"
 PRINT "                º º"
 PRINT "                º º"
 PRINT "                º º"
 PRINT "                º º"
 PRINT "                º º"
 PRINT "                º º" 'L¡nea 20
 PRINT "                º º"
 PRINT "                º º"
 PRINT "                º º"
 IF x = 19 THEN x = x - 1
 IF x = 17 AND y < 7 THEN x = x + 1
 IF x = 17 AND y > 7 THEN x = x + 1
 IF x < 18 AND y = 6 THEN y = y + 1
 IF x < 18 AND y = 8 THEN y = y - 1
 RETURN
map2x4:
 LOCATE 2
 PRINT "                º º"
 PRINT "                º º"
 PRINT "                º º"
 PRINT "                º º"
 PRINT "                º º"
 PRINT "                º º"
 PRINT "                º º"
 PRINT "                º º"
 PRINT "              ÉÍ¼ ÈÍ»"
 PRINT "              º     º"
 PRINT "              º     º"
 PRINT "              º     º"
 PRINT "              ÈÍÍÍÍÍ¼"
 IF x = 17 AND y < 11 THEN x = x + 1
 IF x = 19 AND y < 11 THEN x = x - 1
 IF (x = 16 OR x = 20) AND y = 10 THEN y = y + 1
 IF x = 15 THEN x = x + 1
 IF x = 21 THEN x = x - 1
 IF y = 14 THEN y = y - 1
 IF llave1 = 0 THEN
  LOCATE 12, 18
  PRINT "1"
 END IF
 IF (x = 18 AND y = 12) AND llave1 = 0 THEN
  PLAY "T120O4L13MLdcdeff"
  SLEEP 1
  LOCATE 16
  PRINT "You found the key"
  SLEEP 2
  LOCATE 16
  PRINT "Now get back to the entrance"
  llave1 = 1
 END IF
 RETURN
gameover:
CLS
PRINT "You died!"
PRINT "Game over"
PLAY "O3T240MLL4ededcc"
SLEEP 0
RUN
complete1:
 CLS
 PRINT "You completed the first level!"
 PLAY "T240O3L4MNddL2eL4ecdL2eL4gfed"
 SLEEP 1
 CLS
 mapx = 0
 mapy = 0
 lvl = 0
 x = 2
 y = 3
RETURN
map10x10:
 LOCATE 2
 PRINT "        ÚÄ¿"
 PRINT "        ³E³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "ÄÄÄÄÄÄÄÄÙ ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ"
 PRINT "                                   °°"
 PRINT ""
 PRINT "ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ"
 IF x = 9 AND y < 9 THEN x = x + 1
 IF x = 11 AND y < 9 THEN x = x - 1
 IF x < 10 AND y = 8 THEN y = y + 1
 IF x > 10 AND y = 8 THEN y = y + 1
 IF y = 11 THEN y = y - 1
 IF x = 10 AND y = 3 THEN
   IF llave2 = 1 THEN GOSUB complete2
   CLS
   lvl = 0
   mapx = 0
   mapy = 0
   x = 2
   y = 4
 END IF
 RETURN
map9x10:
 LOCATE 2
 PRINT ""
 PRINT ""
 PRINT ""
 PRINT ""
 PRINT ""
 PRINT ""
 PRINT "              ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ"
 PRINT "              ³"
 PRINT "              ³"
 PRINT "              ³ ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ"
 PRINT "              ³ ³"
 PRINT "              ³ ³"
 PRINT "              ³ ³"
 PRINT "              ³ ³"
 PRINT "              ³ ³"
 PRINT "              ³ ³"
 PRINT "              ³ ³"
 PRINT "              ³ ³"
 PRINT "              ³ ³"
 PRINT "              ³ ³"
 PRINT "              ³ ³"
 PRINT "              ³ ³"
 IF y = 8 THEN y = y + 1
 IF y = 11 AND x > 16 THEN y = y - 1
 IF x = 15 THEN x = x + 1
 IF x = 17 AND y > 10 THEN x = x - 1
 RETURN
map9x11:
 LOCATE 2
 PRINT "              ³ ³"
 PRINT "              ³ ³"
 PRINT "              ³ ³"
 PRINT "              ³ ³"
 PRINT "              ³ ³"
 PRINT "              ³ ³"
 PRINT "              ³ ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ"
 PRINT "              ³"
 PRINT "              ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ"
 IF x = 15 THEN x = x + 1
 IF x = 17 AND y < 9 THEN x = x - 1
 IF x > 16 AND y = 8 THEN y = y + 1
 IF y = 10 THEN y = y - 1
 RETURN
map10x11:
 LOCATE 2
 PRINT ""
 PRINT ""
 PRINT ""
 PRINT ""
 PRINT ""
 PRINT ""
 PRINT "ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ"
 PRINT ""
 PRINT "ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ"
 IF y = 8 THEN y = y + 1
 IF y = 10 THEN y = y + 1
 RETURN
map11x11:
 LOCATE 2
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "ÄÄÄÄÄÄÄÄÙ ³"
 PRINT "          ³"
 PRINT "ÄÄÄÄÄÄÄÄÄÄÙ"
 IF y = 10 THEN y = y - 1
 IF x = 11 THEN x = x - 1
 IF x = 9 AND y < 9 THEN x = x + 1
 IF x < 10 AND y = 8 THEN y = y + 1
 RETURN
map11x10:
 LOCATE 2
 PRINT ""
 PRINT ""
 PRINT ""
 PRINT ""
 PRINT ""
 PRINT ""
 PRINT "ÄÄÄÄÄ¿"
 PRINT "     ³"
 PRINT "     ³"
 PRINT "ÄÄÄÄÄÙ"
 PRINT ""
 PRINT "        ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ"
 PRINT "        ³"
 PRINT "        ³ ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³" 'L¡nea 20
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 IF y = 8 THEN y = y + 1
 IF x = 6 THEN x = x - 1
 IF y = 11 THEN y = y - 1
 IF y = 13 THEN y = y + 1
 IF x > 8 AND y = 13 THEN x = x + 1
 IF x > 10 AND y = 15 THEN y = y - 1
 IF x = 11 AND y > 15 THEN x = x - 1
 IF x = 9 THEN x = x + 1
 RETURN
map12x10:
 LOCATE 2
 PRINT "                  ³ ³"
 PRINT "                  ³ ³"
 PRINT "                  ³ ³"
 PRINT "                  ³ ³"
 PRINT "                  ³ ³"
 PRINT "                  ³ ³"
 PRINT "                  ³ ³"
 PRINT "                  ³ ³"
 PRINT "                  ³ ³"
 PRINT "                  ³ ³"
 PRINT "                  ³ ³"
 PRINT "ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ ³"
 PRINT "                    ³"
 PRINT "ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ"
 IF y = 15 THEN y = y - 1
 IF x = 21 THEN x = x - 1
 IF x < 20 AND y = 13 THEN y = y + 1
 IF x = 19 AND y < 14 THEN x = x + 1
 RETURN
map12x9:
 LOCATE 2
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ÀÄÄÄÄÄÄÄÄÄ¿"
 PRINT "        ³           ³"
 PRINT "        ÀÄÄÄÄÄÄÄÄÄ¿ ³"
 PRINT "                  ³ ³"
 PRINT "                  ³ ³"
 PRINT "ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ ³"
 PRINT "                    ³"
 PRINT "ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿ ³"
 PRINT "                  ³ ³"
 PRINT "                  ³ ³"
 PRINT "                  ³ ³"
 PRINT "                  ³ ³"
 PRINT "                  ³ ³"
 PRINT "                  ³ ³"
 PRINT "                  ³ ³"
 PRINT "                  ³ ³"
 PRINT "                  ³ ³"
 PRINT "                  ³ ³"  'L¡nea 21
 PRINT "                  ³ ³"
 PRINT "                  ³ ³"
 IF x = 21 THEN x = x - 1
 IF x = 19 AND y > 10 THEN x = x + 1
 IF x < 20 AND y = 11 THEN y = y - 1
 IF x < 20 AND y = 9 THEN y = y + 1
 IF x = 19 AND (y = 8 OR y = 7) THEN x = x + 1
 IF x < 20 AND y = 6 THEN y = y - 1
 IF x > 10 AND y = 4 THEN y = y + 1
 IF x = 9 AND y < 7 THEN x = x + 1
 IF x = 11 AND y < 5 THEN x = x - 1
 RETURN
map11x9:
 LOCATE 2
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ"
 PRINT "        ³"
 PRINT "        ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ"
 IF y = 11 THEN y = y - 1
 IF x > 10 AND y = 9 THEN y = y + 1
 IF x = 9 THEN x = x + 1
 IF x = 11 AND y < 10 THEN x = x - 1
 RETURN
map11x8:
 LOCATE 2
 PRINT ""
 PRINT ""
 PRINT ""
 PRINT "        ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍÍÍÍÍÍÍÍÍÍ"
 PRINT "        ³                      °°    °"
 PRINT "        ³ ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍÍÍÍÍÍÍÍÍÍ"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³" 'L¡nea 21
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 IF y = 5 THEN y = y + 1
 IF x = 9 THEN x = x + 1
 IF x = 11 AND y > 6 THEN x = x - 1
 IF y = 7 AND x > 10 THEN y = y - 1
 RETURN
map12x8:
 LOCATE 2
 PRINT "        º º     ³ ³"
 PRINT "        º º     ³ ³"
 PRINT "        º º     ³ ³"
 PRINT "ÍÍÍÍÍÍÍÍ¼ º     ³ ³"
 PRINT "          º     ³ ³"
 PRINT "ÍÍÍÍÍÍÍÍÍÍ¼     ³ ³"
 PRINT "                ³ ³"
 PRINT "        ÚÄÄÄÄÄÄÄÙ ³"
 PRINT "        ³         ³"
 PRINT "        ³ ÚÄÄÄÄÄÄÄÙ"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"   'L¡nea 21
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 IF y = 7 AND x < 12 THEN y = y - 1
 IF x < 10 AND y = 5 THEN y = y + 1
 IF x = 9 AND y < 6 THEN x = x + 1
 IF x = 11 AND y < 8 THEN x = x - 1
 IF x = 17 AND y < 10 THEN x = x + 1
 IF x = 19 AND y < 12 THEN x = x - 1
 IF x < 18 AND y = 9 THEN y = y + 1
 IF x > 10 AND y = 11 THEN y = y - 1
 IF x = 9 AND y > 8 THEN x = x + 1
 IF x = 11 AND y > 10 THEN x = x - 1
 RETURN
map12x7:
 LOCATE 2
 PRINT "        º  º"
 PRINT "        º  º"
 PRINT "        º  º"
 PRINT "        º  º"
 PRINT "        º  º"
 PRINT "        º  º"
 PRINT "        º  º"
 PRINT "        º  º"
 PRINT "        º  º"
 PRINT "        º  º"
 PRINT "        º  ÈÍÍÍÍÍÍ»"
 PRINT "        º         º"
 PRINT "        ÈÍÍÍÍÍÍÍ» º"
 PRINT "                ³ ³"
 PRINT "                ± ³"
 PRINT "                ± ³"
 PRINT "        ÉÍÍÍÍÍÍÍ± ³"
 PRINT "        º       ± ³"
 PRINT "        º ÉÍÍÍÍÍ± ³"
 PRINT "        º º     ³ ³" 'L¡nea 21
 PRINT "        º º     ³ ³"
 PRINT "        º º     ³ ³"
 IF x = 9 THEN x = x + 1
 IF x = 12 AND y < 13 THEN x = x - 1
 IF x > 11 AND y = 12 THEN y = y + 1
 IF x = 19 THEN x = x - 1
 IF x < 18 AND y = 14 THEN y = y - 1
 IF x = 17 AND y = 15 THEN x = x + 1
 IF x < 17 AND y = 18 THEN y = y + 1
 IF (x > 10 AND x < 17) AND y = 20 THEN y = y - 1
 IF x = 11 AND y > 19 THEN x = x - 1
 IF x = 17 AND y > 20 THEN x = x + 1
 IF x = 17 AND (y < 22 AND y > 15) THEN GOSUB gameover
 RETURN
map12x6:
 LOCATE 2
 PRINT ""
 PRINT ""
 PRINT ""
 PRINT ""
 PRINT ""
 PRINT ""
 PRINT ""
 PRINT ""
 PRINT ""
 PRINT "       ÉÍÍÍÍ»"
 PRINT "       º    º"
 PRINT "       º    º"
 PRINT "       È»  É¼"
 PRINT "        º  º"
 PRINT "        º  º"
 PRINT "        º  º"
 PRINT "        º  ÈÍÍ»"
 PRINT "        º  ÉÍÍ¼"
 PRINT "        º  º"
 PRINT "        º  ÈÍÍ»"   'L¡nea 21
 PRINT "        º  ÉÍÍ¼"
 PRINT "        º  º"
 IF x = 9 AND y > 13 THEN x = x + 1
 IF x = 12 AND y > 13 THEN x = x - 1
 IF x = 8 THEN x = x + 1
 IF y = 11 THEN y = y + 1
 IF x = 13 THEN x = x - 1
 IF llave2 = 0 THEN
  LOCATE 12, 11
  PRINT "2"
  IF x = 11 AND y = 12 THEN
   LOCATE 2
   PRINT "You found the key."
   PLAY "T120O4L13MLdcdeff"
   SLEEP 1
   llave2 = 1
   PRINT "Now get back to the entrance"
  END IF
 END IF
 RETURN
complete2:
 CLS
 PRINT "You completed the second level"
 PRINT "Go for the third level"
 PLAY "T240O3L4MNddL2eL4ecdL2eL4gfed"
 SLEEP 1
 CLS
 mapx = 0
 mapy = 0
 lvl = 0
 x = 2
 y = 3
RETURN
map20x20:
 LOCATE 2
 PRINT "                ³ ³"
 PRINT "                ³ ³"
 PRINT "                ³ ³"
 PRINT "                ³ ³"
 PRINT "                ³ ³"
 PRINT "                ³ ³"
 PRINT "                ³ ³"
 PRINT "                ³ ³"
 PRINT "ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ"
 PRINT ""
 PRINT "                 E"
 PRINT ""
 PRINT "ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿ ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ"
 PRINT "                ³ ³"
 PRINT "                ³ ³"
 PRINT "                ³ ³"
 PRINT "                ³ ³"
 PRINT "                ³ ³"
 PRINT "                ³ ³"
 PRINT "                ³ ³" 'L¡nea 21
 PRINT "                ³ ³"
 PRINT "                ³ ³"
 IF x < 18 AND y = 10 THEN y = y + 1
 IF x = 17 AND y < 11 THEN x = x + 1
 IF x > 18 AND y = 10 THEN y = y + 1
 IF x = 19 AND y < 11 THEN x = x - 1
 IF x < 18 AND y = 14 THEN y = y - 1
 IF x > 18 AND y = 14 THEN y = y - 1
 IF x = 17 AND y > 13 THEN x = x + 1
 IF x = 19 AND y > 13 THEN x = x - 1
 IF (x = 18 AND y = 12) AND llave3 = 1 THEN GOSUB complete3
 IF x = 18 AND y = 12 THEN
   CLS
   mapx = 0
   mapy = 0
   x = 2
   y = 3
   lvl = 0
 END IF
 RETURN
map19x20:
 LOCATE 2
 PRINT "        ³ ³     ³ ³"
 PRINT "        ³ ³     ³ ³"
 PRINT "        ³ ³     ³ ³"
 PRINT "        ³ ³     ³ ³"
 PRINT "        ³ ³     ³ ³"
 PRINT "        ³ ³     ³ ³"
 PRINT "        ³ ³     ³ ³"
 PRINT "        ³ ³     ³ ³"
 PRINT "        ³ ³     ³ ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ"
 PRINT "        ³ ³     ³"
 PRINT "        ³ ³     ³"
 PRINT "        ³ ³     ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³" 'L¡nea 20
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 IF x = 9 THEN x = x + 1
 IF x = 11 THEN x = x - 1
 IF x = 17 THEN x = x + 1
 IF x = 19 AND y < 11 THEN x = x - 1
 IF x > 19 AND y = 10 THEN y = y + 1
 IF x > 17 AND y = 13 THEN y = y - 1
 RETURN
map19x19:
 LOCATE 2
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³     ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ"
 PRINT "        ³ ³     ³"
 PRINT "        ³ ³     ³ ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ"
 PRINT "        ³ ³     ³ ³"
 PRINT "        ³ ³     ³ ³"
 PRINT "        ³ ³     ³ ³"
 PRINT "        ³ ³     ³ ³"
 PRINT "        ³ ³     ³ ³"
 PRINT "        ³ ³     ³ ³"
 PRINT "        ³ ³     ³ ³"
 PRINT "        ³ ³     ³ ³"
 PRINT "        ³ ³     ³ ³"
 PRINT "        ³ ³     ³ ³" 'L¡nea 20
 PRINT "        ³ ³     ³ ³"
 PRINT "        ³ ³     ³ ³"
 PRINT "        ³ ³     ³ ³"
 IF x = 9 THEN x = x + 1
 IF x = 11 THEN x = x - 1
 IF x = 17 THEN x = x + 1
 IF x = 19 AND y > 9 THEN x = x - 1
 IF x > 16 AND y = 8 THEN y = y + 1
 IF x > 18 AND y = 10 THEN y = y - 1
 RETURN
map20x19:
 LOCATE 2
 PRINT ""
 PRINT ""
 PRINT ""
 PRINT ""
 PRINT ""
 PRINT ""
 PRINT "ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ"
 PRINT ""
 PRINT "ÄÄÄÄÄÄÄÄÄÄÄÄÄÄ±±±±±±ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ"
 PRINT "                ³ ³"
 PRINT "                ³ ³"
 PRINT "                ³ ³"
 PRINT "                ³ ³"
 PRINT "                ³ ³"
 PRINT "                ³ ³"
 PRINT "                ³ ³"
 PRINT "                ³ ³"
 PRINT "                ³ ³"
 PRINT "                ³ ³" 'L¡nea 20
 PRINT "                ³ ³"
 PRINT "                ³ ³"
 PRINT "                ³ ³"
 IF y = 8 THEN y = y + 1
 IF y = 10 AND x < 15 THEN y = y - 1
 IF y = 10 AND x > 20 THEN y = y - 1
 IF y > 10 AND x = 17 THEN x = x + 1
 IF y > 10 AND x = 19 THEN x = x - 1
 IF y = 10 AND (x > 14 AND x < 21) THEN GOSUB gameover
 RETURN
map21x19:
 LOCATE 2
 PRINT ""
 PRINT ""
 PRINT ""
 PRINT ""
 PRINT ""
 PRINT ""
 PRINT "ÄÄÄÄÄÄÄÄÄÄ¿"
 PRINT "          ³"
 PRINT "ÄÄÄÄÄÄÄÄ¿ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"'L¡nea 21
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 IF y = 8 THEN y = y + 1
 IF y = 10 AND x < 10 THEN y = y - 1
 IF x = 11 THEN x = x - 1
 IF x = 9 AND y > 9 THEN x = x + 1
 RETURN
map21x20:
 LOCATE 2
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "ÄÄÄÄÄÄÄ¿³ ³"
 PRINT "       ³³ ³"
 PRINT "       ³³ ³"
 PRINT "       ³³ ³"
 PRINT "ÄÄÄÄÄÄÄÙ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³" 'l¡nea 21
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 IF x = 8 THEN x = x - 1
 IF x = 9 THEN x = x + 1
 IF x = 11 THEN x = x - 1
 IF y = 10 AND x < 9 THEN y = y + 1
 IF y = 14 AND x < 9 THEN y = y - 1
 RETURN
map21x21:
 LOCATE 2
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "ÄÄÄÄÄÄÄÄÙ ³"
 PRINT "          ³"
 PRINT "ÄÄÄÄÄÄÄÄÄÄÙ"
 IF x = 11 THEN x = x - 1
 IF y = 15 THEN y = y - 1
 IF y = 13 AND x < 10 THEN y = y + 1
 IF x = 9 AND y < 14 THEN x = x + 1
 RETURN
map20x21:
 LOCATE 2
 PRINT "                ³ ³"
 PRINT "                ³ ³"
 PRINT "                ³ ³"
 PRINT "                ³ ³"
 PRINT "                ³ ³"
 PRINT "                ³ ³"
 PRINT "                ³ ³"
 PRINT "                ³ ³"
 PRINT "                ³ ³"
 PRINT "                ³ ³"
 PRINT "                ³ ³"
 PRINT "ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ±ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ"
 PRINT ""
 PRINT "ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ"
 IF y = 15 THEN y = y - 1
 IF x = 17 AND y < 13 THEN x = x + 1
 IF x = 19 AND y < 13 THEN x = x - 1
 IF y = 13 AND x < 18 THEN y = y + 1
 IF y = 13 AND x > 18 THEN y = y + 1
 IF x = 18 AND y = 13 THEN GOSUB gameover
 RETURN
map19x21:
 LOCATE 2
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ"
 PRINT "        ³"
 PRINT "        ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ"
 IF x = 9 THEN x = x + 1
 IF x = 11 AND y < 14 THEN x = x - 1
 IF y = 15 THEN y = y - 1
 IF y = 13 AND x > 10 THEN y = y + 1
 RETURN
map19x18:
 LOCATE 2
 PRINT ""
 PRINT ""
 PRINT ""
 PRINT ""
 PRINT "        ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ"
 PRINT "        ³"
 PRINT "        ³ ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ"
 PRINT "        ³ ³"
 PRINT "        ³ ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ"
 PRINT "        ³"
 PRINT "        ³ ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³" 'l¡nea 21
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 IF x = 9 THEN x = x + 1
 IF x = 11 AND y > 11 THEN x = x - 1
 IF x = 11 AND (y < 11 AND y > 7) THEN x = x + 1
 IF y = 12 AND x > 10 THEN y = y - 1
 IF y = 10 AND x > 10 THEN y = y + 1
 IF y = 8 AND x > 10 THEN y = y - 1
 IF y = 6 THEN y = y + 1
 RETURN
map20x18:
 LOCATE 2
 PRINT ""
 PRINT ""
 PRINT ""
 PRINT ""
 PRINT ""
 PRINT "ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ"
 PRINT ""
 PRINT "ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ±±±±±±±±±±±±±±±±±±±±±±±±"
 PRINT "               ³"
 PRINT "ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ"
 PRINT ""
 PRINT "ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ"
 IF y = 7 THEN y = y + 1
 IF y = 13 THEN y = y - 1
 IF y = 11 AND x < 17 THEN y = y + 1
 IF y = 9 AND x < 16 THEN y = y - 1
 IF y = 10 AND x = 16 THEN x = x + 1
 IF y = 9 AND x > 15 THEN GOSUB gameover
 RETURN
map21x18:
 LOCATE 2
 PRINT "        ³ ³  ³ ³"
 PRINT "        ³ ³  ³ ³"
 PRINT "        ³ ³  ³ ³"
 PRINT "        ³ ³  ³ ³"
 PRINT "        ³ ³  ³ ³"
 PRINT "ÄÄÄÄÄÄÄÄÙ ³  ³ ³"
 PRINT "          ³  ³ ³"
 PRINT "±±±±±±±±±±ÁÄÄÙ ³"
 PRINT "               ³"
 PRINT "               ³"
 PRINT "               ³"
 PRINT "ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ"
 IF y = 13 THEN y = y - 1
 IF x = 16 THEN x = x - 1
 IF y = 9 AND (x < 15 AND x > 10) THEN y = y + 1
 IF x = 14 AND y < 10 THEN x = x + 1
 IF x = 11 AND y < 10 THEN x = x - 1
 IF x = 9 AND y < 8 THEN x = x + 1
 IF y = 7 AND x < 10 THEN y = y + 1
 IF y = 9 AND x < 11 THEN GOSUB gameover
 RETURN
map21x17:
 LOCATE 2
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ °"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³  ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ"
 PRINT "        ³ ³  º"
 PRINT "        ³ ³  º ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ"
 PRINT "        ³ ³  º º"
 PRINT "        ³ ³  º º"
 PRINT "        ³ ³  º º"
 PRINT "        ³ ³  º º"
 PRINT "        ³ ³  º º"
 PRINT "        ³ ³  ³ ³"
 PRINT "        ³ ³  ³ ³" 'L¡nea 21
 PRINT "        ³ ³  ³ ³"
 PRINT "        ³ ³  ³ ³"
 IF x = 9 THEN x = x + 1
 IF x = 11 THEN x = x - 1
 IF x = 14 THEN x = x + 1
 IF x = 16 AND y > 13 THEN x = x - 1
 IF y = 12 AND x > 13 THEN y = y + 1
 IF y = 14 AND x > 15 THEN y = y - 1
 RETURN
map22x17:
 LOCATE 2
 PRINT ""
 PRINT ""
 PRINT ""
 PRINT ""
 PRINT ""
 PRINT ""
 PRINT ""
 PRINT ""
 PRINT ""
 PRINT ""
 PRINT "ÍÍÍÍÍÍÍÍÍ»"
 PRINT "         º"
 PRINT "ÍÍÍÍÍÍÍÍÍ¼"
 IF y = 12 THEN y = y + 1
 IF y = 14 THEN y = y - 1
 IF x = 10 THEN x = x - 1
 IF llave3 = 0 THEN
        LOCATE 13, 9
        PRINT "3"
        IF x = 9 AND y = 13 THEN
                LOCATE 2
                PRINT "You found the key"
                PLAY "T240O3L4MNddL2eL4ecdL2eL4gfed"
                llave3 = 1
                SLEEP 1
                LOCATE 2
                PRINT "Now get outta here"
        END IF
 END IF
 RETURN
map21x16:
 LOCATE 2
 PRINT ""
 PRINT ""
 PRINT ""
 PRINT ""
 PRINT ""
 PRINT ""
 PRINT ""
 PRINT STRING$(39, "±")
 PRINT STRING$(39, "±")
 PRINT STRING$(39, "±")
 PRINT STRING$(39, "±")
 PRINT STRING$(39, "±")
 PRINT STRING$(39, "±")
 PRINT STRING$(39, "±")
 PRINT STRING$(39, "±")
 PRINT STRING$(39, "±")
 PRINT STRING$(39, "±")
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 PRINT "        ³ ³" 'L¡nea 21
 PRINT "        ³ ³"
 PRINT "        ³ ³"
 IF x = 9 THEN x = x + 1
 IF x = 11 THEN x = x - 1
 IF x = 10 AND y = 18 THEN GOSUB gameover
 RETURN
complete3:
 CLS
 PRINT "You completed the third level"
 PRINT "Now go for the win."
 PLAY "T240O3L4MNddL2eL4ecdL2eL4gfed"
 SLEEP 1
 CLS
 mapx = 0
 mapy = 0
 lvl = 0
 x = 2
 y = 3
RETURN
final:
 SCREEN 1
 LINE (1, 1)-(320, 120), 1, BF
 LINE (90, 120)-(230, 15), 2, BF
 LINE (140, 120)-(170, 90), 1, BF
 PSET (145, 105), 0
 LINE (100, 80)-(120, 60), 1, BF
 LINE (200, 60)-(220, 80), 1, BF
 LINE (150, 60)-(170, 80), 1, BF
 IF y = 15 THEN y = y + 1
 IF y = 22 THEN y = y - 1
 IF x = 3 THEN x = x + 1
 IF x = 37 THEN x = x - 1
 IF x = 19 AND y = 16 THEN
        GOSUB win
 END IF
 RETURN
win:
 SCREEN 0
 COLOR front%
 WIDTH 40, 25
 PRINT "You won the game!"
 PRINT
 PRINT "You collected all games and made"
 PRINT "this adventure"
 PLAY "T120O1L16edefP8O2edefP8O3edefP8O4edec"
 SLEEP 1
 CLS
 KEY(11) OFF
 KEY(12) OFF
 KEY(13) OFF
 KEY(14) OFF
 KEY(1) OFF
 KEY(2) OFF
 PRINT "Credits"
 PRINT ""
 PRINT "Programming"
 PRINT "Daniel The Fox"
 PRINT ""
 PLAY "O1T120L16dP10dP10dcd"
 PRINT "Test"
 PRINT "Michel A."
 PRINT ""
 PLAY "P4O2dP10dP10dcd"
 PRINT "Music"
 PRINT "Daniel The Fox"
 PRINT ""
 PLAY "P4O3dP10dP10dcd"
 PRINT ""
 PRINT "Special thanks"
 PLAY "P4O4dP10dP10dcd"
 PRINT ""
 PRINT "Microsoft QuickBASIC"
 PLAY "P4fedfP10fP10f"
 PRINT "Basic Compiler"
 PLAY "P7O5fdefP10fP10f"
 PRINT "Extended ASCII charset"
 PLAY "P7O4fdefP10fP10f"
 PRINT "And you, thanks for playing"
 PLAY "P7O2fdedP10dP10d"
 SLEEP 1
 CLS
 PRINT "Casting"
 PRINT ""
 PRINT "The square      Alt 219"
 PRINT "Paredes         Semigraphics"
 PRINT "Acid            Alt 177"
 PRINT "Sound           IBM PC speaker"
 SLEEP 5
 KEY(1) ON
 ON KEY(1) GOSUB fin
 DO
 CLS
 PRINT "Press F12 to restart"
 PRINT "Press F1 to exit"
 SLEEP
 LOOP
fin:
 SYSTEM
ayuda:
CLS
PRINT "To move your character press the"
PRINT "keys from the numeric keyboard. Your"
PRINT "goal is to find the key, collect it"
PRINT "and exit the current maze getting"
PRINT "back to the entrance."
PRINT "There are three keys, you must collect"
PRINT "them to get to the final level"
PRINT ""
PRINT "Press Space bar to see the simbols"
DO: LOOP UNTIL INKEY$ = CHR$(32)
CLS
PRINT "Û = You"
PRINT "1 = Key"
PRINT "E = Entrance"
PRINT "° = Acid remains"
PRINT "± = Acid"
PRINT "Ä ¢ ³ = Walls"
DO: LOOP UNTIL INKEY$ = CHR$(32)
CLS
PRINT "If you bump with the walls, nothing"
PRINT "happens, but if you step over acid"
PRINT "the game is over. Acid remains are"
PRINT "not dangerous, but indicate the"
PRINT "precense of acid remains"
DO: LOOP UNTIL INKEY$ = CHR$(32)
CLS
PRINT "If you want to save your data, you"
PRINT "must have been choosen a save file"
PRINT "or created a new one, then go to the"
PRINT "pause menu and save the game."
DO: LOOP UNTIL INKEY$ = CHR$(32)
CLS
PRINT "If you want to change the color of"
PRINT "the game, you should go to the pause"
PRINT "menu and go to change the color."
SLEEP 0
RETURN
cambcolor:
 CLS
 LOCATE 1
 IF mapx = 100 AND mapy = 100 THEN
      PRINT "You cannot change color now"
      RETURN
 END IF
 PRINT "Select a color number"
 PRINT ""
 FOR col = 1 TO 15
 COLOR col
 PRINT "This is the color:"; col
 NEXT
 COLOR front%
 PRINT ""
 DO
 INPUT "Color: ", front%
 LOOP WHILE front% < 1 OR front% > 15
 PRINT ""
 COLOR front%
 PRINT "Ready, press space bar"
 DO: LOOP UNTIL INKEY$ = CHR$(32)
RETURN
saver:
CLS
IF name$ = "" THEN
PRINT "Data cannot be saved"
PRINT "You must start a profile name"
SLEEP 10
GOSUB pause
END IF
PRINT "Saving data"
IF llave1 = 1 THEN
text2$ = "QBSCKRNL"
END IF
IF llave2 = 1 THEN
text2$ = "DNFRRSTW"
END IF
IF llave3 = 1 THEN
text2$ = "BFFTNNNQ"
END IF
IF llave1 = 1 AND llave2 = 1 THEN
text2$ = "WNDSCLSD"
END IF
IF llave1 = 1 AND llave3 = 1 THEN
text2$ = "BPSMCLKS"
END IF
IF llave2 = 1 AND llave3 = 1 THEN
text2$ = "STRNGWRS"
END IF
IF (llave1 = 1 AND llave2 = 1) AND llave3 = 1 THEN
text2$ = "MLSPWRSG"
END IF
PRINT ""
CLOSE
OPEN file$ FOR OUTPUT AS #1
PRINT #1, text2$
CLOSE
OPEN file$ FOR INPUT AS #1
INPUT #1, clav$
IF clav$ = text2$ THEN
PRINT "The data is saved"
ELSE
ERROR 90
END IF
SLEEP
CLS
RETURN
egg:
CLS
LOCATE 15
PRINT "If you really want to finish"
PRINT "the game, mess with the .cit"
PRINT "file and write MLSPWRSG in it"
RETURN
hand:
 SELECT CASE ERR
 CASE 53
 CLOSE
 OPEN file$ FOR OUTPUT AS #1
 PRINT #1, "new"
 CLOSE
 CASE 62
 CLOSE
 OPEN file$ FOR OUTPUT AS #1
 PRINT #1, "new"
 CLOSE
 CASE 64
10 CLS
 PRINT "Wrong filename"
 PRINT "Try again"
 PRINT "It should not have:"
 PRINT "Space"
 PRINT "Dot"
 PRINT "Comma"
 PRINT "|"
 PRINT ";"
 PRINT ":"
 PRINT "Quotes"
 PRINT "?"
 PRINT "Must have from 1 to 8 letters"
 PRINT ""
 PRINT "The game will reboot"
 BEEP
 SLEEP 15
 RUN
 CASE 90
 CLS
 PRINT "There was an error during"
 PRINT "data save."
 PRINT "Refer to the game README.TXT"
 PRINT "to see who and where to call"
 PRINT "to solve the error or fault."
 PRINT "Game will end."
 BEEP
 SLEEP 20
 CLOSE
 SYSTEM
 END SELECT
 RESUME NEXT

