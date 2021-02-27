;Conversion of 8-bit BCD number into its equivalent HEX number.

ASSUME CS:CODE,DS:DATA

DATA SEGMENT
    BCD DB 12H
    HEX DB ?
DATA ENDS


CODE SEGMENT
START: MOV AX,data
       MOV DS,AX

       MOV AL,BCD
       MOV AH,0H

       MOV BL,10H
       DIV BL ;AL-1st no AH-2nd no

       MOV BL,0AH
       MOV DL,AH ;DL-2nd no.
       MOV AH,0H
       MUL BL ;stored in AX = AL*DL
       ADD AL,DL ;(first number x 0A + second number) 
       
       MOV HEX,AL
       MOV AH,4CH
       INT 21H
CODE ENDS
END START