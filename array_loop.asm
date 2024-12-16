.model small
.stack 100h
.data
    arr db 1,2,3,4,5
.code
main proc
    mov ax, @data
    mov ds, ax
    mov cx, 5
    mov bx, 0
    mov ah,2H
myLoop:
    mov dl, arr[bx] 
    add dl,48D
    int 21h
    inc bx
loop myLoop
    mov ah, 4Ch
    int 21h
main endp
end main