.model tiny
.stack 100h
.data
.code
main proc
     mov ah,1
     int 21h
     mov dl,0  
     add dl,al
     
     mov ah,1
     int 21h  
     add dl,al
     
     add dl,-48
     ;sub dl,48
     ;mov dl,al
     ;mov cl,al
     ;mov ah,1h
      ;mov ah,1h
      ;int 21h
      ;add al,cl
     ;add al,cl
     ;add dl,al
     mov ah,2h
    
     int 21h
     mov ah,4ch
     int 21h
    
main endp
end main