.DATA

	A: .byte 10,20,30,40,50,60,70,80,90,100
	B: .byte 0,0,0,0,0,0,0,0,0,0

.TEXT
	LDR R1,=A
	LDR R2,=B

	MOV R5,#1
L1:	LDRB R3,[R1]
	STRB R3,[R2]
	ADD R1,R1,#1
	ADD R2,R2,#1

	ADD R5,R5,#1
	CMP R5,#11
	BNE L1
	SWI 0x011