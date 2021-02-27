ASSUME CS:CODE,DS:data

data SEGMENT
      COUNT equ 10h
data ends

CODE SEGMENT
START:MOV AX,data
      MOV DS,AX
      MOV CX,COUNT    ; LOOP COUNTER
      L1:MOV AH,1 ; INPUT CHARACTER,
      INT 21H ; AL = CHARACTER, ASCII(hex) :A-Z=41-5A, a-z=61-7A
      CMP AL,60H
      JNC UPPER ;IF NOT UPPER-GO TO UPPER
      ADD AL,20H ;CONVERT TO LOWER
      JMP SKIP
      UPPER:SUB AL,20H ; CONVERT TO UPPER CASE
SKIP: MOV AH,2    ; CHARACTER OUTPUT FUNCTION
      MOV DL,AL   ; CHARACTER MUST BE IN DL
      INT 21H     ; DISPLAY THE CHARACTER
      LOOP L1     ; REPEAT LOOP
      MOV AH,4CH
      INT 21H
CODE ENDS
end start