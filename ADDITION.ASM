data segment
a dw 1234h
b dw 5678h
sum dw ?
ends
code segment
assume cs:code,ds:data
start:
mov ax,data
mov ds,ax
mov ax,a
mov bx,b
add ax,bx
mov sum,ax
mov ax,04c00h
int 21h
ends
end start
