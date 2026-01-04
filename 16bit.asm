org 0x100

section .text
start:
    ; --- Setup 16-bit Register ---
    mov ax, 0xFFFF  ; Max 16-bit value
    mov bx, 0x0001  ; Value to add

    mov dx, 0x0000  ; DX will hold the "High" part (Overflow)

    ; --- Step 1: Add (Standard) ---
    add ax, bx      ; FFFF + 1 = 0000. Carry Flag is SET.

    ; --- Step 2: Catch the Carry (ADC) ---
    adc dx, 0       ; DX = DX + 0 + Carry
                    ; DX = 0 + 0 + 1 = 1

    ; Final Result combined (DX:AX) = 0x00010000 (Decimal 65,536)

    mov ax, 0x4c00
    int 0x21