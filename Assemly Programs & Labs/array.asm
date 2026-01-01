org 0x100
jmp start

list db 1, 2, 3, 4   ; Our list of numbers

start:
    mov bx, list        ; 1. Point BX to the start (Index 0)
    
    mov al, [bx]        ; 2. Get first number (1)
    
    inc bx              ; 3. Move pointer to next address
    mov al, [bx]        ; 4. Get second number (2)

    inc bx              ; 5. Move pointer again
    mov al, [bx]        ; 6. Get third number (3)

    mov ax, 0x4c00
    int 0x21