       IDENTIFICATION DIVISION.
       PROGRAM-ID. MAINPROG.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

      * Declare an array and other variables
       01 WS-NUMBERS.
          05 WS-NUMBER      PIC 9(3) OCCURS 5 TIMES.
       01 WS-ARRAY-SIZE     PIC 9(2) VALUE 5.
       01 WS-SUM            PIC 9(5) VALUE ZEROS.
       

       PROCEDURE DIVISION.
       
      * Initialize array values
       MAIN-PARA.
           MOVE 10 TO WS-NUMBER(1)
           MOVE 20 TO WS-NUMBER(2)
           MOVE 30 TO WS-NUMBER(3)
           MOVE 40 TO WS-NUMBER(4)
           MOVE 50 TO WS-NUMBER(5)
           
           DISPLAY 'MAIN PROGRAM: START'
           
      * Call subprogram and pass WS-NUMBERS, WS-ARRAY-SIZE, and WS-SUM
           CALL 'SUBPROG' USING WS-NUMBERS WS-ARRAY-SIZE WS-SUM
           
      * Display the results
           DISPLAY 'MAIN PROGRAM: ARRAY = ' WS-NUMBER(1) WS-NUMBER(2) 
               WS-NUMBER(3) WS-NUMBER(4) WS-NUMBER(5)
           DISPLAY 'MAIN PROGRAM: SUM OF ARRAY = ' WS-SUM
           
           STOP RUN.
