       IDENTIFICATION DIVISION.
       PROGRAM-ID. MAINPROG.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  VAR1        PIC 9(4).
       01  VAR2        PIC 9(4).
       01  PROG-NAME   PIC X(8) VALUE 'SUBPROG'.
       
       PROCEDURE DIVISION.
           MOVE 10 TO VAR1.
           MOVE 20 TO VAR2.
       
           CALL PROG-NAME USING VAR1, VAR2.
       
           DISPLAY 'Returned VAR1: ' VAR1.
           DISPLAY 'Returned VAR2: ' VAR2.
       
           STOP RUN.
       