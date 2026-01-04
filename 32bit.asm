org 0x100

section .text
start:
    ; --- Setup First 32-bit Number (0x000186A0) ---
    mov dx, 0x0001  ; High 16-bits
    mov ax, 0x86A0  ; Low 16-bits

    ; --- Setup Second 32-bit Number (0x00000001) ---
    mov cx, 0x0000  ; High 16-bits
    mov bx, 0x0001  ; Low 16-bits

    ; --- Step 1: Subtract Low Words (SUB) ---
    sub ax, bx      ; 0x86A0 - 0x0001 = 0x869F
                    ; No Borrow is generated here, but SBB handles that.
                    ; (If AX was smaller than BX, Borrow would trigger).

    ; --- Step 2: Subtract High Words (SBB) ---
    sbb dx, cx      ; DX - CX - Borrow
                    ; 0001 - 0000 - 0 = 0001

    ; Final Result (DX:AX) = 0x0001869F (Decimal 99,999)

    mov ax, 0x4c00
    int 0x21