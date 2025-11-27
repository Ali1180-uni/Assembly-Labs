org 100h

L1:
    mov ax, 3
    mov bx, 3
    cmp ax, bx
    je L2
    mov ah, 4Ch
    int 21h

L2:
    mov ah, 4Ch
    int 21h
