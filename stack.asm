org 0x100
jmp start

start:
    mov ax, 0xAAAA      ; Load a value
    mov bx, 0xBBBB      ; Load another value

    push ax             ; 1. Save AX (AAAA) to stack
    push bx             ; 2. Save BX (BBBB) to stack

    ; --- Now we retrieve them in REVERSE order ---
    
    pop cx              ; 3. Pop top item into CX (Expect BBBB)
    pop dx              ; 4. Pop next item into DX (Expect AAAA)

    mov ax, 0x4c00
    int 0x21