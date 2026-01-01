org 100h
mov ax, 9

start:
cmp ax, 1
je stop
dec ax
jmp start

stop:
mov ah, 4Ch  
int 21h