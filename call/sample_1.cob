       IDENTIFICATION DIVISION.
       PROGRAM-ID. MAINPROG.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-NUMBER        PIC 9(4) VALUE 1000.
       01  WS-NAME          PIC A(20) VALUE 'MAIN PROGRAM'.
       01  WS-RESULT        PIC 9(4).
       01  WS-INPUT-VALUE   PIC 9(4) VALUE 2000.

       PROCEDURE DIVISION.
       MAIN-LOGIC.
           DISPLAY 'Calling SUBPROG with parameters...'.

      * Calling SUBPROG with parameters
           CALL 'SUBPROG' USING BY REFERENCE WS-NUMBER
                           BY CONTENT WS-NAME
                           BY VALUE WS-INPUT-VALUE
                           BY REFERENCE WS-RESULT.

           DISPLAY 'Returned from SUBPROG...'.
           DISPLAY 'WS-NUMBER: ' WS-NUMBER.
           DISPLAY 'WS-NAME: ' WS-NAME.
           DISPLAY 'WS-RESULT: ' WS-RESULT.

           STOP RUN.
      