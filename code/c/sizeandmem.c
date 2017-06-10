#include <stdio.h>
// this files shows sizes of variables on system
// and where ptrs of various variables will end up.
// just for informational purpose.
int main(int argc, char **argv) {

	printf("sizes:\n");
	printf("  char  ->%ld bits\n", sizeof(char)*8);
	printf("  short ->%ld bits\n", sizeof(short)*8);
	printf("  int   ->%ld bits\n", sizeof(int)*8);
	printf("  float ->%ld bits\n", sizeof(float)*8);
	printf("  long  ->%ld bits\n", sizeof(long)*8);
	printf("  ptr   ->%ld bits\n", sizeof(char *)*8);

	int i = 1;
	const int ci = 1;
	static int si = 1;
	const static int csi = 1;
	int *pi;
	*pi = 1;
	printf("memory locations:\n");
	printf("              int: %p\n", (void *)&i);
	printf(" const        int: %p\n", (void *)&ci);
	printf(" static       int: %p\n", (void *)&si);
	printf(" const static int: %p\n", (void *)&si);
	printf("             *int: %p\n", pi);

	return 0;

}
