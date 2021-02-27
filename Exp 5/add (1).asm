assume cs:code, ds:data
data segment
		mat1 db  10h,20h,30h
        mat2 db  40h,50h,60h
        row1 db  02h
        col1 db  02h
        row2 db  02h
        col2 db  02h
        len  db  00h
        resi dw    ?        
data ends
code segment
		org 0100h
start:  mov ax, data
		mov ds, ax
		mov al,row1
        mov bl,row2
        cmp al,bl
        jne break
		mov al,col1
        mov bl,col2
        cmp al,bl
        jne break
		mov si, offset mat1 
		mov di, offset mat2 
        mov al,row1
        mov bl,col1
        mul bl               
        mov len, al
        mov cl, len
        mov ch, 00h
        mov ax, 0000h
looper:	mov al, [si]
        mov ah, 00h
		mov bl, [di]
        mov bh, 00h
        add ax, bx
		push ax
        inc si
		inc di
		dec cx
		jz  prewrk
		jmp looper
prewrk:
        mov si, offset resi + 0001h
        mov cl, len
        mov ch, 00h
        add si, cx
        add si, cx
retloop:
        pop ax
        mov [si], al
        dec si
		mov [si], ah
        dec si
        dec cx
        jz break
        jmp retloop

break:	mov ah, 4ch
		int 21h
code ends
end start