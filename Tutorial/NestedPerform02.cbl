000100 IDENTIFICATION DIVISION.
000200 PROGRAM-ID. IfCondition.
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
001400
001500 PROGRAM-BEGIN.
001600 
001700     PERFORM PROGRAM-INITIALIZATION.
001800     PERFORM MAIN-LOGIC.
001900
002000 PROGRAM-DONE.
002100     STOP RUN.
002200
002300 PROGRAM-INITIALIZATION.
002400     MOVE " " TO A-SPACE.
002500     MOVE 0 TO THE-NUMBER.
002600
002700 MAIN-LOGIC.
002800     MOVE "The ability to speak does not make you intelligent."
002900     TO THE-MESSAGE.
003000     PERFORM ADD-NUMBER-AND-DISPLAY.
003100
003200     MOVE "I like firsts. Good or bad, they are always memorable."
003300     TO THE-MESSAGE.
003400     PERFORM ADD-NUMBER-AND-DISPLAY.
003500
003600     MOVE "I have a bad feeling about this."
003700     TO THE-MESSAGE.
003800     PERFORM ADD-NUMBER-AND-DISPLAY.
003900
004000     MOVE "I don't like sand. It is coarse, rough and irritating,
004100-    " and it gets everywhere." TO THE-MESSAGE.
004200     PERFORM ADD-NUMBER-AND-DISPLAY.
004300
004400 ADD-NUMBER-AND-DISPLAY.
004500     ADD 1 TO THE-NUMBER.
004600     DISPLAY THE-NUMBER A-SPACE THE-MESSAGE.
