@ Arithmetic 1
.section .data
.section .text
.globl _start
_start:
	mov r1, #10
	mov r2, #11
	mov r3, #7
	mov r4, #2
	add r1, r2
	mul r3, r4
	sub r1, r3
 
	mov r7, #1	@Program Termination: exit syscall
	svc #0		@Program Termination: wake kernel
.end
