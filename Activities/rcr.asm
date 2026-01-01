org 100h
mov al, 01000001b
stc
rcr al, 1
mov ah, 4Ch
int 21h
