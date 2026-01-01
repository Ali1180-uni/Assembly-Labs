org 0x100
jmp start

val1 dw 0x1234

start:
    ; --- DIRECT Addressing ---
    mov ax, [val1]       ; We use the label directly.

    ; --- INDIRECT Addressing ---
    mov bx, val1         ; Step 1: Put the ADDRESS (offset) in BX
    mov cx, [bx]         ; Step 2: Use BX as a pointer to get the value

    mov ax, 0x4c00
    int 0x21