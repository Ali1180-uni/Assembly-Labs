[org 0x100]

start:
    lea bx, [num]    ; LEA: Load the memory address of 'num' into BX
    mov cx, 3        ; MOV: Set our loop counter to 3

do_loop:
    inc bx           ; INC: Add 1 to the address in BX
    dec cx           ; DEC: Subtract 1 from the counter in CX
    
    cmp cx, 0        ; CMP: Compare CX to 0
    jnz do_loop      ; If CX is not zero, jump back to 'do_loop'

    mov ax, 0x4c00   ; Exit program
    int 0x21

num: db 55           ; Just a dummy number to point at
