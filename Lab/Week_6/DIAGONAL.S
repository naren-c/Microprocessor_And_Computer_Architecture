.DATA 
A: .WORD 0,0,0,0,0,0,0,0,0

.TEXT
	LDR R0,=A  
	MOV R1,#2
    MOV R2,#0	
	MOV R3,#0   
	MOV R5,#3   
	MOV R6,#4   
	
LOOP:CMP R2,R3
	 BEQ ASSIGN
L1:  ADD R3,R3,#1
	 CMP R3,#3
	 BNE LOOP
	 MOV R3,#0
	 ADD R2,R2,#1
	 CMP R2,#3
	 BNE LOOP
	 SWI 0X011
	
ASSIGN:MLA R4,R2,R5,R3 
       MUL R4,R6,R4
       STR R1,[R0,R4] 
	   B L1
	
	.END