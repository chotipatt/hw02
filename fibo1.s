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
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	testq	%rdi, %rdi
	jle	LBB0_1
## %bb.2:
	movq	%rdi, %rbx
	movl	$1, %eax
	cmpq	$1, %rdi
	je	LBB0_4
## %bb.3:
	leaq	-1(%rbx), %rdi
	callq	_fibo
	movq	%rax, %r14
	addq	$-2, %rbx
	movq	%rbx, %rdi
	callq	_fibo
	addq	%r14, %rax
	jmp	LBB0_4
LBB0_1:
	xorl	%eax, %eax
LBB0_4:
	popq	%rbx
	popq	%r14
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
