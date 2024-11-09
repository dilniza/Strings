org 100h
lea bp, text
lea bx, vowels
mov di, 0 
mov dx, 0         
         
lup:
mov al, [bp+di]
mov si, 0
mov cx, 5

loopL:
mov ah, [bx+si]
cmp al, ah
je equalV
inc si
loop loopL

jne notequal

equalV:
xchg si, dx
mov vowel[si], al
inc si
xchg dx, si

notequal:
xchg si, sp
mov vowel[si], al
inc si
xchg sp, si
           
inc di
cmp byte ptr [bp+di], 0
loop lup

ret
text db "cybernation", 0
consonants db "bcdfghjgklmnpqrstvwxyz", 0
vowels db "aeiou", 0
vowel db 4 dup(?)
consonant db 7 dup(?)
end