       IDENTIFICATION DIVISION.
       PROGRAM-ID. MAINPROG.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION. 
      * Declare variables
       01 WS-NAME           PIC A(10)  VALUE 'John'.
       01 WS-NUMBER         PIC 9(3)   VALUE 25.
       01 WS-COMBINED-RESULT PIC X(20).
       
       PROCEDURE DIVISION.
       
      * Main program logic
       MAIN-PARA.
           DISPLAY 'MAIN PROGRAM: START'
           
      * Call subprogram and pass WS-NAME and WS-NUMBER
           CALL 'SUBPROG' USING WS-NAME WS-NUMBER WS-COMBINED-RESULT
           
      * Display the result
           DISPLAY 'MAIN PROGRAM: NAME = ' WS-NAME
           DISPLAY 'MAIN PROGRAM: NUMBER = ' WS-NUMBER
           DISPLAY 'MAIN PROGRAM: COMBINED RESULT = ' WS-COMBINED-RESULT
           
           STOP RUN.
