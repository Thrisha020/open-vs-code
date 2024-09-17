       IDENTIFICATION DIVISION.
       PROGRAM-ID. SUBPROG.
       
       DATA DIVISION.
       LINKAGE SECTION.
       01  VAR1        PIC 9(4).
       01  VAR2        PIC 9(4).
       
       PROCEDURE DIVISION USING VAR1, VAR2.
           ADD 10 TO VAR1.
       
           EXIT PROGRAM.
       