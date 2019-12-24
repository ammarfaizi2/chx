
global read_input
global check_input
global run_action

section .data
	str_1 db "Enter password: "
	str_2 db "Congratulation, you got the flag: "

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
	mov al, [rdi]
	cmp al, 'A'
	jne .L1
	call rsi
.L1:
	xor al, al
	ret

run_action:
	mov rax, 1
	mov rdi, 1
	mov rsi, str_2
	mov rdx, 34
	syscall
	ret
