;this  code sorts the numbers in ascending order

data segment
num dw 1111h,6666h,3333h,8888h,2222h
count dw 05h
ends

code segment
assume cs:code,ds:data
start:
mov ax,data
mov ds,ax
mov dx,count
dec dx

l2:
lea si ,num
mov cx,dx

l1:
mov ax,[si]
cmp ax,[si+2]
jc skip

xchg [si+2],ax
mov [si],ax

skip:
inc si
inc si
loop l1
dec dx
jnz l2

mov ax,04c00h
int 21h
ends
end start


