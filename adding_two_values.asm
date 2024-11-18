.model tiny
.stack 100h
.data
.code
main proc
     ;mov ah,1h
     ;int 21h
     ;mov bl,al  
      mov bl,4
      mov al,3
     ;mov ah,1h
     ;int 21h  
     add bl,al
     
     ;mov dl,0AH
     mov dl,10d   ; printing new line on the console 
     mov ah,2h
     int 21h
     
     mov dl, 0DH    
     ;mov dl,13   ; Removing extra spaces 
     mov ah,2h
     int 21h  
     
     mov dl,bl
     add dl,48d   ; subtracting 48D from dl    
     mov ah,2h
     int 21h
    
     mov ah,4ch
     int 21h
    
main endp
end main