#include<stdio.h>

extern int fibonacci();

int main(void)
{
	fibonacci();
	return 0;
}

// "as -o qn3.o qn3.s" to make the object file
// "gcc -Wall qn3.c qn3.o -o 3" to compile

// Naren Akash,R J - 2018111020
// February 28, 2019 - Thursday
// International Institute of Information Technology, Hyderabad
