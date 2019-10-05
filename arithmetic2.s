@arthimetic program Register = val2 + 9 + val3 - val1
.section .data
val1: .word 6
val2: .word 11
val3: .word 16

.section .text
.globl _start
_start:
	ldr r1, =val1	@load mem address of val1 into r1
	ldr r1, [r1]	@load val of val1 into r1
	ldr r2, =val2	@load mem address of val2 into r2
	ldr r2, [r2]	@load val of val2 into r2
	ldr r3, =val3 	@load mem address of val2 into r3
	ldr r3, [r3]	@load  val of val3 into r3
	add r4, r2, #9
	add r5, r4, r3
	sub r6, r5, r1
		
	mov r7, #1
	svc #0
.end
