.DATA
        A: .WORD 11,-12,23,24,55,-62,73,89,-90,-101
	  SUM: .WORD 0
	 
.TEXT 
      LDR R0,=A 
	  MOV R1,#0  
	  MOV R2,#0  
	  LDR R4,=SUM
	  
      BL LOOP
	  STR R2,[R4]
	  SWI 0X011
	  
	  
LOOP: LDR R3,[R0],#4
      
	
	  BPL POSITIVE
  L1: ADD R1,R1,#1  
      CMP R1,#10
	  BNE LOOP
	  MOV PC,LR
	  	  
POSITIVE: ADD R2,R2,R3
          B L1
	 