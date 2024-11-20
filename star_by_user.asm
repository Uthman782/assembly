.model small
.stack 100h
.data
    sms db 'Enter a number:-> $'
    char db 'Chara:-> $'
.code
main proc
    mov dx,@data
    mov ds,dx
    
    LEA dx,sms
    mov ah,9h
    int 33D
    
    mov ah,1
    int 33D
    
    sub al,48D
    mov bl, al 
    ;mov n1,al
    
    mov ah, 02h
    mov dl, 0Ah
    int 21h

    mov dl, 0Dh 
    int 21h      
    
    mov bh,1

outer:       
    mov cl,bh
    inner:
        mov dx, '*'
        int 21h
        
        mov dx, ' '
        int 21h

    loop inner 
    mov cl,bl
    dec bl
    inc bh
    
    mov dl, 0Ah
    int 21h

    mov dl, 0Dh 
    int 21h
    
    loop outer
    mov cx, 2 
    mov ah, 02h 

main endp
end main