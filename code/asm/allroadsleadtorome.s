global _start:
section .text
; assemble me, assemble me not... assemble me... assemble me not.. assemble me...
_start:
	lea rax, [0]
	shr rax, 32
	shl rax, 32
	movzx rax, byte [$+8]
	movzx ax, byte [$+8]
	sub rax, rax
	and rax, 0
	andn rax, rax, rax
	imul rax, rax,0
	xor rax, rax
	bextr rax, rax, rax
	sbb rax, rax
	; guess what rax is...
