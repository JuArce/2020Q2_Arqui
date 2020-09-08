section .text
GLOBAL _start
extern print
extern exit

_start:
    mov ebp, esp
    mov ebx, [ebp] ;En ebx tengo el numero de argumentos (n)
    add ebx, 0 ;Uso la formula para ir al ultimo argumento ESP + (n + 1) * 4 sumo cero porque en esp tengo #arg + path al programa
    mov eax, 4
    mul ebx ;En eax termina quedando la direccion del ultimo argumento
    add eax, 108 ;Me muevo por las variables de entorno
    add ebp, eax
    mov ebx, [ebp]
    call print
    mov ebx, jumpLine
    call print
    call exit

section .data
    jumpLine dd 10