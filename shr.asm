org 0x100

section .text
start:
    ; --- STEP 1: Load data ---
    mov al, 20      ; AL holds binary: 0001 0100

    ; --- STEP 2: Perform SHR ---
    shr al, 1       ; Shift right. A '0' enters from the left.
                    ; AL becomes binary: 0000 1010 (Decimal 10)
                    ; We just did 20 / 2 = 10.

    mov ax, 0x4c00  ; Exit
    int 0x21