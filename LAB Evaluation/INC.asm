org 100h
mov ax, 1

start:
cmp ax, 5
je stop
inc ax
jmp start

stop:
mov ah, 4Ch  
int 21h