.model small
.stack 100h
.data
message db "Hello world!$"
.code
main proc
    mov ax,@data
    mov ds,ax
    mov ah,9 
    mov dx,offset message  
    int 21h
    
    main endp
end main