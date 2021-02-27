;Converting BCD to ASCII
MOV R0, #00

MOV A, R1 ;input
ANL A, #0Fh ;Taking lower nibble
ADD A,#30h  ;ascii of 0-> 30 1->31 ...9->39

MOV R4, A

MOV A, R1 ;input
ANL A, #0F0h ;Taking higher nibble
SWAP A
ADD A,#30h

MOV R3, A
HERE: SJMP HERE ;inf loop to halt the pgm