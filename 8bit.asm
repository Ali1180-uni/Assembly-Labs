org 0x100

section .text
start:
    ; --- Setup 8-bit Registers ---
    ; Number A: 0x01FF (Stored as AH=01, AL=FF)
    mov ah, 0x01
    mov al, 0xFF

    ; Number B: 0x0001 (Stored as BH=00, BL=01)
    mov bh, 0x00
    mov bl, 0x01

    ; --- Step 1: Add Lower 8-bits (Standard ADD) ---
    add al, bl      ; FF + 01 = 00. Carry Flag (CF) becomes 1.

    ; --- Step 2: Add Higher 8-bits (ADC) ---
    adc ah, bh      ; AH + BH + CF
                    ; 01 + 00 + 1 = 02

    ; Final Result in AX (AH:AL) is 0x0200
    
    mov ax, 0x4c00
    int 0x21