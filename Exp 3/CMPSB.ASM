;Comparing 2 strings of bytes

assume cs:code,ds:data,es:extra

data segment
    str1 db 01h,02h,03h,04h
    strLen dw 04h
    flag dw 0004h
data ends

extra segment
    str2 db 02h,01h,03h,04h
extra ends

code segment
	org 0100h
start: mov ax,data
       mov ds,ax
       mov ax,extra
       mov es,ax
       mov si,offset str1
       mov di,offset str2

       mov cx,strLen
       rep cmpsb
       jne mismatch

       mov flag,cx
       mov ah,4ch
       int 21h
       
mismatch: 
       sub flag,cx
       mov ah,4ch
       int 21h
code ends
end start


