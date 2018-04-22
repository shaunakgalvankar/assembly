code segment
assume cs:code
start:

mov dx,0066h
mov al,80h     ;this is the command word an it initializes ports a,b,c as op in mode 0

inimaduas
out dx,al

again:
mov ah,01h
int 21h

mov cl,al         ;this jumps to the rorcw proc if the key pressed is 1
cmp cl,49
jz rorcw

mov cl,al
cmp cl,50          ;this jumps to the rorccw proc if the key pressed is 2
jz rorccw

mov cl,al
cmp cl,51           ;this jumps to the stop proc if the key pressed is 3
jz stop

mov cl,al
cmp cl,52           ;ends the code when 4 is pressed on the keyboard
jz ending

rorcw:
mov dx,0ffe4h
mov al,01h  ;gives bsr command to set the pin0 of portc
out dx,al
mov dx,0ffe4h
mov al,02h     ;gives bsr command to reset the pin1 of portc
out dx,al
jmp again

rorccw:
mov dx,0ffe4h
mov al,00h
out dx,al     ;gives bsr command to reset the pin0 of portc
mov dx,0ffe4h
mov al,03h
out dx,al      ;gives bsr command to set the pin1 of portc
jmp again

stop:
mov dx,0ffe4h
mov al,00h
out dx,al       ;gives bsr command to set the pin0 of portc
mov dx,0ffe4h
mov al,02h
out dx,al       ;gives bsr command to set the pin1 of portc
jmp again

ending: mov  ax,4c00h
int 21h
ends
end start

