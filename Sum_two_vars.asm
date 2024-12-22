include 'emu8086.inc'

.model small
.stack 100h
.data
    var1 db ?
    var2 db ?
    var3 db 'hello$'
.code
main proc
    mov ax, @data
    mov ds, ax
    
    print 'Enter First Number:'
    mov ah,1
    int 21h 
    
    mov var1,al
    ;mov dl,10
    mov ah,2
    int 21h  
    print 'Enter Second Number:'
    mov ah,1
    int 21h 
    mov var2,al
    mov dl,10
    mov ah,2
    int 21h
    
    mov dx,var1
    add dx,var2
    add dx,48
    print 'SUM IS:'
    mov ah,2
    int 21h
     
   ; mov dx, offset var3 
    ;lea dx, var3
    ;mov ah, 9
    ;int 21h
    
    mov ah,4ch
    int 21h
main endp
end main