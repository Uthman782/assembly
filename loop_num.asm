org 100h
mov cx,10
mov bl,0

test:
mov dl,bl
add dl,48D
mov ah,2
int 21h

mov dl,10D
mov ah,2
int 21h

mov dl,13D
mov ah,2
int 21h

inc bl
loop test

ret




