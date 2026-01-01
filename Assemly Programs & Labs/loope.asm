[org 0x100]

    lea bx, [nums]      ; Point to numbers
    mov cx, 3           ; Try 3 times
    mov al, 1           ; We expect to see '1'

start_loope:
    cmp [bx], al        ; Compare memory with 1
    lea bx, [bx+1]      ; Move to next number
    
    loope start_loope   ; Loop IF Equal (ZF=1) AND CX > 0

    mov ax, 0x4c00      ; Exit
    int 0x21

nums: db 1, 1, 2        ; The '2' stops the loop
