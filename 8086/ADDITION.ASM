;this code adds two 16 bit numbers

data segment
a dw 0ffffh
b dw 0ffffh
sum dw ?
carry db ?
ends
code segment
assume cs:code,ds:data
start:
mov ax,data
mov ds,ax
mov ax,a
mov bx,b
add ax,bx

jnc skip
mov carry,01h

skip:
mov sum,ax
mov ax,04c00h
int 21h
ends
end start
