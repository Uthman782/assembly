.model small
.stack 100h
.data
    A DW 2
    B DW 5
    SUM DW ?
.code
main proc
;add the numbers
    MOV ax,@data
    MOV ds,ax
    
    MOV ax, A
    ADD ax, B
    
    MOV SUM, ax 
    MOV dx, SUM
    ADD dx, 48D
    MOV ah, 2
    INT 21h
    main endp
end main