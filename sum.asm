.model small
.stack 100h
.data
    n1 db 20
    n2 db 20
    res db ?
.code
.main proc
      mov ax,1
      mov ds,ax
      
      ;load n1 into AL register
      mov al, n1
      
      ;add n2 into al register
      add al,n2
      ;store result in result variable
      mov res,al
      
      ;display result
      mov dl,res
      mov ah,02h
      int 21h
      
      ;exit program
      mov ah,4ch
      int 21h