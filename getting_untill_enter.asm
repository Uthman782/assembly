.model small
.stack 100h
.data
    var1 db 100 dup('$')

.code
main proc
    mov ax, @data
    mov ds, ax
    ;mov si, offset var1
    lea si,var1
    mov ah, 1
    l1:
        int 21h
        cmp al, 13
        je halt
    
        mov [si], al
        inc si
    loop l1
    
    halt:
    mov dx, 10
    mov ah, 2
    int 21h
    
    mov dx, 13
    int 21h
    
    mov dx, offset var1
    mov ah, 9
    int 21h
    
    mov ah,4ch
    int 21h
    
    main endp
end main