#include <stdio.h>
#include <stdlib.h>
long int range = 10000;
int booped = 0;
typedef struct {
	void *empty;
} maen;
void *membrane(maen);
int main(int argc, char **argv) {
	long int b = random();
	srandom(b);
	maen insane;
	while(1) {
		if(booped == 0) {
			membrane(insane);
		}
		else if(booped == 1){
			printf("badum tsch!\n");
			return 0;
		}
	}
}

void *membrane(maen insane) {
	long int a = random() % range;
	printf("a:%ld\n", a);
	if((a ^ 4) == 44) {
		booped = 1;
	}
}
