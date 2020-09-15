section .text
GLOBAL _start
extern print
extern numtostr
extern exit

_start:
    ;eax: Cant de argumentos
    ;ebx: Puntero a los strings de argumentos, uso ebx para despues llamar al print sin problemas
    mov ebp, esp ;Muevo el esp al ebp para manejar el ebp
    mov eax, [ebp] ;En eax guardo lo que contiene ebp, que es la cantidad de argumentos
    call printArgs
    call exit

printArgs:
    cmp eax, 0 ;Si queda uno, es el path del programa
    je end
    add ebp, 4 ;Paso al siguiente argumento
    mov ebx, [ebp] ;Copio el string del argumento en ebx
    dec eax

    call print
    mov ebx, jumpLine
    call print

    jmp printArgs

end:
    ret

section .data
jumpLine dd 10

section .bss
placeholder resb 10

;CODIGO DE HORACIO

;section .text
;
;GLOBAL _start
;
;_start:       mov eax, final
;
;                  mov ecx, array
;
;                  mov edx,ecx
;
;                  add edx,4
;
;sigo:         mov ebx,[ecx]
;
;                 cmp dword ebx,[edx]
;
;                  jg xchg
;
;                 add ecx,4
;
;                 add edx,4
;
;                cmp edx,eax
;
;                 je fin
;
;               jmp sigo
;
;xchg:  mov [aux],eax
;
;            mov eax,[ecx]
;
;            mov ebx,[edx]
;
;            mov [ecx],ebx
;
;            mov [edx],eax
;
;            mov eax,[aux]
;
;           mov ecx,array
;
;           mov edx, ecx
;
;           add edx,4
;
;           jmp sigo
;
;          fin:   mov eax, 1
;
;          mov ebx, 0
;
;          int 0x80
;
;section .data
;
; array dd  2,7,3,6,0,1
;
;final dd 0
;
;aux  dd 0