; most basic bootloader you can have
; you can assemble and use this as bootdisk for vm or qemu
; nasm -fbin basicboot.s
; qemu-system-x86_64 -curses basicboot
; you will observe it boots from disk and hangs subsequently.
; (esc+2 to enter qemu cmd console.
;  xp /1w 0x7c00 for our jump to self code.
;  xp /1w 0x7dfe for boot magic
;  quit to exit qemu.)

BITS 16
ORG 0x7c00		;; where BIOS loads first sector into memory.

dw 0xfeeb		; eb fe is jump to self, this justhangs cpu so execution doesnt run off without us..
times 510 - ($-$$) db 0	; padding macro to make it 1 sector minus two bytes or 0x1FE bytes long.
dw 0xaa55		; this is the magic value that goes at end of boot sector.

; BIOS will only load the first sector from disk
; so we will need to use tickery to get more code in if we
; want to use more then 0x200 bytes.
; this is by far easiest via the BIOS interrupt system where
; we can load plenty of sectors to load up an os-loader.
