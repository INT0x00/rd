; test file which modifies itself and then runs it's modified code.


global _start
section .text

_start:

	call make_exit  ; encode exit syscall into nopsled.
	call aexit	; test our routine. (exit(0))



section .data

aexit:			; fake exit routine.
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

	jmp $			; if we have nops here still when we call it
				; then we will just hang cpu in running program.
make_exit:	; we could fill it in differently, but we just move the litteral bytes
		; for this example.
		; the nop sled could be a set of xored or otherwise encoded bytes. aslong as it is
		; an equal amount of bytes we wont have to fix any call or jmp offsets in the binary...
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
