.model small
.stack 100h

.code
main proc
    mov cx, 1  
    mov ah, 02h

loop1:
    mov dx, '*'
    int 21h

    mov dx, ' '
    int 21h

    loop loop1 

    mov dl, 0Ah
    int 21h

    mov dl, 0Dh 
    int 21h
    
    mov cx, 2 
    mov ah, 02h 

loop2:
    mov dx, '*' 
    int 21h

    mov dx, ' ' 
    int 21h

    loop loop2  

    mov dl, 0Ah  
    int 21h                      
    
    mov dl, 0Dh  
    int 21h

    mov cx, 3 
    mov ah, 02h 

loop3:
    mov dx, '*'  
    int 21h

    mov dx, ' ' 
    int 21h

    loop loop3  

    mov dl, 0Ah  
    int 21h
    
    mov dl, 0Dh  
    int 21h
    mov cx, 4  
    mov ah, 02h  

loop4:
    mov dx, '*'  
    int 21h

    mov dx, ' '  
    int 21h

    loop loop4  

    mov dl, 0Ah 
    int 21h
    
    mov dl, 0Dh  
    int 21h  
    
    mov cx, 5  
    mov ah, 02h  

loop5:
    mov dx, '*'  
    int 21h

    mov dx, ' '  
    int 21h

    loop loop5 

    mov dl, 0Ah
    int 21h

    mov ah, 4Ch
    int 21h
main endp
end main