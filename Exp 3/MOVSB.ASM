;Moving a string of bytes

assume cs:code,ds:data,es:extra

data segment
    src db 01h,02h,03h,04h
    srcLen dw 0004h
data ends

extra segment
    dst db ?
extra ends

code segment
	org 0100h
start: mov ax,data
       mov ds,ax
       mov ax,extra
       mov es,ax
       mov si,offset src
       mov di,offset dst
       CLD
       mov cx,srcLen
       rep movsb
       mov ah,4ch
       int 21h
code ends
end start
