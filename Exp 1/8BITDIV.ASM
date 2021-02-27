;Program for dividing 16 bit by 8 bit numbers

assume cs:code,ds:data
data segment 
	    opr1 dw 0000h
        opr2 db 99h
        quo db 00h
        rem db 00h
data ends
code segment
    org 0100h
start:  mov ax,data
        mov ds,ax
        mov ax,opr1
        mov bl,opr2
        div bl
        mov quo,al
        mov rem,ah
        mov ah,4ch
        int 21h
	code ends
end start