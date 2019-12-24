
global read_input
global check_input
global run_action

section .data
	str_1 db "Enter password: "
	str_2 db "Congratulation, you got the flag: "
	str_3 db "Error!", 10

section .text

axz:
	sub byte [rdi + 1], byte 50
	mov r9, rdi
	mov rax, 1
	mov rdi, 1
	mov rsi, str_2
	mov rdx, 34
	syscall
	mov rax, 1
	mov rdi, 1
	mov rsi, r9
	mov rdx, 13
	syscall
	ret

m_error:
	mov rax, 1
	mov rdi, 1
	mov rsi, str_3
	mov rdx, 7
	syscall
	mov rax, 60
	mov rdi, 1
	syscall
	ret

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

calculate:
	push rbp
	mov rbp, rsp
	sub rsp, 64

	mov [rbp - 8], rdi
	mov [rbp - 16], rsi
	xor rax, rax
	mov rdi, [rdi]
	mov rsi, [rsi]

	mov al, [rdi]
	inc al
	add rsi, rax

	inc rdi
	mov al, [rdi]
	add al, 2
	add rsi, rax

	inc rdi
	mov al, [rdi]
	add al, 3
	add rsi, rax


	inc rdi
	mov al, [rdi]
	add al, 4
	add rsi, rax


	inc rdi
	mov al, [rdi]
	add al, 5
	add rsi, rax


	inc rdi
	mov al, [rdi]
	add al, 6
	add rsi, rax


	inc rdi
	mov al, [rdi]
	add al, 7
	add rsi, rax


	inc rdi
	mov al, [rdi]
	add al, 8
	add rsi, rax


	inc rdi
	mov al, [rdi]
	add al, 9
	add rsi, rax


	inc rdi
	mov al, [rdi]
	add al, 10
	add rsi, rax


	inc rdi
	mov al, [rdi]
	add al, 11
	add rsi, rax


	inc rdi
	mov al, [rdi]
	add al, 12
	add rsi, rax

	inc rdi
	mov al, [rdi]
	add al, 13
	add rsi, rax

	mov rdx, [rbp - 16]
	mov [rdx], rsi

	mov rsp, rbp
	pop rbp
	ret


check_input:
	push rbp
	mov rbp, rsp
	sub rbp, 64
	mov [rbp - 8], rsi
	mov [rbp - 16], rdi
	lea rdi, [rbp - 16]
	lea rsi, [rbp - 8]
	call calculate
	mov rax, [rbp - 8]
	mov rdi, [rbp - 16]
	call rax
	jmp .L0
.L1:
	xor al, al
	jmp .epilogue
.L0:
	mov rax, 60
	xor rdi, rdi
	syscall
.epilogue:
	mov rsp, rbp
	pop rbp
	ret

fback:
	jmp m_error
	jmp m_error
	jmp m_error
	jmp m_error
	jmp m_error
	jmp m_error
	jmp m_error
	jmp m_error
	jmp m_error
	jmp m_error
	jmp m_error
	jmp m_error
	jmp m_error
	jmp m_error
	jmp m_error
	jmp m_error
	jmp m_error
	jmp m_error
	jmp m_error
	jmp m_error
	jmp m_error
	jmp m_error
	jmp m_error
	jmp m_error
	jmp m_error
	jmp m_error
	jmp m_error
	jmp m_error
	jmp m_error
	jmp m_error
	jmp m_error
	jmp m_error

run_action:
	jmp axz

fback2:
	jmp m_error
	jmp m_error
	jmp m_error
	jmp m_error
	jmp m_error
	jmp m_error
	jmp m_error
	jmp m_error
	jmp m_error
	jmp m_error
	jmp m_error
	jmp m_error
	jmp m_error
	jmp m_error
	jmp m_error
	jmp m_error
	jmp m_error
	jmp m_error
	jmp m_error
	jmp m_error
	jmp m_error
	jmp m_error
	jmp m_error
	jmp m_error
	jmp m_error
	jmp m_error
	jmp m_error
	jmp m_error
	jmp m_error
	jmp m_error
	jmp m_error
	jmp m_error
