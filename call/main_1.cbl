       IDENTIFICATION DIVISION.
       PROGRAM-ID. MAINPROG.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

      * Declare variables
       01 WS-VALUE          PIC 9(4) VALUE 1000.
       01 WS-NEW-VALUE      PIC 9(4).
       
      * Linkage section for passing parameters
       LINKAGE SECTION.
       01 LK-VALUE-IN       PIC 9(4).
       01 LK-VALUE-OUT      PIC 9(4).

       PROCEDURE DIVISION.
       
      * Main program logic
       MAIN-PARA.
           DISPLAY 'MAIN PROGRAM: START'
           
      * Call subprogram and pass WS-VALUE, receiving the result in 
      *WS-NEW-VALUE
           CALL 'SUBPROG' USING WS-VALUE WS-NEW-VALUE
           
      * Display the result
           DISPLAY 'MAIN PROGRAM: VALUE BEFORE CALL = ' WS-VALUE
           DISPLAY 'MAIN PROGRAM: VALUE AFTER CALL = ' WS-NEW-VALUE
           
           STOP RUN.

