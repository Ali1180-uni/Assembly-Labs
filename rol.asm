[org 0x100]

    ; 1. Load AL with 10000000 (Hex: 80)
    ;    We put the '1' at the far left (Bit 7).
    mov al, 0x80    

    ; 2. Rotate Left by 1 bit
    ;    The '1' at Bit 7 falls off the left edge.
    ;    It runs around and enters at Bit 0 (Right edge).
    ;    It ALSO copies itself to the Carry Flag.
    rol al, 1       

    ; EXPECTED RESULT IN DEBUGGER:
    ; AL should be 00000001 (Hex: 01)
    ; Carry Flag (CF) should be 1

    ; 3. Exit Program
    mov ax, 0x4c00
    int 0x21