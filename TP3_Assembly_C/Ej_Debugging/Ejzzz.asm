GLOBAL  main
EXTERN printf
section  .text 
main:
         push  ebp
         mov   ebp,esp
         call cargo_datos
         leave ;Desarmar stack frame
         ret
cargo_datos:
          mov ecx,0
          mov ebx,filename
          mov eax,5
          int 80h

          mov ebx,eax ;Faltaba indicarle al syscall read, el fd.
	      mov edx,150
          mov ecx,buffer 
          
          mov eax,3
          int 80h 

          push ecx
          push fmt
          call printf
          add esp,8 ;Balancear los pushes
          ret        
 
section  .data
         filename       db "datos.txt",0
         fmt            db "%s",0
section .bss


buffer   resb 150
