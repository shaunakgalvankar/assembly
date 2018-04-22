;this code finds the power of a number

data segment
num db 06h
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

p:
mul bl
dec cl
jnz p

mov op ,ax

mov ax,04c00h
int 21h
ends
end start
