;Program for multiply 2, 16 bit numbers

assume cs:code,ds:data
data segment 
		opr1 dw 1111h
        opr2 dw 9999h
        lsb dw 0000H
        msb dw 0000H
data ends
code segment
    org 0100h
start:  mov ax,data
        mov ds,ax
        mov ax,opr1
        mov bx,opr2
        mul bx
        mov lsb,ax
        mov msb,dx
        mov ah,4ch
        int 21h
	code ends
end start

