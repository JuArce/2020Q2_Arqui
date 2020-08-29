section .text
GLOBAL _start
extern print
extern numtostr
extern exit

_start:
    mov eax, 2
    int 80h
    cmp eax, 0
    je child
    mov ebx, fatherStr
finalize:
    call print

    call exit

child:
    mov ebx, childStr
    jmp finalize

section .data
    jumpLine dw 10
    fatherStr dw "Soy el padre",10
    childStr dw "Soy el hijo",10