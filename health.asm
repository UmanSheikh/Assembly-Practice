

section .data
	eat: DB "What did you eat?: "
	eatlen: EQU $ - eat
	exer: DB "Which exersice have you done?: "
	exerlen: EQU $ - exer
	yeat: DB "You eated: "
	yeatlen: EQU $ - yeat
	yex: DB "You exersised: "
	yexlen: EQU $ - yex

section .bss
	diet RESB 80
	ex RESB 80

section .text
	global _start
_start:
	CALL _et
	CALL _diet
	CALL _exer
	CALL _ex
	CALL _di
	CALL _youd
	CALL _eaat
	CALL _youe

	MOV rax, 0x3C
	MOV rdi, 0x0
	SYSCALL

_et:
	MOV rax, 0x01
	MOV rdi, 0x01
	MOV rsi, eat
	MOV rdx, eatlen
	SYSCALL
	RET
_diet:
	MOV rax, 0x0
	MOV rdi, 0x0
	MOV rsi, diet
	MOV rdx, 80
	SYSCALL
	RET
_exer:
	MOV rax, 0x01
	MOV rdi, 0x01
	MOV rsi, exer
	MOV rdx, exerlen
	SYSCALL
	RET
_ex:
	MOV rax, 0x00
	MOV rdi, 0x00
	MOV rsi, ex
	MOV rdx, 80
	SYSCALL
	RET
_di:
	MOV rax, 0x01
	MOV rdi, 0x01
	MOV rsi, yeat
	MOV rdx, yeatlen
	SYSCALL
	RET

_youd:
	MOV rax, 0x01
	MOV rdi, 0x01
	MOV rsi, diet
	MOV rdx, 80
	SYSCALL
	RET
_eaat:
	MOV rax, 0x01
	MOV rdi, 0x01
	MOV rsi, yex
	MOV rdx, yexlen
	SYSCALL
	RET

_youe:
	MOV rax, 0x01
	MOV rdi, 0x01
	MOV rsi, ex
	MOV rdx, 80
	SYSCALL
	RET



