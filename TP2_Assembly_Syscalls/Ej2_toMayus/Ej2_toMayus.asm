section .text

GLOBAL _start

_start:
    mov ebx, string
    mov ecx, string
    call toMayus

    mov edx, longitud    ; Largo de la cadena 
    mov ebx, 1           ; FileDescriptor (STDOUT)
    mov eax, 4        ; ID del Syscall WRITE
    int 80h            ; Ejecucion de la llamada
    mov eax, 1
    mov ebx,0
    int 80h

toMayus:
    mov cl, [ebx]
    cmp cl, 0
    jz end
    cmp cl, 97
    jl nextChar
    cmp cl, 122
    jg nextChar
    sub cl, 32
    mov byte [ebx], cl ; capaz es move byte

nextChar:
    inc ebx
    jmp toMayus

end:
    ret

section .data
    string db "h4Ppy c0diNg!!1", 10
    longitud equ $-string