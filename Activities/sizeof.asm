org 0x100
jmp start

array dw 10, 20, 30, 40    ; Array of 4 words (2 bytes each)

Arr_Type   equ 2                 ; TYPE = 2 bytes (word)
Arr_Size   equ ($ - array)       ; SIZEOF = Current($) - Start(array)
Arr_Length equ Arr_Size / Arr_Type ; LENGTHOF = Size / Type

start:
    mov ax, Arr_Type     ; Should be 2
    mov bx, Arr_Size     ; Should be 8 (4 items * 2 bytes)
    mov cx, Arr_Length   ; Should be 4 (4 items)

    mov ax, 0x4c00
    int 0x21
