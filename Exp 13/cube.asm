MOV R0, #00
MOV A, R1 ;input1
MOV B, R1 ;input2
MUL AB	   ;AxA=A^2
MOV B, R1 
MUL AB		;A^2xA=A^3
MOV R3, A
MOV R2, B
HERE: SJMP HERE
