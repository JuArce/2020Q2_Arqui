	.file	"factorial.c"
	.intel_syntax noprefix
	.text
	.globl	factorial
	.type	factorial, @function
factorial:
.LFB0:
	.cfi_startproc
	endbr32
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 24
	call	__x86.get_pc_thunk.ax
	add	eax, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_
	cmp	DWORD PTR 8[ebp], 0
	jne	.L2
	mov	eax, 1
	jmp	.L3
.L2:
	mov	eax, DWORD PTR 8[ebp]
	sub	eax, 1
	sub	esp, 12
	push	eax
	call	factorial
	add	esp, 16
	mov	DWORD PTR -12[ebp], eax
	mov	eax, DWORD PTR 8[ebp]
	imul	eax, DWORD PTR -12[ebp]
.L3:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	factorial, .-factorial
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	endbr32
	lea	ecx, 4[esp]
	.cfi_def_cfa 1, 0
	and	esp, -16
	push	DWORD PTR -4[ecx]
	push	ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	mov	ebp, esp
	push	ecx
	.cfi_escape 0xf,0x3,0x75,0x7c,0x6
	sub	esp, 4
	call	__x86.get_pc_thunk.ax
	add	eax, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_
	sub	esp, 12
	push	4
	call	factorial
	add	esp, 16
	mov	eax, 0
	mov	ecx, DWORD PTR -4[ebp]
	.cfi_def_cfa 1, 0
	leave
	.cfi_restore 5
	lea	esp, -4[ecx]
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.text.__x86.get_pc_thunk.ax,"axG",@progbits,__x86.get_pc_thunk.ax,comdat
	.globl	__x86.get_pc_thunk.ax
	.hidden	__x86.get_pc_thunk.ax
	.type	__x86.get_pc_thunk.ax, @function
__x86.get_pc_thunk.ax:
.LFB2:
	.cfi_startproc
	mov	eax, DWORD PTR [esp]
	ret
	.cfi_endproc
.LFE2:
	.ident	"GCC: (Ubuntu 9.3.0-10ubuntu2) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 4
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 4
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 4
4:
