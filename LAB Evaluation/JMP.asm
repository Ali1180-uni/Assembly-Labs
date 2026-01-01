org 100h


mov ax, 5
on:
inc ax

jmp on

mov ah, 4Ch
int 21h