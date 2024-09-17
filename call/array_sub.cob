       IDENTIFICATION DIVISION.
       PROGRAM-ID. SUBPROG.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       LINKAGE SECTION.

      * Linkage section to receive the array, size, and sum
       01 LK-NUMBERS.
          05 LK-NUMBER      PIC 9(3) OCCURS 5 TIMES.
       01 LK-ARRAY-SIZE     PIC 9(2).
       01 LK-SUM            PIC 9(5).
       

       PROCEDURE DIVISION USING LK-NUMBERS LK-ARRAY-SIZE LK-SUM.

      * Subprogram logic
       SUB-PARA.

          

           DISPLAY 'SUBPROGRAM: RECEIVED ARRAY SIZE = ' LK-ARRAY-SIZE

      * Initialize sum to zero
           MOVE 0 TO LK-SUM

      * Calculate the sum of the array elements
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > LK-ARRAY-SIZE
               IF I <= 5   
      * Check to ensure the index is within array bounds
                   ADD LK-NUMBER(I) TO LK-SUM
               ELSE
                   DISPLAY 'ERROR: Index out of bounds: ' I
                   STOP RUN
               END-IF
           END-PERFORM

           DISPLAY 'SUBPROGRAM: CALCULATED SUM = ' LK-SUM

           EXIT PROGRAM.

