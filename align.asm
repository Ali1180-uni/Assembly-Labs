org 0x100
jmp start

var1  db 0xFF       ; 1 byte
align 4             ; Skip bytes until address is divisible by 4
var2  db 0xEE

start:
    mov bx, var1    ; Load address of var1
    mov cx, var2    ; Load address of var2
    
    mov ax, 0x4c00
    int 0x21
