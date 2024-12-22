.model small
.stack 100h
.data
.code
main proc
    
    mov cx, 26
    mov dx, 65   ; For Capital latters
    mov ah, 2
    cap:
        int 21h
        inc dx
    loop cap
    
    mov dx,10D   ; New line
    int 21h
    mov dx,13D   ; New line cret
    int 21h
    
    mov cx, 26
    mov dx,97    ; For Small Latters
    sml:
        int 21h
        inc dx
    loop sml
    
    mov ah,4ch
    int 21h    
main endp
end main