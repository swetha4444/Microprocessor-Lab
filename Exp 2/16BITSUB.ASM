;Program for subtract 2, 16 bit numbers

assume cs:code,ds:data
data segment 
	opr1 dw 11h
    opr2 dw 99h
    result dw 00H
	borrow db 00H
data ends
code segment
    org 0100h
start:  mov ax,data
        mov ds,ax
        mov ax,opr1
        mov bx,opr2
		mov ch,00h
        sub ax,bx
        jnc here
		inc ch
        neg ah
here:   mov result,ah
		mov borrow,ch
        mov ah,4ch
        int 21h
end start
code ends
end
