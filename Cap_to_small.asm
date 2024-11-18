.model small
.stack 100h
.data
.code
main proc
     ;mov ah,1
     ;int 21h
     mov bl,'o'
     mov dl,bl
     mov ah,2h
     int 21h
     ; for new line
     mov dl,0AH
     mov ah,2h
     int 21h 
     mov dl,0dh
     mov ah,2h
     int 21h 

     mov dl,bl
     sub dl,20h
     mov ah,2h
     int 21h
     mov ah,4ch
     int 21h
    
main endp
end main