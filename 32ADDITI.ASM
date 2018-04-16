data segment
a dd 12345678h
b dd 87654321h
sum dd ?
carry db ?
ends
code segment
assume cs:code,ds:data
start:
mov ax,data
mov ds,ax
mov dx ax,[a]
add dx ax,[b]
mov sum,dx ax
mov dx ax,[a+2]
adc dx ax,[b+2]
mov[sum+2],dx ax
jnc skip
inc carry
skip:
mov ax,04c00h
int 21h
ends
end start
