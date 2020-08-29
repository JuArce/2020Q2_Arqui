section .text

GLOBAL _start
extern exit
extern numtostr
extern print

_start:
;mul op multiplica eax = eax * op
    mov bl, [n] ;En ebx esta el numero a calcular su factorial
    mov eax, 1 ;En eax guardo el resultado
    cmp ebx, 0
    jle terminate
    call factorial
terminate:
    push placeholder
    push eax
    call numtostr
    mov ebx, jumpLine
    mov eax, 1
    call print
    call exit

factorial:
    cmp ebx, 1
    je end
    mul ebx
    dec ebx
    jmp factorial

end:
    ret

section .data
    n db 1
    jumpLine dd 10 ;Ascii del salto de linea

section .bss
    placeholder resb 10 ;Espacio para que se imprima la cadena


