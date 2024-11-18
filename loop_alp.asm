org 100h
mov cx,26
mov bl,'A'

test:
mov dl,bl
;add dl,48D
mov ah,2
int 21h

inc bl
loop test

ret





