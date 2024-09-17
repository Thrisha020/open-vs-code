       IDENTIFICATION DIVISION.
       PROGRAM-ID. SUBPROG.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       LINKAGE SECTION.

      * Linkage section to receive parameters from the main program
       01 LK-VALUE-IN       PIC 9(4).
       01 LK-VALUE-OUT      PIC 9(4).

       PROCEDURE DIVISION USING LK-VALUE-IN LK-VALUE-OUT.
       
      * Subprogram logic
       SUB-PARA.
           DISPLAY 'SUBPROGRAM: RECEIVED VALUE = ' LK-VALUE-IN
           
      * Process: Add 500 to the input value
           ADD 500 TO LK-VALUE-IN
           
      * Return the new value
           MOVE LK-VALUE-IN TO LK-VALUE-OUT
           
           DISPLAY 'SUBPROGRAM: RETURNING NEW VALUE = ' LK-VALUE-OUT
           
           EXIT PROGRAM.
