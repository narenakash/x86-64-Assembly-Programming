# S19.CS2.201 Introduction to Computer Systems - Assignment 2 Question 6/6
	
	.data
	# Initialisation of an array in the data section of x86-64 Assembly Language
	# Array A is globally declared in the C code. Else, it would've been in some stack frame.
A:
	.long 	1
	.long 	2
	.long 	3
	.long	4
	.long	5

	.text
	.global main
main:
	pushq	 %rbp
	movq 	%rsp, %rbp

	# Initialisation of the local variables of main in the corresponding stack frame
	movl	$4, -8(%rbp) 	# int n = 4
	movl 	$0, -4(%rbp) 	# int sum = 0
	movl 	$0, (%rbp)   	# int max = 0
	
	# while loop ahead	
	jmp 	.condition
.loop1:
	movl 	-8(%rbp), %eax
	leaq	(,%rax,4), %rdx
	leaq 	A(%rip), %rax
	movl	(%rax,%rdx), %eax
	addl	%eax, -4(%rbp)
	subl	$1, -8(%rbp)

	cmpl	(%rbp), %eax
	jg	.loop2
	jmp 	.condition
.loop2:
	movl	%eax, (%rbp)
	
.condition:
	cmpl	$-1, -8(%rbp)
	jne	.loop1

	# The sum of the elements of the array will be present in %eax whereas the maximum element will be there in %ebx
	movl	-4(%rbp), %eax
	movl	(%rbp), %ebx
	popq	%rbp
	ret

# Naren Akash, R J - 2018111020
# March 20, 2019 - Wednesday
# International Institute of Information Technology, Hyderabad
	
