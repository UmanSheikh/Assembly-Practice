global _start
section .data
	t: DB "Uman", 0xA

section .text
_start:
	MOV rax, 0x01
	MOV rdi, 0x01
	MOV rsi, t
	MOV rdx, 5
	SYSCALL

	JMP _start

	MOV rax, 0x3C
	MOV rsi, 0
	SYSCALL
