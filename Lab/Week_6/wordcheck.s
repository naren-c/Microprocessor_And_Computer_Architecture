.text
ldr r0,=a
ldr r1,=b
mov r2,#0 
mov r3,#0
ldrb r4,[r1]
loop:
add r2,r2,#1
ldrb r1,[r0],#1
cmp r4,r1
beq count
cmp r2,#11
beq final
b loop
count:
add r3,r3,#1
b loop
final:
swi 0x01
.data
a: .asciz "MY NAME IS TOM"
b:.asciz "E"
