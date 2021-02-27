;To sort a set of numbers in an arr in ascending order
ASSUME CS:CODE,DS:DATA

DATA SEGMENT
    arr DB 05H, 04H, 03H, 02H, 01H
    arrlen DB 04H
DATA ENDS   

Code SEGMENT
    START: MOV AX,DATA
           MOV DS,AX

        MOV CH, arrlen             ;outer loop iteration
        OUTER: MOV SI, offset(arr) ;starting pointer of arr
               MOV CL, arrlen      ;inner loop iteration (reinitialize)
        INNER: MOV AX, [SI]        ;mov ah,[si] mov al,[si]+1
               CMP AH, AL
               JNC SKIP
               XCHG AL, AH
               MOV [SI], AX        ;AH AL is stored together 
        SKIP:  INC SI
               DEC CL             ;dec innerloop
               JNZ INNER
               DEC CH             ;dec outer loop
               JNZ OUTER

               MOV AH,4CH
               INT 21H
Code ENDS
END START
END
