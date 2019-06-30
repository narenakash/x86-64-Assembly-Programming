#include<stdio.h>

void fibonacci(int n)
{
	int first=0, second=1;

	while(n>0)
	{
		int temp = second + first;
		first = second;
		second = temp;
		n--;
	}
	printf("%d\n",first);
}

// Naren Akash, R J - 2018111020
// February 28, 2019 - Thursday
// International Institute of Information technology, Hyderabad
