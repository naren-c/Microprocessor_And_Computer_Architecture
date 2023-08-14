.DATA
	A: .BYTE 13,42,21,34,17 
	B: .BYTE 0
.TEXT
	LDR R1,=A	
	ldr R2,=B	
	MOV R5,#1
  
L1:	
	LDRB R3,[R1] 
	LDRB R4,[R2]   
	ADD R4,R4,R3 	
	ADD R1,R1,#1	
	ADD R5,R5,#1	
	CMP R5,#6
	STRB R4,[R2]  
	BNE L1

	SWI 0x011	