.model small
.stack 100h
.data        
.code
main proc
      mov dx, 'U'
      mov ah,2h
      int 21h
      
      mov dx, 'T'
      mov ah,2h
      int 21h
      
      mov dx, 'H'
      mov ah,2h
      int 21h
      
      mov dx, 'M'
      mov ah,2h
      int 21h
      
      mov dx, 'A'
      mov ah,2h
      int 21h
      
      mov dx, 'N'
      mov ah,2h
      int 21h
      
      mov ah,4ch
      int 21h
main endp
end main