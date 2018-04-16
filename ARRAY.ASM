data segment
num db 1,2,3,4,5,6,7,8,9,10
count db 0Ah
op db ?
ends
code segment
assume cs:code,ds:data
start:
mov ax,data
mov ds,ax
mov al,00h
mov cl,count
mov di,00h
arr:
mov al,num[di]
add al,num[di+1]
mov op[di],al
inc di
dec cx
jnz arr

mov ax,4c00h
int 21h
ends
end start
