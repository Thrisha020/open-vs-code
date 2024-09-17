       IDENTIFICATION DIVISION.
       PROGRAM-ID. SUBPROG.
       DATA DIVISION.
       LINKAGE SECTION.
       01  LS-NUMBER        PIC 9(4).
       01  LS-NAME          PIC A(20).
       01  LS-INPUT-VALUE   PIC 9(4).
       01  LS-RESULT        PIC 9(4).

       PROCEDURE DIVISION USING LS-NUMBER LS-NAME LS-INPUT-VALUE 
                 LS-RESULT.
       BEGIN-SUBPROGRAM.
           DISPLAY 'In SUBPROG...'.
           DISPLAY 'LS-NUMBER: ' LS-NUMBER.
           DISPLAY 'LS-NAME: ' LS-NAME.
           DISPLAY 'LS-INPUT-VALUE: ' LS-INPUT-VALUE.

      * Perform some operations on the passed parameters
           ADD LS-NUMBER TO LS-INPUT-VALUE GIVING LS-RESULT.

      * Modify LS-NUMBER (BY REFERENCE) to demonstrate effect on MAINPROG
           ADD 100 TO LS-NUMBER.

           DISPLAY 'Updated LS-NUMBER: ' LS-NUMBER.
           DISPLAY 'Calculated LS-RESULT: ' LS-RESULT.

           EXIT PROGRAM.
