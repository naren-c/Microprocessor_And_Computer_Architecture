MOV R0,#8
MOV R1,#8

CMP R0,R1
BEQ L1
SUB R2,R0,R1
B L2
L1: ADD R2,R0,R1
L2: SWI 0x011

.end