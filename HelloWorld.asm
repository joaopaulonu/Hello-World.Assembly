TITLE Hello World
.MODEL SMALL
.DATA
    MENSAGEM DB 'Hello World!',13,10,'$'

.CODE
MAIN PROC
    ; Initialize the data segment so we can access MENSAGEM
    MOV AX, @DATA
    MOV DS,AX

    ; Print the message on the screen
    ; AH=09h is the DOS function to print a string
    ; DS:DX must point to the beginning of the '$' terminated string
    MOV AH, 09h
    MOV DX, OFFSET MENSAGEM
    INT 21h

    ; Terminate the program and return control to the DOS
    ; AH=4Ch is the DOS function to terminate the program
    MOV AH, 4Ch
    INT 21h

MAIN endp
END MAIN
 
