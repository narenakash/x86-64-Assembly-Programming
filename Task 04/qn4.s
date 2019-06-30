.extern fibonacci

.data

.text
.global main
main:
	pushq %rbp
	movl $10,%edi
	callq fibonacci
	pop %rbp
	ret
