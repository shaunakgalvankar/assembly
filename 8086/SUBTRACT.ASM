data segment
a dw 8765h
b dw 4321h
diff dw ?
bor db ?
ends
code segment
assume cs:code,ds:data
start:
mov ax,data
mov ds,ax
mov ax,a
mov bx,b
sub bx,ax
mov diff,bx
jnb skip
inc bor
skip:
mov ax,04c00h
int 21h
ends
end start
