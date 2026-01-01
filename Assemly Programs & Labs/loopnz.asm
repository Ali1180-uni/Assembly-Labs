[org 0x100]

    lea bx, [vals]      ; Point to values
    mov cx, 3           ; Try 3 times

start_loopnz:
    cmp byte [bx], 0    ; Check if number is 0
    lea bx, [bx+1]      ; Move to next number
    
    loopnz start_loopnz ; Loop IF Not Zero (ZF=0) AND CX > 0

    mov ax, 0x4c00      ; Exit
    int 0x21

vals: db 9, 8, 0        ; The '0' makes it Zero, so the loop STOPS.