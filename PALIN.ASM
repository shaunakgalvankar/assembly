data segment
        block1  db 'nitin'
data ends
extra segment
        block2 db ?
extra ends
code segment
assume cs:code, ds:data, es:extra
start:
mov ax,data
mov ds,ax
mov ax,extra
mov es,ax
lea si,block1
lea di,block2+8
mov cx,9h
invert:
cld
lodsb
std
stosb
loop invert
lea si,block1
lea di,block2
mov cx,9h
cld
repnz cmpsb
mov ax,04c00h
int 21h
ends
end start


