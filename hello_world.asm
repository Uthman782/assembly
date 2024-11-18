.model small
.stack 100h
.data
    n1 db 'Hello$'
    n2 db 'World!$'
.code
main proc
    mov dx,@data
    mov ds,dx
    
    ;mov dx,offset n1
    LEA dx,n1
    mov ah,9D
    int 21h
    
    mov dl,20H    ; code for space
    mov ah,2h
    int 21h
    
    LEA dx,n2
    mov ah,9D
    int 21h 
    
    mov ah,4ch
    int 33D
    
main endp
end main