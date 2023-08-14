.DATA
	A: .WORD 0x07,0x08,0x09,0x05,0x06 
	B: .WORD 0  

.TEXT
	LDR R1,=A	
	LDR R2,=B	
	MOV R5,#1
	MOV R6,#0   

L1:	LDR R4,[R1]    
	ADD R6,R6,R4 	
	ADD R1,R1,#4	
	ADD R5,R5,#4
	CMP R5,#6	
	BNE L1		
	STR R6,[R2]  
	SWI 0x011