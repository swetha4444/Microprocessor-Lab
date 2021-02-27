MOV R0, #00
MOV A, r1 ;input1
MOV B, r2 ;input2
MUL AB
MOV R4,A 
MOV R3,B 
HERE: SJMP HERE ;inf loop to halt the pgm