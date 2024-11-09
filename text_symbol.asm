org 100h
mov bp, offset msg
mov di, 0
mov si, 0
mov bx, 0
mov sp, 0
mov cx, 15

lup:
mov al, [bp+di]
cmp al, 7Ah
jl less1
jg greater1
je greater2

less1:
cmp al, 41h
jg greater2
jl less2
je greater2

less2:
greater1:
xchg si, bx
mov symbol[si], al
inc si
xchg bx, si
jmp stop

greater2:
xchg si, sp
mov text[si], al
inc si
xchg sp, si

stop:
inc di

loopnz lup     ; loopnz - loop till zero

ret
msg db "CyberNation%$@#", 0
text db 11 dup(?)
symbol db 4 dup(?)
end