;GLOBAL exit
GLOBAL read
GLOBAL write
GLOBAL open
GLOBAL close
EXTERN print

section .text

;-----------------------------------------------------------
; exit - termina el programa
;-----------------------------------------------------------
; Argumentos:
;	ebx: valor de retorno al sistema operativo
;-----------------------------------------------------------
;exit:
;    mov eax, ebx
;	mov eax, 1		; ID del Syscall EXIT
;	int 80h			; Ejecucion de la llamada

;-----------------------------------------------------------
; read - leer de un file descriptor
;-----------------------------------------------------------
; Argumentos:
;
;-----------------------------------------------------------
read:
    mov eax, SYS_read
    mov ebx, [esp+4]
    mov ecx, [esp+8]
    mov edx, [esp+12]
    int 80h
    ret
;Preguntar buffer overflow

;-----------------------------------------------------------
; write - escribir a un file descriptor
;-----------------------------------------------------------
; Argumentos:
;
;-----------------------------------------------------------
write:

;-----------------------------------------------------------
; open - abrir un archivo
;-----------------------------------------------------------
; Argumentos:
;
;-----------------------------------------------------------
open:

;-----------------------------------------------------------
; close - cerrar un archivo
;-----------------------------------------------------------
; Argumentos:
;
;-----------------------------------------------------------
close:


section .data

    STDIN equ 0
    STDOUT equ 1
    STDERR equ 2

    LF equ 10
    NULL equ 0

    SYS_exit equ 1
    SYS_read equ 3
    SYS_write equ 4
    SYS_open equ 5
    SYS_close equ 6