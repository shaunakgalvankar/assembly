;this is the code to test the input breakpoint
code segment
start:
assume cs:code
mov al,82h
mov dx,0ffe6h
out dx,al        ; port a op port b ip

mov dx,0ffe2h
in al,dx

mov dx,0ffe0h
out dx,al

int 3h
ends
end start


