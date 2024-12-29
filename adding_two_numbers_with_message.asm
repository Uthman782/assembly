.model small
.stack 100h
.data
    n db 'Enter a number: $'
    sum db 'Sum: $'
.code
main proc
    mov dx,@data
    mov ds,dx
    
    ;mov dx,offset n
    LEA dx,n
    mov ah,9D
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    
    mov dl,10D
    mov ah,2
    int 21h
    mov dl,13D
    int 21h
    
    LEA dx,n
    mov ah,9D
    int 21h
    
    mov ah,1
    int 21h
    add bl,al
    
    mov dl,10D
    mov ah,2
    int 21h
    mov dl,13D
    int 21h
    
    LEA dx,sum
    mov ah,9D
    int 21h
    
    sub bl,48
    mov dl,bl
    mov ah,2
    int 21h
     
    mov ah,4ch
    int 33D
    
main endp
end main