.model small
.stack 100h
.data
    ms1 db 'Hello$'
    ms2 db 'World$'

.code
main proc
    mov ax, @data
    mov ds, ax
    
    ;mov dx, offset ms1
    lea dx,ms1
    mov ah, 9
    int 21h  
    
    mov dx, 10D
    mov ah, 2
    int 21h
    
    mov dx, 13D
    int 21h
    
    ;mov dx, offset ms2
    lea dx,ms2
    mov ah, 9
    int 21h
    
    mov ah,4ch
    int 21h
main endp
end main