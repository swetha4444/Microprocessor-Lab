DATA SEGMENT
    MESSAGE DB "THIS IS THE STRING$"
DATA ENDS

CODE SEGMENT
ASSUME CS:CODE,DS:DATA
START:  MOV AX,DATA
        MOV DS,AX
        MOV AH,9               ; DOS FUNCTION #9-DISPLAY STRING AS A WHOLE
        MOV DX,OFFSET MESSAGE  ; OFFSET OF THE STRING AFTER STORING IN DS
        INT 21H                ; DISPLAY IT
        MOV AH,4CH
        INT 21H
CODE ENDS
END START