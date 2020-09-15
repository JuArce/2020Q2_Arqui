	.file	"factorial.c"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	factorial
	.type	factorial, @function
factorial:
.LFB0:
	.cfi_startproc
	endbr32
	mov	eax, DWORD PTR 4[esp]
	mov	edx, 1
	test	eax, eax
	je	.L1
	.p2align 4,,10
	.p2align 3
.L2:
	imul	edx, eax
	sub	eax, 1
	jne	.L2
.L1:
	mov	eax, edx
	ret
	.cfi_endproc
.LFE0:
	.size	factorial, .-factorial
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
