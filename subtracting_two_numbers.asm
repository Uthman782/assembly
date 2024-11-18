.model small
.stack 100H
.code
main proc
   mov ah,1
   int 21h
   mov bl,al
   
   mov ah,1
   int 21h
   sub bl,al
   
   mov dl,10d
   mov ah,2h
   int 21h
   mov dl,13d
   mov ah,2h
   int 21h
   
   mov dl,bl
   add dl,30h
   mov ah,2h
   int 21h 
    
    
    
    mov ah,4ch
    int 21h
main endp
end main