;Moving a string without using string instructions

assume cs:code,ds:data

data segment
    src db 01h,02h,03h,04h
    srcLen dw 0004h
    dst db ?
data ends

code segment
	org 0100h
start: mov ax,data
       mov ds,ax
       mov si,offset src
       mov di,offset dst
       mov cx,srcLen
       copy:
            mov al,[si]
            mov [di],al
            inc si
            inc di
            dec cx
            jnz copy
       mov ah,4ch
       int 21h
code ends
end start