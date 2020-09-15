GLOBAL main
EXTERN printf

section .rodata
    header db "Cantidad de argumentos: %d",10,0
    arg db "Arg[%d]: %s",10,0

section .text
main:
    push ebp
    mov ebp, esp

    push dword [ebp+8]
    push header
    call printf
    add esp, 2*4

    mov ecx, dword[ebp+8] ;Cantidad de argumentos
    mov ebx, 0 ;argv[0]
    mov esi, [ebp+12] ;argv estamos pasando el arreglo
    cld ;Autoincremento de ESI
.loop:
    lodsd ;eax = [ESI] y ESI = ESI + 4
    push ecx ;backup
    push eax ;*argv
    push ebx ;Indice
    push arg ;formato
    call printf
    add esp, 4*3 ;borramos los datos usados de la pila
    pop ecx ;recuperamos el valor de ecx
    inc ebx
    loop .loop ;dec ecx; cmp ecx, 0; jne loop

    mov esp, ebp
    pop ebp
    mov eax, 0