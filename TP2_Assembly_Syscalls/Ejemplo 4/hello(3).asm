
section .text
GLOBAL _start

EXTERN print
EXTERN exit

_start:
	mov ebp, esp	; Preservo los datos del stack, para
			; poder llamar funciones o guardar info
			; sin problemas

	mov ebx, first_arg
	call print

	mov ebx, [ebp+8]; 
	call print

	mov ebx, carr_ret
	call print	

	
	mov ebx, 0
	call exit

; Estos son strings fijos, no necesito que se puedan modificar.
; Esta seccion se llama "Read Only Data"
section .rodata
first_arg	db "Primer argumento: ", 0
carr_ret	db 10, 0
