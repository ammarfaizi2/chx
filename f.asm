
global read_input
global check_input
global run_action

section .data
	str_1 db "Enter password: "

section .text
read_input:
	mov rax, 1
	mov r9, rdi
	mov rdi, 1
	mov rsi, str_1
	mov rdx, 16
	syscall
	xor rax, rax
	mov rsi, r9
	xor rdi, rdi
	mov rdx, 1024
	syscall
	ret

check_input:
	xor al, al
	ret

run_action:
	ret
