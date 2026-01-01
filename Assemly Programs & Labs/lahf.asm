org 100h

    mov al, 8       ; Set AL
    sub al, 4       ; Change flags

L1:
    lahf            ; Load FLAGS → AH
    cmp ah, 0       ; Just a comparison to keep loop format
    je L1           ; Jump (never true, so it exits)

    mov ah, 4Ch
    int 21h