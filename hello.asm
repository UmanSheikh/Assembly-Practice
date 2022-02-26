global _start

section .text

_start:
	MOV rax, 0x01
	MOV rdi, 0x01
	MOV rsi, msg
	MOV rdx, msglength
	SYSCALL

	MOV rax, 0x3C
	MOV rdi, 0x0
	SYSCALL



section .data
	msg: DB "Hello World", 0xA
	msglength: EQU $ - msg
