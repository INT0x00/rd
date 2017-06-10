; compile this file with: nasm -felf64 eatme.s
; link with: ld eatme.o
; objdump -D ./a.out
; normal disassembly, looks like what we wrote here.
; then try ld eatme.o -x -s
; objdump -D ./a.out
; wtf is that disassembly? callq? rolb?... ;)
; now ofcourse, this is due to symbols being stripped. but still, a disassembler should read the opcodes
; this show how crummy these opcodes are really. if you can't glean whats going on by reading the binary...

global _start:

section .data

_start:

	inc rax
	jmp addr
	db 0
addr:
	add rax, 1
	dec rax
	jmp subr
	db 0

subr:
	sub rax, 1
	mov rax, 60
	mov rdi, 0
	syscall
