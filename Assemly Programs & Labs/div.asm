[org 0x100]

mov ax, 8
mov bx, 2
div bx

mov ax, 0x4c00
int 0x21
