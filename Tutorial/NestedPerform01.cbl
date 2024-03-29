000100 IDENTIFICATION DIVISION.
000200 PROGRAM-ID. NestedPerform.
000300 AUTHOR. Niels van den Bosch.
000400 ENVIRONMENT DIVISION.
000500 DATA DIVISION.
000600 
000700 WORKING-STORAGE SECTION.
000800 
000900 01 THE-MESSAGE  PIC X(80).
001000 01 THE-NUMBER   PIC 9(2).
001100 01 A-SPACE      PIC X.
001200
001300 PROCEDURE DIVISION.
001400 PROGRAM-BEGIN.
001500
001600     MOVE " " TO A-SPACE.
001700
001800     MOVE 0 TO THE-NUMBER.
001900
002000     MOVE "The ability to speak does not make you intelligent."
002100     TO THE-MESSAGE.
002200     PERFORM ADD-NUMBER-AND-DISPLAY.
002300
002400     MOVE "I like firsts. Good or bad, they are always memorable."
002500     TO THE-MESSAGE.
002600     PERFORM ADD-NUMBER-AND-DISPLAY.
002700
002800     MOVE "I have a bad feeling about this."
002900     TO THE-MESSAGE.
003000     PERFORM ADD-NUMBER-AND-DISPLAY.
003100
003200     MOVE "I do not like sand. It is coarse, rough and irritating,
003300-    " and it gets everywhere." TO THE-MESSAGE.
003400     PERFORM ADD-NUMBER-AND-DISPLAY.
003500
003600 PROGRAM-DONE.
003700     STOP RUN.
003800
003900 ADD-NUMBER-AND-DISPLAY.
004000     PERFORM ADD-THE-NUMBER.
004100     PERFORM DISPLAY-THE-MESSAGE.
004200
004300 ADD-THE-NUMBER.
004400     ADD 1 TO THE-NUMBER.
004500
004600 DISPLAY-THE-MESSAGE.
004700     DISPLAY
004800 THE-NUMBER
004900 A-SPACE
005000 THE-MESSAGE.
