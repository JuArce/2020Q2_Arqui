section .text

GLOBAL _start

_start:
    mov eax, 1012025432 ;La division se realiza en eax 
    mov edi, 10 ;Guardo en edi el divisor
    mov ecx, toPrint ;En ecx guardo lo que vamos a imprimir
    call toString

    mov ecx, toPrint
    mov edx, 1

    mov ebx, 1		; FileDescriptor (STDOUT)
	mov eax, 4		; ID del Syscall WRITE
	int 80h			; Ejecucion de la llamada

	mov eax, 1		; ID del Syscall EXIT
	mov ebx, 0		; Valor de Retorno
	int 80h			; Ejecucion de la llamada

toString:
    push byte 0 ;Pusheo una marca de final al stack
divide:
    mov edx, 0 ;div guarda el resto en edx
    div edi ;Divide lo que esta en eax por 10
    add edx, '0' ;Sumo el ascii del cero
    push edx ;Guardo el ascii en el stack
    cmp eax, 0  
    jz reverse ;Si eax es cero, ya termino el numero
    jmp divide ;Si no, vuelve a dividir

reverse:
    pop eax ;Recupera el caracter del stack
    mov [ecx], eax
    inc ecx ;Pasamos a la siguiente posición de la memoria
    cmp eax, 0 ;Si es 0 termina el string
    je end
    jmp reverse
end:
    ret

section .bss
    toPrint resb 10 ;Reservo 10 bytes para la cadena