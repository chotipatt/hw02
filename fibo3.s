	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0	sdk_version 12, 3
	.globl	_fibo                           ## -- Begin function fibo
	.p2align	4, 0x90
_fibo:                                  ## @fibo
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	testq	%rdi, %rdi
	jle	LBB0_1
## %bb.2:
	movq	%rdi, %r12
	leaq	-1(%rdi), %rbx
	xorl	%r15d, %r15d
	xorl	%r14d, %r14d
	.p2align	4, 0x90
LBB0_3:                                 ## =>This Inner Loop Header: Depth=1
	testq	%rbx, %rbx
	je	LBB0_4
## %bb.5:                               ##   in Loop: Header=BB0_3 Depth=1
	leaq	-1(%r12), %rdi
	callq	_fibo
	leaq	-2(%r12), %rcx
	addq	%rax, %r14
	addq	$-2, %rbx
	cmpq	$2, %r12
	movq	%rcx, %r12
	jg	LBB0_3
	jmp	LBB0_6
LBB0_1:
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
	jmp	LBB0_6
LBB0_4:
	movl	$1, %r15d
LBB0_6:
	addq	%r15, %r14
	movq	%r14, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_main                           ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movl	$1, %edi
	callq	_fibo
	leaq	L_.str(%rip), %rbx
	movl	$1, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$2, %edi
	callq	_fibo
	movl	$2, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$3, %edi
	callq	_fibo
	movl	$3, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$4, %edi
	callq	_fibo
	movl	$4, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$5, %edi
	callq	_fibo
	movl	$5, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$6, %edi
	callq	_fibo
	movl	$6, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$7, %edi
	callq	_fibo
	movl	$7, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$8, %edi
	callq	_fibo
	movl	$8, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$9, %edi
	callq	_fibo
	movl	$9, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$10, %edi
	callq	_fibo
	movl	$10, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$11, %edi
	callq	_fibo
	movl	$11, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$12, %edi
	callq	_fibo
	movl	$12, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$13, %edi
	callq	_fibo
	movl	$13, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$14, %edi
	callq	_fibo
	movl	$14, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$15, %edi
	callq	_fibo
	movl	$15, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$16, %edi
	callq	_fibo
	movl	$16, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$17, %edi
	callq	_fibo
	movl	$17, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$18, %edi
	callq	_fibo
	movl	$18, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$19, %edi
	callq	_fibo
	movl	$19, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$20, %edi
	callq	_fibo
	movl	$20, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$21, %edi
	callq	_fibo
	movl	$21, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$22, %edi
	callq	_fibo
	movl	$22, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$23, %edi
	callq	_fibo
	movl	$23, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$24, %edi
	callq	_fibo
	movl	$24, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$25, %edi
	callq	_fibo
	movl	$25, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$26, %edi
	callq	_fibo
	movl	$26, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$27, %edi
	callq	_fibo
	movl	$27, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$28, %edi
	callq	_fibo
	movl	$28, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$29, %edi
	callq	_fibo
	movl	$29, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$30, %edi
	callq	_fibo
	movl	$30, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$31, %edi
	callq	_fibo
	movl	$31, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$32, %edi
	callq	_fibo
	movl	$32, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$33, %edi
	callq	_fibo
	movl	$33, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$34, %edi
	callq	_fibo
	movl	$34, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$35, %edi
	callq	_fibo
	movl	$35, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$36, %edi
	callq	_fibo
	movl	$36, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$37, %edi
	callq	_fibo
	movl	$37, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$38, %edi
	callq	_fibo
	movl	$38, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$39, %edi
	callq	_fibo
	movl	$39, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$40, %edi
	callq	_fibo
	movl	$40, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$41, %edi
	callq	_fibo
	movl	$41, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$42, %edi
	callq	_fibo
	movl	$42, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$43, %edi
	callq	_fibo
	movl	$43, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	movl	$44, %edi
	callq	_fibo
	movl	$44, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"fibo of %ld is %ld\n"

.subsections_via_symbols
