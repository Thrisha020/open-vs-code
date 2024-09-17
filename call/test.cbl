       IDENTIFICATION DIVISION.
       PROGRAM-ID. ADD-TWO-NUMBERS.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  NUM1        PIC 9(5).
       01  NUM2        PIC 9(5).
       02  SUM         PIC 9(5).

       PROCEDURE DIVISION.
       MAIN-PROGRAM.
           DISPLAY "Enter first number: ".
           ACCEPT NUM1.
           DISPLAY "Enter second number: ".
           ACCEPT NUM2.
           ADD NUM1 NUM2 GIVING SUM.
           DISPLAY "The sum is: " SUM.
           STOP RUN.




