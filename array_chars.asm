.model small
.stack 100h
.data
    array db 'u','t','h','m','a','n'
.code
main proc
    mov ax, @data
    mov ds, ax
    
    ;mov si, offset array
    lea si, array
    mov cx, 6
    mov ah, 2
    l1:
        mov dx, [si]
        int 21h 
        inc si      ;add si, 1
    loop l1
    
    mov ah,4ch
    int 21h
    
    main endp
end main