org 100h

    mov ax, 1 

L1:
    cmp ax, 15    
    je END       
    inc ax       
    jmp L1       
END:
    mov ah, 4Ch  
    int 21h
