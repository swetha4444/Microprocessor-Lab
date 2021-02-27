MOV R0, #00
MOV A, r1 ;input1
ADD A, r2 ;input2
JNC LABEL
INC R0
LABEL: MOV r4, a
MOV 03, R0 ;(mov r3, r0 is invalid)
HERE: SJMP HERE
