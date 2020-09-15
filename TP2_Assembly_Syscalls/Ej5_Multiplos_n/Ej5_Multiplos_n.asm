section .text

GLOBAL _start
extern exit
extern numtostr
extern print

_start:
    mov eax, [n] ;En eax guardo n
    mov edx, [n]
    mov ebx, [k] ;En ebx guardo k
    cmp eax, 0
    je finalize
    call printMult ;printMult se va a encargar de imprimir todos los números de n hasta k
finalize:
    mov ebx, jumpLine
    mov eax, 1
    call print
    call exit

printMult:
    cmp eax, ebx
    jg end
    ;push ebp
    ;mov ebp, esp
    push placeholder ;Lugar donde se guarda la cadena de texto
    push eax ;Numero a convertir
    call numtostr

    pushad ;Imprime un espacio
    mov ebx, space
    mov eax, 1
    call print
    popad

    pop ecx
    pop ecx ;Popeo el equivalente a lo pusheado por placeholder y eax
    ;mov esp, ebp
    ;pop ebp
    add eax, [n]
    jmp printMult

end:
    ret

section .data
    n dd 2
    k dd 24
    space dw 32
    jumpLine dw 10

section .bss
    placeholder resb 10
