org 100h

L1:
    mov ax, 5
    mov bx, 3
    cmp ax, bx
    jg L1

    mov ah, 4Ch
    int 21h
