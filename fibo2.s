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
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movl	$1, %ebx
	leaq	L_.str(%rip), %r14
	.p2align	4, 0x90
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	_fibo
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	_printf
	addq	$1, %rbx
	cmpq	$45, %rbx
	jne	LBB1_1
## %bb.2:
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"fibo of %ld is %ld\n"

.subsections_via_symbols
