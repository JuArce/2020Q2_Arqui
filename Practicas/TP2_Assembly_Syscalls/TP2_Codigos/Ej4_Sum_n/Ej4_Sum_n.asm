section .text

GLOBAL _start

EXTERN print
EXTERN exit
EXTERN numtostr

_start:
    mov eax, 12 ;En eax tengo el numero n
    mov ebx, 0 ;En ebx guardo la suma
    call sum
    push placeholder
    push ebx
    call numtostr
    call exit

sum:
    cmp eax, 0
    je end
    add ebx, eax
    dec eax
    jmp sum

end:
    ret

section .bss
    placeholder resb 10 