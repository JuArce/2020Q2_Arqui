section .text
GLOBAL _start
extern exit
extern numtostr
extern print

_start:
    mov ebx, [len]
    mov eax, array
    call

sort:
    cmp ebx, 0
    je end



swap:



end:
    ret

section .data
    array dd 12, 23, 34, 45, 1, 211, 67, 78, 89, 2
    len dd $-array
    jumpLine dd 10 ;Ascii del salto de linea

section .bss
    placeholder resb 10 ;Espacio para que se imprima la cadena