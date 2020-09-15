;main.asm

GLOBAL main
EXTERN hello_world

section .text

main:
    call hello_world

    mov eax, 1 ;Systemcall exit()
    mov ebx, 0 ;Parametro para exit
    int 80h