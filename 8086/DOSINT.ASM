;this is the code to take input and outut from the user using os interupts

data segment
char db ?
ends

code segment
assume cs:code ,ds:data
start:
mov ax,data
mov ds,ax

mov ah,01h
int 21h    ;input a char

mov char,al

mov ah,02h
mov dl,char
int 21h     ;output a character that was entered

mov ax,04c00h
int 21h

ends
end start



