org 100h

    mov ax, 15

L1:
    cmp ax, 1    
    je END       
    dec ax       
    jmp L1       
END:
    mov ah, 4Ch  
    int 21h
