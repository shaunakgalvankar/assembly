data segment
msg1 db 'hello type something to print it.$'
string db 09h dup(?)
 ends
code segment
assume cs:code,ds:data
start:
mov ax,data
mov ds,ax
mov ah,09h
lea dx,msg1
int 21h
mov ah,0ah
lea dx,string
int 21h
mov ah,09h
lea dx,string
int 21h
mov ax,04c00h
int 21h
ends
end start

