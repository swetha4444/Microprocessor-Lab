;Program for adding two 8 bits BCD

assume cs:code, ds:data

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
	 	mov al,opr1
	 	mov bl,opr2
	 	mov cl,00h
	 	add al,bl
	 	daa
	 	jnc here
	 	inc cl 
here: 
		mov result,al
	 	mov carry,cl
	 	int 21h
code ends
end start
