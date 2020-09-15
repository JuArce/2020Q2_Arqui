section .text
GLOBAL _start
extern exit
extern numtostr
extern print

_start:
    mov eax, [len]; En ebx guardo la dimension del array
    mov ebx, 4
    div ebx ;En eax dejo la cantidad de bytes divido el tamaño de cada uno
    ;Habria que validar array de dimension cero.
    mov ebx, [array] ;En ebx guardo el menor,  empieza siendo el primer elemento del array
    dec eax ;Como ya guardo el primero tengo uno menos para comparar
    mov edx, array+4; En edx guardo el puntero
    call minor ;Llamo a la funcion que calcule

    push placeholder
    push ebx ;En ebx tengo el menor
    call numtostr
    mov ebx, jumpLine
    mov eax, 1
    call print
    call exit

;Funcion que calcula el minimo
minor:
    cmp eax, 0 ;Si ebx es cero, ya no quedan elementos para comparar
    je end
    cmp [edx], ebx ;Si en edx hay un número menor, lo cambio saltando a changeMinor
    jl changeMinor
continue:
    add edx, 4 ;Paso al siguiente numero
    dec eax
    jmp minor

changeMinor:
    mov ebx, [edx]
    jmp continue

end:
    ret

section .data
    array dd 12, 23, 34, 45, 1, 211, 67, 78, 89, 2
    len dd $-array
    jumpLine dd 10 ;Ascii del salto de linea

section .bss
    placeholder resb 10 ;Espacio para que se imprima la cadena