org 100h
include "emu8086.inc"    
lea bx, string          
lea bp, palindrom          
mov cx, 4                
mov di, 0              
mov si, 3               

lup:                     
mov al, [bx+si]          
mov [bp+di], al         
inc di                  
dec si                 
loop lup                 

mov cx, 4               
mov bx, 0
mov si, 0
lp:                      
mov al, string[si]      
mov ah, palindrom[si]                   
inc si
cmp al, ah
je equal
jne continue
equal:
add bl, 1
continue:                 
loop lp                  

cmp bl, 4
jz palindrome
jnz notPalindrome     

palindrome:
PRINT "Kiritilgan so'z palindrome"      
jmp stop                 

notPalindrome:           
PRINT "Kiritilgan so'z palindrome EMAS"   

stop:                   
ret      
string db "arra"       
palindrom db 4 dup(0)      
end