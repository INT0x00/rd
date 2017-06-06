// variaton on code seen in weird main.
// this time main is the declaration of a struct. :-)
// compiles just fine. didnt test output on ubuntu/debian yet though.

typedef struct {
	int a[13];
} _main;

const _main main = {
	-443987883, 440, 113408, -1922629632,
	4149, 899584, 84869120, 15544,
	266023168, 1818576901, 1461743768, 1684828783,
	-1017312735
};
