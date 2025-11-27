org 100h

    mov ah, 02h     ; Put some value in AH

L2:
    sahf            ; AH → FLAGS
    cmp ah, 02h     ; Compare with same value
    je L2           ; Loop forever (for checking flags in debugger)

    mov ah, 4Ch
    int 21h