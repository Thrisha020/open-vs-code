       IDENTIFICATION DIVISION.
       PROGRAM-ID. SUBPROG.
       ENVIRONMENT DIVISION.
       DATA DIVISION.


       LINKAGE SECTION.
      * Linkage section to receive parameters from the main program
       01 LK-NAME           PIC A(10).
       01 LK-NUMBER         PIC 9(3).
       01 LK-COMBINED-RESULT PIC X(20).

       PROCEDURE DIVISION USING LK-NAME LK-NUMBER LK-COMBINED-RESULT.
       
      * Subprogram logic
       SUB-PARA.
           DISPLAY 'SUBPROGRAM: RECEIVED NAME = ' LK-NAME
           DISPLAY 'SUBPROGRAM: RECEIVED NUMBER = ' LK-NUMBER
           
      * Combine name and number into a formatted string
           STRING LK-NAME DELIMITED BY SPACE
                  ' is number ' DELIMITED BY SIZE
                  LK-NUMBER DELIMITED BY SIZE
                  INTO LK-COMBINED-RESULT
           
           DISPLAY 'SUBPROGRAM: COMBINED RESULT = ' LK-COMBINED-RESULT
           
           EXIT PROGRAM.



