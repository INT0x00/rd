
// main is a struct. your argument is invalid.
typedef struct {
	int a;
} _main;

const _main main = {
	0xc3,		// 0xc3 is ret. if it hits this...there will be garbage at best as return value as it's not set.  
};
