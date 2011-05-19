_Murmur264:
LFB2:
	pushq	%rbp
LCFI0:
	movq	%rsp, %rbp
LCFI1:
	leaq	(%rdx,%rsi), %rcx
	movabsq	$-4132994306676758123, %r8
	jmp	L2
L3:
	movq	(%rdi), %rdx
	imulq	%r8, %rdx
	movq	%rdx, %rax
	shrq	$47, %rax
	xorq	%rdx, %rax
	imulq	%r8, %rcx
	imulq	%r8, %rax
	xorq	%rax, %rcx
	subq	$8, %rsi
	addq	$8, %rdi
L2:
	cmpq	$7, %rsi
	ja	L3
	andl	$7, %esi
	leaq	-1(%rsi), %rax
	cmpq	$6, %rax
	ja	L5
	leaq	L13(%rip), %rdx
	movslq	(%rdx,%rax,4),%rax
	addq	%rdx, %rax
	jmp	*%rax
	.align 2,0x90
L13:
	.long	L6-L13
	.long	L7-L13
	.long	L8-L13
	.long	L9-L13
	.long	L10-L13
	.long	L11-L13
	.long	L12-L13
L12:
	movsbq	6(%rdi),%rax
	salq	$48, %rax
	xorq	%rax, %rcx
L11:
	movsbq	5(%rdi),%rax
	salq	$40, %rax
	xorq	%rax, %rcx
L10:
	movsbq	4(%rdi),%rax
	salq	$32, %rax
	xorq	%rax, %rcx
L9:
	movsbq	3(%rdi),%rax
	salq	$24, %rax
	xorq	%rax, %rcx
L8:
	movsbq	2(%rdi),%rax
	salq	$16, %rax
	xorq	%rax, %rcx
L7:
	movsbq	1(%rdi),%rax
	salq	$8, %rax
	xorq	%rax, %rcx
L6:
	movsbq	(%rdi),%rax
	xorq	%rax, %rcx
	movabsq	$-4132994306676758123, %rax
	imulq	%rax, %rcx
L5:
	movq	%rcx, %rdx
	shrq	$47, %rdx
	xorq	%rcx, %rdx
	movabsq	$-4132994306676758123, %rax
	imulq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$47, %rax
	xorq	%rdx, %rax
	leave
	ret