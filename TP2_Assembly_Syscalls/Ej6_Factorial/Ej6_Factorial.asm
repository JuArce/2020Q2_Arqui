section .text

GLOBAL _start
extern exit
extern numtostr
extern print

_start:
;mul op multiplica eax = eax * op
    mov ebx, [n] ;En ebx esta el numero a calcular su factorial
    mov eax, 1 ;En eax guardo el resultado
    call factorial

    push placeholder
    push eax
    call numtostr
    mov ebx, jumpLine
    mov eax, 1
    call print
    call exit

factorial:
    cmp ebx, 1
    jle end
    mul ebx
    dec ebx
    jmp factorial

end:
    ret

section .data
    n dd 11
    jumpLine dd 10 ;Ascii del salto de linea

section .bss
    placeholder resb 10 ;Espacio para que se imprima la cadena


