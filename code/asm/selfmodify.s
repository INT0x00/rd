; test file which modifies itself and then runs it's modified code.

global _start
section .text

_start:

	call aexit ; wait...
	call aexit

section .data
aexit:
a:	db 0x90
b:	db 0x90
c:	db 0x90
d:	db 0x90
e:	db 0x90
f:	db 0x90
g:	db 0x90
h:	db 0x90
i:	db 0x90
j:	db 0x90
k:	db 0x90
l:	db 0x90
	mov byte [a], 0xb8
	mov byte [b], 0x3c
	mov byte [c], 0x00
	mov byte [d], 0x00
	mov byte [e], 0x00
	mov byte [f], 0xbf
	mov byte [g], 0x00
	mov byte [h], 0x00
	mov byte [i], 0x00
	mov byte [j], 0x00
	mov byte [k], 0x0f
	mov byte [l], 0x05
	ret
	; what?
