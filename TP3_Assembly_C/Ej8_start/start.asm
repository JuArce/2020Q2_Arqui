GLOBAL _start

_start:

    push esp + 4 ;Pusheo direccion al primer argumento
    push esp ;Pusheo cantidad de argumentos

    call main ;Llama al main con el stack listo
    mov ebx, eax ;SYS_exit necesita el valor de retorno en ebx (32 bits)
    mov eax, 1 ;Codigo de SYS_exit (32 bits)
    int 80h
