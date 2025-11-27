org 100h

section .data
    msg db 'Ali Rahmani$'

section .text
_start:
    mov dx, msg
    mov ah, 09h
    int 21h
    
    mov ax, 4C00h
    int 21h
