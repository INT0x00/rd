/*
	wait random time before starting program without sleeping
*/
#include <stdio.h>
#include <stdlib.h>
#include <sys/mman.h>
long int range = 1000;
int booped = 0;
void *boop();
int main(int argc, char **argv) {
	long int b = random();
	srandom(b);
	while(1) {
		if(booped == 0) {
			boop();
		}
		else if(booped == 1){
			printf("blep!\n");
			return 0;
		}
	}
}

void *boop() {
	long int a = random() % range;
	long int i;
	void *p;
	i = a;
	// some common operation here which cost a little time..
	while(i) {
		p = mmap(0,i+0x100,PROT_READ,MAP_PRIVATE | MAP_ANONYMOUS, 0, 0);
		munmap(p, i+0x100);
		i--;
		if(i==0){
			break;
		}
	}

	if((a ^ 4) == 44) {
		booped = 1;
	}
}
