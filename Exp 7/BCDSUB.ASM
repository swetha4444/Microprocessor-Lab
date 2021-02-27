;Program to subtract 2 BCD numbers

assume cs:code,ds:data

data segment
		opr1 db 11h
		opr2 db 99h
		result db 00h
		carry db 00h
data ends

code segment
		org 0100h
start:
		mov ax,data
		mov ds,ax
		mov al, opr1
		mov bl, opr2
		mov cl, 00h
		sub al, bl
		das
		jnc here
		inc cl
		mov dl, 99h
		sub dl, al
		add dl, 01h
		mov al, dl
		daa
here:
		mov result, al
		mov carry, cl
		mov ah, 4ch
		int 21h
code ends
end start
