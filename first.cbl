       IDENTIFICATION DIVISION.
       PROGRAM-ID.    PGMDS01.
       AUTHOR.        Topictrick.
       INSTALLATION.  Topictrick.
       DATE-WRITTEN.  08/21/2002.
       DATE-COMPILED. 08/21/2002.
       
      * 
      * PROJ DESC : SAMPLE COBOL PROGRAM TO DISPLAY EMPLOYEE
      *            : NAME IN SPOOL.
      *
       
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       
       01  WS-EMP-NAME.
           05  WS-FNAME     PIC X(15)  VALUE SPACE.
           05  FILLER       PIC X(01)  VALUE SPACE.
           05  WS-LNAME     PIC X(20)  VALUE SPACE.
       
       PROCEDURE DIVISION.
       000-MAIN-LOGIC.
       
           MOVE 'ROGGER' TO WS-FNAME.
           MOVE 'MURPHY' TO WS-LNAME.
           DISPLAY 'NAME OF EMPLOYEE : ', WS-EMP-NAME.
       
           STOP RUN.
       