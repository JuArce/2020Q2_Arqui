GLOBAL _start
section .text
_start:

       mov ebp,esp
       mov eax, [ebp]
       cmp eax , 2
       jl   error1
       mov  ecx,[ebp+8]  ;cargo el puntero al strig que recibo
       
       mov  dl,[ecx]
       cmp  dl,'0'   
       jl   error2
 loop: cmp  dl,'9'           ;reviso si el caracter es numerico
       jg   error2
       inc   ecx
       mov   dl,[ecx] 
       cmp   dl,0
       jne   loop
       mov ebx,1
        dec   ecx             ;vuelvo al ultimo caracter numerico
 sigo:  mov  eax,0
        mov   al,[ecx]
        and   al,0Fh
        mul  ebx
        add  eax,[resul]
        mov  dword [resul],eax
        mov eax,10
        mul ebx
        mov ebx,eax
        dec ecx 
        mov eax,[ebp+8]
        cmp eax,ecx
        jle sigo
        call exit
error1: mov ecx,erro1
         mov edx,len1
         call print
         call exit
error2:  mov ecx,erro2
         mov edx,len2
         call print
         call exit
print:    mov  ebx,1
         mov eax,4
         int 80h
         ret
exit:     mov eax,1
         mov ebx,0
         int 80h

section .data
erro1   db  "error,no hay argumentos",10
len1     equ $-erro1
erro2   db  "argumento no numerico",10
len2     equ $-erro2
resul    dw    0
