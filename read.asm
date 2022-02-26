section .data
	msg: DB "Enter Name: "
	mslen: EQU $ - msg
	ou: DB "Hello, "
	oulen: EQU $ - ou
section .bss
	name RESB 25

section .text
	global _start
_start:
	CALL _question
	CALL _inp
	CALL _hello
	CALL _out

	MOV rax, 0x3C
	MOV rdi, 0x0
	SYSCALL

_question:
	MOV rax, 0x01
	MOV rdi, 0x01
	MOV rsi, msg
	MOV rdx, mslen
	SYSCALL
	RET

_inp:
	MOV rax, 0x00
	MOV rdi, 0x00
	MOV rsi, name
	MOV rdx, 25
	SYSCALL
	RET

_hello:
	MOV rax, 0x01
	MOV rdi, 0x01
	MOV rsi, ou
	MOV rdx, oulen
	SYSCALL
	RET

_out:
	MOV rax, 0x01
	MOV rdi, 0x01
	MOV rsi, name
	MOV rdx, 25
	SYSCALL
	RET

