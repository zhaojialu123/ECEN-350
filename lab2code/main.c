#include <stdio.h>

extern long long int lab02d(long long int b);

int main(void)
{
	long long int a = lab02d(5);  // takes as an argument and store to my value address

	printf("Result is = %x\n", a); //print 'myvalue' address in hexadecimal

	return 0;
}
