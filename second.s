@ second program: c = a + b
.section .data
a: .word 2 @ 32-bit variable a in memory
b: .word 5 @ 32-bit variable b in memory
c: .word 0 @ 32-bit variable c in memory
.section .text
.globl _start
_start:
	ldr r1, =a
	ldr r1, [r1]
	ldr r2, =b
	ldr r2, [r2]
	add r1, r1, r2
	ldr r2, =c
	str r1, [r2]
	
	mov r7, #1
	svc #0
.end
