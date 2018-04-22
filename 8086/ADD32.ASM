;this is the code to add two 32 bt numbers

data segment
1000h dd 12345678h
2000h dd 12345678h
sum dd ?
carry db ?
ends

code segment
assume cs:code,ds:data
start:

mov ax,data
mov ds,ax

mov ax,[1000h]
mov bx,[2000h]
add ax,bx
mov [3000h],ax
mov ax,[1002]
mov bx,[2002]
adc ax,bx

jnc skip
mov carry 01h

skip:
mov [3002h],ax

int 3h
ends
end start
