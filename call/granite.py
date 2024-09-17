import os
from langchain_core.prompts import ChatPromptTemplate
from langchain_community.llms import Ollama
from langchain_core.output_parsers import StrOutputParser

llm = Ollama(
    model="granite-code:34b", 
    temperature=1.0, 
    num_gpu=50,
    verbose=True, 
    top_p=0.9, 
    system=""" You are tasked to provide COBOL coding assistance. Follow the guidelines below:
            1. The cobol code should be correct without any errors.
    """
)

def generate_cobol_code(input) -> str:
    prompt_template = ChatPromptTemplate.from_messages([
        ("system", """
            You are tasked with generating advanced COBOL code snippets. Follow the guidelines below:
            1. The code should be optimized for performance.
            2. Include detailed comments to explain the code logic.
            3. Handle edge cases and errors appropriately.
            4. Follow best practices for COBOL programming.

            Example Request: 
            User input:  Write a COBOL program to add two numbers and display the result.
            AI response: <
Main progarm

       IDENTIFICATION DIVISION.
       PROGRAM-ID. MAINPROG.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  VAR1        PIC 9(4).
       01  VAR2        PIC 9(4).
       01  PROG-NAME   PIC X(8) VALUE 'SUBPROG'.
       
       PROCEDURE DIVISION.
           MOVE 10 TO VAR1.
           MOVE 20 TO VAR2.
       
           CALL PROG-NAME USING VAR1, VAR2.
       
           DISPLAY 'Returned VAR1: ' VAR1.
           DISPLAY 'Returned VAR2: ' VAR2.
       
           STOP RUN.
       
Sub-program

       IDENTIFICATION DIVISION.
       PROGRAM-ID. SUBPROG.
       
       DATA DIVISION.
       LINKAGE SECTION.
       01  VAR1        PIC 9(4).
       01  VAR2        PIC 9(4).
       
       PROCEDURE DIVISION USING VAR1, VAR2.
           ADD 10 TO VAR1.
       
           EXIT PROGRAM.>
         
        """),
        ("user", "{input}"),
        ("assistant", "")
    ])

    runnable = prompt_template | llm | StrOutputParser()

    response = runnable.invoke({"input": input})
    
    return response

input_text = "Write a COBOL program to check if a number is even or odd"
response = generate_cobol_code(input_text)

print(response)