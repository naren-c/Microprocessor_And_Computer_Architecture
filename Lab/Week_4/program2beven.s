# POST-INDEXING-ADD-EVEN
.DATA
A: .WORD 14,36,28,98
SUM: .WORD 0

.TEXT
    MOV R2,#0
    LDR R1,=A
    LDR R3,=SUM
    ADD R1,R1,#4
    # index/offset
    MOV R5,#8
    # counter
    MOV R6,#1

L1:
    LDR R4,[R1],R5
    ADD R2,R2,R4
    ADD R6,R6,#1
    CMP R6,#3
    BNE L1
STR R2,[R3]
SWI 0x011