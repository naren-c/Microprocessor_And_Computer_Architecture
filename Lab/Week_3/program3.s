.data 
	A: .WORD 0
.text

	MOV R0,#17
	MOV R1,#0
	LDR R2,=A
	L1: ADD R1,R1,R0
		SUB R0,R0,#1
		CMP R0,#0
		BNE L1
		STR R1,[R2]