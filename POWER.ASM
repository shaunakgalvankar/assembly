data segment
numb db 05h
pow db 03h
op dw ?
ends
code segment
assume cs:code,ds:data
start:
mov ax,data
mov ds,ax
mov al,num
mov bl,num
mov cl,pow
dec cl
s:
mul b1
dec c1
jnz s
mov op,ax
mov ax,4c00h
int 21h
ends

