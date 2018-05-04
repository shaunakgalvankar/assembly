code segment
assume cs:code
start:
mov al,80h
mov dx,0ffe6h   ;intialization of cwr  port a op and port b as ip
out dx,al

mrz:

;cw
mov dx,0ffe0h
mov al,01h
out dx,al
call delay

;ccw:
mov dx,0ffe0h
mov al,02h
out dx,al
call delay

;stop:
;mov dx,0ffe0h
;mov al,00h
;out dx,al
jmp mrz

 delay proc near
 mov ax,0Ah
 loop1:
 mov dx,64h
 loop2:
 mov bx,0eeh
 loop3:
 dec bx
 jnz loop3
 dec dx
 jnz loop2
 dec ax
 jnz loop1
 ret
 delay endp
int 3h
ends
end start

