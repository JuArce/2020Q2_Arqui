section .text
GLOBAL _start
extern print
extern numtostr
extern exit

_start:
    mov eax, 0
printLoop:
    push placeholder
    push eax
    call numtostr
    pop eax
    pop ecx
    mov ebx, jumpLine
    call print
    add eax, 4
    push DWORD 4
    jmp printLoop

section .data
    jumpLine dd 10

section .bss
    placeholder resb 10