;this code finds the sum of elements of the array

data segment
arr db 11,22,33,44,55,66,77,88,99,100
sum dw ?
count dw 0ah
ends

code segment
assume cs:code,ds:data
start:
mov ax,data
mov ds,ax

mov ax,00h
mov cx,count
mov di,0

l1:
mov al,arr[di]
add al,arr[di+1]
mov sum[di],al
inc di
dec cx
cmp cx,0h
jnz l1

mov ax,04c00h
int 21h
ends
end start


