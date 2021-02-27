;To sort a set of numbers in an arr in ascending order

DATA SEGMENT
    arr DB 01H, 02H, 03H, 04H, 05H
    arrlen DB 04H
DATA ENDS

ASSUME CS:CODE,DS:DATA

Code SEGMENT
    START: MOV AX,DATA
           MOV DS,AX
           MOV CH, arrlen ;outer loop iteration
        OUTER: MOV SI, offset(arr) ;starting ptr of arr
               MOV CL, arrlen ;inner loop iteration (reinitialize)
        INNER: MOV AX, [SI]
               CMP AH, AL
               JC SKIP
               XCHG AL, AH
               MOV [SI], AX ;AH AL is stored together 
        SKIP:  INC SI
               DEC CL ;dec innerloop
               JNZ INNER
               DEC CH ;dec outer loop
               JNZ OUTER
               
               MOV AH,4CH
               INT 21H
Code ENDS
END START
END