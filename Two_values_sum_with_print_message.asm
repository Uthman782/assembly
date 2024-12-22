include 'emu8086.inc'
.model small
.stack 100h
.data
.code
main proc
    print 'Enter first number:'
    mov ah, 1
    int 21h
    mov bl,al
    
    mov dl,10
    mov ah,2
    int 21h
    mov dl,13
    int 21h
    
    print 'Enter second number:'
    mov ah,1
    int 21h
    add bl, al
    
    mov dl,10
    mov ah,2
    int 21h
    mov dl,13
    int 21h
    
    mov dl,bl
    sub dl,48
    print 'Sum:'
    int 21h
    
    mov ah,4ch
    int 21h
    main endp
end main