section .text
GLOBAL _start
extern print
extern numtostr
extern exit

_start:
    mov eax, 20
    int 80h
    push placeholder
    push eax
    call numtostr
    mov ebx, jumpLine
    call print
    call exit

section .data
    jumpLine dw 10

section .bss
    placeholder resb 10