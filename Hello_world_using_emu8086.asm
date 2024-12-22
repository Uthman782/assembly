include 'emu8086.inc'
.model small
.stack 100h
.data
.code
main proc        
    print 'Hello'
    mov dx, 10
    mov ah, 2
    int 21h
    
    mov dx, 13
    int 21h
    print 'World'
 
    mov ah,4ch
    int 21h
    main endp
end main