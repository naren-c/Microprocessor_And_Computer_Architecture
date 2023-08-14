.DATA
A: .WORD 65
B: .WORD 66
C: .WORD 0
.text
LDR r4,=A
LDR r5,=B
LDR r3,=C
LDR r0,[r4]
LDR r1,[r5]
loop:
    CMP r1, r0
    BEQ L1
    BMI L2
    B L3
L1:
    MOV r2, r0
    STR r2,[r3]
    B L4
L2:
    SUB r0, r0, r1
    B loop
L3:
    SUB r1, r1, r0
    B loop
    
L4: SWI 0x011