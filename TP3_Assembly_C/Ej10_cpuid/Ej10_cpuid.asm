GLOBAL main
EXTERN printf

section .rodata
fmt db "%s", 10, 0

section .text

main:
    ENTER 0, 0
    mov eax, 0
    CPUID
    mov [placeholder], ebx
    mov [placeholder + 4], edx
    mov [placeholder + 8], ecx
    push placeholder
    push fmt
    call printf
    LEAVE
    ret

section .bss
    placeholder resb 12