MOV R0, #00
MOV A, R1 ;input1
SUBB A, R2 ;input2
JNC NC
INC R0
CPL A
ADD A,#01
NC:MOV R4, A
MOV 03, R0 ;(mov r3, r0 is invalid)
HERE: SJMP HERE
