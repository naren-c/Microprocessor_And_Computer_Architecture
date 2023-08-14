.DATA
	A: .HWORD 13,42,21,34,17 
	B: .HWORD 0 

.TEXT
	LDR R1,=A	
	LDR R2,=B	
	MOV R5,#1
	   

L1:	LDRH R3,[R1]  
	LDRH R4,[R2]  
	ADD R4,R4,R3 	
	ADD R1,R1,#2	
	ADD R5,R5,#1
	CMP R5,#6
	STRH R4,[R2] 
	BNE L1		
	 
	SWI 0x011	