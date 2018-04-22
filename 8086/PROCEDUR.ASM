data segment
num1 db 01h,02h,03h,04h,05h
num2 db 03h
count db 05h
ends

code segment
assume ds:data,cs:code
start:
mov ax,data
mov ds,ax
first:
mov bl,count
mov al,[si]
call expo
mov [si],al
inc si
dec count
jnz first
mov ax,4c00h
int 21h
expo proc near
mov dl,al
mov al,01h
mov cl,num2
last:
mul dl
dec cl
jnz last
ret
expo endp
ends
end start
end first
end last
