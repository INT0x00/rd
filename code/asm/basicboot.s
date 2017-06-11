; most basic bootloader you can have
; you can assemble and use this as bootdisk for vm or qemu
; nasm -fbin basicboot.s
; qemu-system-x86_64 basicboot
; you will observe it boots from disk and hangs subsequently.

BITS 16
ORG 0x7c00		;; where BIOS loads first sector into memory.

dw 0xfeeb		; eb fe is jump to self, this justhangs cpu so execution doesnt run off without us..
times 510 - ($-$$) db 0	; padding macro to make it 1 sector minus two bytes or 0x1FE bytes long.
dw 0xaa55		; this is the magic value that goes at end of boot sector.
