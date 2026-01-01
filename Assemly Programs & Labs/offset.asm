org 0x100
jmp start

var1 db 0x55      ; Define a byte with value 55h

start:
    mov bx, var1  ; 1. Load the OFFSET (Address) of var1 into BX
    
    mov al, [var1] ; 2. Load the VALUE of var1 into AL

    mov ax, 0x4c00
    int 0x21
