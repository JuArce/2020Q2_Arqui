section .text
GLOBAL _start
extern print
extern numtostr
extern exit

_start:
mov ebp, esp ;Muevo el esp al ebp para manejar el ebp
mov eax, [ebp] ;En eax guardo lo que contiene ebp, que es la cantidad de argumentos
push placeholder
push eax
call numtostr
mov ebx, jumpLine
mov eax, 1
call print
call exit

section .data
jumpLine dd 10

section .bss
placeholder resb 10