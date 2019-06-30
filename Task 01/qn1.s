# x86 Assembly Code for Finding the Nth Fibonacci Number

.data
N:
	.byte 10
first:
	.int
second:
	.int
temp:
	.int 

.text
.global main
main:

# Result will be found in %ebx register at the end

	movl $0,%eax      # temp   <--> %eax
	movl $0,%ebx      # first  <--> %ebx
	movl $1,%ecx	  # second <--> %ecx
	mov N@GOTPCREL(%rip), %rdx
	movzbl (%rdx), %edx
.loop:
	cmpl $0,%edx
	je .loopexit
	movl %ebx,%eax    # temp = first
	addl %ecx,%eax	  # temp += second
	movl %ecx,%ebx	  # first = second
	movl %eax,%ecx	  # second = temp
	dec %edx	  # N -= 1
	jmp .loop
.loopexit:
	ret

# Naren Akash,R J - 2018111020
# February 27, 2019 - Wednesday
# International Institute of Information Technology, Hyderabad


