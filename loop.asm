org 100h
    mov bl, 10 ; counter for outer loop
    mov bh,1   ; counter for inner loop
    mov ah, 02h

outer:       
    mov cl,bh
    inner:
        mov dx, '*'                        ; *
        int 21h                            ; * * 
                                           ; * * *
        mov dx, ' '                        ; * * * *
        int 21h                            ; * * * * *

    loop inner 
    mov cl,bl
    dec bl
    inc bh
    
    mov dl, 0Ah    ; for new line
    int 21h

    mov dl, 0Dh 
    int 21h
    
    loop outer

ret