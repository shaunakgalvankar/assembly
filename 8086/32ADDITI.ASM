;this code adds two 32 bit numbers

data segment
a dd 12345678h
b dd 12345678h
sum dd ?
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

mov ax,[a+2]
mov bx,[b+2]
adc ax,bx
mov [sum+2],ax
jnc end
inc dl
mov ax,04c00h
int 21h
ends
end start
