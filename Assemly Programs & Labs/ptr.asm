org 100h

val: dw 1234h

start:
    mov ax, word [val]   ; MASM WORD PTR equivalent
    mov bl, [val]        ; MASM BYTE PTR equivalent

    mov ah, 4Ch
    int 21h
