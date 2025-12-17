org 0x100

section .text
start:
    ; --- STEP 1: Load a negative number ---
    mov ax, 0xFFFC  ; This is -4 in signed binary (1111111111111100)

    ; --- STEP 2: Perform SAR ---
    sar ax, 1       ; Shift right. 
                    ; Because the far-left bit is '1', a '1' is inserted.
                    ;
                    ; Before: 1111 1111 1111 1100 (-4)
                    ; After:  1111 1111 1111 1110 (-2)
                    ; AX is now 0xFFFE (which is -2)

    ; --- STEP 3: What if we used SHR instead? (The mistake) ---
    ; Don't run this part, just read it.
    ; If we did 'shr ax, 1' on 0xFFFC:
    ; A '0' would come in on the left.
    ; Result: 0111 1111 1111 1110 
    ; That is positive 32766. The math would be broken.

    mov ax, 0x4c00  ; Exit
    int 0x21