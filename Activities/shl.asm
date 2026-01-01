org 0x100

section .text
start:
    ; --- STEP 1: Load data ---
    mov al, 3       ; AL now holds binary: 0000 0011

    ; --- STEP 2: Perform SHL ---
    shl al, 1       ; Shift everything in AL left by 1 spot.
                    ; A '0' enters from the right.
                    ; AL now holds binary: 0000 0110 (Decimal 6)

    ; --- STEP 3 (Optional): Do it again ---
    shl al, 1       ; Shift left again.
                    ; AL now holds binary: 0000 1100 (Decimal 12)
                    ; (We did 6 * 2 = 12)

    mov ax, 0x4c00  ; Exit standardly
    int 0x21