mov R0,#2
cmp R0,#0
Beq L1
Bmi L2
mov R1,#2
B L3
L2: mov R1,#3
B L3
L1:mov R1,#1
L3 SWI 0x011