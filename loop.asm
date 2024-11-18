org 100h
    mov bl, 50
    mov bh,1  
    mov ah, 02h

outer:       
    mov cl,bh
    inner:
        mov dx, '*'
        int 21h
        
        mov dx, ' '
        int 21h

    loop inner 
    mov cl,bl
    dec bl
    inc bh
    
    mov dl, 0Ah
    int 21h

    mov dl, 0Dh 
    int 21h
    
    loop outer
    mov cx, 2 
    mov ah, 02h 

ret