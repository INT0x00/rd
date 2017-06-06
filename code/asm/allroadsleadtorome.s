global _start:
section .text
; assemble me, assemble me not... assemble me... assemble me not.. assemble me...
start:
	lea rax, [0]			; rax = 0
	shr rax, 32                    	; rax = 0
	shl rax, 32                    	; rax = 0
	movzx rax, byte [$+8]           ; rax = 0
	movzx ax, byte [$+8]            ; rax = 0
	sub rax, rax                    ; rax = 0
	and rax, 0                    	; rax = 0
	andn rax, rax, rax              ; rax = 0
	imul rax, rax,0                 ; rax = 0
	xor rax, rax                    ; rax = 0
	bextr rax, rax, rax             ; rax = 0
	sbb rax, rax                    ; rax = 0
