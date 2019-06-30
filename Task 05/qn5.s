# Computer Systems Organisation  - Assignment 2
# Question 05 - Assembly Code x86-64 for finding nth Fibonacci Number using recursion

.data
n:
	.long 10

.text
fibonacci:
	movl $1, %ecx
.Lloop1:
	cmpl $2, %edi
	jle .Lloop3
.Lloop2:
	push %rbp
	push %rdi
	subl %ecx, %edi
	call fibonacci
	pop %rdi
	pop %rbp
	movl %eax, %r8d
	push %rbp
	push %rdi
	subl %ecx, %edi
	push %r8
	call fibonacci
	pop %r8
	pop %rdi
	pop %rbp
	addl %eax, %r8d
	movl %r8d, %eax
	ret
.Lloop3:
	movl %ecx, %eax
	ret

.global main
main:
	movq n@GOTPCREL(%rip), %rdi
	call fibonacci
	ret

# Answer is stored in register %rax
	
# Naren Akash, R J - 2018111020
# International Instituteof Information Technology, Hyderabad
