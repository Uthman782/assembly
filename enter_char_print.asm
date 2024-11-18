.model small
.stack 100h
.data
    na db 'hello',0
.code

main proc
    mov ah, 1h
    int 21h
    mov dl, al
    mov ah, 2h
    int 21h
    mov ah,4ch
    int 21h
 
main endp
end main