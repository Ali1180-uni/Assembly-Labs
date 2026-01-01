[org 0x100]

    lea bx, [nums]      ; Point to numbers
    mov cx, 3           ; Try 3 times
    mov al, 5           ; We are looking for '5'

start_loopne:
    cmp [bx], al        ; Compare memory with 5
    lea bx, [bx+1]      ; Move to next number
    
    loopne start_loopne ; Loop IF Not Equal (ZF=0) AND CX > 0

    mov ax, 0x4c00      ; Exit
    int 0x21

nums: db 1, 2, 5        ; The '5' makes them Equal, so the loop STOPS.
