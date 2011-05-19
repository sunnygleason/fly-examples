_Murmur264:
LFB3:
	pushq	%rbp
LCFI2:
	movq	%rsp, %rbp
LCFI3:
	addq	%rsi, %rdx                      ;; h += len
	movabsq	$-4132994306676758123, %rcx     ;; store M into rcx
	jmp	L11
L12:
//////////////////////////////////////
// if (len > 7)
//////////////////////////////////////
	movq	(%rdi), %rax            ;; k = (u64)key
	imulq	%rcx, %rax              ;; k *= M
	rorq	$47, %rax               ;; k ^>> 47
	imulq	%rcx, %rax              ;; k *= M
	imulq	%rcx, %rdx              ;; h *= M
	xorq	%rax, %rdx              ;; h ^= k
	subq	$8, %rsi                ;; len -= 8
	addq	$8, %rdi                ;; key += 8
//////////////////////////////////////
L11:
	cmpq	$7, %rsi                ;; len > 7?
	ja	L12
	testq	%rsi, %rsi              ;; len > 0?
	je	L14
//////////////////////////////////////
// if (len != 0)
//////////////////////////////////////
	xorl	%r8d, %r8d
	cmpq	$3, %rsi
	jbe	L18
//////////////////////////////////////
// if (len > 3)
//////////////////////////////////////
	movq	(%rdi), %rax             ;; k = (u32)key
	subq	$4, %rsi                 ;; len -= 4
	addq	$4, %rdi                 ;; key += 4
	movq	%rax, %r8                ;; t = k
//////////////////////////////////////
L18:
	cmpq	$1, %rsi
	jbe	L19
//////////////////////////////////////
// if (len > 1)
//////////////////////////////////////
	leal	0(,%rsi,8), %ecx         ;; 
	salq	%cl, %r8                 ;; r8 << cl
	movq	%r8, %rcx                ;; h = r8
	mov	    (%rdi), %r8d             ;;  = (u16)key
	xorq	%rcx, %r8                ;; r8 ^= h
	subq	$2, %rsi                 ;; len -= 2
	addq	$2, %rdi                 ;; key += 2
//////////////////////////////////////
L19:
	testq	%rsi, %rsi
	je	L21
//////////////////////////////////////
// if (len != 0)
//////////////////////////////////////
	movq	%r8, %rax                ;; 
	salq	$8, %rax                 ;; 
	movsbq	(%rdi),%r8               ;;
	xorq	%rax, %r8                ;; t ^= 
//////////////////////////////////////
L21:
//////////////////////////////////////
// multiply partial into rax
//////////////////////////////////////
	xorq	%r8, %rdx
	movabsq	$-4132994306676758123, %rax
	imulq	%rax, %rdx
L14:
//////////////////////////////////////
// finish
//////////////////////////////////////
	movq	%rdx, %rax
	rorq	$47, %rax
	movabsq	$-4132994306676758123, %rdx
	imulq	%rdx, %rax
	rorq	$47, %rax
//////////////////////////////////////
	leave
	ret