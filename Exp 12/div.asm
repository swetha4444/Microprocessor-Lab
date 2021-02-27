MOV R0, #00
MOV A, r1 ;input1
MOV B, r2 ;input2
DIV AB
MOV R3,A ;Quotient
MOV R4,B ;Remainder
HERE: SJMP HERE ;inf loop to halt the pgm