org 100h

MyLabel:
    mov ax, 1234h

start:
    jmp MyLabel

    mov ah, 4Ch
    int 21h
