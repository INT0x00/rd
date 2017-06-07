// this code was not written by me. It is a good example of how weird you can
// use programming and compilers.

// this program treats 'main' , the entry function for c code, as an array instead of a function
// and it still works.
// In this array bytes are declared. A bit obfuscared because they are in decimal notation.
// The bytes are executed as main is called, as execution just jumps to the function entry point and
// starts executing bytes.
// in assembly this would look like a series of byte declarations (db 0xff etc.)

// the code from this program is from:
// jroweboy.github.io/c/asm/2015/01/26/when-is-main-not-a-function.html


const int main[] = {
	-443987883, 440, 113408, -1922629632,
	4149, 899584, 84869120, 15544,
	266023168, 1818576901, 1461743468, 1684828783,
	-1017312735
};
