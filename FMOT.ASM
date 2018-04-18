code segment
assume cs:code
start:
mov al,82h
mov dx,0ffe6h   ;intialization of cwr
out dx,al

lp:
in ax,0e2h
mov bx,ax
cmp bx,01h
jz cw
cmp bx,02h
jz ccw
cmp bx,00h
jz stop
jmp lp
cw :
mov dx,0ffe0h
mov al,01h
out dx,al

ccw:
mov dx,0ffe0h
mov al,02h
out dx,al

stop :
mov dx,0ffe0h
mov al,01h
out dx,al

int 3h
ends
end start


