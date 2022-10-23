	.file	"main2-ref.c"
	.text
	.section	.rodata
.LC0:
	.string	"%d"
	.text
	.globl	input
	.type	input, @function
input:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	pushq	%r12			#r12 = *arrA
	pushq	%r13			#r13 = int N
	pushq	%r14			#r14 = i
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, %r12		#pointer to arrA
	movq	%rsi, %r13		#int N
	movq	$0, %r14		#int i = 0
	jmp	.L2
.L3:
	movq	%r14, %rax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	%r12, %rax
	addq	%rdx, %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT	
	addq	$1, %r14
.L2:
	movq	%r14, %rax
	cmpq	%r13, %rax		#void function
	jl	.L3
	nop
	movq	%rbp, %rsp
	popq	%r15
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	input, .-input
	.globl	dotask
	.type	dotask, @function
dotask:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	pushq	%r12			#r12 = *arrA
	pushq	%r13			#r13 = *arrB
	pushq	%r14			#r14 = int N
	pushq	%r15			#r15 = int i = 0
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, %r12		#int *arrA
	movq	%rsi, %r13		#int *arrB
	movq	%rdx, %r14		#int N
	movq	$0, %r15
	jmp	.L5
.L6:
	movq	%r15, %rax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	%r12, %rax
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movq	%r15, %rax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	%r12, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movq	%r15, %rdx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rsi
	movq	%r13, %rdx
	addq	%rsi, %rdx
	imull	%ecx, %eax
	movl	%eax, (%rdx)
	addq	$1, %r15
.L5:
	movq	%r15, %rax
	cmpq	%r14, %rax
	jl	.L6
	nop			#void function
	movq	%rbp, %rsp
	popq	%r15
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	dotask, .-dotask
	.section	.rodata
.LC1:
	.string	"%d "
	.text
	.globl	out
	.type	out, @function
out:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	pushq	%r12			#r12 = *arrB
	pushq	%r13			#r13 = int N
	pushq	%r14			#r14 = i
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, %r12		#int *arrB
	movq	%rsi, %r13		#int N
	movq	$0, %r14		
	jmp	.L8
.L9:
	movq	%r14, %rax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	%r12, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addq	$1, %r14
.L8:
	movq	%r14, %rax
	cmpq	%r13, %rax
	jl	.L9
	nop
	movq	%rbp, %rsp
	popq	%r15
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%rbp			#void function
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	out, .-out
	.globl	main
	.type	main, @function
