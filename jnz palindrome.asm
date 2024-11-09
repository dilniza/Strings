org 100h
include "emu8086.inc"    ; calls library 

lea bx, string          
lea bp, empty           
mov cx, 5                
mov di, 0                ; sets di reg to 0 as an index
mov si, 4                ; sets si reg to 0 as an index

; reverses string with loop cycle
lup:                     
mov al, [bx+si]          
mov [bp+di], al         
inc di                  
dec si                 
loop lup                 

mov cx, 5               

; compares two data with loop
lp:                      
mov al, string[si]      
mov ah, empty[si]                   
inc si
cmp al, ah
je equalP
jne equalN
equalP:
add dl, 1
equalN:                   
loop lp                  

cmp dl, 5
je Palindrome
jne NotPalindrome        ; jump if not zero

Palindrome:
PRINT "Palindrome"      
jmp stop                 

NotPalindrome:           
PRINT "!Palindrome"   

stop:                   
ret
;string db "pashsha"      
string db "kiyik"       
empty db 5 dup(0)      
end