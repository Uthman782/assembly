.model small
.stack 100h
.code
main proc
;A-----------------------------------    
    ;MOV AX, 4D12h
    ;MOV BX, 1C21h
    ;ADD AX, BX                          

;B-----------------------------------  
    ;MOV AX, 4D12h
    ;MOV BX, 1C21h
    ;SUB AX, BX                          

;C----------------------------------- 
    ;MOV AL, 25
    ;MOV BH, 1Ch
    ;ADD AL, BH                           

;D-----------------------------------
    ;MOV CL, 10000011b
    ;MOV CH, 10010010b
    ;SUB CH, CL                           

;E-----------------------------------
    ;MOV AX, 80h
    ;ADD AX, 01 
 
;F-----------------------------------
    ;MOV AL, 80h
    ;ADD AL, 01                           

;G-----------------------------------
    ;MOV AL, 0A5h  
    ;MOV BL, 12h
    ;ADD AL, BL
    ;MOV DH, BL
    ;SUB DH, 10
     
;A-----------------------------------
 ;Copy value 0000100b into lower byte of AX register and value -5 in higher byte of BX register.
   ;MOV AL, 0000100B
   ;MOV BH, -5D
                                     
;B-----------------------------------                                    
  ;Replace contents of DX register by its 2's complement. 
  ;MOV DX, 1234H
  ;NOT DX      ; Invert all bits
  ;INC DX      ; Add 1 to get 2's complement
 
;C----------------------------------- 
  ;MOV CX, 20H
  ;INC CX
  
;D-----------------------------------
   ;MOV BL, 10011101B
   ;NOT BL
   
;E-----------------------------------
  ;Exchange lower byte of AX and higher byte of DX.
  ;MOV BL, 30H
  ;MOV DH, 20H
  ;MOV AL, BL
  ;MOV BL, DH
  ;MOV DH, AL
  
   MOV ah,4ch
   int 21h
main endp
end main
