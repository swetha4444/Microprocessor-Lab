;Program for dividing 2, 16 bit numbers

assume cs:code,ds:data
data segment 
	opr1 dw 11h
        opr2 dw 99h
        quo dw 00h
        rem dw 00h
data ends
code segment
    org 0100h
start:  mov ax,data
        mov ds,ax
        mov ax,opr1
        mov dx,00h
        mov bx,opr2
        div bx
        mov quo,ax
        mov rem,dx
        mov ah,4ch
        int 21h
	code ends
end start

