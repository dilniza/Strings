org 100h
mov bp, offset textsmall
mov cx, 4
mov di, 0

lup:
mov al, [bp+di]
sub al, 20h
mov textbig[di], al
inc di
loop lup

ret
textsmall db "haad"
textbig db 4 dup(?)
end