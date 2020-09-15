;Ejyy.asm
GLOBAL main
EXTERN puts, sprintf
section .rodata
fmt db "%d",0
number dd 1234567890
section .text
main:
     push dword [number]
     push fmt
     push buffer
     call sprintf
     add esp, 3*4
     push buffer
     call puts
     add esp,4
     ret
section .bss
buffer resb 40
