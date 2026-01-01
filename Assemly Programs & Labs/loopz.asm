[org 0x100]

    lea bx, [zeros]     ; Point to numbers
    mov cx, 3           ; Try 3 times

start_loopz:
    cmp byte [bx], 0    ; Check if number is 0
    lea bx, [bx+1]      ; Move to next number
    
    loopz start_loopz   ; Loop IF Zero (ZF=1) AND CX > 0

    mov ax, 0x4c00      ; Exit
    int 0x21

zeros: db 0, 0, 5       ; The '5' stops the loop
