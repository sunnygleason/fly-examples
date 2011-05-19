_Murmur264:
LFB3:
	pushq	%rbp
LCFI2:
	movq	%rsp, %rbp
LCFI3:
	leaq	(%rdx,%rsi), %r8
	movabsq	$-4132994306676758123, %rcx
	jmp	L11
L12:
	movq	(%rdi), %rdx
	imulq	%rcx, %rdx
	movq	%rdx, %rax
	shrq	$47, %rax
	xorq	%rdx, %rax
	imulq	%rcx, %r8
	imulq	%rcx, %rax
	xorq	%rax, %r8
	subq	$8, %rsi
	addq	$8, %rdi
L11:
	cmpq	$7, %rsi
	ja	L12
	testq	%rsi, %rsi
	je	L14
	xorl	%edx, %edx
	cmpq	$3, %rsi
	jbe	L18
	movq	(%rdi), %rax
	subq	$4, %rsi
	addq	$4, %rdi
	movq	%rax, %rdx
L18:
	cmpq	$1, %rsi
	jbe	L19
	leal	0(,%rsi,8), %ecx
	salq	%cl, %rdx
	movq	%rdx, %rcx
	mov	(%rdi), %edx
	xorq	%rcx, %rdx
	subq	$2, %rsi
	addq	$2, %rdi
L19:
	testq	%rsi, %rsi
	je	L21
	movq	%rdx, %rax
	salq	$8, %rax
	movsbq	(%rdi),%rdx
	xorq	%rax, %rdx
L21:
	xorq	%rdx, %r8
	movabsq	$-4132994306676758123, %rax
	imulq	%rax, %r8
L14:
	movq	%r8, %rdx
	shrq	$47, %rdx
	xorq	%r8, %rdx
	movabsq	$-4132994306676758123, %rax
	imulq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$47, %rax
	xorq	%rdx, %rax
	leave
	ret