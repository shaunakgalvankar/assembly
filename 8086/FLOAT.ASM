;thsi code finds the area of a circle using 8087 the numeric coprocessor

data segment
pi dd 3.14
r dd 4.5
a dd ?
ends

code segment
assume cs:code, ds:data
start:
mov ax,data
mov ds,ax

finit
fld r
fst st(1)
fmul st(0),st(1)
fld pi
fmul st(0),st(1)
fst a
ends
end start

