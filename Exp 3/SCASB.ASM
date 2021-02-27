;Searching a byte in a string

assume cs:code,ds:data,es:extra

data segment
    strSub db 03h
    strLen dw 04h
    flag dw 0004h
data ends

extra segment
    str db 02h,01h,03h,04h
extra ends

code segment
	org 0100h
start: mov ax,data
       mov ds,ax
       mov ax,extra
       mov es,ax
       mov si,offset strSub
       mov di,offset str
       mov cx,strLen
       mov al,strSub
       cld
       repne scasb
       jz match
       mov flag,0000h
       mov ah,4ch
       int 21h
match: 
       sub flag,cx
       mov ah,4ch
       int 21h
code ends
end start


