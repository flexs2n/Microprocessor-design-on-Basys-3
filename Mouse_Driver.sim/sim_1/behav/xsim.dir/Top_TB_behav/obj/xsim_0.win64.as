	.def	 _transaction_2;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_transaction_2
	.align	16, 0x90
_transaction_2:                         # @_transaction_2
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$48, %rsp
	movl	%r9d, %r12d
	movq	%rdx, %r15
	movq	%rcx, %rsi
	movl	48(%rbp), %ebx
	leaq	624(%rsi), %rdi
	movq	%rdi, 32(%rsp)
	movq	%r15, %rcx
	movl	%r8d, %edx
	movl	%r12d, %r8d
	movl	%ebx, %r9d
	callq	*__imp__iki_vlog_handle_force_release_and_driver_resolution(%rip)
	cmpl	$1, %eax
	je	.LBB0_5
# BB#1:
	cmpl	$0, 776(%rsi)
	leaq	760(%rsi), %r14
	je	.LBB0_3
# BB#2:
	movl	%ebx, %r9d
	subl	%r12d, %r9d
	incl	%r9d
	movq	%rdi, %rcx
	movq	%r15, %rdx
	movl	%r12d, %r8d
	callq	*__imp__iki_vlog_event_callback(%rip)
	movq	%rax, %r15
.LBB0_3:
	subl	%r12d, %ebx
	incl	%ebx
	movq	%r14, %rcx
	movl	%r12d, %edx
	movq	%r15, %r8
	movl	%ebx, %r9d
	callq	*__imp__iki_vlog_memcmp_0(%rip)
	cmpl	$1, %eax
	jne	.LBB0_5
# BB#4:
	movl	%ebx, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%r14, %rcx
	movl	%r12d, %edx
	movq	%r15, %r8
	callq	*__imp__iki_vlog_bit_copy(%rip)
.LBB0_5:
	addq	$48, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	ret

	.def	 _transaction_18;
	.scl	2;
	.type	32;
	.endef
	.globl	_transaction_18
	.align	16, 0x90
_transaction_18:                        # @_transaction_18
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$48, %rsp
	movl	%r9d, %esi
	movq	%rdx, %rbx
	movl	48(%rbp), %edi
	leaq	2760(%rcx), %r14
	cmpl	$0, 2776(%rcx)
	je	.LBB1_2
# BB#1:
	addq	$2624, %rcx             # imm = 0xA40
	movl	%edi, %r9d
	subl	%esi, %r9d
	incl	%r9d
	movq	%rbx, %rdx
	movl	%esi, %r8d
	callq	*__imp__iki_vlog_event_callback(%rip)
	movq	%rax, %rbx
.LBB1_2:
	subl	%esi, %edi
	incl	%edi
	movq	%r14, %rcx
	movl	%esi, %edx
	movq	%rbx, %r8
	movl	%edi, %r9d
	callq	*__imp__iki_vlog_memcmp_0(%rip)
	cmpl	$1, %eax
	jne	.LBB1_4
# BB#3:
	movl	%edi, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%r14, %rcx
	movl	%esi, %edx
	movq	%rbx, %r8
	callq	*__imp__iki_vlog_bit_copy(%rip)
.LBB1_4:
	addq	$48, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%rbp
	ret

	.def	 _execute_5;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_5
	.align	16, 0x90
_execute_5:                             # @_execute_5
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$88, %rsp
	movq	%rdx, %rsi
	.align	16, 0x90
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	movl	$1, %edx
	movq	%rsi, %rcx
	callq	*__imp__iki_vlog_set_threadId_for_unrandom(%rip)
	movq	472(%rsi), %rax
	testq	%rax, %rax
	je	.LBB2_25
# BB#2:                                 #   in Loop: Header=BB2_1 Depth=1
	jmpq	*%rax
.Ltmp9:                                 # Block address taken
.LBB2_3:
	movb	$0, 552(%rsi)
	movl	$5242917, %ecx          # imm = 0x500025
	callq	*__imp__iki_stmt_online(%rip)
	leaq	96(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movl	4(%rax), %ecx
	notl	%ecx
	testl	(%rax), %ecx
	je	.LBB2_4
# BB#17:
	movl	$5242918, %ecx          # imm = 0x500026
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movzbl	ng0(%rip), %eax
	movl	%eax, (%rdi)
	movzbl	ng0+4(%rip), %eax
	movl	%eax, 4(%rdi)
	leaq	376(%rsi), %rcx
	leaq	560(%rsi), %rdx
	jmp	.LBB2_22
.LBB2_4:
	movl	$5242920, %ecx          # imm = 0x500028
	callq	*__imp__iki_stmt_online(%rip)
	leaq	264(%rsi), %rcx
	movl	$4, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	leaq	-48(%rbp), %rbx
	movl	$8, %r8d
	movq	%rbx, %rcx
	movq	%rax, %rdx
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	ng1(%rip), %rdi
	movl	$4, %edx
	movl	$4, %r9d
	movq	%rbx, %rcx
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB2_5
# BB#18:
	movl	$5242923, %ecx          # imm = 0x50002B
	callq	*__imp__iki_stmt_online(%rip)
	leaq	152(%rsi), %rcx
	movq	__imp__iki_vlog_signal_handle_value_input(%rip), %rbx
	movl	$8, %edx
	callq	*%rbx
	movq	%rax, %rdi
	leaq	208(%rsi), %rcx
	movl	$8, %edx
	callq	*%rbx
	movq	%rax, %rbx
	leaq	-56(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, 4(%rdi)
	jne	.LBB2_72
# BB#19:
	cmpl	$0, 4(%rbx)
	je	.LBB2_20
.LBB2_72:
	movq	$-1, -56(%rbp)
.LBB2_21:
	movzbl	-56(%rbp), %eax
	movl	%eax, -56(%rbp)
	movzbl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movzbl	-56(%rbp), %eax
	movl	%eax, (%rdi)
	movzbl	-52(%rbp), %eax
	movl	%eax, 4(%rdi)
	leaq	376(%rsi), %rcx
	leaq	600(%rsi), %rdx
.LBB2_22:
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
.LBB2_23:
	movq	%rdi, %r8
	jmp	.LBB2_24
.LBB2_5:
	leaq	ng2(%rip), %rbx
	leaq	-48(%rbp), %rcx
	movl	$4, %edx
	movl	$4, %r9d
	movq	%rbx, %r8
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB2_6
# BB#26:
	movl	$5242925, %ecx          # imm = 0x50002D
	callq	*__imp__iki_stmt_online(%rip)
	leaq	152(%rsi), %rcx
	movq	__imp__iki_vlog_signal_handle_value_input(%rip), %rbx
	movl	$8, %edx
	callq	*%rbx
	movq	%rax, %rdi
	leaq	208(%rsi), %rcx
	movl	$8, %edx
	callq	*%rbx
	movq	%rax, %rbx
	movq	__imp__iki_std_memset(%rip), %r15
	leaq	-56(%rbp), %r14
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%r14, %rcx
	callq	*%r15
	movq	%rbx, 32(%rsp)
	movl	$8, 40(%rsp)
	movl	$8, %edx
	movl	$8, %r9d
	movq	%r14, %rcx
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_unsigned_minus(%rip)
	movq	%rax, %rdi
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*%r15
	movzbl	(%rdi), %eax
	movl	%eax, (%rbx)
	movzbl	4(%rdi), %eax
	movl	%eax, 4(%rbx)
	leaq	376(%rsi), %rcx
	leaq	640(%rsi), %rdx
	jmp	.LBB2_39
.LBB2_6:
	leaq	ng3(%rip), %r8
	leaq	-48(%rbp), %rcx
	movl	$4, %edx
	movl	$4, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB2_7
# BB#27:
	movl	$5242927, %ecx          # imm = 0x50002F
	callq	*__imp__iki_stmt_online(%rip)
	leaq	152(%rsi), %rcx
	movq	__imp__iki_vlog_signal_handle_value_input(%rip), %rbx
	movl	$8, %edx
	callq	*%rbx
	movq	%rax, %rdi
	leaq	208(%rsi), %rcx
	movl	$8, %edx
	callq	*%rbx
	movq	%rax, %rbx
	movq	__imp__iki_std_memset(%rip), %r15
	leaq	-56(%rbp), %r14
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%r14, %rcx
	callq	*%r15
	movq	%rbx, 32(%rsp)
	movl	$8, 40(%rsp)
	movl	$8, %edx
	movl	$8, %r9d
	movq	%r14, %rcx
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_unsigned_multiply(%rip)
	movq	%rax, %rdi
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*%r15
	movzbl	(%rdi), %eax
	movl	%eax, (%rbx)
	movzbl	4(%rdi), %eax
	movl	%eax, 4(%rbx)
	leaq	376(%rsi), %rcx
	leaq	680(%rsi), %rdx
	jmp	.LBB2_39
.LBB2_7:
	leaq	ng4(%rip), %r8
	leaq	-48(%rbp), %rcx
	movl	$4, %edx
	movl	$4, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB2_8
# BB#28:
	movl	$5242929, %ecx          # imm = 0x500031
	callq	*__imp__iki_stmt_online(%rip)
	leaq	152(%rsi), %rcx
	movl	$8, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %rdi
	movq	__imp__iki_std_memset(%rip), %r14
	leaq	-56(%rbp), %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*%r14
	leaq	ng5(%rip), %rax
	movq	%rax, 32(%rsp)
	movl	$32, 40(%rsp)
	movl	$8, %edx
	movl	$8, %r9d
	movq	%rbx, %rcx
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_unsigned_lshift(%rip)
	movq	%rax, %rdi
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*%r14
	movzbl	(%rdi), %eax
	movl	%eax, (%rbx)
	movzbl	4(%rdi), %eax
	movl	%eax, 4(%rbx)
	leaq	376(%rsi), %rcx
	leaq	720(%rsi), %rdx
	jmp	.LBB2_39
.LBB2_20:
	movl	(%rdi), %eax
	addl	(%rbx), %eax
	movl	%eax, -56(%rbp)
	movl	$0, -52(%rbp)
	jmp	.LBB2_21
.LBB2_8:
	leaq	ng6(%rip), %r8
	leaq	-48(%rbp), %rcx
	movl	$4, %edx
	movl	$4, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB2_9
# BB#29:
	movl	$5242931, %ecx          # imm = 0x500033
	callq	*__imp__iki_stmt_online(%rip)
	leaq	152(%rsi), %rcx
	movl	$8, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %rdi
	movq	__imp__iki_std_memset(%rip), %r14
	leaq	-56(%rbp), %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*%r14
	leaq	ng5(%rip), %rax
	movq	%rax, 32(%rsp)
	movl	$32, 40(%rsp)
	movl	$8, %edx
	movl	$8, %r9d
	movq	%rbx, %rcx
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_unsigned_rshift(%rip)
	movq	%rax, %rdi
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*%r14
	movzbl	(%rdi), %eax
	movl	%eax, (%rbx)
	movzbl	4(%rdi), %eax
	movl	%eax, 4(%rbx)
	leaq	376(%rsi), %rcx
	leaq	760(%rsi), %rdx
.LBB2_39:
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rbx, %r8
.LBB2_24:
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
.LBB2_25:
	movl	$5242915, %ecx          # imm = 0x500023
	callq	*__imp__iki_stmt_online(%rip)
	movb	$1, 552(%rsi)
	leaq	.Ltmp9(%rip), %rax
	movq	%rax, 472(%rsi)
	addq	$88, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB2_9:
	leaq	ng7(%rip), %r8
	leaq	-48(%rbp), %rcx
	movl	$4, %edx
	movl	$4, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB2_10
# BB#30:
	movl	$5242933, %ecx          # imm = 0x500035
	callq	*__imp__iki_stmt_online(%rip)
	leaq	152(%rsi), %rcx
	movl	$8, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %rdi
	leaq	-56(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, 4(%rdi)
	jne	.LBB2_73
# BB#31:
	cmpl	$0, ng2+4(%rip)
	je	.LBB2_32
.LBB2_73:
	movq	$-1, -56(%rbp)
.LBB2_33:
	movzbl	-56(%rbp), %eax
	movl	%eax, -56(%rbp)
	movzbl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movzbl	-56(%rbp), %eax
	movl	%eax, (%rdi)
	movzbl	-52(%rbp), %eax
	movl	%eax, 4(%rdi)
	leaq	376(%rsi), %rcx
	leaq	800(%rsi), %rdx
	jmp	.LBB2_22
.LBB2_10:
	leaq	ng8(%rip), %r8
	leaq	-48(%rbp), %rcx
	movl	$4, %edx
	movl	$4, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB2_11
# BB#34:
	movl	$5242935, %ecx          # imm = 0x500037
	callq	*__imp__iki_stmt_online(%rip)
	leaq	208(%rsi), %rcx
	movl	$8, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %rdi
	leaq	-56(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, 4(%rdi)
	jne	.LBB2_74
# BB#35:
	cmpl	$0, ng2+4(%rip)
	je	.LBB2_36
.LBB2_74:
	movq	$-1, -56(%rbp)
	jmp	.LBB2_37
.LBB2_11:
	leaq	ng9(%rip), %r8
	leaq	-48(%rbp), %rcx
	movl	$4, %edx
	movl	$4, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB2_12
# BB#38:
	movl	$5242937, %ecx          # imm = 0x500039
	callq	*__imp__iki_stmt_online(%rip)
	leaq	152(%rsi), %rcx
	movl	$8, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %rdi
	movq	__imp__iki_std_memset(%rip), %r15
	leaq	-56(%rbp), %r14
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%r14, %rcx
	callq	*%r15
	movq	%rbx, 32(%rsp)
	movl	$8, 40(%rsp)
	movl	$8, %edx
	movl	$8, %r9d
	movq	%r14, %rcx
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_unsigned_minus(%rip)
	movq	%rax, %rdi
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*%r15
	movzbl	(%rdi), %eax
	movl	%eax, (%rbx)
	movzbl	4(%rdi), %eax
	movl	%eax, 4(%rbx)
	leaq	376(%rsi), %rcx
	leaq	880(%rsi), %rdx
	jmp	.LBB2_39
.LBB2_12:
	leaq	ng10(%rip), %r8
	leaq	-48(%rbp), %rcx
	movl	$4, %edx
	movl	$4, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB2_13
# BB#41:
	movl	$5242939, %ecx          # imm = 0x50003B
	callq	*__imp__iki_stmt_online(%rip)
	leaq	208(%rsi), %rcx
	movl	$8, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %rdi
	movq	__imp__iki_std_memset(%rip), %r15
	leaq	-56(%rbp), %r14
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%r14, %rcx
	callq	*%r15
	movq	%rbx, 32(%rsp)
	movl	$8, 40(%rsp)
	movl	$8, %edx
	movl	$8, %r9d
	movq	%r14, %rcx
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_unsigned_minus(%rip)
	movq	%rax, %rdi
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*%r15
	movzbl	(%rdi), %eax
	movl	%eax, (%rbx)
	movzbl	4(%rdi), %eax
	movl	%eax, 4(%rbx)
	leaq	376(%rsi), %rcx
	leaq	920(%rsi), %rdx
	jmp	.LBB2_39
.LBB2_32:
	movl	(%rdi), %eax
	addl	ng2(%rip), %eax
	movl	%eax, -56(%rbp)
	movl	$0, -52(%rbp)
	jmp	.LBB2_33
.LBB2_13:
	leaq	ng11(%rip), %r8
	leaq	-48(%rbp), %rcx
	movl	$4, %edx
	movl	$4, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB2_14
# BB#42:
	movl	$5242942, %ecx          # imm = 0x50003E
	callq	*__imp__iki_stmt_online(%rip)
	leaq	152(%rsi), %rcx
	movq	__imp__iki_vlog_signal_handle_value_input(%rip), %rbx
	movl	$8, %edx
	callq	*%rbx
	movq	%rax, %r14
	leaq	208(%rsi), %rcx
	movl	$8, %edx
	callq	*%rbx
	movq	%rax, %r15
	leaq	-72(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%r14), %ecx
	movl	4(%r14), %ebx
	xorl	(%r15), %ecx
	movl	4(%r15), %edx
	movl	%ebx, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %ebx
	movl	%ebx, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB2_44
# BB#43:
	testl	%ebx, %ebx
	movl	$1, -72(%rbp)
	je	.LBB2_44
# BB#75:
	movl	$1, -68(%rbp)
.LBB2_44:
	leaq	-64(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	-72(%rbp), %ecx
	testb	$1, %cl
	je	.LBB2_45
# BB#76:
	movl	$1, -64(%rbp)
	jmp	.LBB2_46
.LBB2_36:
	movl	(%rdi), %eax
	addl	ng2(%rip), %eax
	movl	%eax, -56(%rbp)
	movl	$0, -52(%rbp)
.LBB2_37:
	movzbl	-56(%rbp), %eax
	movl	%eax, -56(%rbp)
	movzbl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movzbl	-56(%rbp), %eax
	movl	%eax, (%rdi)
	movzbl	-52(%rbp), %eax
	movl	%eax, 4(%rdi)
	leaq	376(%rsi), %rcx
	leaq	840(%rsi), %rdx
	jmp	.LBB2_22
.LBB2_14:
	leaq	ng12(%rip), %r8
	leaq	-48(%rbp), %rcx
	movl	$4, %edx
	movl	$4, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB2_15
# BB#52:
	movl	$5242944, %ecx          # imm = 0x500040
	callq	*__imp__iki_stmt_online(%rip)
	leaq	152(%rsi), %rcx
	movq	__imp__iki_vlog_signal_handle_value_input(%rip), %rbx
	movl	$8, %edx
	callq	*%rbx
	movq	%rax, %r15
	leaq	208(%rsi), %rcx
	movl	$8, %edx
	callq	*%rbx
	movq	%rax, %r14
	leaq	-72(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, 4(%r15)
	jne	.LBB2_80
# BB#53:
	cmpl	$0, 4(%r14)
	je	.LBB2_54
.LBB2_80:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -72(%rbp)
	jmp	.LBB2_55
.LBB2_15:
	leaq	ng13(%rip), %r8
	leaq	-48(%rbp), %rcx
	movl	$4, %edx
	movl	$4, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB2_16
# BB#62:
	movl	$5242946, %ecx          # imm = 0x500042
	callq	*__imp__iki_stmt_online(%rip)
	leaq	152(%rsi), %rax
	movq	__imp__iki_vlog_signal_handle_value_input(%rip), %r14
	movl	$8, %edx
	movq	%rax, %rcx
	callq	*%r14
	movq	%rax, %rbx
	leaq	208(%rsi), %rax
	movl	$8, %edx
	movq	%rax, %rcx
	callq	*%r14
	movq	%rax, %r14
	leaq	-72(%rbp), %rax
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rax, %rcx
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, 4(%rbx)
	jne	.LBB2_86
# BB#63:
	cmpl	$0, 4(%r14)
	je	.LBB2_64
.LBB2_86:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -72(%rbp)
	jmp	.LBB2_65
.LBB2_45:
	testl	%eax, %eax
	je	.LBB2_46
# BB#77:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -64(%rbp)
.LBB2_46:
	cmpl	$0, -60(%rbp)
	je	.LBB2_47
# BB#78:
	movq	%rdi, 32(%rsp)
	movl	$8, 40(%rsp)
	leaq	ng2(%rip), %rax
	leaq	-56(%rbp), %rcx
	movl	$8, %edx
	movl	$8, %r9d
	movq	%rax, %r8
	callq	*__imp__iki_vlog_unsigned_bit_combine(%rip)
	jmp	.LBB2_50
.LBB2_54:
	movl	(%r15), %eax
	cmpl	(%r14), %eax
	jbe	.LBB2_55
# BB#81:
	movl	$1, -72(%rbp)
.LBB2_55:
	leaq	-64(%rbp), %rax
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rax, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	-72(%rbp), %ecx
	testb	$1, %cl
	je	.LBB2_56
# BB#82:
	movl	$1, -64(%rbp)
	jmp	.LBB2_57
.LBB2_16:
	movl	$5242948, %ecx          # imm = 0x500044
	callq	*__imp__iki_stmt_online(%rip)
	leaq	152(%rsi), %rax
	movl	$8, %edx
	movq	%rax, %rcx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %rdi
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movzbl	(%rdi), %eax
	movl	%eax, (%rbx)
	movzbl	4(%rdi), %eax
	movl	%eax, 4(%rbx)
	leaq	376(%rsi), %rax
	leaq	1080(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rax, %rcx
	movq	%rbx, %r8
	jmp	.LBB2_24
.LBB2_64:
	movl	(%rbx), %eax
	cmpl	(%r14), %eax
	jae	.LBB2_65
# BB#87:
	movl	$1, -72(%rbp)
.LBB2_65:
	leaq	-64(%rbp), %rax
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rax, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	-72(%rbp), %ecx
	testb	$1, %cl
	je	.LBB2_66
# BB#88:
	movl	$1, -64(%rbp)
	jmp	.LBB2_67
.LBB2_47:
	movl	-64(%rbp), %eax
	testl	%eax, %eax
	je	.LBB2_48
# BB#79:
	leaq	ng2(%rip), %rax
	jmp	.LBB2_49
.LBB2_56:
	testl	%eax, %eax
	je	.LBB2_57
# BB#83:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -64(%rbp)
.LBB2_57:
	cmpl	$0, -60(%rbp)
	je	.LBB2_58
# BB#84:
	movq	%rdi, 32(%rsp)
	movl	$8, 40(%rsp)
	leaq	ng2(%rip), %rax
	leaq	-56(%rbp), %rcx
	movl	$8, %edx
	movl	$8, %r9d
	movq	%rax, %r8
	callq	*__imp__iki_vlog_unsigned_bit_combine(%rip)
	jmp	.LBB2_61
.LBB2_66:
	testl	%eax, %eax
	je	.LBB2_67
# BB#89:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -64(%rbp)
.LBB2_67:
	cmpl	$0, -60(%rbp)
	je	.LBB2_68
# BB#90:
	movq	%rdi, 32(%rsp)
	movl	$8, 40(%rsp)
	leaq	ng2(%rip), %rax
	leaq	-56(%rbp), %rcx
	movl	$8, %edx
	movl	$8, %r9d
	movq	%rax, %r8
	callq	*__imp__iki_vlog_unsigned_bit_combine(%rip)
	jmp	.LBB2_71
.LBB2_48:
	leaq	ng1(%rip), %rax
.LBB2_49:
	leaq	-56(%rbp), %rcx
	movl	$8, %r8d
	movq	%rax, %rdx
	callq	*__imp__iki_std_memcpy(%rip)
.LBB2_50:
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movzbl	-56(%rbp), %eax
	movl	%eax, (%rdi)
	movzbl	-52(%rbp), %eax
	movl	%eax, 4(%rdi)
	leaq	376(%rsi), %rax
	leaq	960(%rsi), %rdx
	jmp	.LBB2_51
.LBB2_58:
	movl	-64(%rbp), %eax
	testl	%eax, %eax
	je	.LBB2_59
# BB#85:
	leaq	ng2(%rip), %rax
	jmp	.LBB2_60
.LBB2_68:
	movl	-64(%rbp), %eax
	testl	%eax, %eax
	je	.LBB2_69
# BB#91:
	leaq	ng2(%rip), %rax
	jmp	.LBB2_70
.LBB2_59:
	leaq	ng1(%rip), %rax
.LBB2_60:
	leaq	-56(%rbp), %rcx
	movl	$8, %r8d
	movq	%rax, %rdx
	callq	*__imp__iki_std_memcpy(%rip)
.LBB2_61:
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movzbl	-56(%rbp), %eax
	movl	%eax, (%rdi)
	movzbl	-52(%rbp), %eax
	movl	%eax, 4(%rdi)
	leaq	376(%rsi), %rax
	leaq	1000(%rsi), %rdx
	jmp	.LBB2_51
.LBB2_69:
	leaq	ng1(%rip), %rax
.LBB2_70:
	leaq	-56(%rbp), %rcx
	movl	$8, %r8d
	movq	%rax, %rdx
	callq	*__imp__iki_std_memcpy(%rip)
.LBB2_71:
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movzbl	-56(%rbp), %eax
	movl	%eax, (%rdi)
	movzbl	-52(%rbp), %eax
	movl	%eax, 4(%rdi)
	leaq	376(%rsi), %rax
	leaq	1040(%rsi), %rdx
.LBB2_51:
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rax, %rcx
	jmp	.LBB2_23

	.def	 _execute_90;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_90
	.align	16, 0x90
_execute_90:                            # @_execute_90
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	pushq	%rdi
	subq	$64, %rsp
	movq	%rdx, %rsi
	movl	$4194350, %ecx          # imm = 0x40002E
	callq	*__imp__iki_stmt_online(%rip)
	movq	720(%rsi), %rdi
	leaq	-32(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	4(%rdi), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	(%rdi), %ecx
	testb	$1, %cl
	je	.LBB3_1
# BB#10:
	movl	$1, -32(%rbp)
	jmp	.LBB3_2
.LBB3_1:
	testl	%eax, %eax
	je	.LBB3_2
# BB#11:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -32(%rbp)
.LBB3_2:
	cmpl	$0, -32(%rbp)
	movb	$1, %al
	jne	.LBB3_4
# BB#3:
	cmpl	$0, -28(%rbp)
	setne	%al
.LBB3_4:
	testb	%al, %al
                                        # implicit-def: RAX
	je	.LBB3_5
# BB#12:
	movq	608(%rsi), %rax
.LBB3_5:
	cmpl	$0, -28(%rbp)
	je	.LBB3_6
# BB#13:
	leaq	ng14(%rip), %rcx
	movq	%rcx, 32(%rsp)
	movl	$8, 40(%rsp)
	leaq	-24(%rbp), %rcx
	movl	$8, %edx
	movl	$8, %r9d
	movq	%rax, %r8
	callq	*__imp__iki_vlog_unsigned_bit_combine(%rip)
	jmp	.LBB3_9
.LBB3_6:
	movl	-32(%rbp), %ecx
	testl	%ecx, %ecx
	je	.LBB3_7
# BB#14:
	leaq	-24(%rbp), %rcx
	movl	$8, %r8d
	movq	%rax, %rdx
	jmp	.LBB3_8
.LBB3_7:
	leaq	ng14(%rip), %rdx
	leaq	-24(%rbp), %rcx
	movl	$8, %r8d
.LBB3_8:
	callq	*__imp__iki_std_memcpy(%rip)
.LBB3_9:
	leaq	7472(%rsi), %rcx
	leaq	-24(%rbp), %rdx
	movl	$8, %r8d
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	152(%rsi), %rcx
	addq	$7448, %rsi             # imm = 0x1D18
	xorl	%r8d, %r8d
	movl	$7, %r9d
	movq	%rsi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_signal_fast_no_reg_no_agg(%rip)
	addq	$64, %rsp
	popq	%rdi
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_94;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_94
	.align	16, 0x90
_execute_94:                            # @_execute_94
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$40, %rsp
	movq	%rdx, %rsi
	movl	$4194371, %ecx          # imm = 0x400043
	callq	*__imp__iki_stmt_online(%rip)
	movq	1504(%rsi), %rbx
	movq	1616(%rsi), %rdi
	leaq	-32(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, 4(%rbx)
	jne	.LBB4_4
# BB#1:
	cmpl	$0, 4(%rdi)
	je	.LBB4_2
.LBB4_4:
	movq	$-1, -32(%rbp)
.LBB4_3:
	movzbl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movzbl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	leaq	8144(%rsi), %rcx
	leaq	-32(%rbp), %rdx
	movl	$8, %r8d
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	1776(%rsi), %rcx
	addq	$8120, %rsi             # imm = 0x1FB8
	xorl	%r8d, %r8d
	movl	$7, %r9d
	movq	%rsi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_signal_fast_no_reg_no_agg(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%rbp
	ret
.LBB4_2:
	movl	(%rbx), %eax
	addl	(%rdi), %eax
	movl	%eax, -32(%rbp)
	movl	$0, -28(%rbp)
	jmp	.LBB4_3

	.def	 _execute_6;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_6
	.align	16, 0x90
_execute_6:                             # @_execute_6
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$40, %rsp
	movq	%rdx, %rsi
	.align	16, 0x90
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	movl	$2, %edx
	movq	%rsi, %rcx
	callq	*__imp__iki_vlog_set_threadId_for_unrandom(%rip)
	movq	3128(%rsi), %rax
	testq	%rax, %rax
	je	.LBB5_5
# BB#2:                                 #   in Loop: Header=BB5_1 Depth=1
	jmpq	*%rax
.Ltmp19:                                # Block address taken
.LBB5_3:
	movb	$0, 3208(%rsi)
	movl	$4194460, %ecx          # imm = 0x40009C
	callq	*__imp__iki_stmt_online(%rip)
	leaq	96(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movl	4(%rax), %ecx
	notl	%ecx
	testl	(%rax), %ecx
	je	.LBB5_4
# BB#6:
	movq	__imp__iki_stmt_online(%rip), %rbx
	movl	$4194461, %ecx          # imm = 0x40009D
	callq	*%rbx
	leaq	1888(%rsi), %rcx
	leaq	3568(%rsi), %rdx
	movl	$7, 32(%rsp)
	leaq	ng1(%rip), %rdi
	movq	__imp__iki_vlog_schedule_transaction_blocking_var(%rip), %r14
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r14
	movl	$4194462, %ecx          # imm = 0x40009E
	callq	*%rbx
	leaq	1496(%rsi), %rcx
	leaq	3600(%rsi), %rdx
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r14
	movl	$4194463, %ecx          # imm = 0x40009F
	callq	*%rbx
	leaq	1608(%rsi), %rcx
	leaq	3632(%rsi), %rdx
	movl	$1, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r14
	movl	$4194464, %ecx          # imm = 0x4000A0
	callq	*%rbx
	leaq	824(%rsi), %rcx
	leaq	3664(%rsi), %rdx
	movl	$7, 32(%rsp)
	leaq	ng15(%rip), %r8
	xorl	%r9d, %r9d
	callq	*%r14
	movl	$4194465, %ecx          # imm = 0x4000A1
	callq	*%rbx
	leaq	600(%rsi), %rcx
	leaq	3696(%rsi), %rdx
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r14
	movl	$4194466, %ecx          # imm = 0x4000A2
	callq	*%rbx
	leaq	712(%rsi), %rcx
	leaq	3728(%rsi), %rdx
	movq	__imp__iki_vlog_schedule_transaction_blocking_var_setback0(%rip), %r15
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r15
	movl	$4194467, %ecx          # imm = 0x4000A3
	callq	*%rbx
	leaq	936(%rsi), %rcx
	leaq	3760(%rsi), %rdx
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r14
	movl	$4194468, %ecx          # imm = 0x4000A4
	callq	*%rbx
	leaq	1048(%rsi), %rcx
	leaq	3792(%rsi), %rdx
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r14
	movl	$4194469, %ecx          # imm = 0x4000A5
	callq	*%rbx
	leaq	1160(%rsi), %rcx
	leaq	3824(%rsi), %rdx
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r15
	movl	$4194470, %ecx          # imm = 0x4000A6
	callq	*%rbx
	leaq	1272(%rsi), %rcx
	leaq	3856(%rsi), %rdx
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r14
	movl	$4194471, %ecx          # imm = 0x4000A7
	callq	*%rbx
	leaq	1384(%rsi), %rcx
	leaq	3888(%rsi), %rdx
	movl	$1, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r14
	jmp	.LBB5_5
.LBB5_4:
	movq	__imp__iki_stmt_online(%rip), %rdi
	movl	$4194473, %ecx          # imm = 0x4000A9
	callq	*%rdi
	movq	1952(%rsi), %r8
	leaq	1888(%rsi), %rcx
	leaq	3568(%rsi), %rdx
	movl	$7, 32(%rsp)
	movq	__imp__iki_vlog_schedule_transaction_blocking_var(%rip), %rbx
	xorl	%r9d, %r9d
	callq	*%rbx
	movl	$4194474, %ecx          # imm = 0x4000AA
	callq	*%rdi
	movq	1560(%rsi), %r8
	leaq	1496(%rsi), %rcx
	leaq	3600(%rsi), %rdx
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	callq	*%rbx
	movl	$4194475, %ecx          # imm = 0x4000AB
	callq	*%rdi
	movq	1672(%rsi), %r8
	leaq	1608(%rsi), %rcx
	leaq	3632(%rsi), %rdx
	movl	$1, 32(%rsp)
	xorl	%r9d, %r9d
	callq	*%rbx
	movl	$4194476, %ecx          # imm = 0x4000AC
	callq	*%rdi
	movq	888(%rsi), %r8
	leaq	824(%rsi), %rcx
	leaq	3664(%rsi), %rdx
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	callq	*%rbx
	movl	$4194477, %ecx          # imm = 0x4000AD
	callq	*%rdi
	movq	664(%rsi), %r8
	leaq	600(%rsi), %rcx
	leaq	3696(%rsi), %rdx
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	callq	*%rbx
	movl	$4194478, %ecx          # imm = 0x4000AE
	callq	*%rdi
	movq	776(%rsi), %r8
	leaq	712(%rsi), %rcx
	leaq	3728(%rsi), %rdx
	movq	__imp__iki_vlog_schedule_transaction_blocking_var_setback0(%rip), %r14
	xorl	%r9d, %r9d
	callq	*%r14
	movl	$4194479, %ecx          # imm = 0x4000AF
	callq	*%rdi
	movq	1000(%rsi), %r8
	leaq	936(%rsi), %rcx
	leaq	3760(%rsi), %rdx
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	callq	*%rbx
	movl	$4194480, %ecx          # imm = 0x4000B0
	callq	*%rdi
	movq	1112(%rsi), %r8
	leaq	1048(%rsi), %rcx
	leaq	3792(%rsi), %rdx
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	callq	*%rbx
	movl	$4194481, %ecx          # imm = 0x4000B1
	callq	*%rdi
	movq	1224(%rsi), %r8
	leaq	1160(%rsi), %rcx
	leaq	3824(%rsi), %rdx
	xorl	%r9d, %r9d
	callq	*%r14
	movl	$4194482, %ecx          # imm = 0x4000B2
	callq	*%rdi
	movq	1336(%rsi), %r8
	leaq	1272(%rsi), %rcx
	leaq	3856(%rsi), %rdx
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	callq	*%rbx
	movl	$4194483, %ecx          # imm = 0x4000B3
	callq	*%rdi
	movq	1448(%rsi), %r8
	leaq	1384(%rsi), %rcx
	leaq	3888(%rsi), %rdx
	movl	$1, 32(%rsp)
	xorl	%r9d, %r9d
	callq	*%rbx
.LBB5_5:
	movl	$4194458, %ecx          # imm = 0x40009A
	callq	*__imp__iki_stmt_online(%rip)
	movb	$1, 3208(%rsi)
	leaq	.Ltmp19(%rip), %rax
	movq	%rax, 3128(%rsi)
	addq	$40, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%r15
	popq	%rbp
	ret

	.def	 _execute_7;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_7
	.align	16, 0x90
_execute_7:                             # @_execute_7
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$328, %rsp              # imm = 0x148
	movq	%rdx, %rsi
	.align	16, 0x90
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	movl	$3, %edx
	movq	%rsi, %rcx
	callq	*__imp__iki_vlog_set_threadId_for_unrandom(%rip)
	movq	3960(%rsi), %rax
	testq	%rax, %rax
	je	.LBB6_34
# BB#2:                                 #   in Loop: Header=BB6_1 Depth=1
	jmpq	*%rax
.Ltmp23:                                # Block address taken
.LBB6_3:
	movb	$0, 4040(%rsi)
	movq	__imp__iki_stmt_online(%rip), %r15
	movl	$4194490, %ecx          # imm = 0x4000BA
	callq	*%r15
	movq	1896(%rsi), %r8
	leaq	1944(%rsi), %rcx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	leaq	7056(%rsi), %rdx
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movl	$7, 32(%rsp)
	movq	__imp__iki_vlog_schedule_transaction_blocking_var(%rip), %r14
	xorl	%r9d, %r9d
	callq	*%r14
	movl	$4194491, %ecx          # imm = 0x4000BB
	callq	*%r15
	movq	1504(%rsi), %r8
	leaq	1552(%rsi), %rcx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	leaq	7024(%rsi), %rdx
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	callq	*%r14
	movl	$4194492, %ecx          # imm = 0x4000BC
	callq	*%r15
	leaq	1664(%rsi), %rcx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	leaq	5264(%rsi), %rdx
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movl	$1, 32(%rsp)
	leaq	ng1(%rip), %rdi
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r14
	movl	$4194493, %ecx          # imm = 0x4000BD
	callq	*%r15
	leaq	880(%rsi), %rcx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	leaq	6928(%rsi), %rdx
	movq	%rdx, -176(%rbp)        # 8-byte Spill
	movl	$7, 32(%rsp)
	leaq	ng15(%rip), %r8
	xorl	%r9d, %r9d
	callq	*%r14
	movl	$4194494, %ecx          # imm = 0x4000BE
	callq	*%r15
	movq	608(%rsi), %r8
	leaq	656(%rsi), %rcx
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	leaq	5936(%rsi), %rdx
	movq	%rdx, -256(%rbp)        # 8-byte Spill
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	callq	*%r14
	movl	$4194495, %ecx          # imm = 0x4000BF
	callq	*%r15
	leaq	768(%rsi), %rcx
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	leaq	5968(%rsi), %rdx
	movq	%rdx, -240(%rbp)        # 8-byte Spill
	movq	__imp__iki_vlog_schedule_transaction_blocking_var_setback0(%rip), %rbx
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%rbx
	movl	$4194496, %ecx          # imm = 0x4000C0
	callq	*%r15
	movq	944(%rsi), %r8
	leaq	992(%rsi), %rcx
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	leaq	7088(%rsi), %rdx
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	callq	*%r14
	movl	$4194497, %ecx          # imm = 0x4000C1
	callq	*%r15
	movq	1056(%rsi), %r8
	leaq	1104(%rsi), %rcx
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	leaq	7120(%rsi), %rdx
	movq	%rdx, -208(%rbp)        # 8-byte Spill
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	callq	*%r14
	movl	$4194498, %ecx          # imm = 0x4000C2
	callq	*%r15
	movq	1168(%rsi), %r8
	leaq	1216(%rsi), %rcx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	leaq	6960(%rsi), %rdx
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	xorl	%r9d, %r9d
	callq	*%rbx
	movl	$4194499, %ecx          # imm = 0x4000C3
	callq	*%r15
	movq	1280(%rsi), %r8
	leaq	1328(%rsi), %rbx
	leaq	6576(%rsi), %rdx
	movq	%rdx, -224(%rbp)        # 8-byte Spill
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rbx, %rcx
	callq	*%r14
	movl	$4194500, %ecx          # imm = 0x4000C4
	callq	*%r15
	leaq	1440(%rsi), %r13
	leaq	4656(%rsi), %r12
	movl	$1, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%r13, %rcx
	movq	%r12, %rdx
	movq	%rdi, %r8
	callq	*%r14
	movl	$4194502, %ecx          # imm = 0x4000C6
	callq	*%r15
	movq	1896(%rsi), %rdx
	leaq	-64(%rbp), %rdi
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	ng16(%rip), %r8
	movl	$8, %edx
	movl	$8, %r9d
	movq	%rdi, %rcx
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB6_4
# BB#35:
	movl	$4194507, %ecx          # imm = 0x4000CB
	callq	*__imp__iki_stmt_online(%rip)
	leaq	432(%rsi), %rdi
	movl	$2, %edx
	movq	%rdi, %rcx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	leaq	-72(%rbp), %rcx
	xorl	%r8d, %r8d
	movq	%rax, %rdx
	callq	*__imp__iki_vlog_get_bit_select_value_simple(%rip)
	movl	4(%rax), %ecx
	notl	%ecx
	testl	(%rax), %ecx
	je	.LBB6_36
# BB#118:
	movl	$4194508, %ecx          # imm = 0x4000CC
	callq	*%r15
	movl	$7, 32(%rsp)
	leaq	ng17(%rip), %r8
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	callq	*%r14
	movl	$4194509, %ecx          # imm = 0x4000CD
	callq	*%r15
	movl	$7, 32(%rsp)
	leaq	ng15(%rip), %r8
	xorl	%r9d, %r9d
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movq	-128(%rbp), %rdx        # 8-byte Reload
	callq	*%r14
	movl	$4194510, %ecx          # imm = 0x4000CE
	callq	*%r15
	movl	$1, 32(%rsp)
	leaq	ng2(%rip), %r8
	jmp	.LBB6_38
.LBB6_4:
	leaq	ng17(%rip), %r8
	leaq	-64(%rbp), %rcx
	movl	$8, %edx
	movl	$8, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB6_5
# BB#39:
	movl	$4194523, %ecx          # imm = 0x4000DB
	callq	*__imp__iki_stmt_online(%rip)
	movl	$7, 32(%rsp)
	leaq	ng19(%rip), %r8
	jmp	.LBB6_40
.LBB6_5:
	leaq	ng19(%rip), %r8
	leaq	-64(%rbp), %rcx
	movl	$8, %edx
	movl	$8, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB6_6
# BB#41:
	movl	$4194527, %ecx          # imm = 0x4000DF
	callq	*%r15
	movl	$7, 32(%rsp)
	leaq	ng20(%rip), %r8
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	callq	*%r14
	movl	$4194528, %ecx          # imm = 0x4000E0
	callq	*%r15
	movq	1728(%rsi), %r8
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movq	-128(%rbp), %rdx        # 8-byte Reload
	callq	*%r14
	jmp	.LBB6_34
.LBB6_36:
	movl	$4194511, %ecx          # imm = 0x4000CF
	callq	*__imp__iki_stmt_online(%rip)
	movl	$2, %edx
	movq	%rdi, %rcx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	leaq	-72(%rbp), %rcx
	movl	$1, %r8d
	movq	%rax, %rdx
	callq	*__imp__iki_vlog_get_bit_select_value_simple(%rip)
	movl	4(%rax), %ecx
	notl	%ecx
	testl	(%rax), %ecx
	je	.LBB6_37
# BB#119:
	movl	$4194512, %ecx          # imm = 0x4000D0
	callq	*%r15
	movl	$7, 32(%rsp)
	leaq	ng17(%rip), %r8
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	callq	*%r14
	movl	$4194513, %ecx          # imm = 0x4000D1
	callq	*%r15
	movl	$7, 32(%rsp)
	leaq	ng18(%rip), %r8
	xorl	%r9d, %r9d
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movq	-128(%rbp), %rdx        # 8-byte Reload
	callq	*%r14
	movl	$4194514, %ecx          # imm = 0x4000D2
	callq	*%r15
	movl	$1, 32(%rsp)
	leaq	ng3(%rip), %r8
	jmp	.LBB6_38
.LBB6_6:
	leaq	ng20(%rip), %r8
	leaq	-64(%rbp), %rcx
	movl	$8, %edx
	movl	$8, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB6_7
# BB#42:
	movl	$4194532, %ecx          # imm = 0x4000E4
	callq	*__imp__iki_stmt_online(%rip)
	movl	$7, 32(%rsp)
	leaq	ng1(%rip), %r8
.LBB6_40:
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var(%rip)
	jmp	.LBB6_34
.LBB6_37:
	movl	$4194516, %ecx          # imm = 0x4000D4
	callq	*%r15
	movl	$7, 32(%rsp)
	leaq	ng16(%rip), %r8
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	callq	*%r14
	movl	$4194517, %ecx          # imm = 0x4000D5
	callq	*%r15
	movl	$7, 32(%rsp)
	leaq	ng15(%rip), %r8
	xorl	%r9d, %r9d
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movq	-128(%rbp), %rdx        # 8-byte Reload
	callq	*%r14
	movl	$4194518, %ecx          # imm = 0x4000D6
	callq	*%r15
	movl	$1, 32(%rsp)
	leaq	ng1(%rip), %r8
.LBB6_38:
	xorl	%r9d, %r9d
	movq	%r13, %rcx
	movq	%r12, %rdx
	callq	*%r14
.LBB6_34:
	movl	$4194488, %ecx          # imm = 0x4000B8
	callq	*__imp__iki_stmt_online(%rip)
	movb	$1, 4040(%rsi)
	leaq	.Ltmp23(%rip), %rax
	movq	%rax, 3960(%rsi)
	addq	$328, %rsp              # imm = 0x148
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB6_7:
	leaq	ng1(%rip), %r8
	leaq	-64(%rbp), %rcx
	movl	$8, %edx
	movl	$8, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB6_8
# BB#43:
	movl	$4194536, %ecx          # imm = 0x4000E8
	callq	*__imp__iki_stmt_online(%rip)
	movq	1728(%rsi), %r9
	movl	$1, -96(%rbp)
	movl	$7, -92(%rbp)
	movl	$0, -88(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, 80(%rsp)
	leaq	ng0(%rip), %rax
	movq	%rax, 56(%rsp)
	leaq	ng21(%rip), %rax
	movq	%rax, 32(%rsp)
	movl	$1, 112(%rsp)
	movl	$2, 104(%rsp)
	movl	$1, 96(%rsp)
	movq	$0, 88(%rsp)
	movl	$1, 72(%rsp)
	movl	$32, 64(%rsp)
	movl	$1, 48(%rsp)
	movl	$32, 40(%rsp)
	leaq	-72(%rbp), %rdi
	movl	$1, %edx
	movl	$4, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_vlog_get_part_select_value(%rip)
	leaq	-104(%rbp), %rbx
	movl	$8, %r8d
	movq	%rbx, %rcx
	movq	%rdi, %rdx
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	ng1(%rip), %r8
	movl	$4, %edx
	movl	$4, %r9d
	movq	%rbx, %rcx
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB6_44
# BB#120:
	movl	$4194537, %ecx          # imm = 0x4000E9
	callq	*__imp__iki_stmt_online(%rip)
	movl	$7, 32(%rsp)
	leaq	ng22(%rip), %r8
	jmp	.LBB6_121
.LBB6_8:
	leaq	ng22(%rip), %r8
	leaq	-64(%rbp), %rcx
	movl	$8, %edx
	movl	$8, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB6_9
# BB#59:
	movl	$4194560, %ecx          # imm = 0x400100
	callq	*%r15
	movl	$7, 32(%rsp)
	leaq	ng35(%rip), %r8
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var(%rip)
	movl	$4194561, %ecx          # imm = 0x400101
	callq	*%r15
	leaq	ng1(%rip), %r8
	jmp	.LBB6_60
.LBB6_44:
	leaq	ng2(%rip), %r8
	leaq	-104(%rbp), %rcx
	movl	$4, %edx
	movl	$4, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB6_45
# BB#122:
	movl	$4194538, %ecx          # imm = 0x4000EA
	callq	*__imp__iki_stmt_online(%rip)
	movl	$7, 32(%rsp)
	leaq	ng23(%rip), %r8
	jmp	.LBB6_121
.LBB6_9:
	leaq	ng23(%rip), %r8
	leaq	-64(%rbp), %rcx
	movl	$8, %edx
	movl	$8, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB6_10
# BB#61:
	movl	$4194567, %ecx          # imm = 0x400107
	callq	*%r15
	movl	$7, 32(%rsp)
	leaq	ng35(%rip), %r8
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var(%rip)
	movl	$4194568, %ecx          # imm = 0x400108
	callq	*%r15
	leaq	ng2(%rip), %r8
.LBB6_60:
	xorl	%r9d, %r9d
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movq	-160(%rbp), %rdx        # 8-byte Reload
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var_setback0(%rip)
	jmp	.LBB6_34
.LBB6_45:
	leaq	ng3(%rip), %r8
	leaq	-104(%rbp), %rcx
	movl	$4, %edx
	movl	$4, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB6_46
# BB#123:
	movl	$4194539, %ecx          # imm = 0x4000EB
	callq	*__imp__iki_stmt_online(%rip)
	movl	$7, 32(%rsp)
	leaq	ng24(%rip), %r8
	jmp	.LBB6_121
.LBB6_10:
	leaq	ng35(%rip), %r8
	leaq	-64(%rbp), %rcx
	movl	$8, %edx
	movl	$8, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB6_11
# BB#62:
	movl	$4194573, %ecx          # imm = 0x40010D
	callq	*%r15
	movl	$7, 32(%rsp)
	leaq	ng36(%rip), %r8
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	callq	*%r14
	movl	$4194574, %ecx          # imm = 0x40010E
	callq	*%r15
	movq	1728(%rsi), %r8
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	movq	-184(%rbp), %rcx        # 8-byte Reload
	movq	-176(%rbp), %rdx        # 8-byte Reload
	callq	*%r14
	jmp	.LBB6_34
.LBB6_46:
	leaq	ng4(%rip), %r8
	leaq	-104(%rbp), %rcx
	movl	$4, %edx
	movl	$4, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB6_47
# BB#124:
	movl	$4194540, %ecx          # imm = 0x4000EC
	callq	*__imp__iki_stmt_online(%rip)
	movl	$7, 32(%rsp)
	leaq	ng25(%rip), %r8
	jmp	.LBB6_121
.LBB6_11:
	leaq	ng36(%rip), %r8
	leaq	-64(%rbp), %rcx
	movl	$8, %edx
	movl	$8, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB6_12
# BB#63:
	movl	$4194581, %ecx          # imm = 0x400115
	callq	*%r15
	movl	$7, 32(%rsp)
	leaq	ng37(%rip), %r8
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var(%rip)
	movl	$4194582, %ecx          # imm = 0x400116
	callq	*%r15
	movq	1504(%rsi), %rdi
	leaq	-72(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, 4(%rdi)
	jne	.LBB6_134
# BB#64:
	cmpl	$0, ng38+4(%rip)
	je	.LBB6_65
.LBB6_134:
	movq	$-1, -72(%rbp)
.LBB6_66:
	movl	$7, 32(%rsp)
	leaq	-72(%rbp), %r8
	xorl	%r9d, %r9d
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movq	-128(%rbp), %rdx        # 8-byte Reload
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var(%rip)
	jmp	.LBB6_34
.LBB6_47:
	leaq	ng6(%rip), %r8
	leaq	-104(%rbp), %rcx
	movl	$4, %edx
	movl	$4, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB6_48
# BB#125:
	movl	$4194541, %ecx          # imm = 0x4000ED
	callq	*__imp__iki_stmt_online(%rip)
	movl	$7, 32(%rsp)
	leaq	ng26(%rip), %r8
	jmp	.LBB6_121
.LBB6_12:
	leaq	ng37(%rip), %r8
	leaq	-64(%rbp), %rcx
	movl	$8, %edx
	movl	$8, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB6_13
# BB#67:
	movl	$4194588, %ecx          # imm = 0x40011C
	callq	*%r15
	movl	$7, 32(%rsp)
	leaq	ng1(%rip), %r8
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var(%rip)
	movl	$4194589, %ecx          # imm = 0x40011D
	callq	*%r15
	movq	1168(%rsi), %rdi
	leaq	-72(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	4(%rdi), %eax
	movl	%eax, %ecx
	andl	$1, %ecx
	movl	%ecx, -68(%rbp)
	movl	(%rdi), %ecx
	notl	%ecx
	orl	%eax, %ecx
	andl	$1, %ecx
	movl	%ecx, -72(%rbp)
	movl	-68(%rbp), %eax
	notl	%eax
	testl	%eax, %ecx
	je	.LBB6_68
# BB#135:
	movl	$4194590, %ecx          # imm = 0x40011E
	callq	*__imp__iki_stmt_online(%rip)
	movq	552(%rsi), %r8
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	movq	-200(%rbp), %rcx        # 8-byte Reload
	movq	-192(%rbp), %rdx        # 8-byte Reload
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var(%rip)
	jmp	.LBB6_34
.LBB6_48:
	leaq	ng7(%rip), %r8
	leaq	-104(%rbp), %rcx
	movl	$4, %edx
	movl	$4, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB6_49
# BB#126:
	movl	$4194542, %ecx          # imm = 0x4000EE
	callq	*__imp__iki_stmt_online(%rip)
	movl	$7, 32(%rsp)
	leaq	ng27(%rip), %r8
	jmp	.LBB6_121
.LBB6_13:
	leaq	ng24(%rip), %r8
	leaq	-64(%rbp), %rcx
	movl	$8, %edx
	movl	$8, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB6_14
# BB#69:
	movl	$4194601, %ecx          # imm = 0x400129
	callq	*%r15
	movl	$7, 32(%rsp)
	leaq	ng39(%rip), %r8
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var(%rip)
	movl	$4194602, %ecx          # imm = 0x40012A
	callq	*%r15
	leaq	ng1(%rip), %r8
	xorl	%r9d, %r9d
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movq	-160(%rbp), %rdx        # 8-byte Reload
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var_setback0(%rip)
	movl	$4194603, %ecx          # imm = 0x40012B
	callq	*%r15
	movq	1504(%rsi), %rdi
	leaq	-72(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, 4(%rdi)
	jne	.LBB6_71
# BB#70:
	cmpl	$0, ng38+4(%rip)
	je	.LBB6_65
.LBB6_71:
	movq	$-1, -72(%rbp)
	jmp	.LBB6_66
.LBB6_49:
	leaq	ng8(%rip), %r8
	leaq	-104(%rbp), %rcx
	movl	$4, %edx
	movl	$4, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB6_50
# BB#127:
	movl	$4194543, %ecx          # imm = 0x4000EF
	callq	*__imp__iki_stmt_online(%rip)
	movl	$7, 32(%rsp)
	leaq	ng28(%rip), %r8
.LBB6_121:
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
.LBB6_58:
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var(%rip)
	movl	$4194553, %ecx          # imm = 0x4000F9
	callq	*__imp__iki_stmt_online(%rip)
	movl	$1, 32(%rsp)
	leaq	ng2(%rip), %r8
	xorl	%r9d, %r9d
	movq	-144(%rbp), %rcx        # 8-byte Reload
	movq	-152(%rbp), %rdx        # 8-byte Reload
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var(%rip)
	jmp	.LBB6_34
.LBB6_14:
	leaq	ng25(%rip), %r8
	leaq	-64(%rbp), %rcx
	movl	$8, %edx
	movl	$8, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB6_15
# BB#72:
	movl	$4194611, %ecx          # imm = 0x400133
	callq	*%r15
	movl	$7, 32(%rsp)
	leaq	ng39(%rip), %r8
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var(%rip)
	movl	$4194612, %ecx          # imm = 0x400134
	callq	*%r15
	leaq	ng2(%rip), %r8
	xorl	%r9d, %r9d
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movq	-160(%rbp), %rdx        # 8-byte Reload
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var_setback0(%rip)
	movl	$4194613, %ecx          # imm = 0x400135
	callq	*%r15
	movq	1504(%rsi), %rdi
	leaq	-72(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, 4(%rdi)
	jne	.LBB6_136
# BB#73:
	cmpl	$0, ng38+4(%rip)
	je	.LBB6_74
.LBB6_136:
	movq	$-1, -72(%rbp)
	jmp	.LBB6_76
.LBB6_68:
	movl	$4194592, %ecx          # imm = 0x400120
	callq	*__imp__iki_stmt_online(%rip)
	movq	552(%rsi), %r8
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	movq	-216(%rbp), %rcx        # 8-byte Reload
	movq	-208(%rbp), %rdx        # 8-byte Reload
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var(%rip)
	jmp	.LBB6_34
.LBB6_65:
	movl	(%rdi), %eax
	addl	ng38(%rip), %eax
	movl	%eax, -72(%rbp)
	movl	$0, -68(%rbp)
	jmp	.LBB6_66
.LBB6_50:
	leaq	ng9(%rip), %r8
	leaq	-104(%rbp), %rcx
	movl	$4, %edx
	movl	$4, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB6_51
# BB#128:
	movl	$4194544, %ecx          # imm = 0x4000F0
	callq	*__imp__iki_stmt_online(%rip)
	movl	$7, 32(%rsp)
	leaq	ng29(%rip), %rax
	jmp	.LBB6_57
.LBB6_15:
	leaq	ng39(%rip), %r8
	leaq	-64(%rbp), %rcx
	movl	$8, %edx
	movl	$8, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB6_16
# BB#77:
	movl	$4194619, %ecx          # imm = 0x40013B
	callq	*%r15
	movl	$7, 32(%rsp)
	leaq	ng1(%rip), %rax
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %r8
	callq	*%r14
	movl	$4194620, %ecx          # imm = 0x40013C
	callq	*%r15
	movq	1728(%rsi), %rax
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	movq	-184(%rbp), %rcx        # 8-byte Reload
	movq	-176(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %r8
	callq	*%r14
	movl	$4194621, %ecx          # imm = 0x40013D
	callq	*%r15
	movq	1224(%rsi), %rdi
	leaq	-72(%rbp), %rax
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rax, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	4(%rdi), %eax
	movl	%eax, %ecx
	andl	$1, %ecx
	movl	%ecx, -68(%rbp)
	movl	(%rdi), %ecx
	notl	%ecx
	orl	%eax, %ecx
	andl	$1, %ecx
	movl	%ecx, -72(%rbp)
	movl	-68(%rbp), %eax
	notl	%eax
	testl	%eax, %ecx
	je	.LBB6_78
# BB#137:
	movl	$4194622, %ecx          # imm = 0x40013E
	callq	*__imp__iki_stmt_online(%rip)
	movq	944(%rsi), %rax
	jmp	.LBB6_79
.LBB6_51:
	leaq	ng10(%rip), %rax
	leaq	-104(%rbp), %rcx
	movl	$4, %edx
	movl	$4, %r9d
	movq	%rax, %r8
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB6_52
# BB#129:
	movl	$4194545, %ecx          # imm = 0x4000F1
	callq	*__imp__iki_stmt_online(%rip)
	movl	$7, 32(%rsp)
	leaq	ng16(%rip), %rax
	jmp	.LBB6_57
.LBB6_16:
	leaq	ng26(%rip), %rax
	leaq	-64(%rbp), %rcx
	movl	$8, %edx
	movl	$8, %r9d
	movq	%rax, %r8
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB6_17
# BB#80:
	movl	$4194634, %ecx          # imm = 0x40014A
	callq	*%r15
	movl	$7, 32(%rsp)
	leaq	ng40(%rip), %rax
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %r8
	callq	*%r14
	movl	$4194635, %ecx          # imm = 0x40014B
	callq	*%r15
	movq	1840(%rsi), %rax
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	movq	-200(%rbp), %rcx        # 8-byte Reload
	movq	-192(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %r8
	callq	*%r14
	movl	$4194636, %ecx          # imm = 0x40014C
	jmp	.LBB6_81
.LBB6_78:
	movl	$4194624, %ecx          # imm = 0x400140
	callq	*__imp__iki_stmt_online(%rip)
	movq	1056(%rsi), %rax
.LBB6_79:
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	movq	-248(%rbp), %rcx        # 8-byte Reload
	movq	-256(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %r8
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var(%rip)
	movl	$4194625, %ecx          # imm = 0x400141
	callq	*__imp__iki_stmt_online(%rip)
	leaq	ng2(%rip), %rax
	xorl	%r9d, %r9d
	movq	-232(%rbp), %rcx        # 8-byte Reload
	movq	-240(%rbp), %rdx        # 8-byte Reload
	jmp	.LBB6_111
.LBB6_52:
	leaq	ng11(%rip), %rax
	leaq	-104(%rbp), %rcx
	movl	$4, %edx
	movl	$4, %r9d
	movq	%rax, %r8
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB6_53
# BB#130:
	movl	$4194546, %ecx          # imm = 0x4000F2
	callq	*__imp__iki_stmt_online(%rip)
	movl	$7, 32(%rsp)
	leaq	ng30(%rip), %rax
	jmp	.LBB6_57
.LBB6_17:
	leaq	ng27(%rip), %rax
	leaq	-64(%rbp), %rcx
	movl	$8, %edx
	movl	$8, %r9d
	movq	%rax, %r8
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB6_18
# BB#84:
	movl	$4194642, %ecx          # imm = 0x400152
	callq	*%r15
	movl	$7, 32(%rsp)
	leaq	ng40(%rip), %rax
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %r8
	callq	*%r14
	movl	$4194643, %ecx          # imm = 0x400153
	callq	*%r15
	movq	1840(%rsi), %rax
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	movq	-216(%rbp), %rcx        # 8-byte Reload
	movq	-208(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %r8
	callq	*%r14
	movl	$4194644, %ecx          # imm = 0x400154
.LBB6_81:
	callq	*%r15
	movq	1504(%rsi), %rdi
	leaq	-72(%rbp), %rax
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rax, %rcx
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, 4(%rdi)
	jne	.LBB6_85
# BB#82:
	cmpl	$0, ng5+4(%rip)
	je	.LBB6_83
.LBB6_85:
	movq	$-1, -72(%rbp)
	jmp	.LBB6_76
.LBB6_53:
	leaq	ng12(%rip), %rax
	leaq	-104(%rbp), %rcx
	movl	$4, %edx
	movl	$4, %r9d
	movq	%rax, %r8
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB6_54
# BB#131:
	movl	$4194547, %ecx          # imm = 0x4000F3
	callq	*__imp__iki_stmt_online(%rip)
	movl	$7, 32(%rsp)
	leaq	ng31(%rip), %rax
	jmp	.LBB6_57
.LBB6_18:
	leaq	ng40(%rip), %rax
	leaq	-64(%rbp), %rcx
	movl	$8, %edx
	movl	$8, %r9d
	movq	%rax, %r8
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB6_19
# BB#86:
	movl	$4194649, %ecx          # imm = 0x400159
	jmp	.LBB6_87
.LBB6_54:
	leaq	ng13(%rip), %rax
	leaq	-104(%rbp), %rcx
	movl	$4, %edx
	movl	$4, %r9d
	movq	%rax, %r8
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB6_55
# BB#132:
	movl	$4194548, %ecx          # imm = 0x4000F4
	callq	*__imp__iki_stmt_online(%rip)
	movl	$7, 32(%rsp)
	leaq	ng32(%rip), %rax
	jmp	.LBB6_57
.LBB6_19:
	leaq	ng28(%rip), %rax
	leaq	-64(%rbp), %rcx
	movl	$8, %edx
	movl	$8, %r9d
	movq	%rax, %r8
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB6_20
# BB#90:
	movl	$4194654, %ecx          # imm = 0x40015E
	callq	*__imp__iki_stmt_online(%rip)
	movq	1840(%rsi), %rax
	movl	4(%rax), %ecx
	notl	%ecx
	testl	(%rax), %ecx
	je	.LBB6_91
# BB#138:
	movl	$4194655, %ecx          # imm = 0x40015F
	callq	*__imp__iki_stmt_online(%rip)
	movl	$7, 32(%rsp)
	leaq	ng41(%rip), %rax
	jmp	.LBB6_88
.LBB6_55:
	leaq	ng33(%rip), %rax
	leaq	-104(%rbp), %rcx
	movl	$4, %edx
	movl	$4, %r9d
	movq	%rax, %r8
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB6_56
# BB#133:
	movl	$4194549, %ecx          # imm = 0x4000F5
	callq	*__imp__iki_stmt_online(%rip)
	movl	$7, 32(%rsp)
	leaq	ng34(%rip), %rax
	jmp	.LBB6_57
.LBB6_20:
	leaq	ng41(%rip), %rax
	leaq	-64(%rbp), %rcx
	movl	$8, %edx
	movl	$8, %r9d
	movq	%rax, %r8
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB6_21
# BB#94:
	movl	$4194664, %ecx          # imm = 0x400168
	callq	*%r15
	movl	$7, 32(%rsp)
	leaq	ng42(%rip), %rax
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %r8
	callq	*%r14
	movl	$4194665, %ecx          # imm = 0x400169
	jmp	.LBB6_95
.LBB6_91:
	movl	$4194657, %ecx          # imm = 0x400161
	callq	*%r15
	movl	$7, 32(%rsp)
	leaq	ng42(%rip), %rax
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %r8
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var(%rip)
	movl	$4194658, %ecx          # imm = 0x400162
	callq	*%r15
	movq	1504(%rsi), %rdi
	leaq	-72(%rbp), %rax
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rax, %rcx
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, 4(%rdi)
	jne	.LBB6_93
# BB#92:
	cmpl	$0, ng38+4(%rip)
	je	.LBB6_74
.LBB6_93:
	movq	$-1, -72(%rbp)
	jmp	.LBB6_76
.LBB6_56:
	movl	$4194551, %ecx          # imm = 0x4000F7
	callq	*__imp__iki_stmt_online(%rip)
	movq	1896(%rsi), %rax
	movl	$7, 32(%rsp)
.LBB6_57:
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %r8
	jmp	.LBB6_58
.LBB6_21:
	leaq	ng42(%rip), %rax
	leaq	-64(%rbp), %rcx
	movl	$8, %edx
	movl	$8, %r9d
	movq	%rax, %r8
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB6_22
# BB#97:
	movl	$4194669, %ecx          # imm = 0x40016D
	jmp	.LBB6_87
.LBB6_74:
	movl	(%rdi), %eax
	addl	ng38(%rip), %eax
	jmp	.LBB6_75
.LBB6_22:
	leaq	ng29(%rip), %rax
	leaq	-64(%rbp), %rcx
	movl	$8, %edx
	movl	$8, %r9d
	movq	%rax, %r8
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB6_23
# BB#98:
	movl	$4194673, %ecx          # imm = 0x400171
	callq	*__imp__iki_stmt_online(%rip)
	movl	$7, 32(%rsp)
	leaq	ng43(%rip), %rax
	jmp	.LBB6_88
.LBB6_23:
	leaq	ng43(%rip), %rax
	leaq	-64(%rbp), %rcx
	movl	$8, %edx
	movl	$8, %r9d
	movq	%rax, %r8
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB6_24
# BB#99:
	movl	$4194677, %ecx          # imm = 0x400175
	callq	*%r15
	movl	$7, 32(%rsp)
	leaq	ng44(%rip), %rax
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %r8
	callq	*%r14
	movl	$4194678, %ecx          # imm = 0x400176
	jmp	.LBB6_95
.LBB6_24:
	leaq	ng44(%rip), %rax
	leaq	-64(%rbp), %rcx
	movl	$8, %edx
	movl	$8, %r9d
	movq	%rax, %r8
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB6_25
# BB#100:
	movl	$4194682, %ecx          # imm = 0x40017A
	jmp	.LBB6_87
.LBB6_25:
	leaq	ng30(%rip), %rax
	leaq	-64(%rbp), %rcx
	movl	$8, %edx
	movl	$8, %r9d
	movq	%rax, %r8
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB6_26
# BB#101:
	movl	$4194687, %ecx          # imm = 0x40017F
	callq	*%r15
	movl	$7, 32(%rsp)
	leaq	ng45(%rip), %rax
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %r8
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var(%rip)
	movl	$4194688, %ecx          # imm = 0x400180
	callq	*%r15
	movq	1504(%rsi), %rdi
	leaq	-72(%rbp), %rax
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rax, %rcx
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, 4(%rdi)
	jne	.LBB6_139
# BB#102:
	cmpl	$0, ng38+4(%rip)
	je	.LBB6_103
.LBB6_139:
	movq	$-1, -72(%rbp)
	jmp	.LBB6_104
.LBB6_26:
	leaq	ng45(%rip), %rax
	leaq	-64(%rbp), %rcx
	movl	$8, %edx
	movl	$8, %r9d
	movq	%rax, %r8
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB6_27
# BB#105:
	movl	$4194693, %ecx          # imm = 0x400185
	callq	*%r15
	movl	$7, 32(%rsp)
	leaq	ng46(%rip), %rax
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %r8
	callq	*%r14
	movl	$4194694, %ecx          # imm = 0x400186
.LBB6_95:
	callq	*%r15
	movq	1728(%rsi), %rax
	jmp	.LBB6_96
.LBB6_103:
	movl	(%rdi), %eax
	addl	ng38(%rip), %eax
	movl	%eax, -72(%rbp)
	movl	$0, -68(%rbp)
.LBB6_104:
	movl	$7, 32(%rsp)
	leaq	-72(%rbp), %rax
	xorl	%r9d, %r9d
	movq	%rbx, %rcx
	movq	-224(%rbp), %rdx        # 8-byte Reload
	jmp	.LBB6_89
.LBB6_27:
	leaq	ng46(%rip), %rax
	leaq	-64(%rbp), %rcx
	movl	$8, %edx
	movl	$8, %r9d
	movq	%rax, %r8
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB6_28
# BB#106:
	movl	$4194698, %ecx          # imm = 0x40018A
	jmp	.LBB6_87
.LBB6_28:
	leaq	ng31(%rip), %rax
	leaq	-64(%rbp), %rcx
	movl	$8, %edx
	movl	$8, %r9d
	movq	%rax, %r8
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB6_29
# BB#107:
	movl	$4194703, %ecx          # imm = 0x40018F
	callq	*%r15
	movl	$7, 32(%rsp)
	leaq	ng47(%rip), %rax
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %r8
	callq	*%r14
	movl	$4194704, %ecx          # imm = 0x400190
	callq	*%r15
	movq	1280(%rsi), %rax
.LBB6_96:
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %r8
	callq	*%r14
	jmp	.LBB6_34
.LBB6_29:
	leaq	ng47(%rip), %rax
	leaq	-64(%rbp), %rcx
	movl	$8, %edx
	movl	$8, %r9d
	movq	%rax, %r8
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB6_30
# BB#108:
	movl	$4194708, %ecx          # imm = 0x400194
.LBB6_87:
	callq	*__imp__iki_stmt_online(%rip)
	movl	$7, 32(%rsp)
	leaq	ng1(%rip), %rax
.LBB6_88:
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	jmp	.LBB6_89
.LBB6_30:
	leaq	ng32(%rip), %rax
	leaq	-64(%rbp), %rcx
	movl	$8, %edx
	movl	$8, %r9d
	movq	%rax, %r8
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB6_31
# BB#109:
	movl	$4194713, %ecx          # imm = 0x400199
	callq	*%r15
	movl	$7, 32(%rsp)
	leaq	ng48(%rip), %rax
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %r8
	callq	*%r14
	movl	$4194714, %ecx          # imm = 0x40019A
	callq	*%r15
	movq	944(%rsi), %rax
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	movq	-184(%rbp), %rcx        # 8-byte Reload
	movq	-176(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %r8
	callq	*%r14
	movl	$4194715, %ecx          # imm = 0x40019B
	callq	*%r15
	leaq	ng1(%rip), %rax
	jmp	.LBB6_110
.LBB6_31:
	leaq	ng34(%rip), %rax
	leaq	-64(%rbp), %rcx
	movl	$8, %edx
	movl	$8, %r9d
	movq	%rax, %r8
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB6_32
# BB#112:
	movl	$4194721, %ecx          # imm = 0x4001A1
	callq	*%r15
	movl	$7, 32(%rsp)
	leaq	ng48(%rip), %rax
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %r8
	callq	*%r14
	movl	$4194722, %ecx          # imm = 0x4001A2
	callq	*%r15
	movq	1056(%rsi), %rax
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	movq	-184(%rbp), %rcx        # 8-byte Reload
	movq	-176(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %r8
	callq	*%r14
	movl	$4194723, %ecx          # imm = 0x4001A3
	callq	*%r15
	leaq	ng2(%rip), %rax
.LBB6_110:
	xorl	%r9d, %r9d
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movq	-160(%rbp), %rdx        # 8-byte Reload
.LBB6_111:
	movq	%rax, %r8
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var_setback0(%rip)
	jmp	.LBB6_34
.LBB6_32:
	leaq	ng48(%rip), %rax
	leaq	-64(%rbp), %rcx
	movl	$8, %edx
	movl	$8, %r9d
	movq	%rax, %r8
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB6_33
# BB#113:
	movl	$4194728, %ecx          # imm = 0x4001A8
	callq	*%r15
	movl	$7, 32(%rsp)
	leaq	ng49(%rip), %rax
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %r8
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var(%rip)
	movl	$4194729, %ecx          # imm = 0x4001A9
	callq	*%r15
	movq	1504(%rsi), %rdi
	leaq	-72(%rbp), %rax
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rax, %rcx
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, 4(%rdi)
	jne	.LBB6_115
# BB#114:
	cmpl	$0, ng5+4(%rip)
	je	.LBB6_83
.LBB6_115:
	movq	$-1, -72(%rbp)
	jmp	.LBB6_76
.LBB6_33:
	leaq	ng49(%rip), %rax
	leaq	-64(%rbp), %rcx
	movl	$8, %edx
	movl	$8, %r9d
	movq	%rax, %r8
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB6_34
# BB#116:
	movl	$4194734, %ecx          # imm = 0x4001AE
	callq	*%r15
	movl	$7, 32(%rsp)
	leaq	ng1(%rip), %rax
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %r8
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var(%rip)
	movl	$4194735, %ecx          # imm = 0x4001AF
	callq	*%r15
	movq	1168(%rsi), %rdi
	leaq	-72(%rbp), %rax
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rax, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	4(%rdi), %eax
	movl	%eax, %ecx
	andl	$1, %ecx
	movl	%ecx, -68(%rbp)
	movl	(%rdi), %ecx
	notl	%ecx
	orl	%eax, %ecx
	andl	$1, %ecx
	movl	%ecx, -72(%rbp)
	movl	-68(%rbp), %eax
	notl	%eax
	testl	%eax, %ecx
	je	.LBB6_117
# BB#140:
	movl	$4194736, %ecx          # imm = 0x4001B0
	callq	*__imp__iki_stmt_online(%rip)
	movq	552(%rsi), %rax
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	movq	-200(%rbp), %rcx        # 8-byte Reload
	movq	-192(%rbp), %rdx        # 8-byte Reload
	jmp	.LBB6_89
.LBB6_83:
	movl	(%rdi), %eax
	addl	ng5(%rip), %eax
.LBB6_75:
	movl	%eax, -72(%rbp)
	movl	$0, -68(%rbp)
.LBB6_76:
	movl	$7, 32(%rsp)
	leaq	-72(%rbp), %rax
	xorl	%r9d, %r9d
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movq	-128(%rbp), %rdx        # 8-byte Reload
	jmp	.LBB6_89
.LBB6_117:
	movl	$4194738, %ecx          # imm = 0x4001B2
	callq	*__imp__iki_stmt_online(%rip)
	movq	552(%rsi), %rax
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	movq	-216(%rbp), %rcx        # 8-byte Reload
	movq	-208(%rbp), %rdx        # 8-byte Reload
.LBB6_89:
	movq	%rax, %r8
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var(%rip)
	jmp	.LBB6_34

	.def	 _execute_98;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_98
	.align	16, 0x90
_execute_98:                            # @_execute_98
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	subq	$40, %rsp
	movq	%rdx, %rsi
	leaq	2056(%rsi), %rcx
	movl	$8, %edx
	callq	*__imp__iki_vlog_signal_handle_value(%rip)
	leaq	8648(%rsi), %rcx
	movl	$8, %r8d
	movq	%rax, %rdx
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	2000(%rsi), %rcx
	addq	$8624, %rsi             # imm = 0x21B0
	xorl	%r8d, %r8d
	movl	$7, %r9d
	movq	%rsi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_signal_fast(%rip)
	addq	$40, %rsp
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_99;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_99
	.align	16, 0x90
_execute_99:                            # @_execute_99
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	subq	$40, %rsp
	movq	%rdx, %rsi
	leaq	2168(%rsi), %rcx
	movl	$8, %edx
	callq	*__imp__iki_vlog_signal_handle_value(%rip)
	leaq	8816(%rsi), %rcx
	movl	$8, %r8d
	movq	%rax, %rdx
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	2112(%rsi), %rcx
	addq	$8792, %rsi             # imm = 0x2258
	xorl	%r8d, %r8d
	movl	$7, %r9d
	movq	%rsi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_signal_fast(%rip)
	addq	$40, %rsp
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_9;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_9
	.align	16, 0x90
_execute_9:                             # @_execute_9
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	subq	$104, %rsp
	movq	%rdx, %rsi
	movl	$4, %edx
	movq	%rsi, %rcx
	callq	*__imp__iki_vlog_set_threadId_for_unrandom(%rip)
	movl	$6291496, %ecx          # imm = 0x600028
	callq	*__imp__iki_stmt_online(%rip)
	addq	$208, %rsi
	movl	$0, 88(%rsp)
	movl	$255, 80(%rsp)
	movl	$0, 72(%rsp)
	movl	$7, 64(%rsp)
	movl	$4, 56(%rsp)
	movl	$0, 48(%rsp)
	movl	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	leaq	ng50(%rip), %rcx
	movl	$216, %edx
	xorl	%r9d, %r9d
	movq	%rsi, %r8
	callq	*__imp__iki_vlogfile_readmemh(%rip)
	addq	$104, %rsp
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_10;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_10
	.align	16, 0x90
_execute_10:                            # @_execute_10
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$136, %rsp
	movq	%rdx, %rsi
	.align	16, 0x90
.LBB10_1:                               # =>This Inner Loop Header: Depth=1
	movl	$5, %edx
	movq	%rsi, %rcx
	callq	*__imp__iki_vlog_set_threadId_for_unrandom(%rip)
	movq	576(%rsi), %rax
	testq	%rax, %rax
	je	.LBB10_4
# BB#2:                                 #   in Loop: Header=BB10_1 Depth=1
	jmpq	*%rax
.Ltmp36:                                # Block address taken
.LBB10_3:
	movb	$0, 656(%rsi)
	movl	$6291500, %ecx          # imm = 0x60002C
	callq	*__imp__iki_stmt_online(%rip)
	movq	216(%rsi), %rdi
	leaq	152(%rsi), %rcx
	movl	$8, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, 104(%rsp)
	movl	$2, 120(%rsp)
	movl	$8, 112(%rsp)
	movl	$8, 96(%rsp)
	movl	$2, 88(%rsp)
	movl	$1, 80(%rsp)
	movl	$0, 72(%rsp)
	movl	$255, 64(%rsp)
	movl	$1, 56(%rsp)
	movl	$0, 48(%rsp)
	movl	$7, 40(%rsp)
	movl	$1, 32(%rsp)
	leaq	-32(%rbp), %rcx
	movl	$1, %edx
	movl	$8, %r8d
	movq	%rdi, %r9
	callq	*__imp__iki_vlog_get_bit_select_value_pu_input(%rip)
	movq	%rax, %rdi
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movzbl	(%rdi), %eax
	movl	%eax, (%rbx)
	movzbl	4(%rdi), %eax
	movl	%eax, 4(%rbx)
	leaq	96(%rsi), %rcx
	leaq	664(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rbx, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
.LBB10_4:
	movl	$6291499, %ecx          # imm = 0x60002B
	callq	*__imp__iki_stmt_online(%rip)
	movb	$1, 656(%rsi)
	leaq	.Ltmp36(%rip), %rax
	movq	%rax, 576(%rsi)
	addq	$136, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_100;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_100
	.align	16, 0x90
_execute_100:                           # @_execute_100
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	pushq	%rdi
	subq	$64, %rsp
	movq	%rdx, %rsi
	movl	$7340073, %ecx          # imm = 0x700029
	callq	*__imp__iki_stmt_online(%rip)
	movq	384(%rsi), %rdi
	leaq	-32(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	4(%rdi), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	(%rdi), %ecx
	testb	$1, %cl
	je	.LBB11_1
# BB#10:
	movl	$1, -32(%rbp)
	jmp	.LBB11_2
.LBB11_1:
	testl	%eax, %eax
	je	.LBB11_2
# BB#11:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -32(%rbp)
.LBB11_2:
	cmpl	$0, -32(%rbp)
	movb	$1, %al
	jne	.LBB11_4
# BB#3:
	cmpl	$0, -28(%rbp)
	setne	%al
.LBB11_4:
	testb	%al, %al
                                        # implicit-def: RAX
	je	.LBB11_5
# BB#12:
	movq	328(%rsi), %rax
.LBB11_5:
	cmpl	$0, -28(%rbp)
	je	.LBB11_6
# BB#13:
	leaq	ng14(%rip), %rcx
	movq	%rcx, 32(%rsp)
	movl	$8, 40(%rsp)
	leaq	-24(%rbp), %rcx
	movl	$8, %edx
	movl	$8, %r9d
	movq	%rax, %r8
	callq	*__imp__iki_vlog_unsigned_bit_combine(%rip)
	jmp	.LBB11_9
.LBB11_6:
	movl	-32(%rbp), %ecx
	testl	%ecx, %ecx
	je	.LBB11_7
# BB#14:
	leaq	-24(%rbp), %rcx
	movl	$8, %r8d
	movq	%rax, %rdx
	jmp	.LBB11_8
.LBB11_7:
	leaq	ng14(%rip), %rdx
	leaq	-24(%rbp), %rcx
	movl	$8, %r8d
.LBB11_8:
	callq	*__imp__iki_std_memcpy(%rip)
.LBB11_9:
	leaq	1296(%rsi), %rcx
	leaq	-24(%rbp), %rdx
	movl	$8, %r8d
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	96(%rsi), %rcx
	addq	$1272, %rsi             # imm = 0x4F8
	xorl	%r8d, %r8d
	movl	$7, %r9d
	movq	%rsi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_signal_fast_no_reg_no_agg(%rip)
	addq	$64, %rsp
	popq	%rdi
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_12;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_12
	.align	16, 0x90
_execute_12:                            # @_execute_12
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	subq	$104, %rsp
	movq	%rdx, %rsi
	movl	$6, %edx
	movq	%rsi, %rcx
	callq	*__imp__iki_vlog_set_threadId_for_unrandom(%rip)
	movl	$7340079, %ecx          # imm = 0x70002F
	callq	*__imp__iki_stmt_online(%rip)
	addq	$432, %rsi              # imm = 0x1B0
	movl	$0, 88(%rsp)
	movl	$127, 80(%rsp)
	movl	$0, 72(%rsp)
	movl	$7, 64(%rsp)
	movl	$4, 56(%rsp)
	movl	$0, 48(%rsp)
	movl	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	leaq	ng51(%rip), %rcx
	movl	$280, %edx              # imm = 0x118
	xorl	%r9d, %r9d
	movq	%rsi, %r8
	callq	*__imp__iki_vlogfile_readmemh(%rip)
	addq	$104, %rsp
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_13;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_13
	.align	16, 0x90
_execute_13:                            # @_execute_13
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$184, %rsp
	movq	%rdx, %rsi
	.align	16, 0x90
.LBB13_1:                               # =>This Inner Loop Header: Depth=1
	movl	$7, %edx
	movq	%rsi, %rcx
	callq	*__imp__iki_vlog_set_threadId_for_unrandom(%rip)
	movq	856(%rsi), %rax
	testq	%rax, %rax
	je	.LBB13_17
# BB#2:                                 #   in Loop: Header=BB13_1 Depth=1
	jmpq	*%rax
.Ltmp46:                                # Block address taken
.LBB13_3:
	movb	$0, 936(%rsi)
	movl	$7340084, %ecx          # imm = 0x700034
	callq	*__imp__iki_stmt_online(%rip)
	leaq	152(%rsi), %r14
	movl	$8, %edx
	movq	%r14, %rcx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %rbx
	leaq	-48(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, 4(%rbx)
	jne	.LBB13_18
# BB#4:
	cmpl	$0, 652(%rsi)
	je	.LBB13_5
.LBB13_18:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -48(%rbp)
.LBB13_7:
	movl	$8, %edx
	movq	%r14, %rcx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %rbx
	cmpl	$0, 660(%rsi)
	je	.LBB13_8
# BB#19:
	movq	$-1, -56(%rbp)
	jmp	.LBB13_9
.LBB13_8:
	movl	$128, %eax
	addl	656(%rsi), %eax
	movl	%eax, -56(%rbp)
	movl	$0, -52(%rbp)
.LBB13_9:
	leaq	-64(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, 4(%rbx)
	jne	.LBB13_20
# BB#10:
	cmpl	$0, -52(%rbp)
	je	.LBB13_11
.LBB13_20:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -64(%rbp)
.LBB13_12:
	movl	-48(%rbp), %edi
	movl	-44(%rbp), %edx
	movl	-64(%rbp), %r8d
	movl	-60(%rbp), %ebx
	movl	%edi, %ecx
	andl	%r8d, %ecx
	movl	%edx, %eax
	orl	%ebx, %eax
	je	.LBB13_13
# BB#22:
	orl	%eax, %ecx
	notl	%edi
	notl	%edx
	andl	%edi, %edx
	notl	%edx
	andl	%edx, %eax
	notl	%r8d
	notl	%ebx
	andl	%r8d, %ebx
	notl	%ebx
	andl	%ebx, %eax
	andl	%ecx, %edx
	andl	%ebx, %edx
	movl	%edx, %ecx
.LBB13_13:
	notl	%eax
	testl	%eax, %ecx
	je	.LBB13_14
# BB#23:
	movl	$7340086, %ecx          # imm = 0x700036
	callq	*__imp__iki_stmt_online(%rip)
	leaq	208(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movl	4(%rax), %ecx
	notl	%ecx
	testl	(%rax), %ecx
	je	.LBB13_24
# BB#25:
	movl	$7340088, %ecx          # imm = 0x700038
	callq	*__imp__iki_stmt_online(%rip)
	movq	272(%rsi), %r15
	movl	$8, %edx
	movq	%r14, %rcx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movl	$1, -96(%rbp)
	movl	$7, -92(%rbp)
	movl	$0, -88(%rbp)
	leaq	-96(%rbp), %rcx
	movq	%rcx, 80(%rsp)
	leaq	ng0(%rip), %rcx
	movq	%rcx, 56(%rsp)
	leaq	ng52(%rip), %rcx
	movq	%rcx, 32(%rsp)
	movl	$1, 112(%rsp)
	movl	$2, 104(%rsp)
	movl	$1, 96(%rsp)
	movq	$0, 88(%rsp)
	movl	$1, 72(%rsp)
	movl	$32, 64(%rsp)
	movl	$1, 48(%rsp)
	movl	$32, 40(%rsp)
	leaq	-72(%rbp), %rcx
	movl	$1, %edx
	movl	$7, %r8d
	movq	%rax, %r9
	callq	*__imp__iki_vlog_get_part_select_value(%rip)
	cmpl	$127, -72(%rbp)
	movb	$1, %al
	movb	$1, %cl
	ja	.LBB13_27
# BB#26:                                # %select.mid
	xorl	%ecx, %ecx
.LBB13_27:                              # %select.end
	movl	-72(%rbp), %ebx
	testb	%cl, %cl
	jne	.LBB13_29
# BB#28:
	cmpl	$0, -68(%rbp)
	setne	%al
.LBB13_29:
	testb	%al, %al
	jne	.LBB13_31
# BB#30:
	shll	$3, %ebx
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movzbl	(%r15), %eax
	movl	%eax, (%rdi)
	movzbl	4(%r15), %eax
	movl	%eax, 4(%rdi)
	leaq	432(%rsi), %rcx
	leaq	944(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$7, 32(%rsp)
	movq	%rdi, %r8
	movl	%ebx, %r9d
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
.LBB13_31:
	movl	$7340089, %ecx          # imm = 0x700039
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	ng1(%rip), %eax
	andl	$1, %eax
	movl	%eax, (%rdi)
	movl	ng1+4(%rip), %eax
	andl	$1, %eax
	movl	%eax, 4(%rdi)
	leaq	376(%rsi), %rcx
	leaq	984(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$0, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	jmp	.LBB13_16
.LBB13_14:
	movl	$7340095, %ecx          # imm = 0x70003F
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	ng1(%rip), %eax
	andl	$1, %eax
	movl	%eax, (%rbx)
	movl	ng1+4(%rip), %eax
	andl	$1, %eax
	movl	%eax, 4(%rbx)
	leaq	376(%rsi), %rcx
	leaq	1064(%rsi), %rdx
	jmp	.LBB13_15
.LBB13_24:
	movl	$7340092, %ecx          # imm = 0x70003C
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	ng2(%rip), %eax
	andl	$1, %eax
	movl	%eax, (%rbx)
	movl	ng2+4(%rip), %eax
	andl	$1, %eax
	movl	%eax, 4(%rbx)
	leaq	376(%rsi), %rcx
	leaq	1024(%rsi), %rdx
.LBB13_15:
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$0, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rbx, %r8
.LBB13_16:
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
	movl	$7340096, %ecx          # imm = 0x700040
	callq	*__imp__iki_stmt_online(%rip)
	movq	440(%rsi), %rbx
	movl	$8, %edx
	movq	%r14, %rcx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movl	$1, -96(%rbp)
	movl	$7, -92(%rbp)
	movl	$0, -88(%rbp)
	leaq	-96(%rbp), %rcx
	movq	%rcx, 80(%rsp)
	leaq	ng0(%rip), %rcx
	movq	%rcx, 56(%rsp)
	leaq	ng52(%rip), %rcx
	movq	%rcx, 32(%rsp)
	movl	$1, 112(%rsp)
	movl	$2, 104(%rsp)
	movl	$1, 96(%rsp)
	movq	$0, 88(%rsp)
	movl	$1, 72(%rsp)
	movl	$32, 64(%rsp)
	movl	$1, 48(%rsp)
	movl	$32, 40(%rsp)
	leaq	-56(%rbp), %rdi
	movl	$1, %edx
	movl	$7, %r8d
	movq	%rdi, %rcx
	movq	%rax, %r9
	callq	*__imp__iki_vlog_get_part_select_value(%rip)
	movq	%rdi, 104(%rsp)
	movl	$2, 120(%rsp)
	movl	$7, 112(%rsp)
	movl	$8, 96(%rsp)
	movl	$2, 88(%rsp)
	movl	$1, 80(%rsp)
	movl	$0, 72(%rsp)
	movl	$127, 64(%rsp)
	movl	$1, 56(%rsp)
	movl	$0, 48(%rsp)
	movl	$7, 40(%rsp)
	movl	$1, 32(%rsp)
	leaq	-48(%rbp), %rcx
	movl	$1, %edx
	movl	$8, %r8d
	movq	%rbx, %r9
	callq	*__imp__iki_vlog_get_bit_select_value_pu_input(%rip)
	movq	%rax, %rdi
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movzbl	(%rdi), %eax
	movl	%eax, (%rbx)
	movzbl	4(%rdi), %eax
	movl	%eax, 4(%rbx)
	leaq	320(%rsi), %rcx
	leaq	1104(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rbx, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
.LBB13_17:
	movl	$7340081, %ecx          # imm = 0x700031
	callq	*__imp__iki_stmt_online(%rip)
	movb	$1, 936(%rsi)
	leaq	.Ltmp46(%rip), %rax
	movq	%rax, 856(%rsi)
	addq	$184, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB13_5:
	movl	(%rbx), %eax
	cmpl	648(%rsi), %eax
	jb	.LBB13_7
# BB#6:
	movl	$1, -48(%rbp)
	jmp	.LBB13_7
.LBB13_11:
	movl	(%rbx), %eax
	cmpl	-56(%rbp), %eax
	jae	.LBB13_12
# BB#21:
	movl	$1, -64(%rbp)
	jmp	.LBB13_12

	.def	 _execute_15;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_15
	.align	16, 0x90
_execute_15:                            # @_execute_15
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$72, %rsp
	movq	%rdx, %rsi
	.align	16, 0x90
.LBB14_1:                               # =>This Inner Loop Header: Depth=1
	movl	$8, %edx
	movq	%rsi, %rcx
	callq	*__imp__iki_vlog_set_threadId_for_unrandom(%rip)
	movq	992(%rsi), %rax
	testq	%rax, %rax
	je	.LBB14_11
# BB#2:                                 #   in Loop: Header=BB14_1 Depth=1
	jmpq	*%rax
.Ltmp50:                                # Block address taken
.LBB14_3:
	movb	$0, 1072(%rsi)
	movl	$8388661, %ecx          # imm = 0x800035
	callq	*__imp__iki_stmt_online(%rip)
	leaq	96(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movl	4(%rax), %ecx
	notl	%ecx
	testl	(%rax), %ecx
	je	.LBB14_4
# BB#12:
	movl	$8388662, %ecx          # imm = 0x800036
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movzbl	904(%rsi), %eax
	movl	%eax, (%rdi)
	movzbl	908(%rsi), %eax
	movl	%eax, 4(%rdi)
	leaq	432(%rsi), %rcx
	leaq	1080(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
	jmp	.LBB14_11
.LBB14_4:
	movl	$8388663, %ecx          # imm = 0x800037
	callq	*__imp__iki_stmt_online(%rip)
	leaq	208(%rsi), %rcx
	movl	$8, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %rdi
	leaq	-32(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, ng16+4(%rip)
	jne	.LBB14_13
# BB#5:
	cmpl	$0, ng2+4(%rip)
	je	.LBB14_6
.LBB14_13:
	movq	$-1, -32(%rbp)
.LBB14_7:
	movzbl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movzbl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	leaq	-40(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %ecx
	movl	4(%rdi), %ebx
	xorl	-32(%rbp), %ecx
	movl	-28(%rbp), %edx
	movl	%ebx, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %ebx
	movl	%ebx, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB14_9
# BB#8:
	testl	%ebx, %ebx
	movl	$1, -40(%rbp)
	je	.LBB14_9
# BB#14:
	movl	$1, -36(%rbp)
.LBB14_9:
	leaq	264(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movl	-40(%rbp), %edi
	movl	-36(%rbp), %edx
	movl	(%rax), %r8d
	movl	4(%rax), %ebx
	movl	%edi, %ecx
	andl	%r8d, %ecx
	movl	%edx, %eax
	orl	%ebx, %eax
	je	.LBB14_10
# BB#15:
	orl	%eax, %ecx
	notl	%edi
	notl	%edx
	andl	%edi, %edx
	notl	%edx
	andl	%edx, %eax
	notl	%r8d
	notl	%ebx
	andl	%r8d, %ebx
	notl	%ebx
	andl	%ebx, %eax
	andl	%ecx, %edx
	andl	%ebx, %edx
	movl	%edx, %ecx
.LBB14_10:
	notl	%eax
	testl	%eax, %ecx
	je	.LBB14_11
# BB#16:
	movl	$8388664, %ecx          # imm = 0x800038
	callq	*__imp__iki_stmt_online(%rip)
	leaq	152(%rsi), %rcx
	movl	$8, %edx
	callq	*__imp__iki_vlog_signal_handle_value(%rip)
	movq	%rax, %rdi
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movzbl	(%rdi), %eax
	movl	%eax, (%rbx)
	movzbl	4(%rdi), %eax
	movl	%eax, 4(%rbx)
	leaq	432(%rsi), %rcx
	leaq	1120(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rbx, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
.LBB14_11:
	movl	$8388660, %ecx          # imm = 0x800034
	callq	*__imp__iki_stmt_online(%rip)
	movb	$1, 1072(%rsi)
	leaq	.Ltmp50(%rip), %rax
	movq	%rax, 992(%rsi)
	addq	$72, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%rbp
	ret
.LBB14_6:
	movl	ng16(%rip), %eax
	addl	ng2(%rip), %eax
	movl	%eax, -32(%rbp)
	movl	$0, -28(%rbp)
	jmp	.LBB14_7

	.def	 _execute_16;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_16
	.align	16, 0x90
_execute_16:                            # @_execute_16
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$88, %rsp
	movq	%rdx, %rsi
	.align	16, 0x90
.LBB15_1:                               # =>This Inner Loop Header: Depth=1
	movl	$9, %edx
	movq	%rsi, %rcx
	callq	*__imp__iki_vlog_set_threadId_for_unrandom(%rip)
	movq	1200(%rsi), %rax
	testq	%rax, %rax
	je	.LBB15_11
# BB#2:                                 #   in Loop: Header=BB15_1 Depth=1
	jmpq	*%rax
.Ltmp54:                                # Block address taken
.LBB15_3:
	movb	$0, 1280(%rsi)
	movl	$8388671, %ecx          # imm = 0x80003F
	callq	*__imp__iki_stmt_online(%rip)
	leaq	96(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movl	4(%rax), %ecx
	notl	%ecx
	testl	(%rax), %ecx
	je	.LBB15_4
# BB#12:
	movl	$8388672, %ecx          # imm = 0x800040
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	ng2(%rip), %eax
	andl	$1, %eax
	movl	%eax, (%rdi)
	movl	ng2+4(%rip), %eax
	andl	$1, %eax
	movl	%eax, 4(%rdi)
	leaq	488(%rsi), %rcx
	leaq	1288(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$0, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
	jmp	.LBB15_11
.LBB15_4:
	movl	$8388673, %ecx          # imm = 0x800041
	callq	*__imp__iki_stmt_online(%rip)
	leaq	208(%rsi), %rcx
	movl	$8, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %rdi
	leaq	-32(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, ng16+4(%rip)
	jne	.LBB15_13
# BB#5:
	cmpl	$0, ng4+4(%rip)
	je	.LBB15_6
.LBB15_13:
	movq	$-1, -32(%rbp)
.LBB15_7:
	movzbl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movzbl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	leaq	-40(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %ecx
	movl	4(%rdi), %ebx
	xorl	-32(%rbp), %ecx
	movl	-28(%rbp), %edx
	movl	%ebx, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %ebx
	movl	%ebx, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB15_9
# BB#8:
	testl	%ebx, %ebx
	movl	$1, -40(%rbp)
	je	.LBB15_9
# BB#14:
	movl	$1, -36(%rbp)
.LBB15_9:
	leaq	264(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movl	-40(%rbp), %edi
	movl	-36(%rbp), %edx
	movl	(%rax), %r8d
	movl	4(%rax), %ebx
	movl	%edi, %ecx
	andl	%r8d, %ecx
	movl	%edx, %eax
	orl	%ebx, %eax
	je	.LBB15_10
# BB#15:
	orl	%eax, %ecx
	notl	%edi
	notl	%edx
	andl	%edi, %edx
	notl	%edx
	andl	%edx, %eax
	notl	%r8d
	notl	%ebx
	andl	%r8d, %ebx
	notl	%ebx
	andl	%ebx, %eax
	andl	%ecx, %edx
	andl	%ebx, %edx
	movl	%edx, %ecx
.LBB15_10:
	notl	%eax
	testl	%eax, %ecx
	je	.LBB15_11
# BB#16:
	movl	$8388674, %ecx          # imm = 0x800042
	callq	*__imp__iki_stmt_online(%rip)
	leaq	152(%rsi), %rcx
	movl	$8, %edx
	callq	*__imp__iki_vlog_signal_handle_value(%rip)
	leaq	-48(%rbp), %rcx
	xorl	%r8d, %r8d
	movq	%rax, %rdx
	callq	*__imp__iki_vlog_get_bit_select_value_simple(%rip)
	movq	%rax, %rdi
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %eax
	andl	$1, %eax
	movl	%eax, (%rbx)
	movl	4(%rdi), %eax
	andl	$1, %eax
	movl	%eax, 4(%rbx)
	leaq	488(%rsi), %rcx
	leaq	1328(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$0, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rbx, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
.LBB15_11:
	movl	$8388670, %ecx          # imm = 0x80003E
	callq	*__imp__iki_stmt_online(%rip)
	movb	$1, 1280(%rsi)
	leaq	.Ltmp54(%rip), %rax
	movq	%rax, 1200(%rsi)
	addq	$88, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%rbp
	ret
.LBB15_6:
	movl	ng16(%rip), %eax
	addl	ng4(%rip), %eax
	movl	%eax, -32(%rbp)
	movl	$0, -28(%rbp)
	jmp	.LBB15_7

	.def	 _execute_17;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_17
	.align	16, 0x90
_execute_17:                            # @_execute_17
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$72, %rsp
	movq	%rdx, %rsi
	.align	16, 0x90
.LBB16_1:                               # =>This Inner Loop Header: Depth=1
	movl	$10, %edx
	movq	%rsi, %rcx
	callq	*__imp__iki_vlog_set_threadId_for_unrandom(%rip)
	movq	1408(%rsi), %rax
	testq	%rax, %rax
	je	.LBB16_14
# BB#2:                                 #   in Loop: Header=BB16_1 Depth=1
	jmpq	*%rax
.Ltmp58:                                # Block address taken
.LBB16_3:
	movb	$0, 1488(%rsi)
	movl	$8388680, %ecx          # imm = 0x800048
	callq	*__imp__iki_stmt_online(%rip)
	leaq	96(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movl	4(%rax), %ecx
	notl	%ecx
	testl	(%rax), %ecx
	je	.LBB16_4
# BB#12:
	movl	$8388681, %ecx          # imm = 0x800049
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	leaq	ng0(%rip), %rdx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	544(%rsi), %rcx
	leaq	1496(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$31, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	jmp	.LBB16_13
.LBB16_4:
	movl	$8388683, %ecx          # imm = 0x80004B
	callq	*__imp__iki_stmt_online(%rip)
	movq	552(%rsi), %rdi
	leaq	-32(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %ecx
	movl	4(%rdi), %ebx
	xorl	ng53(%rip), %ecx
	movl	ng53+4(%rip), %edx
	movl	%ebx, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %ebx
	movl	%ebx, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB16_6
# BB#5:
	testl	%ebx, %ebx
	movl	$1, -32(%rbp)
	je	.LBB16_6
# BB#15:
	movl	$1, -28(%rbp)
.LBB16_6:
	leaq	544(%rsi), %rdi
	movl	-28(%rbp), %eax
	notl	%eax
	testl	-32(%rbp), %eax
	je	.LBB16_7
# BB#16:
	movl	$8388684, %ecx          # imm = 0x80004C
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*__imp__iki_std_memset(%rip)
	leaq	ng0(%rip), %rdx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	1536(%rsi), %rdx
	jmp	.LBB16_11
.LBB16_7:
	movl	$8388686, %ecx          # imm = 0x80004E
	callq	*__imp__iki_stmt_online(%rip)
	movq	8(%rdi), %rbx
	leaq	-32(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, 4(%rbx)
	jne	.LBB16_17
# BB#8:
	cmpl	$0, ng2+4(%rip)
	je	.LBB16_9
.LBB16_17:
	movq	$-1, -32(%rbp)
.LBB16_10:
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*__imp__iki_std_memset(%rip)
	leaq	-32(%rbp), %rdx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	1576(%rsi), %rdx
.LBB16_11:
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$31, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %rcx
	movq	%rbx, %r8
.LBB16_13:
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
.LBB16_14:
	movl	$8388679, %ecx          # imm = 0x800047
	callq	*__imp__iki_stmt_online(%rip)
	movb	$1, 1488(%rsi)
	leaq	.Ltmp58(%rip), %rax
	movq	%rax, 1408(%rsi)
	addq	$72, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%rbp
	ret
.LBB16_9:
	movl	(%rbx), %eax
	addl	ng2(%rip), %eax
	movl	%eax, -32(%rbp)
	movl	$0, -28(%rbp)
	jmp	.LBB16_10

	.def	 _execute_18;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_18
	.align	16, 0x90
_execute_18:                            # @_execute_18
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$80, %rsp
	movq	%rdx, %rsi
	.align	16, 0x90
.LBB17_1:                               # =>This Inner Loop Header: Depth=1
	movl	$11, %edx
	movq	%rsi, %rcx
	callq	*__imp__iki_vlog_set_threadId_for_unrandom(%rip)
	movq	1656(%rsi), %rax
	testq	%rax, %rax
	je	.LBB17_25
# BB#2:                                 #   in Loop: Header=BB17_1 Depth=1
	jmpq	*%rax
.Ltmp62:                                # Block address taken
.LBB17_3:
	movb	$0, 1736(%rsi)
	movl	$8388696, %ecx          # imm = 0x800058
	callq	*__imp__iki_stmt_online(%rip)
	leaq	96(%rsi), %rcx
	movq	__imp__iki_vlog_signal_handle_value_input(%rip), %rbx
	movl	$1, %edx
	callq	*%rbx
	movq	%rax, %rdi
	leaq	208(%rsi), %rcx
	movl	$8, %edx
	callq	*%rbx
	movq	%rax, %rbx
	leaq	-40(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, ng16+4(%rip)
	jne	.LBB17_14
# BB#4:
	cmpl	$0, ng3+4(%rip)
	je	.LBB17_5
.LBB17_14:
	movq	$-1, -40(%rbp)
.LBB17_6:
	movzbl	-40(%rbp), %eax
	movl	%eax, -40(%rbp)
	movzbl	-36(%rbp), %eax
	movl	%eax, -36(%rbp)
	leaq	-48(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rbx), %ecx
	movl	4(%rbx), %ebx
	xorl	-40(%rbp), %ecx
	movl	-36(%rbp), %edx
	movl	%ebx, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %ebx
	movl	%ebx, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB17_8
# BB#7:
	testl	%ebx, %ebx
	movl	$1, -48(%rbp)
	je	.LBB17_8
# BB#15:
	movl	$1, -44(%rbp)
.LBB17_8:
	movl	(%rdi), %ecx
	movl	4(%rdi), %edi
	movl	-48(%rbp), %edx
	movl	-44(%rbp), %r8d
	movl	%ecx, %eax
	orl	%edx, %eax
	movl	%edi, %ebx
	orl	%r8d, %ebx
	je	.LBB17_9
# BB#16:
	orl	%ebx, %eax
	notl	%edi
	andl	%edi, %ecx
	notl	%ecx
	andl	%ebx, %ecx
	notl	%r8d
	andl	%r8d, %edx
	notl	%edx
	andl	%ecx, %edx
	movl	%edx, %ebx
.LBB17_9:
	notl	%ebx
	testl	%ebx, %eax
	je	.LBB17_10
# BB#17:
	movl	$8388697, %ecx          # imm = 0x800059
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	leaq	ng0(%rip), %rdx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	600(%rsi), %rcx
	leaq	1744(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$31, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	jmp	.LBB17_24
.LBB17_10:
	movl	$8388699, %ecx          # imm = 0x80005B
	callq	*__imp__iki_stmt_online(%rip)
	movq	552(%rsi), %rdi
	leaq	-40(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %ecx
	movl	4(%rdi), %ebx
	xorl	ng0(%rip), %ecx
	movl	ng0+4(%rip), %edx
	movl	%ebx, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %ebx
	movl	%ebx, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB17_12
# BB#11:
	testl	%ebx, %ebx
	movl	$1, -40(%rbp)
	je	.LBB17_12
# BB#19:
	movl	$1, -36(%rbp)
.LBB17_12:
	movl	-36(%rbp), %eax
	notl	%eax
	testl	-40(%rbp), %eax
	je	.LBB17_13
# BB#20:
	movl	$8388700, %ecx          # imm = 0x80005C
	callq	*__imp__iki_stmt_online(%rip)
	leaq	600(%rsi), %rdi
	movq	608(%rsi), %rbx
	leaq	-48(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, 4(%rbx)
	jne	.LBB17_26
# BB#21:
	cmpl	$0, ng2+4(%rip)
	je	.LBB17_22
.LBB17_26:
	movq	$-1, -48(%rbp)
.LBB17_23:
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*__imp__iki_std_memset(%rip)
	leaq	-48(%rbp), %rdx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	1784(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$31, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %rcx
	movq	%rbx, %r8
	jmp	.LBB17_24
.LBB17_5:
	movl	ng16(%rip), %eax
	addl	ng3(%rip), %eax
	movl	%eax, -40(%rbp)
	movl	$0, -36(%rbp)
	jmp	.LBB17_6
.LBB17_13:
	movl	$8388702, %ecx          # imm = 0x80005E
	callq	*__imp__iki_stmt_online(%rip)
	leaq	600(%rsi), %r14
	movq	608(%rsi), %rbx
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	$8, %r8d
	movq	%rdi, %rcx
	movq	%rbx, %rdx
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	1824(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$31, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%r14, %rcx
	movq	%rdi, %r8
.LBB17_24:
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
.LBB17_25:
	movl	$8388695, %ecx          # imm = 0x800057
	callq	*__imp__iki_stmt_online(%rip)
	movb	$1, 1736(%rsi)
	leaq	.Ltmp62(%rip), %rax
	movq	%rax, 1656(%rsi)
	addq	$80, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%rbp
	ret
.LBB17_22:
	movl	(%rbx), %eax
	addl	ng2(%rip), %eax
	movl	%eax, -48(%rbp)
	movl	$0, -44(%rbp)
	jmp	.LBB17_23

	.def	 _execute_19;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_19
	.align	16, 0x90
_execute_19:                            # @_execute_19
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$80, %rsp
	movq	%rdx, %rsi
	.align	16, 0x90
.LBB18_1:                               # =>This Inner Loop Header: Depth=1
	movl	$12, %edx
	movq	%rsi, %rcx
	callq	*__imp__iki_vlog_set_threadId_for_unrandom(%rip)
	movq	1904(%rsi), %rax
	testq	%rax, %rax
	je	.LBB18_13
# BB#2:                                 #   in Loop: Header=BB18_1 Depth=1
	jmpq	*%rax
.Ltmp66:                                # Block address taken
.LBB18_3:
	movb	$0, 1984(%rsi)
	movl	$8388710, %ecx          # imm = 0x800066
	callq	*__imp__iki_stmt_online(%rip)
	leaq	96(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movl	4(%rax), %ecx
	notl	%ecx
	testl	(%rax), %ecx
	je	.LBB18_4
# BB#12:
	movq	__imp__iki_stmt_online(%rip), %r14
	movl	$8388711, %ecx          # imm = 0x800067
	callq	*%r14
	movq	__imp__iki_malloc8(%rip), %rbx
	callq	*%rbx
	movq	%rax, %rdi
	movq	__imp__iki_std_memset(%rip), %r15
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r15
	movl	ng1(%rip), %eax
	andl	$1, %eax
	movl	%eax, (%rdi)
	movl	ng1+4(%rip), %eax
	andl	$1, %eax
	movl	%eax, 4(%rdi)
	leaq	656(%rsi), %rcx
	leaq	1992(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$0, 32(%rsp)
	movq	__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip), %r12
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r12
	movl	$8388712, %ecx          # imm = 0x800068
	callq	*%r14
	callq	*%rbx
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r15
	leaq	ng0(%rip), %rdx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	712(%rsi), %rcx
	leaq	2032(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$31, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r12
	jmp	.LBB18_13
.LBB18_4:
	movl	$8388714, %ecx          # imm = 0x80006A
	callq	*__imp__iki_stmt_online(%rip)
	leaq	712(%rsi), %r14
	movq	440(%rsi), %rdi
	movq	720(%rsi), %rbx
	leaq	-56(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, 4(%rbx)
	jne	.LBB18_14
# BB#5:
	cmpl	$0, 4(%rdi)
	je	.LBB18_6
.LBB18_14:
	movq	$-1, -56(%rbp)
.LBB18_7:
	movq	608(%rsi), %rdi
	leaq	-64(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	-56(%rbp), %ecx
	movl	-52(%rbp), %ebx
	xorl	(%rdi), %ecx
	movl	4(%rdi), %edx
	movl	%ebx, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %ebx
	movl	%ebx, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB18_9
# BB#8:
	testl	%ebx, %ebx
	movl	$1, -64(%rbp)
	je	.LBB18_9
# BB#15:
	movl	$1, -60(%rbp)
.LBB18_9:
	movl	-60(%rbp), %eax
	notl	%eax
	testl	-64(%rbp), %eax
	je	.LBB18_10
# BB#16:
	movl	$8388715, %ecx          # imm = 0x80006B
	callq	*__imp__iki_stmt_online(%rip)
	movq	496(%rsi), %rax
	movl	4(%rax), %ecx
	notl	%ecx
	testl	(%rax), %ecx
	je	.LBB18_17
# BB#18:
	movl	$8388716, %ecx          # imm = 0x80006C
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	ng2(%rip), %eax
	andl	$1, %eax
	movl	%eax, (%rdi)
	movl	ng2+4(%rip), %eax
	andl	$1, %eax
	movl	%eax, 4(%rdi)
	leaq	656(%rsi), %rcx
	leaq	2072(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$0, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
.LBB18_17:
	movl	$8388717, %ecx          # imm = 0x80006D
	callq	*__imp__iki_stmt_online(%rip)
	movq	608(%rsi), %rbx
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	$8, %r8d
	movq	%rdi, %rcx
	movq	%rbx, %rdx
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	2112(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$31, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%r14, %rcx
	jmp	.LBB18_11
.LBB18_10:
	movl	$8388720, %ecx          # imm = 0x800070
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	ng1(%rip), %eax
	andl	$1, %eax
	movl	%eax, (%rdi)
	movl	ng1+4(%rip), %eax
	andl	$1, %eax
	movl	%eax, 4(%rdi)
	leaq	656(%rsi), %rcx
	leaq	2152(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$0, 32(%rsp)
	xorl	%r9d, %r9d
.LBB18_11:
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
.LBB18_13:
	movl	$8388709, %ecx          # imm = 0x800065
	callq	*__imp__iki_stmt_online(%rip)
	movb	$1, 1984(%rsi)
	leaq	.Ltmp66(%rip), %rax
	movq	%rax, 1904(%rsi)
	addq	$80, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB18_6:
	movl	(%rbx), %eax
	addl	(%rdi), %eax
	movl	%eax, -56(%rbp)
	movl	$0, -52(%rbp)
	jmp	.LBB18_7

	.def	 _execute_20;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_20
	.align	16, 0x90
_execute_20:                            # @_execute_20
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	pushq	%rdi
	subq	$64, %rsp
	movq	%rdx, %rsi
	.align	16, 0x90
.LBB19_1:                               # =>This Inner Loop Header: Depth=1
	movl	$13, %edx
	movq	%rsi, %rcx
	callq	*__imp__iki_vlog_set_threadId_for_unrandom(%rip)
	movq	2232(%rsi), %rax
	testq	%rax, %rax
	je	.LBB19_6
# BB#2:                                 #   in Loop: Header=BB19_1 Depth=1
	jmpq	*%rax
.Ltmp70:                                # Block address taken
.LBB19_3:
	movb	$0, 2312(%rsi)
	movl	$8388726, %ecx          # imm = 0x800076
	callq	*__imp__iki_stmt_online(%rip)
	leaq	96(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movl	4(%rax), %ecx
	notl	%ecx
	testl	(%rax), %ecx
	je	.LBB19_4
# BB#7:
	movl	$8388727, %ecx          # imm = 0x800077
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	ng1(%rip), %eax
	andl	$1, %eax
	movl	%eax, (%rdi)
	movl	ng1+4(%rip), %eax
	andl	$1, %eax
	movl	%eax, 4(%rdi)
	leaq	768(%rsi), %rcx
	leaq	2320(%rsi), %rdx
	jmp	.LBB19_8
.LBB19_4:
	movl	$8388728, %ecx          # imm = 0x800078
	callq	*__imp__iki_stmt_online(%rip)
	movq	664(%rsi), %rax
	movl	4(%rax), %ecx
	notl	%ecx
	testl	(%rax), %ecx
	je	.LBB19_5
# BB#9:
	movl	$8388729, %ecx          # imm = 0x800079
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	ng2(%rip), %eax
	andl	$1, %eax
	movl	%eax, (%rdi)
	movl	ng2+4(%rip), %eax
	andl	$1, %eax
	movl	%eax, 4(%rdi)
	leaq	768(%rsi), %rcx
	leaq	2360(%rsi), %rdx
	jmp	.LBB19_8
.LBB19_5:
	movl	$8388730, %ecx          # imm = 0x80007A
	callq	*__imp__iki_stmt_online(%rip)
	leaq	376(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movl	4(%rax), %ecx
	notl	%ecx
	testl	(%rax), %ecx
	je	.LBB19_6
# BB#10:
	movl	$8388731, %ecx          # imm = 0x80007B
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	ng1(%rip), %eax
	andl	$1, %eax
	movl	%eax, (%rdi)
	movl	ng1+4(%rip), %eax
	andl	$1, %eax
	movl	%eax, 4(%rdi)
	leaq	768(%rsi), %rcx
	leaq	2400(%rsi), %rdx
.LBB19_8:
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$0, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
.LBB19_6:
	movl	$8388725, %ecx          # imm = 0x800075
	callq	*__imp__iki_stmt_online(%rip)
	movb	$1, 2312(%rsi)
	leaq	.Ltmp70(%rip), %rax
	movq	%rax, 2232(%rsi)
	addq	$64, %rsp
	popq	%rdi
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_21;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_21
	.align	16, 0x90
_execute_21:                            # @_execute_21
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	pushq	%rdi
	subq	$64, %rsp
	movq	%rdx, %rsi
	.align	16, 0x90
.LBB20_1:                               # =>This Inner Loop Header: Depth=1
	movl	$14, %edx
	movq	%rsi, %rcx
	callq	*__imp__iki_vlog_set_threadId_for_unrandom(%rip)
	movq	2480(%rsi), %rax
	testq	%rax, %rax
	je	.LBB20_8
# BB#2:                                 #   in Loop: Header=BB20_1 Depth=1
	jmpq	*%rax
.Ltmp74:                                # Block address taken
.LBB20_3:
	movb	$0, 2560(%rsi)
	movl	$8388739, %ecx          # imm = 0x800083
	callq	*__imp__iki_stmt_online(%rip)
	leaq	208(%rsi), %rcx
	movl	$8, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %rdi
	leaq	-24(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %ecx
	movl	4(%rdi), %edi
	xorl	ng16(%rip), %ecx
	movl	ng16+4(%rip), %edx
	movl	%edi, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %edi
	movl	%edi, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB20_5
# BB#4:
	testl	%edi, %edi
	movl	$1, -24(%rbp)
	je	.LBB20_5
# BB#9:
	movl	$1, -20(%rbp)
.LBB20_5:
	movl	-20(%rbp), %eax
	notl	%eax
	testl	-24(%rbp), %eax
	je	.LBB20_6
# BB#10:
	movl	$8388740, %ecx          # imm = 0x800084
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	ng2(%rip), %eax
	andl	$1, %eax
	movl	%eax, (%rdi)
	movl	ng2+4(%rip), %eax
	andl	$1, %eax
	movl	%eax, 4(%rdi)
	leaq	824(%rsi), %rcx
	leaq	2568(%rsi), %rdx
	jmp	.LBB20_7
.LBB20_6:
	movl	$8388742, %ecx          # imm = 0x800086
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	ng1(%rip), %eax
	andl	$1, %eax
	movl	%eax, (%rdi)
	movl	ng1+4(%rip), %eax
	andl	$1, %eax
	movl	%eax, 4(%rdi)
	leaq	824(%rsi), %rcx
	leaq	2608(%rsi), %rdx
.LBB20_7:
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$0, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
.LBB20_8:
	movl	$8388738, %ecx          # imm = 0x800082
	callq	*__imp__iki_stmt_online(%rip)
	movb	$1, 2560(%rsi)
	leaq	.Ltmp74(%rip), %rax
	movq	%rax, 2480(%rsi)
	addq	$64, %rsp
	popq	%rdi
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_103;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_103
	.align	16, 0x90
_execute_103:                           # @_execute_103
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	pushq	%rdi
	subq	$176, %rsp
	movq	%rdx, %rsi
	movl	$8388745, %ecx          # imm = 0x800089
	callq	*__imp__iki_stmt_online(%rip)
	movq	832(%rsi), %rdi
	leaq	-32(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	4(%rdi), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	(%rdi), %ecx
	testb	$1, %cl
	je	.LBB21_1
# BB#10:
	movl	$1, -32(%rbp)
	jmp	.LBB21_2
.LBB21_1:
	testl	%eax, %eax
	je	.LBB21_2
# BB#11:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -32(%rbp)
.LBB21_2:
	cmpl	$0, -32(%rbp)
	movb	$1, %al
	jne	.LBB21_4
# BB#3:
	cmpl	$0, -28(%rbp)
	setne	%al
.LBB21_4:
	testb	%al, %al
	je	.LBB21_5
# BB#12:
	movq	608(%rsi), %r9
	movl	$1, -64(%rbp)
	movl	$31, -60(%rbp)
	movl	$0, -56(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, 80(%rsp)
	leaq	ng0(%rip), %rax
	movq	%rax, 56(%rsp)
	leaq	ng54(%rip), %rax
	movq	%rax, 32(%rsp)
	movl	$1, 112(%rsp)
	movl	$2, 104(%rsp)
	movl	$1, 96(%rsp)
	movq	$0, 88(%rsp)
	movl	$1, 72(%rsp)
	movl	$32, 64(%rsp)
	movl	$1, 48(%rsp)
	movl	$32, 40(%rsp)
	leaq	-40(%rbp), %rcx
	movl	$1, %edx
	movl	$8, %r8d
	callq	*__imp__iki_vlog_get_part_select_value(%rip)
.LBB21_5:
	cmpl	$0, -28(%rbp)
	je	.LBB21_6
# BB#13:
	leaq	ng14(%rip), %rax
	movq	%rax, 32(%rsp)
	movl	$8, 40(%rsp)
	leaq	-24(%rbp), %rcx
	leaq	-40(%rbp), %r8
	movl	$8, %edx
	movl	$8, %r9d
	callq	*__imp__iki_vlog_unsigned_bit_combine(%rip)
	jmp	.LBB21_9
.LBB21_6:
	movl	-32(%rbp), %eax
	testl	%eax, %eax
	je	.LBB21_7
# BB#14:
	leaq	-24(%rbp), %rcx
	leaq	-40(%rbp), %rdx
	jmp	.LBB21_8
.LBB21_7:
	leaq	ng14(%rip), %rdx
	leaq	-24(%rbp), %rcx
.LBB21_8:
	movl	$8, %r8d
	callq	*__imp__iki_std_memcpy(%rip)
.LBB21_9:
	leaq	2968(%rsi), %rcx
	leaq	-24(%rbp), %rdx
	movl	$8, %r8d
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	152(%rsi), %rcx
	addq	$2944, %rsi             # imm = 0xB80
	xorl	%r8d, %r8d
	movl	$7, %r9d
	movq	%rsi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_signal_fast_no_reg_no_agg(%rip)
	addq	$176, %rsp
	popq	%rdi
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_27;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_27
	.align	16, 0x90
_execute_27:                            # @_execute_27
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$56, %rsp
	movq	%rdx, %rsi
	.align	16, 0x90
.LBB22_1:                               # =>This Inner Loop Header: Depth=1
	movl	$15, %edx
	movq	%rsi, %rcx
	callq	*__imp__iki_vlog_set_threadId_for_unrandom(%rip)
	movq	1592(%rsi), %rax
	testq	%rax, %rax
	je	.LBB22_4
# BB#2:                                 #   in Loop: Header=BB22_1 Depth=1
	jmpq	*%rax
.Ltmp81:                                # Block address taken
.LBB22_3:
	movb	$0, 1672(%rsi)
	movl	$11534399, %ecx         # imm = 0xB0003F
	callq	*__imp__iki_stmt_online(%rip)
	leaq	152(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %rdi
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %eax
	andl	$1, %eax
	movl	%eax, (%rbx)
	movl	4(%rdi), %eax
	andl	$1, %eax
	movl	%eax, 4(%rbx)
	leaq	1496(%rsi), %rcx
	leaq	1680(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$0, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rbx, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
.LBB22_4:
	movl	$11534398, %ecx         # imm = 0xB0003E
	callq	*__imp__iki_stmt_online(%rip)
	movb	$1, 1672(%rsi)
	leaq	.Ltmp81(%rip), %rax
	movq	%rax, 1592(%rsi)
	addq	$56, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_28;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_28
	.align	16, 0x90
_execute_28:                            # @_execute_28
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$56, %rsp
	movq	%rdx, %rsi
	.align	16, 0x90
.LBB23_1:                               # =>This Inner Loop Header: Depth=1
	movl	$16, %edx
	movq	%rsi, %rcx
	callq	*__imp__iki_vlog_set_threadId_for_unrandom(%rip)
	movq	1760(%rsi), %rax
	testq	%rax, %rax
	je	.LBB23_5
# BB#2:                                 #   in Loop: Header=BB23_1 Depth=1
	jmpq	*%rax
.Ltmp85:                                # Block address taken
.LBB23_3:
	movb	$0, 1840(%rsi)
	movl	$11534413, %ecx         # imm = 0xB0004D
	callq	*__imp__iki_stmt_online(%rip)
	leaq	40(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movl	4(%rax), %ecx
	notl	%ecx
	testl	(%rax), %ecx
	je	.LBB23_4
# BB#6:
	movq	__imp__iki_stmt_online(%rip), %r14
	movl	$11534415, %ecx         # imm = 0xB0004F
	callq	*%r14
	movq	__imp__iki_malloc8(%rip), %rbx
	callq	*%rbx
	movq	%rax, %rdi
	movq	__imp__iki_std_memset(%rip), %r15
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r15
	movl	ng1(%rip), %eax
	andl	$15, %eax
	movl	%eax, (%rdi)
	movl	ng1+4(%rip), %eax
	andl	$15, %eax
	movl	%eax, 4(%rdi)
	leaq	600(%rsi), %rcx
	leaq	1848(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$3, 32(%rsp)
	movq	__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip), %r12
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r12
	movl	$11534416, %ecx         # imm = 0xB00050
	callq	*%r14
	callq	*%rbx
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r15
	movl	ng1(%rip), %eax
	andl	$15, %eax
	movl	%eax, (%rdi)
	movl	ng1+4(%rip), %eax
	andl	$15, %eax
	movl	%eax, 4(%rdi)
	leaq	1384(%rsi), %rcx
	leaq	1888(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$3, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r12
	movl	$11534417, %ecx         # imm = 0xB00051
	callq	*%r14
	callq	*%rbx
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r15
	movl	ng0(%rip), %eax
	andl	$1, %eax
	movl	%eax, (%rdi)
	movl	ng0+4(%rip), %eax
	andl	$1, %eax
	movl	%eax, 4(%rdi)
	leaq	824(%rsi), %rcx
	leaq	1928(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$0, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r12
	movl	$11534418, %ecx         # imm = 0xB00052
	callq	*%r14
	callq	*%rbx
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r15
	movzbl	ng1(%rip), %eax
	movl	%eax, (%rdi)
	movzbl	ng1+4(%rip), %eax
	movl	%eax, 4(%rdi)
	leaq	936(%rsi), %rcx
	leaq	1968(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r12
	movl	$11534420, %ecx         # imm = 0xB00054
	callq	*%r14
	callq	*%rbx
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r15
	movl	ng0(%rip), %eax
	andl	$1, %eax
	movl	%eax, (%rdi)
	movl	ng0+4(%rip), %eax
	andl	$1, %eax
	movl	%eax, 4(%rdi)
	leaq	1048(%rsi), %rcx
	leaq	2008(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$0, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r12
	movl	$11534421, %ecx         # imm = 0xB00055
	callq	*%r14
	callq	*%rbx
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r15
	movl	ng0(%rip), %eax
	andl	$1, %eax
	movl	%eax, (%rdi)
	movl	ng0+4(%rip), %eax
	andl	$1, %eax
	movl	%eax, 4(%rdi)
	leaq	1160(%rsi), %rcx
	leaq	2048(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$0, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r12
	movl	$11534422, %ecx         # imm = 0xB00056
	callq	*%r14
	callq	*%rbx
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r15
	movl	ng0(%rip), %eax
	andl	$1, %eax
	movl	%eax, (%rdi)
	movl	ng0+4(%rip), %eax
	andl	$1, %eax
	movl	%eax, 4(%rdi)
	leaq	1272(%rsi), %rcx
	leaq	2088(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$0, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r12
	movl	$11534424, %ecx         # imm = 0xB00058
	callq	*%r14
	callq	*%rbx
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r15
	movl	$131071, %eax           # imm = 0x1FFFF
	movl	ng1(%rip), %ecx
	andl	%eax, %ecx
	movl	%ecx, (%rdi)
	andl	ng1+4(%rip), %eax
	movl	%eax, 4(%rdi)
	leaq	712(%rsi), %rcx
	leaq	2128(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$16, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r12
	jmp	.LBB23_5
.LBB23_4:
	movq	__imp__iki_stmt_online(%rip), %r14
	movl	$11534429, %ecx         # imm = 0xB0005D
	callq	*%r14
	movq	664(%rsi), %rbx
	movq	__imp__iki_malloc8(%rip), %r15
	callq	*%r15
	movq	%rax, %rdi
	movq	__imp__iki_std_memset(%rip), %r12
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r12
	movl	(%rbx), %eax
	andl	$15, %eax
	movl	%eax, (%rdi)
	movl	4(%rbx), %eax
	andl	$15, %eax
	movl	%eax, 4(%rdi)
	leaq	600(%rsi), %rcx
	leaq	2168(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$3, 32(%rsp)
	movq	__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip), %r13
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r13
	movl	$11534430, %ecx         # imm = 0xB0005E
	callq	*%r14
	movq	1448(%rsi), %rbx
	callq	*%r15
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r12
	movl	(%rbx), %eax
	andl	$15, %eax
	movl	%eax, (%rdi)
	movl	4(%rbx), %eax
	andl	$15, %eax
	movl	%eax, 4(%rdi)
	leaq	1384(%rsi), %rcx
	leaq	2208(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$3, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r13
	movl	$11534431, %ecx         # imm = 0xB0005F
	callq	*%r14
	movq	776(%rsi), %rbx
	callq	*%r15
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r12
	movl	$131071, %eax           # imm = 0x1FFFF
	movl	(%rbx), %ecx
	andl	%eax, %ecx
	movl	%ecx, (%rdi)
	andl	4(%rbx), %eax
	movl	%eax, 4(%rdi)
	leaq	712(%rsi), %rcx
	leaq	2248(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$16, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r13
	movl	$11534432, %ecx         # imm = 0xB00060
	callq	*%r14
	movq	888(%rsi), %rbx
	callq	*%r15
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r12
	movl	(%rbx), %eax
	andl	$1, %eax
	movl	%eax, (%rdi)
	movl	4(%rbx), %eax
	andl	$1, %eax
	movl	%eax, 4(%rdi)
	leaq	824(%rsi), %rcx
	leaq	2288(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$0, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r13
	movl	$11534433, %ecx         # imm = 0xB00061
	callq	*%r14
	movq	1000(%rsi), %rbx
	callq	*%r15
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r12
	movzbl	(%rbx), %eax
	movl	%eax, (%rdi)
	movzbl	4(%rbx), %eax
	movl	%eax, 4(%rdi)
	leaq	936(%rsi), %rcx
	leaq	2328(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r13
	movl	$11534434, %ecx         # imm = 0xB00062
	callq	*%r14
	movq	1112(%rsi), %rbx
	callq	*%r15
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r12
	movl	(%rbx), %eax
	andl	$1, %eax
	movl	%eax, (%rdi)
	movl	4(%rbx), %eax
	andl	$1, %eax
	movl	%eax, 4(%rdi)
	leaq	1048(%rsi), %rcx
	leaq	2368(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$0, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r13
	movl	$11534435, %ecx         # imm = 0xB00063
	callq	*%r14
	movq	1224(%rsi), %rbx
	callq	*%r15
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r12
	movl	(%rbx), %eax
	andl	$1, %eax
	movl	%eax, (%rdi)
	movl	4(%rbx), %eax
	andl	$1, %eax
	movl	%eax, 4(%rdi)
	leaq	1160(%rsi), %rcx
	leaq	2408(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$0, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r13
	movl	$11534436, %ecx         # imm = 0xB00064
	callq	*%r14
	movq	1336(%rsi), %rbx
	callq	*%r15
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r12
	movl	(%rbx), %eax
	andl	$1, %eax
	movl	%eax, (%rdi)
	movl	4(%rbx), %eax
	andl	$1, %eax
	movl	%eax, 4(%rdi)
	leaq	1272(%rsi), %rcx
	leaq	2448(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$0, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r13
.LBB23_5:
	movl	$11534412, %ecx         # imm = 0xB0004C
	callq	*__imp__iki_stmt_online(%rip)
	movb	$1, 1840(%rsi)
	leaq	.Ltmp85(%rip), %rax
	movq	%rax, 1760(%rsi)
	addq	$56, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret

	.def	 _execute_29;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_29
	.align	16, 0x90
_execute_29:                            # @_execute_29
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$264, %rsp              # imm = 0x108
	movq	%rdx, %rsi
	.align	16, 0x90
.LBB24_1:                               # =>This Inner Loop Header: Depth=1
	movl	$17, %edx
	movq	%rsi, %rcx
	callq	*__imp__iki_vlog_set_threadId_for_unrandom(%rip)
	movq	2528(%rsi), %rax
	testq	%rax, %rax
	je	.LBB24_14
# BB#2:                                 #   in Loop: Header=BB24_1 Depth=1
	jmpq	*%rax
.Ltmp89:                                # Block address taken
.LBB24_3:
	movb	$0, 2608(%rsi)
	movq	__imp__iki_stmt_online(%rip), %r12
	movl	$11534445, %ecx         # imm = 0xB0006D
	callq	*%r12
	movq	608(%rsi), %r8
	leaq	656(%rsi), %rcx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	leaq	3736(%rsi), %rdx
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movl	$3, 32(%rsp)
	movq	__imp__iki_vlog_schedule_transaction_blocking_var(%rip), %r13
	xorl	%r9d, %r9d
	callq	*%r13
	movl	$11534446, %ecx         # imm = 0xB0006E
	callq	*%r12
	leaq	1104(%rsi), %rcx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	leaq	3768(%rsi), %rdx
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	leaq	ng0(%rip), %rdi
	movq	__imp__iki_vlog_schedule_transaction_blocking_var_setback0(%rip), %rbx
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%rbx
	movl	$11534447, %ecx         # imm = 0xB0006F
	callq	*%r12
	leaq	1216(%rsi), %rcx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	leaq	3608(%rsi), %rdx
	movq	%rdx, -176(%rbp)        # 8-byte Spill
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%rbx
	movl	$11534448, %ecx         # imm = 0xB00070
	callq	*%r12
	movq	1280(%rsi), %r8
	leaq	1328(%rsi), %rcx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	leaq	3640(%rsi), %rdx
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	xorl	%r9d, %r9d
	callq	*%rbx
	movl	$11534449, %ecx         # imm = 0xB00071
	callq	*%r12
	movq	1392(%rsi), %r8
	leaq	1440(%rsi), %rcx
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	leaq	3800(%rsi), %rdx
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	movl	$3, 32(%rsp)
	xorl	%r9d, %r9d
	callq	*%r13
	movl	$11534450, %ecx         # imm = 0xB00072
	callq	*%r12
	movq	720(%rsi), %r8
	leaq	768(%rsi), %rcx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	leaq	3832(%rsi), %rdx
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	movl	$16, 32(%rsp)
	xorl	%r9d, %r9d
	callq	*%r13
	movl	$11534451, %ecx         # imm = 0xB00073
	callq	*%r12
	leaq	880(%rsi), %rcx
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	leaq	3672(%rsi), %rdx
	movq	%rdx, -216(%rbp)        # 8-byte Spill
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%rbx
	movl	$11534452, %ecx         # imm = 0xB00074
	callq	*%r12
	movq	944(%rsi), %r8
	leaq	992(%rsi), %r14
	leaq	3704(%rsi), %r15
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%r14, %rcx
	movq	%r15, %rdx
	callq	*%r13
	movl	$11534455, %ecx         # imm = 0xB00077
	callq	*%r12
	movq	608(%rsi), %rdx
	leaq	-64(%rbp), %rdi
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	ng1(%rip), %r8
	movl	$4, %edx
	movl	$4, %r9d
	movq	%rdi, %rcx
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB24_4
# BB#15:
	movl	$11534460, %ecx         # imm = 0xB0007C
	callq	*__imp__iki_stmt_online(%rip)
	leaq	432(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movl	4(%rax), %ecx
	notl	%ecx
	testl	(%rax), %ecx
	je	.LBB24_16
# BB#93:
	movl	$11534461, %ecx         # imm = 0xB0007D
	movq	__imp__iki_stmt_online(%rip), %rax
	movq	%rax, %rdi
	callq	*%rdi
	movl	$3, 32(%rsp)
	leaq	ng2(%rip), %r8
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	__imp__iki_vlog_schedule_transaction_blocking_var(%rip), %rax
	movq	%rax, %rbx
	callq	*%rbx
	movl	$11534462, %ecx         # imm = 0xB0007E
	callq	*%rdi
	leaq	488(%rsi), %rcx
	movl	$8, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%r14, %rcx
	movq	%r15, %rdx
	movq	%rax, %r8
	callq	*%rbx
.LBB24_16:
	movl	$11534465, %ecx         # imm = 0xB00081
	callq	*__imp__iki_stmt_online(%rip)
.LBB24_17:
	leaq	ng0(%rip), %r8
	jmp	.LBB24_18
.LBB24_4:
	leaq	ng2(%rip), %r8
	leaq	-64(%rbp), %rcx
	movl	$4, %edx
	movl	$4, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB24_5
# BB#19:
	movl	$11534473, %ecx         # imm = 0xB00089
	callq	*__imp__iki_stmt_online(%rip)
	movq	720(%rsi), %rdi
	leaq	-72(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %ecx
	movl	4(%rdi), %ebx
	xorl	ng55(%rip), %ecx
	movl	ng55+4(%rip), %edx
	movl	%ebx, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %ebx
	movl	%ebx, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB24_21
# BB#20:
	testl	%ebx, %ebx
	movl	$1, -72(%rbp)
	je	.LBB24_21
# BB#94:
	movl	$1, -68(%rbp)
.LBB24_21:
	movl	-68(%rbp), %eax
	notl	%eax
	testl	-72(%rbp), %eax
	je	.LBB24_22
# BB#95:
	movl	$11534474, %ecx         # imm = 0xB0008A
	movq	__imp__iki_stmt_online(%rip), %rax
	movq	%rax, %rdi
	callq	*%rdi
	movl	$3, 32(%rsp)
	leaq	ng3(%rip), %r8
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	__imp__iki_vlog_schedule_transaction_blocking_var(%rip), %rax
	movq	%rax, %rbx
	callq	*%rbx
	movl	$11534475, %ecx         # imm = 0xB0008B
	callq	*%rdi
	movl	$16, 32(%rsp)
	leaq	ng1(%rip), %r8
	xorl	%r9d, %r9d
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movq	-160(%rbp), %rdx        # 8-byte Reload
	callq	*%rbx
	jmp	.LBB24_26
.LBB24_5:
	leaq	ng3(%rip), %r8
	leaq	-64(%rbp), %rcx
	movl	$4, %edx
	movl	$4, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB24_6
# BB#27:
	movl	$11534487, %ecx         # imm = 0xB00097
	movq	__imp__iki_stmt_online(%rip), %rax
	movq	%rax, %rdi
	callq	*%rdi
	movl	$3, 32(%rsp)
	leaq	ng4(%rip), %r8
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var(%rip)
	movl	$11534488, %ecx         # imm = 0xB00098
	callq	*%rdi
	leaq	ng5(%rip), %r8
.LBB24_18:
	xorl	%r9d, %r9d
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movq	-128(%rbp), %rdx        # 8-byte Reload
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var_setback0(%rip)
	jmp	.LBB24_14
.LBB24_6:
	leaq	ng4(%rip), %r8
	leaq	-64(%rbp), %rcx
	movl	$4, %edx
	movl	$4, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB24_7
# BB#28:
	movl	$11534495, %ecx         # imm = 0xB0009F
	callq	*__imp__iki_stmt_online(%rip)
	leaq	152(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %rdi
	leaq	-72(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %ecx
	movl	4(%rdi), %ebx
	xorl	ng0(%rip), %ecx
	movl	ng0+4(%rip), %edx
	movl	%ebx, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %ebx
	movl	%ebx, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB24_30
# BB#29:
	testl	%ebx, %ebx
	movl	$1, -72(%rbp)
	je	.LBB24_30
# BB#97:
	movl	$1, -68(%rbp)
.LBB24_30:
	leaq	-80(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	-72(%rbp), %ecx
	testb	$1, %cl
	je	.LBB24_31
# BB#98:
	movl	$1, -80(%rbp)
	jmp	.LBB24_32
.LBB24_22:
	movl	$11534479, %ecx         # imm = 0xB0008F
	callq	*__imp__iki_stmt_online(%rip)
	movq	720(%rsi), %rdi
	leaq	-72(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, 4(%rdi)
	jne	.LBB24_96
# BB#23:
	cmpl	$0, ng5+4(%rip)
	je	.LBB24_24
.LBB24_96:
	movq	$-1, -72(%rbp)
.LBB24_25:
	movl	$16, 32(%rsp)
	leaq	-72(%rbp), %r8
	xorl	%r9d, %r9d
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movq	-160(%rbp), %rdx        # 8-byte Reload
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var(%rip)
.LBB24_26:
	movl	$11534481, %ecx         # imm = 0xB00091
	callq	*__imp__iki_stmt_online(%rip)
	leaq	ng5(%rip), %r8
	xorl	%r9d, %r9d
	movq	-144(%rbp), %rcx        # 8-byte Reload
	movq	-152(%rbp), %rdx        # 8-byte Reload
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var_setback0(%rip)
.LBB24_14:
	movl	$11534443, %ecx         # imm = 0xB0006B
	callq	*__imp__iki_stmt_online(%rip)
	movb	$1, 2608(%rsi)
	leaq	.Ltmp89(%rip), %rax
	movq	%rax, 2528(%rsi)
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB24_7:
	leaq	ng6(%rip), %r8
	leaq	-64(%rbp), %rcx
	movl	$4, %edx
	movl	$4, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB24_8
# BB#39:
	movl	$11534502, %ecx         # imm = 0xB000A6
	callq	*__imp__iki_stmt_online(%rip)
	leaq	152(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %rdi
	leaq	-72(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %ecx
	movl	4(%rdi), %ebx
	xorl	ng0(%rip), %ecx
	movl	ng0+4(%rip), %edx
	movl	%ebx, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %ebx
	movl	%ebx, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB24_41
# BB#40:
	testl	%ebx, %ebx
	movl	$1, -72(%rbp)
	je	.LBB24_41
# BB#106:
	movl	$1, -68(%rbp)
.LBB24_41:
	leaq	-80(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	-72(%rbp), %ecx
	testb	$1, %cl
	je	.LBB24_42
# BB#107:
	movl	$1, -80(%rbp)
	jmp	.LBB24_43
.LBB24_8:
	leaq	ng7(%rip), %r8
	leaq	-64(%rbp), %rcx
	movl	$4, %edx
	movl	$4, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB24_9
# BB#49:
	movl	$11534520, %ecx         # imm = 0xB000B8
	callq	*__imp__iki_stmt_online(%rip)
	leaq	152(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %rdi
	leaq	-72(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %ecx
	movl	4(%rdi), %ebx
	xorl	ng0(%rip), %ecx
	movl	ng0+4(%rip), %edx
	movl	%ebx, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %ebx
	movl	%ebx, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB24_51
# BB#50:
	testl	%ebx, %ebx
	movl	$1, -72(%rbp)
	je	.LBB24_51
# BB#125:
	movl	$1, -68(%rbp)
.LBB24_51:
	leaq	-80(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	-72(%rbp), %ecx
	testb	$1, %cl
	je	.LBB24_52
# BB#126:
	movl	$1, -80(%rbp)
	jmp	.LBB24_53
.LBB24_31:
	testl	%eax, %eax
	je	.LBB24_32
# BB#99:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -80(%rbp)
.LBB24_32:
	cmpl	$0, -80(%rbp)
	movb	$1, %al
	jne	.LBB24_34
# BB#33:
	cmpl	$0, -76(%rbp)
	setne	%al
.LBB24_34:
	testb	%al, %al
	je	.LBB24_35
# BB#100:
	movq	1504(%rsi), %rdi
	leaq	-88(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	4(%rdi), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	(%rdi), %ecx
	testb	$1, %cl
	je	.LBB24_101
# BB#104:
	movl	$1, -88(%rbp)
	jmp	.LBB24_102
.LBB24_35:
	leaq	-96(%rbp), %rcx
	leaq	-80(%rbp), %rdx
	movl	$8, %r8d
	callq	*__imp__iki_std_memcpy(%rip)
	andl	$1, -96(%rbp)
	andl	$1, -92(%rbp)
	jmp	.LBB24_36
.LBB24_9:
	leaq	ng8(%rip), %r8
	leaq	-64(%rbp), %rcx
	movl	$4, %edx
	movl	$4, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB24_10
# BB#64:
	movl	$11534528, %ecx         # imm = 0xB000C0
	callq	*__imp__iki_stmt_online(%rip)
	leaq	152(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %rdi
	leaq	-72(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %ecx
	movl	4(%rdi), %ebx
	xorl	ng0(%rip), %ecx
	movl	ng0+4(%rip), %edx
	movl	%ebx, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %ebx
	movl	%ebx, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB24_66
# BB#65:
	testl	%ebx, %ebx
	movl	$1, -72(%rbp)
	je	.LBB24_66
# BB#140:
	movl	$1, -68(%rbp)
.LBB24_66:
	leaq	-80(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	-72(%rbp), %ecx
	testb	$1, %cl
	je	.LBB24_67
# BB#141:
	movl	$1, -80(%rbp)
	jmp	.LBB24_68
.LBB24_24:
	movl	(%rdi), %eax
	addl	ng5(%rip), %eax
	movl	%eax, -72(%rbp)
	movl	$0, -68(%rbp)
	jmp	.LBB24_25
.LBB24_42:
	testl	%eax, %eax
	je	.LBB24_43
# BB#108:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -80(%rbp)
.LBB24_43:
	cmpl	$0, -80(%rbp)
	movb	$1, %al
	jne	.LBB24_45
# BB#44:
	cmpl	$0, -76(%rbp)
	setne	%al
.LBB24_45:
	testb	%al, %al
	je	.LBB24_46
# BB#109:
	movq	1504(%rsi), %rdi
	leaq	-88(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	4(%rdi), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	(%rdi), %ecx
	testb	$1, %cl
	je	.LBB24_110
# BB#113:
	movl	$1, -88(%rbp)
	jmp	.LBB24_111
.LBB24_46:
	leaq	-96(%rbp), %rcx
	leaq	-80(%rbp), %rdx
	movl	$8, %r8d
	callq	*__imp__iki_std_memcpy(%rip)
	andl	$1, -96(%rbp)
	andl	$1, -92(%rbp)
	jmp	.LBB24_47
.LBB24_101:
	testl	%eax, %eax
	je	.LBB24_102
# BB#105:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -88(%rbp)
.LBB24_102:
	movl	-80(%rbp), %eax
	andl	-88(%rbp), %eax
	movl	%eax, -96(%rbp)
	movl	-76(%rbp), %eax
	orl	-84(%rbp), %eax
	movl	%eax, -92(%rbp)
	je	.LBB24_36
# BB#103:
	orl	%eax, -96(%rbp)
	movl	-80(%rbp), %eax
	movl	-76(%rbp), %ecx
	notl	%eax
	notl	%ecx
	andl	%eax, %ecx
	notl	%ecx
	andl	-92(%rbp), %ecx
	movl	-88(%rbp), %eax
	movl	-84(%rbp), %edx
	notl	%eax
	notl	%edx
	andl	%eax, %edx
	notl	%edx
	andl	%ecx, %edx
	movl	%edx, -92(%rbp)
	movl	-80(%rbp), %eax
	movl	-76(%rbp), %ecx
	notl	%eax
	notl	%ecx
	andl	%eax, %ecx
	notl	%ecx
	andl	-96(%rbp), %ecx
	movl	-88(%rbp), %eax
	movl	-84(%rbp), %edx
	notl	%eax
	notl	%edx
	andl	%eax, %edx
	notl	%edx
	andl	%ecx, %edx
	movl	%edx, -96(%rbp)
.LBB24_36:
	movl	-92(%rbp), %eax
	notl	%eax
	testl	-96(%rbp), %eax
	je	.LBB24_14
# BB#37:
	movl	$11534496, %ecx         # imm = 0xB000A0
	callq	*__imp__iki_stmt_online(%rip)
	movl	$3, 32(%rsp)
	leaq	ng6(%rip), %r8
.LBB24_38:
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var(%rip)
	jmp	.LBB24_14
.LBB24_10:
	leaq	ng9(%rip), %r8
	leaq	-64(%rbp), %rcx
	movl	$4, %edx
	movl	$4, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB24_11
# BB#74:
	movl	$11534536, %ecx         # imm = 0xB000C8
	movq	__imp__iki_stmt_online(%rip), %rax
	movq	%rax, %rdi
	callq	*%rdi
	movl	$3, 32(%rsp)
	leaq	ng10(%rip), %r8
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var(%rip)
	movl	$11534537, %ecx         # imm = 0xB000C9
	callq	*%rdi
	jmp	.LBB24_17
.LBB24_52:
	testl	%eax, %eax
	je	.LBB24_53
# BB#127:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -80(%rbp)
.LBB24_53:
	cmpl	$0, -80(%rbp)
	movb	$1, %al
	jne	.LBB24_55
# BB#54:
	cmpl	$0, -76(%rbp)
	setne	%al
.LBB24_55:
	testb	%al, %al
	je	.LBB24_56
# BB#128:
	movq	1504(%rsi), %rdi
	leaq	-88(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	4(%rdi), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	(%rdi), %ecx
	testb	$1, %cl
	je	.LBB24_129
# BB#132:
	movl	$1, -88(%rbp)
	jmp	.LBB24_130
.LBB24_56:
	leaq	-96(%rbp), %rcx
	leaq	-80(%rbp), %rdx
	movl	$8, %r8d
	callq	*__imp__iki_std_memcpy(%rip)
	andl	$1, -96(%rbp)
	andl	$1, -92(%rbp)
	jmp	.LBB24_57
.LBB24_110:
	testl	%eax, %eax
	je	.LBB24_111
# BB#114:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -88(%rbp)
.LBB24_111:
	movl	-80(%rbp), %eax
	andl	-88(%rbp), %eax
	movl	%eax, -96(%rbp)
	movl	-76(%rbp), %eax
	orl	-84(%rbp), %eax
	movl	%eax, -92(%rbp)
	je	.LBB24_47
# BB#112:
	orl	%eax, -96(%rbp)
	movl	-80(%rbp), %eax
	movl	-76(%rbp), %ecx
	notl	%eax
	notl	%ecx
	andl	%eax, %ecx
	notl	%ecx
	andl	-92(%rbp), %ecx
	movl	-88(%rbp), %eax
	movl	-84(%rbp), %edx
	notl	%eax
	notl	%edx
	andl	%eax, %edx
	notl	%edx
	andl	%ecx, %edx
	movl	%edx, -92(%rbp)
	movl	-80(%rbp), %eax
	movl	-76(%rbp), %ecx
	notl	%eax
	notl	%ecx
	andl	%eax, %ecx
	notl	%ecx
	andl	-96(%rbp), %ecx
	movl	-88(%rbp), %eax
	movl	-84(%rbp), %edx
	notl	%eax
	notl	%edx
	andl	%eax, %edx
	notl	%edx
	andl	%ecx, %edx
	movl	%edx, -96(%rbp)
.LBB24_47:
	movl	-92(%rbp), %eax
	notl	%eax
	testl	-96(%rbp), %eax
	je	.LBB24_48
# BB#115:
	movl	$11534504, %ecx         # imm = 0xB000A8
	callq	*__imp__iki_stmt_online(%rip)
	movq	1392(%rsi), %rdi
	leaq	-104(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %ecx
	movl	4(%rdi), %ebx
	xorl	ng9(%rip), %ecx
	movl	ng9+4(%rip), %edx
	movl	%ebx, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %ebx
	movl	%ebx, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB24_117
# BB#116:
	testl	%ebx, %ebx
	movl	$1, -104(%rbp)
	je	.LBB24_117
# BB#122:
	movl	$1, -100(%rbp)
.LBB24_117:
	movl	-100(%rbp), %eax
	notl	%eax
	testl	-104(%rbp), %eax
	je	.LBB24_118
# BB#123:
	movl	$11534505, %ecx         # imm = 0xB000A9
	movq	__imp__iki_stmt_online(%rip), %rax
	movq	%rax, %rdi
	callq	*%rdi
	movl	$3, 32(%rsp)
	leaq	ng7(%rip), %r8
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	__imp__iki_vlog_schedule_transaction_blocking_var(%rip), %rax
	movq	%rax, %rbx
	callq	*%rbx
	movl	$11534506, %ecx         # imm = 0xB000AA
	callq	*%rdi
	movl	$3, 32(%rsp)
	leaq	ng1(%rip), %r8
	xorl	%r9d, %r9d
	movq	-200(%rbp), %rcx        # 8-byte Reload
	movq	-192(%rbp), %rdx        # 8-byte Reload
	callq	*%rbx
	jmp	.LBB24_48
.LBB24_118:
	movl	$11534509, %ecx         # imm = 0xB000AD
	callq	*__imp__iki_stmt_online(%rip)
	movq	1392(%rsi), %rdi
	leaq	-72(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, 4(%rdi)
	jne	.LBB24_124
# BB#119:
	cmpl	$0, ng5+4(%rip)
	je	.LBB24_120
.LBB24_124:
	movq	$-1, -72(%rbp)
.LBB24_121:
	movl	$3, 32(%rsp)
	leaq	-72(%rbp), %r8
	xorl	%r9d, %r9d
	movq	-200(%rbp), %rcx        # 8-byte Reload
	movq	-192(%rbp), %rdx        # 8-byte Reload
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var(%rip)
.LBB24_48:
	movl	$11534514, %ecx         # imm = 0xB000B2
	callq	*__imp__iki_stmt_online(%rip)
	movq	944(%rsi), %r9
	movq	1392(%rsi), %rax
	movq	%rax, 80(%rsp)
	movl	$2, 96(%rsp)
	movl	$4, 88(%rsp)
	movl	$1, 72(%rsp)
	movl	$2, 64(%rsp)
	movl	$1, 56(%rsp)
	movl	$0, 48(%rsp)
	movl	$7, 40(%rsp)
	movl	$1, 32(%rsp)
	leaq	-72(%rbp), %rcx
	movl	$1, %edx
	movl	$1, %r8d
	callq	*__imp__iki_vlog_get_bit_select_value_p_input(%rip)
	xorl	%r9d, %r9d
	movq	-184(%rbp), %rcx        # 8-byte Reload
	movq	-176(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %r8
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var_setback0(%rip)
	jmp	.LBB24_14
.LBB24_11:
	leaq	ng10(%rip), %r8
	leaq	-64(%rbp), %rcx
	movl	$4, %edx
	movl	$4, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB24_12
# BB#75:
	movl	$11534543, %ecx         # imm = 0xB000CF
	callq	*__imp__iki_stmt_online(%rip)
	leaq	264(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %rdi
	leaq	-72(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %ecx
	movl	4(%rdi), %ebx
	xorl	ng0(%rip), %ecx
	movl	ng0+4(%rip), %edx
	movl	%ebx, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %ebx
	movl	%ebx, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB24_77
# BB#76:
	testl	%ebx, %ebx
	movl	$1, -72(%rbp)
	je	.LBB24_77
# BB#150:
	movl	$1, -68(%rbp)
.LBB24_77:
	leaq	-80(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	-72(%rbp), %ecx
	testb	$1, %cl
	je	.LBB24_78
# BB#151:
	movl	$1, -80(%rbp)
	jmp	.LBB24_79
.LBB24_67:
	testl	%eax, %eax
	je	.LBB24_68
# BB#142:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -80(%rbp)
.LBB24_68:
	cmpl	$0, -80(%rbp)
	movb	$1, %al
	jne	.LBB24_70
# BB#69:
	cmpl	$0, -76(%rbp)
	setne	%al
.LBB24_70:
	testb	%al, %al
	je	.LBB24_71
# BB#143:
	movq	1504(%rsi), %rdi
	leaq	-88(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	4(%rdi), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	(%rdi), %ecx
	testb	$1, %cl
	je	.LBB24_144
# BB#147:
	movl	$1, -88(%rbp)
	jmp	.LBB24_145
.LBB24_71:
	leaq	-96(%rbp), %rcx
	leaq	-80(%rbp), %rdx
	movl	$8, %r8d
	callq	*__imp__iki_std_memcpy(%rip)
	andl	$1, -96(%rbp)
	andl	$1, -92(%rbp)
	jmp	.LBB24_72
.LBB24_129:
	testl	%eax, %eax
	je	.LBB24_130
# BB#133:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -88(%rbp)
.LBB24_130:
	movl	-80(%rbp), %eax
	andl	-88(%rbp), %eax
	movl	%eax, -96(%rbp)
	movl	-76(%rbp), %eax
	orl	-84(%rbp), %eax
	movl	%eax, -92(%rbp)
	je	.LBB24_57
# BB#131:
	orl	%eax, -96(%rbp)
	movl	-80(%rbp), %eax
	movl	-76(%rbp), %ecx
	notl	%eax
	notl	%ecx
	andl	%eax, %ecx
	notl	%ecx
	andl	-92(%rbp), %ecx
	movl	-88(%rbp), %eax
	movl	-84(%rbp), %edx
	notl	%eax
	notl	%edx
	andl	%eax, %edx
	notl	%edx
	andl	%ecx, %edx
	movl	%edx, -92(%rbp)
	movl	-80(%rbp), %eax
	movl	-76(%rbp), %ecx
	notl	%eax
	notl	%ecx
	andl	%eax, %ecx
	notl	%ecx
	andl	-96(%rbp), %ecx
	movl	-88(%rbp), %eax
	movl	-84(%rbp), %edx
	notl	%eax
	notl	%edx
	andl	%eax, %edx
	notl	%edx
	andl	%ecx, %edx
	movl	%edx, -96(%rbp)
.LBB24_57:
	movl	-92(%rbp), %eax
	notl	%eax
	testl	-96(%rbp), %eax
	je	.LBB24_58
# BB#134:
	movl	$11534521, %ecx         # imm = 0xB000B9
	callq	*__imp__iki_stmt_online(%rip)
	movl	$3, 32(%rsp)
	leaq	ng8(%rip), %r8
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var(%rip)
.LBB24_58:
	movl	$11534522, %ecx         # imm = 0xB000BA
	callq	*__imp__iki_stmt_online(%rip)
	movq	944(%rsi), %rbx
	leaq	-72(%rbp), %rcx
	xorl	%edi, %edi
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, 4(%rbx)
	je	.LBB24_59
# BB#135:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -72(%rbp)
	jmp	.LBB24_62
.LBB24_59:
	movl	(%rbx), %ebx
	movl	%ebx, %eax
	andl	$1, %eax
	movl	$1, %edx
	jmp	.LBB24_60
.LBB24_139:                             #   in Loop: Header=BB24_60 Depth=1
	incl	%edi
	shrl	%ebx
.LBB24_60:                              # =>This Inner Loop Header: Depth=1
	cmpl	$8, %edi
	jae	.LBB24_61
# BB#136:                               #   in Loop: Header=BB24_60 Depth=1
	cmpl	$1, %edx
	jne	.LBB24_138
# BB#137:                               #   in Loop: Header=BB24_60 Depth=1
	xorl	%edx, %edx
	jmp	.LBB24_139
.LBB24_138:                             #   in Loop: Header=BB24_60 Depth=1
	movl	%ebx, %ecx
	andl	$1, %ecx
	xorl	%ecx, %eax
	jmp	.LBB24_139
.LBB24_61:
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -72(%rbp)
.LBB24_62:
	leaq	-72(%rbp), %r8
	jmp	.LBB24_63
.LBB24_12:
	leaq	ng11(%rip), %r8
	leaq	-64(%rbp), %rcx
	movl	$4, %edx
	movl	$4, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB24_13
# BB#85:
	movl	$11534551, %ecx         # imm = 0xB000D7
	callq	*__imp__iki_stmt_online(%rip)
	leaq	264(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %rdi
	leaq	-72(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	4(%rdi), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	(%rdi), %ecx
	testb	$1, %cl
	je	.LBB24_86
# BB#162:
	movl	$1, -72(%rbp)
	jmp	.LBB24_87
.LBB24_144:
	testl	%eax, %eax
	je	.LBB24_145
# BB#148:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -88(%rbp)
.LBB24_145:
	movl	-80(%rbp), %eax
	andl	-88(%rbp), %eax
	movl	%eax, -96(%rbp)
	movl	-76(%rbp), %eax
	orl	-84(%rbp), %eax
	movl	%eax, -92(%rbp)
	je	.LBB24_72
# BB#146:
	orl	%eax, -96(%rbp)
	movl	-80(%rbp), %eax
	movl	-76(%rbp), %ecx
	notl	%eax
	notl	%ecx
	andl	%eax, %ecx
	notl	%ecx
	andl	-92(%rbp), %ecx
	movl	-88(%rbp), %eax
	movl	-84(%rbp), %edx
	notl	%eax
	notl	%edx
	andl	%eax, %edx
	notl	%edx
	andl	%ecx, %edx
	movl	%edx, -92(%rbp)
	movl	-80(%rbp), %eax
	movl	-76(%rbp), %ecx
	notl	%eax
	notl	%ecx
	andl	%eax, %ecx
	notl	%ecx
	andl	-96(%rbp), %ecx
	movl	-88(%rbp), %eax
	movl	-84(%rbp), %edx
	notl	%eax
	notl	%edx
	andl	%eax, %edx
	notl	%edx
	andl	%ecx, %edx
	movl	%edx, -96(%rbp)
.LBB24_72:
	movl	-92(%rbp), %eax
	notl	%eax
	testl	-96(%rbp), %eax
	je	.LBB24_73
# BB#149:
	movl	$11534529, %ecx         # imm = 0xB000C1
	callq	*__imp__iki_stmt_online(%rip)
	movl	$3, 32(%rsp)
	leaq	ng9(%rip), %r8
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var(%rip)
.LBB24_73:
	movl	$11534530, %ecx         # imm = 0xB000C2
	callq	*__imp__iki_stmt_online(%rip)
	leaq	ng5(%rip), %r8
.LBB24_63:
	xorl	%r9d, %r9d
	movq	-184(%rbp), %rcx        # 8-byte Reload
	movq	-176(%rbp), %rdx        # 8-byte Reload
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var_setback0(%rip)
	jmp	.LBB24_14
.LBB24_120:
	movl	(%rdi), %eax
	addl	ng5(%rip), %eax
	movl	%eax, -72(%rbp)
	movl	$0, -68(%rbp)
	jmp	.LBB24_121
.LBB24_13:
	movl	$11534560, %ecx         # imm = 0xB000E0
	movq	__imp__iki_stmt_online(%rip), %rax
	movq	%rax, %rdi
	callq	*%rdi
	leaq	ng0(%rip), %r12
	xorl	%r9d, %r9d
	movq	-184(%rbp), %rcx        # 8-byte Reload
	movq	-176(%rbp), %rdx        # 8-byte Reload
	movq	%r12, %r8
	callq	*%rbx
	movl	$11534561, %ecx         # imm = 0xB000E1
	callq	*%rdi
	xorl	%r9d, %r9d
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movq	%r12, %r8
	callq	*%rbx
	movl	$11534563, %ecx         # imm = 0xB000E3
	callq	*%rdi
	xorl	%r9d, %r9d
	movq	-208(%rbp), %rcx        # 8-byte Reload
	movq	-216(%rbp), %rdx        # 8-byte Reload
	movq	%r12, %r8
	callq	*%rbx
	movl	$11534564, %ecx         # imm = 0xB000E4
	callq	*%rdi
	movl	$7, 32(%rsp)
	leaq	ng15(%rip), %r8
	xorl	%r9d, %r9d
	movq	%r14, %rcx
	movq	%r15, %rdx
	movq	__imp__iki_vlog_schedule_transaction_blocking_var(%rip), %rax
	movq	%rax, %r15
	callq	*%r15
	movl	$11534566, %ecx         # imm = 0xB000E6
	callq	*%rdi
	movl	$3, 32(%rsp)
	leaq	ng1(%rip), %r14
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	%r14, %r8
	callq	*%r15
	movl	$11534568, %ecx         # imm = 0xB000E8
	callq	*%rdi
	xorl	%r9d, %r9d
	movq	-144(%rbp), %rcx        # 8-byte Reload
	movq	-152(%rbp), %rdx        # 8-byte Reload
	movq	%r12, %r8
	callq	*%rbx
	movl	$11534571, %ecx         # imm = 0xB000EB
	callq	*%rdi
	movl	$3, 32(%rsp)
	xorl	%r9d, %r9d
	movq	-200(%rbp), %rcx        # 8-byte Reload
	movq	-192(%rbp), %rdx        # 8-byte Reload
	movq	%r14, %r8
	callq	*%r15
	movl	$11534572, %ecx         # imm = 0xB000EC
	callq	*%rdi
	movl	$16, 32(%rsp)
	xorl	%r9d, %r9d
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movq	-160(%rbp), %rdx        # 8-byte Reload
	movq	%r14, %r8
	callq	*%r15
	jmp	.LBB24_14
.LBB24_78:
	testl	%eax, %eax
	je	.LBB24_79
# BB#152:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -80(%rbp)
.LBB24_79:
	cmpl	$0, -80(%rbp)
	movb	$1, %al
	jne	.LBB24_81
# BB#80:
	cmpl	$0, -76(%rbp)
	setne	%al
.LBB24_81:
	testb	%al, %al
	je	.LBB24_82
# BB#153:
	leaq	152(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %rdi
	leaq	-88(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %ecx
	movl	4(%rdi), %ebx
	xorl	ng0(%rip), %ecx
	movl	ng0+4(%rip), %edx
	movl	%ebx, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %ebx
	movl	%ebx, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB24_155
# BB#154:
	testl	%ebx, %ebx
	movl	$1, -88(%rbp)
	je	.LBB24_155
# BB#159:
	movl	$1, -84(%rbp)
.LBB24_155:
	leaq	-96(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	-84(%rbp), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	-88(%rbp), %ecx
	testb	$1, %cl
	je	.LBB24_156
# BB#160:
	movl	$1, -96(%rbp)
	jmp	.LBB24_157
.LBB24_82:
	leaq	-104(%rbp), %rcx
	leaq	-80(%rbp), %rdx
	movl	$8, %r8d
	callq	*__imp__iki_std_memcpy(%rip)
	andl	$1, -104(%rbp)
	andl	$1, -100(%rbp)
.LBB24_83:
	movl	-100(%rbp), %eax
	notl	%eax
	testl	-104(%rbp), %eax
	je	.LBB24_14
# BB#84:
	movl	$11534544, %ecx         # imm = 0xB000D0
	callq	*__imp__iki_stmt_online(%rip)
	movl	$3, 32(%rsp)
	leaq	ng11(%rip), %r8
	jmp	.LBB24_38
.LBB24_86:
	testl	%eax, %eax
	je	.LBB24_87
# BB#163:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -72(%rbp)
.LBB24_87:
	cmpl	$0, -72(%rbp)
	movb	$1, %al
	jne	.LBB24_89
# BB#88:
	cmpl	$0, -68(%rbp)
	setne	%al
.LBB24_89:
	testb	%al, %al
	je	.LBB24_90
# BB#164:
	leaq	152(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %rdi
	leaq	-80(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	4(%rdi), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	(%rdi), %ecx
	testb	$1, %cl
	je	.LBB24_165
# BB#168:
	movl	$1, -80(%rbp)
	jmp	.LBB24_166
.LBB24_90:
	leaq	-88(%rbp), %rcx
	leaq	-72(%rbp), %rdx
	movl	$8, %r8d
	callq	*__imp__iki_std_memcpy(%rip)
	andl	$1, -88(%rbp)
	andl	$1, -84(%rbp)
	jmp	.LBB24_91
.LBB24_156:
	testl	%eax, %eax
	je	.LBB24_157
# BB#161:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -96(%rbp)
.LBB24_157:
	movl	-80(%rbp), %eax
	andl	-96(%rbp), %eax
	movl	%eax, -104(%rbp)
	movl	-76(%rbp), %eax
	orl	-92(%rbp), %eax
	movl	%eax, -100(%rbp)
	je	.LBB24_83
# BB#158:
	orl	%eax, -104(%rbp)
	movl	-80(%rbp), %eax
	movl	-76(%rbp), %ecx
	notl	%eax
	notl	%ecx
	andl	%eax, %ecx
	notl	%ecx
	andl	-100(%rbp), %ecx
	movl	-96(%rbp), %eax
	movl	-92(%rbp), %edx
	notl	%eax
	notl	%edx
	andl	%eax, %edx
	notl	%edx
	andl	%ecx, %edx
	movl	%edx, -100(%rbp)
	movl	-80(%rbp), %eax
	movl	-76(%rbp), %ecx
	notl	%eax
	notl	%ecx
	andl	%eax, %ecx
	notl	%ecx
	andl	-104(%rbp), %ecx
	movl	-96(%rbp), %eax
	movl	-92(%rbp), %edx
	notl	%eax
	notl	%edx
	andl	%eax, %edx
	notl	%edx
	andl	%ecx, %edx
	movl	%edx, -104(%rbp)
	jmp	.LBB24_83
.LBB24_165:
	testl	%eax, %eax
	je	.LBB24_166
# BB#169:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -80(%rbp)
.LBB24_166:
	movl	-72(%rbp), %eax
	andl	-80(%rbp), %eax
	movl	%eax, -88(%rbp)
	movl	-68(%rbp), %eax
	orl	-76(%rbp), %eax
	movl	%eax, -84(%rbp)
	je	.LBB24_91
# BB#167:
	orl	%eax, -88(%rbp)
	movl	-72(%rbp), %eax
	movl	-68(%rbp), %ecx
	notl	%eax
	notl	%ecx
	andl	%eax, %ecx
	notl	%ecx
	andl	-84(%rbp), %ecx
	movl	-80(%rbp), %eax
	movl	-76(%rbp), %edx
	notl	%eax
	notl	%edx
	andl	%eax, %edx
	notl	%edx
	andl	%ecx, %edx
	movl	%edx, -84(%rbp)
	movl	-72(%rbp), %eax
	movl	-68(%rbp), %ecx
	notl	%eax
	notl	%ecx
	andl	%eax, %ecx
	notl	%ecx
	andl	-88(%rbp), %ecx
	movl	-80(%rbp), %eax
	movl	-76(%rbp), %edx
	notl	%eax
	notl	%edx
	andl	%eax, %edx
	notl	%edx
	andl	%ecx, %edx
	movl	%edx, -88(%rbp)
.LBB24_91:
	movl	-84(%rbp), %eax
	notl	%eax
	testl	-88(%rbp), %eax
	je	.LBB24_14
# BB#92:
	movl	$11534552, %ecx         # imm = 0xB000D8
	movq	__imp__iki_stmt_online(%rip), %rax
	movq	%rax, %rdi
	callq	*%rdi
	movl	$3, 32(%rsp)
	leaq	ng1(%rip), %r8
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var(%rip)
	movl	$11534553, %ecx         # imm = 0xB000D9
	callq	*%rdi
	leaq	ng5(%rip), %r8
	xorl	%r9d, %r9d
	movq	-208(%rbp), %rcx        # 8-byte Reload
	movq	-216(%rbp), %rdx        # 8-byte Reload
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var_setback0(%rip)
	jmp	.LBB24_14

	.def	 _execute_31;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_31
	.align	16, 0x90
_execute_31:                            # @_execute_31
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$56, %rsp
	movq	%rdx, %rsi
	.align	16, 0x90
.LBB25_1:                               # =>This Inner Loop Header: Depth=1
	movl	$18, %edx
	movq	%rsi, %rcx
	callq	*__imp__iki_vlog_set_threadId_for_unrandom(%rip)
	movq	1264(%rsi), %rax
	testq	%rax, %rax
	je	.LBB25_4
# BB#2:                                 #   in Loop: Header=BB25_1 Depth=1
	jmpq	*%rax
.Ltmp93:                                # Block address taken
.LBB25_3:
	movb	$0, 1344(%rsi)
	movl	$12582975, %ecx         # imm = 0xC0003F
	callq	*__imp__iki_stmt_online(%rip)
	leaq	152(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %rdi
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %eax
	andl	$1, %eax
	movl	%eax, (%rbx)
	movl	4(%rdi), %eax
	andl	$1, %eax
	movl	%eax, 4(%rbx)
	leaq	1048(%rsi), %rcx
	leaq	1352(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$0, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rbx, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
.LBB25_4:
	movl	$12582974, %ecx         # imm = 0xC0003E
	callq	*__imp__iki_stmt_online(%rip)
	movb	$1, 1344(%rsi)
	leaq	.Ltmp93(%rip), %rax
	movq	%rax, 1264(%rsi)
	addq	$56, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_32;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_32
	.align	16, 0x90
_execute_32:                            # @_execute_32
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$56, %rsp
	movq	%rdx, %rsi
	.align	16, 0x90
.LBB26_1:                               # =>This Inner Loop Header: Depth=1
	movl	$19, %edx
	movq	%rsi, %rcx
	callq	*__imp__iki_vlog_set_threadId_for_unrandom(%rip)
	movq	1432(%rsi), %rax
	testq	%rax, %rax
	je	.LBB26_5
# BB#2:                                 #   in Loop: Header=BB26_1 Depth=1
	jmpq	*%rax
.Ltmp97:                                # Block address taken
.LBB26_3:
	movb	$0, 1512(%rsi)
	movl	$12582982, %ecx         # imm = 0xC00046
	callq	*__imp__iki_stmt_online(%rip)
	leaq	40(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movl	4(%rax), %ecx
	notl	%ecx
	testl	(%rax), %ecx
	je	.LBB26_4
# BB#6:
	movq	__imp__iki_stmt_online(%rip), %r14
	movl	$12582984, %ecx         # imm = 0xC00048
	callq	*%r14
	movq	__imp__iki_malloc8(%rip), %rbx
	callq	*%rbx
	movq	%rax, %rdi
	movq	__imp__iki_std_memset(%rip), %r15
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r15
	movl	ng1(%rip), %eax
	andl	$7, %eax
	movl	%eax, (%rdi)
	movl	ng1+4(%rip), %eax
	andl	$7, %eax
	movl	%eax, 4(%rdi)
	leaq	488(%rsi), %rcx
	leaq	1520(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$2, 32(%rsp)
	movq	__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip), %r12
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r12
	movl	$12582985, %ecx         # imm = 0xC00049
	callq	*%r14
	callq	*%rbx
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r15
	movl	ng0(%rip), %eax
	andl	$1, %eax
	movl	%eax, (%rdi)
	movl	ng0+4(%rip), %eax
	andl	$1, %eax
	movl	%eax, 4(%rdi)
	leaq	600(%rsi), %rcx
	leaq	1560(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$0, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r12
	movl	$12582986, %ecx         # imm = 0xC0004A
	callq	*%r14
	callq	*%rbx
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r15
	movl	ng1(%rip), %eax
	andl	$3, %eax
	movl	%eax, (%rdi)
	movl	ng1+4(%rip), %eax
	andl	$3, %eax
	movl	%eax, 4(%rdi)
	leaq	712(%rsi), %rcx
	leaq	1600(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$1, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r12
	movl	$12582987, %ecx         # imm = 0xC0004B
	callq	*%r14
	callq	*%rbx
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r15
	movzbl	ng1(%rip), %eax
	movl	%eax, (%rdi)
	movzbl	ng1+4(%rip), %eax
	movl	%eax, 4(%rdi)
	leaq	936(%rsi), %rcx
	leaq	1640(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r12
	movl	$12582988, %ecx         # imm = 0xC0004C
	callq	*%r14
	callq	*%rbx
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r15
	movl	ng1(%rip), %eax
	andl	$15, %eax
	movl	%eax, (%rdi)
	movl	ng1+4(%rip), %eax
	andl	$15, %eax
	movl	%eax, 4(%rdi)
	leaq	824(%rsi), %rcx
	leaq	1680(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$3, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r12
	jmp	.LBB26_5
.LBB26_4:
	movq	__imp__iki_stmt_online(%rip), %r14
	movl	$12582993, %ecx         # imm = 0xC00051
	callq	*%r14
	movq	552(%rsi), %rbx
	movq	__imp__iki_malloc8(%rip), %r15
	callq	*%r15
	movq	%rax, %rdi
	movq	__imp__iki_std_memset(%rip), %r12
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r12
	movl	(%rbx), %eax
	andl	$7, %eax
	movl	%eax, (%rdi)
	movl	4(%rbx), %eax
	andl	$7, %eax
	movl	%eax, 4(%rdi)
	leaq	488(%rsi), %rcx
	leaq	1720(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$2, 32(%rsp)
	movq	__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip), %r13
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r13
	movl	$12582994, %ecx         # imm = 0xC00052
	callq	*%r14
	movq	664(%rsi), %rbx
	callq	*%r15
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r12
	movl	(%rbx), %eax
	andl	$1, %eax
	movl	%eax, (%rdi)
	movl	4(%rbx), %eax
	andl	$1, %eax
	movl	%eax, 4(%rdi)
	leaq	600(%rsi), %rcx
	leaq	1760(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$0, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r13
	movl	$12582995, %ecx         # imm = 0xC00053
	callq	*%r14
	movq	776(%rsi), %rbx
	callq	*%r15
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r12
	movl	(%rbx), %eax
	andl	$3, %eax
	movl	%eax, (%rdi)
	movl	4(%rbx), %eax
	andl	$3, %eax
	movl	%eax, 4(%rdi)
	leaq	712(%rsi), %rcx
	leaq	1800(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$1, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r13
	movl	$12582996, %ecx         # imm = 0xC00054
	callq	*%r14
	movq	1000(%rsi), %rbx
	callq	*%r15
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r12
	movzbl	(%rbx), %eax
	movl	%eax, (%rdi)
	movzbl	4(%rbx), %eax
	movl	%eax, 4(%rdi)
	leaq	936(%rsi), %rcx
	leaq	1840(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r13
	movl	$12582997, %ecx         # imm = 0xC00055
	callq	*%r14
	movq	888(%rsi), %rbx
	callq	*%r15
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r12
	movl	(%rbx), %eax
	andl	$15, %eax
	movl	%eax, (%rdi)
	movl	4(%rbx), %eax
	andl	$15, %eax
	movl	%eax, 4(%rdi)
	leaq	824(%rsi), %rcx
	leaq	1880(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$3, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r13
.LBB26_5:
	movl	$12582980, %ecx         # imm = 0xC00044
	callq	*__imp__iki_stmt_online(%rip)
	movb	$1, 1512(%rsi)
	leaq	.Ltmp97(%rip), %rax
	movq	%rax, 1432(%rsi)
	addq	$56, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret

	.def	 _execute_33;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_33
	.align	16, 0x90
_execute_33:                            # @_execute_33
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$312, %rsp              # imm = 0x138
	movq	%rdx, %rsi
	.align	16, 0x90
.LBB27_1:                               # =>This Inner Loop Header: Depth=1
	movl	$20, %edx
	movq	%rsi, %rcx
	callq	*__imp__iki_vlog_set_threadId_for_unrandom(%rip)
	movq	1960(%rsi), %rax
	testq	%rax, %rax
	je	.LBB27_9
# BB#2:                                 #   in Loop: Header=BB27_1 Depth=1
	jmpq	*%rax
.Ltmp101:                               # Block address taken
.LBB27_3:
	movb	$0, 2040(%rsi)
	movq	__imp__iki_stmt_online(%rip), %rdi
	movl	$12583007, %ecx         # imm = 0xC0005F
	callq	*%rdi
	movq	496(%rsi), %r8
	leaq	544(%rsi), %rcx
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	leaq	2752(%rsi), %rdx
	movq	%rdx, -216(%rbp)        # 8-byte Spill
	movl	$2, 32(%rsp)
	movq	__imp__iki_vlog_schedule_transaction_blocking_var(%rip), %rbx
	xorl	%r9d, %r9d
	callq	*%rbx
	movl	$12583008, %ecx         # imm = 0xC00060
	callq	*%rdi
	movq	944(%rsi), %r8
	leaq	992(%rsi), %r15
	leaq	2784(%rsi), %r14
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%r15, %rcx
	movq	%r14, %rdx
	callq	*%rbx
	movl	$12583009, %ecx         # imm = 0xC00061
	callq	*%rdi
	leaq	656(%rsi), %r12
	leaq	2848(%rsi), %r13
	leaq	ng0(%rip), %r8
	xorl	%r9d, %r9d
	movq	%r12, %rcx
	movq	%r13, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var_setback0(%rip)
	movl	$12583010, %ecx         # imm = 0xC00062
	callq	*%rdi
	movq	720(%rsi), %r8
	leaq	768(%rsi), %rcx
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	leaq	2880(%rsi), %rdx
	movq	%rdx, -232(%rbp)        # 8-byte Spill
	movl	$1, 32(%rsp)
	xorl	%r9d, %r9d
	callq	*%rbx
	movl	$12583011, %ecx         # imm = 0xC00063
	callq	*%rdi
	movq	832(%rsi), %r8
	leaq	880(%rsi), %rcx
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	leaq	2816(%rsi), %rdx
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	movl	$3, 32(%rsp)
	xorl	%r9d, %r9d
	callq	*%rbx
	movl	$12583014, %ecx         # imm = 0xC00066
	callq	*%rdi
	movq	496(%rsi), %rdx
	leaq	-64(%rbp), %rdi
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	ng1(%rip), %r8
	movl	$3, %edx
	movl	$3, %r9d
	movq	%rdi, %rcx
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB27_4
# BB#10:
	movl	$12583020, %ecx         # imm = 0xC0006C
	callq	*__imp__iki_stmt_online(%rip)
	leaq	152(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %rdi
	leaq	-72(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %ecx
	movl	4(%rdi), %ebx
	xorl	ng0(%rip), %ecx
	movl	ng0+4(%rip), %edx
	movl	%ebx, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %ebx
	movl	%ebx, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB27_12
# BB#11:
	testl	%ebx, %ebx
	movl	$1, -72(%rbp)
	je	.LBB27_12
# BB#68:
	movl	$1, -68(%rbp)
.LBB27_12:
	leaq	-80(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	-72(%rbp), %ecx
	testb	$1, %cl
	je	.LBB27_13
# BB#69:
	movl	$1, -80(%rbp)
	jmp	.LBB27_14
.LBB27_4:
	leaq	ng2(%rip), %r8
	leaq	-64(%rbp), %rcx
	movl	$3, %edx
	movl	$3, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB27_5
# BB#26:
	movl	$12583034, %ecx         # imm = 0xC0007A
	callq	*__imp__iki_stmt_online(%rip)
	movq	832(%rsi), %rdi
	leaq	-72(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %ecx
	movl	4(%rdi), %ebx
	xorl	ng10(%rip), %ecx
	movl	ng10+4(%rip), %edx
	movl	%ebx, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %ebx
	movl	%ebx, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB27_28
# BB#27:
	testl	%ebx, %ebx
	movl	$1, -72(%rbp)
	je	.LBB27_28
# BB#103:
	movl	$1, -68(%rbp)
.LBB27_28:
	movl	-68(%rbp), %eax
	notl	%eax
	testl	-72(%rbp), %eax
	je	.LBB27_29
# BB#104:
	movl	$12583035, %ecx         # imm = 0xC0007B
	movq	__imp__iki_stmt_online(%rip), %rax
	movq	%rax, %rdi
	callq	*%rdi
	movl	$2, 32(%rsp)
	leaq	ng3(%rip), %r8
	xorl	%r9d, %r9d
	movq	-224(%rbp), %rcx        # 8-byte Reload
	movq	-216(%rbp), %rdx        # 8-byte Reload
	movq	__imp__iki_vlog_schedule_transaction_blocking_var(%rip), %rax
	movq	%rax, %rbx
	callq	*%rbx
	movl	$12583036, %ecx         # imm = 0xC0007C
	jmp	.LBB27_105
.LBB27_5:
	leaq	ng3(%rip), %r8
	leaq	-64(%rbp), %rcx
	movl	$3, %edx
	movl	$3, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB27_6
# BB#40:
	movl	$12583056, %ecx         # imm = 0xC00090
	callq	*__imp__iki_stmt_online(%rip)
	movq	1056(%rsi), %rdi
	leaq	-72(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	4(%rdi), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	(%rdi), %ecx
	testb	$1, %cl
	je	.LBB27_41
# BB#126:
	movl	$1, -72(%rbp)
	jmp	.LBB27_42
.LBB27_13:
	testl	%eax, %eax
	je	.LBB27_14
# BB#70:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -80(%rbp)
.LBB27_14:
	cmpl	$0, -80(%rbp)
	movb	$1, %al
	jne	.LBB27_16
# BB#15:
	cmpl	$0, -76(%rbp)
	setne	%al
.LBB27_16:
	testb	%al, %al
	je	.LBB27_17
# BB#71:
	movq	1056(%rsi), %rdi
	leaq	-88(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	4(%rdi), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	(%rdi), %ecx
	testb	$1, %cl
	je	.LBB27_72
# BB#75:
	movl	$1, -88(%rbp)
	jmp	.LBB27_73
.LBB27_17:
	leaq	-96(%rbp), %rcx
	leaq	-80(%rbp), %rdx
	movl	$8, %r8d
	callq	*__imp__iki_std_memcpy(%rip)
	andl	$1, -96(%rbp)
	andl	$1, -92(%rbp)
	jmp	.LBB27_18
.LBB27_6:
	leaq	ng4(%rip), %r8
	leaq	-64(%rbp), %rcx
	movl	$3, %edx
	movl	$3, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB27_7
# BB#56:
	movl	$12583072, %ecx         # imm = 0xC000A0
	callq	*__imp__iki_stmt_online(%rip)
	movq	1056(%rsi), %rdi
	leaq	-72(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	4(%rdi), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	(%rdi), %ecx
	testb	$1, %cl
	je	.LBB27_57
# BB#145:
	movl	$1, -72(%rbp)
	jmp	.LBB27_58
.LBB27_29:
	movl	$12583041, %ecx         # imm = 0xC00081
	callq	*__imp__iki_stmt_online(%rip)
	leaq	152(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %rdi
	leaq	-72(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %ecx
	movl	4(%rdi), %ebx
	xorl	ng0(%rip), %ecx
	movl	ng0+4(%rip), %edx
	movl	%ebx, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %ebx
	movl	%ebx, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB27_31
# BB#30:
	testl	%ebx, %ebx
	movl	$1, -72(%rbp)
	je	.LBB27_31
# BB#106:
	movl	$1, -68(%rbp)
.LBB27_31:
	leaq	-80(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	-72(%rbp), %ecx
	testb	$1, %cl
	je	.LBB27_32
# BB#107:
	movl	$1, -80(%rbp)
	jmp	.LBB27_33
.LBB27_72:
	testl	%eax, %eax
	je	.LBB27_73
# BB#76:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -88(%rbp)
.LBB27_73:
	movl	-80(%rbp), %eax
	andl	-88(%rbp), %eax
	movl	%eax, -96(%rbp)
	movl	-76(%rbp), %eax
	orl	-84(%rbp), %eax
	movl	%eax, -92(%rbp)
	je	.LBB27_18
# BB#74:
	orl	%eax, -96(%rbp)
	movl	-80(%rbp), %eax
	movl	-76(%rbp), %ecx
	notl	%eax
	notl	%ecx
	andl	%eax, %ecx
	notl	%ecx
	andl	-92(%rbp), %ecx
	movl	-88(%rbp), %eax
	movl	-84(%rbp), %edx
	notl	%eax
	notl	%edx
	andl	%eax, %edx
	notl	%edx
	andl	%ecx, %edx
	movl	%edx, -92(%rbp)
	movl	-80(%rbp), %eax
	movl	-76(%rbp), %ecx
	notl	%eax
	notl	%ecx
	andl	%eax, %ecx
	notl	%ecx
	andl	-96(%rbp), %ecx
	movl	-88(%rbp), %eax
	movl	-84(%rbp), %edx
	notl	%eax
	notl	%edx
	andl	%eax, %edx
	notl	%edx
	andl	%ecx, %edx
	movl	%edx, -96(%rbp)
.LBB27_18:
	leaq	-104(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	-92(%rbp), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	-96(%rbp), %ecx
	testb	$1, %cl
	je	.LBB27_19
# BB#77:
	movl	$1, -104(%rbp)
	jmp	.LBB27_20
.LBB27_19:
	testl	%eax, %eax
	je	.LBB27_20
# BB#78:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -104(%rbp)
.LBB27_20:
	cmpl	$0, -104(%rbp)
	movb	$1, %al
	jne	.LBB27_22
# BB#21:
	cmpl	$0, -100(%rbp)
	setne	%al
.LBB27_22:
	testb	%al, %al
	je	.LBB27_23
# BB#79:
	leaq	264(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %rdi
	leaq	-112(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	4(%rdi), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	(%rdi), %ecx
	testb	$1, %cl
	je	.LBB27_80
# BB#89:
	movl	$1, -112(%rbp)
	jmp	.LBB27_81
.LBB27_23:
	leaq	-152(%rbp), %rcx
	leaq	-104(%rbp), %rdx
	movl	$8, %r8d
	callq	*__imp__iki_std_memcpy(%rip)
	andl	$1, -152(%rbp)
	andl	$1, -148(%rbp)
	jmp	.LBB27_24
.LBB27_80:
	testl	%eax, %eax
	je	.LBB27_81
# BB#90:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -112(%rbp)
.LBB27_81:
	cmpl	$0, -112(%rbp)
	movb	$1, %al
	jne	.LBB27_83
# BB#82:
	cmpl	$0, -108(%rbp)
	setne	%al
.LBB27_83:
	testb	%al, %al
	je	.LBB27_84
# BB#91:
	leaq	208(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %rdi
	leaq	-120(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %ecx
	movl	4(%rdi), %ebx
	xorl	ng0(%rip), %ecx
	movl	ng0+4(%rip), %edx
	movl	%ebx, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %ebx
	movl	%ebx, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB27_93
# BB#92:
	testl	%ebx, %ebx
	movl	$1, -120(%rbp)
	je	.LBB27_93
# BB#97:
	movl	$1, -116(%rbp)
.LBB27_93:
	leaq	-128(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	-116(%rbp), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	-120(%rbp), %ecx
	testb	$1, %cl
	je	.LBB27_94
# BB#98:
	movl	$1, -128(%rbp)
	jmp	.LBB27_95
.LBB27_84:
	leaq	-136(%rbp), %rcx
	leaq	-112(%rbp), %rdx
	movl	$8, %r8d
	callq	*__imp__iki_std_memcpy(%rip)
	andl	$1, -136(%rbp)
	andl	$1, -132(%rbp)
	jmp	.LBB27_85
.LBB27_7:
	leaq	ng6(%rip), %r8
	leaq	-64(%rbp), %rcx
	movl	$3, %edx
	movl	$3, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB27_8
# BB#67:
	movl	$12583086, %ecx         # imm = 0xC000AE
	movq	__imp__iki_stmt_online(%rip), %rax
	movq	%rax, %rdi
	callq	*%rdi
	leaq	ng5(%rip), %r8
	xorl	%r9d, %r9d
	movq	%r12, %rcx
	movq	%r13, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var_setback0(%rip)
	movl	$12583087, %ecx         # imm = 0xC000AF
	callq	*%rdi
	movl	$2, 32(%rsp)
	leaq	ng1(%rip), %r8
	xorl	%r9d, %r9d
	movq	-224(%rbp), %rcx        # 8-byte Reload
	movq	-216(%rbp), %rdx        # 8-byte Reload
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var(%rip)
	jmp	.LBB27_9
.LBB27_41:
	testl	%eax, %eax
	je	.LBB27_42
# BB#127:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -72(%rbp)
.LBB27_42:
	cmpl	$0, -72(%rbp)
	movb	$1, %al
	jne	.LBB27_44
# BB#43:
	cmpl	$0, -68(%rbp)
	setne	%al
.LBB27_44:
	testb	%al, %al
	je	.LBB27_45
# BB#128:
	leaq	152(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %rdi
	leaq	-80(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %ecx
	movl	4(%rdi), %ebx
	xorl	ng0(%rip), %ecx
	movl	ng0+4(%rip), %edx
	movl	%ebx, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %ebx
	movl	%ebx, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB27_130
# BB#129:
	testl	%ebx, %ebx
	movl	$1, -80(%rbp)
	je	.LBB27_130
# BB#134:
	movl	$1, -76(%rbp)
.LBB27_130:
	leaq	-88(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	-76(%rbp), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	-80(%rbp), %ecx
	testb	$1, %cl
	je	.LBB27_131
# BB#135:
	movl	$1, -88(%rbp)
	jmp	.LBB27_132
.LBB27_45:
	leaq	-96(%rbp), %rcx
	leaq	-72(%rbp), %rdx
	movl	$8, %r8d
	callq	*__imp__iki_std_memcpy(%rip)
	andl	$1, -96(%rbp)
	andl	$1, -92(%rbp)
	jmp	.LBB27_46
.LBB27_94:
	testl	%eax, %eax
	je	.LBB27_95
# BB#99:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -128(%rbp)
.LBB27_95:
	movl	-112(%rbp), %eax
	andl	-128(%rbp), %eax
	movl	%eax, -136(%rbp)
	movl	-108(%rbp), %eax
	orl	-124(%rbp), %eax
	movl	%eax, -132(%rbp)
	je	.LBB27_85
# BB#96:
	orl	%eax, -136(%rbp)
	movl	-112(%rbp), %eax
	movl	-108(%rbp), %ecx
	notl	%eax
	notl	%ecx
	andl	%eax, %ecx
	notl	%ecx
	andl	-132(%rbp), %ecx
	movl	-128(%rbp), %eax
	movl	-124(%rbp), %edx
	notl	%eax
	notl	%edx
	andl	%eax, %edx
	notl	%edx
	andl	%ecx, %edx
	movl	%edx, -132(%rbp)
	movl	-112(%rbp), %eax
	movl	-108(%rbp), %ecx
	notl	%eax
	notl	%ecx
	andl	%eax, %ecx
	notl	%ecx
	andl	-136(%rbp), %ecx
	movl	-128(%rbp), %eax
	movl	-124(%rbp), %edx
	notl	%eax
	notl	%edx
	andl	%eax, %edx
	notl	%edx
	andl	%ecx, %edx
	movl	%edx, -136(%rbp)
.LBB27_85:
	leaq	-144(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	-132(%rbp), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	-136(%rbp), %ecx
	testb	$1, %cl
	je	.LBB27_86
# BB#100:
	movl	$1, -144(%rbp)
	jmp	.LBB27_87
.LBB27_86:
	testl	%eax, %eax
	je	.LBB27_87
# BB#101:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -144(%rbp)
.LBB27_87:
	movl	-104(%rbp), %eax
	andl	-144(%rbp), %eax
	movl	%eax, -152(%rbp)
	movl	-100(%rbp), %eax
	orl	-140(%rbp), %eax
	movl	%eax, -148(%rbp)
	je	.LBB27_24
# BB#88:
	orl	%eax, -152(%rbp)
	movl	-104(%rbp), %eax
	movl	-100(%rbp), %ecx
	notl	%eax
	notl	%ecx
	andl	%eax, %ecx
	notl	%ecx
	andl	-148(%rbp), %ecx
	movl	-144(%rbp), %eax
	movl	-140(%rbp), %edx
	notl	%eax
	notl	%edx
	andl	%eax, %edx
	notl	%edx
	andl	%ecx, %edx
	movl	%edx, -148(%rbp)
	movl	-104(%rbp), %eax
	movl	-100(%rbp), %ecx
	notl	%eax
	notl	%ecx
	andl	%eax, %ecx
	notl	%ecx
	andl	-152(%rbp), %ecx
	movl	-144(%rbp), %eax
	movl	-140(%rbp), %edx
	notl	%eax
	notl	%edx
	andl	%eax, %edx
	notl	%edx
	andl	%ecx, %edx
	movl	%edx, -152(%rbp)
.LBB27_24:
	movl	-148(%rbp), %eax
	notl	%eax
	testl	-152(%rbp), %eax
	je	.LBB27_25
# BB#102:
	movl	$12583021, %ecx         # imm = 0xC0006D
	movq	__imp__iki_stmt_online(%rip), %rax
	movq	%rax, %rdi
	callq	*%rdi
	movl	$2, 32(%rsp)
	leaq	ng2(%rip), %r8
	xorl	%r9d, %r9d
	movq	-224(%rbp), %rcx        # 8-byte Reload
	movq	-216(%rbp), %rdx        # 8-byte Reload
	movq	__imp__iki_vlog_schedule_transaction_blocking_var(%rip), %rax
	movq	%rax, %rbx
	callq	*%rbx
	movl	$12583022, %ecx         # imm = 0xC0006E
	callq	*%rdi
	movl	$1, 32(%rsp)
	leaq	ng1(%rip), %r8
	xorl	%r9d, %r9d
	movq	-240(%rbp), %rcx        # 8-byte Reload
	movq	-232(%rbp), %rdx        # 8-byte Reload
	callq	*%rbx
	movl	$12583023, %ecx         # imm = 0xC0006F
.LBB27_105:
	callq	*%rdi
	movl	$3, 32(%rsp)
	leaq	ng0(%rip), %r8
	xorl	%r9d, %r9d
	movq	-208(%rbp), %rcx        # 8-byte Reload
	movq	-200(%rbp), %rdx        # 8-byte Reload
	callq	*%rbx
	jmp	.LBB27_9
.LBB27_25:
	movl	$12583026, %ecx         # imm = 0xC00072
	callq	*__imp__iki_stmt_online(%rip)
	movl	$3, 32(%rsp)
	leaq	ng0(%rip), %r8
	jmp	.LBB27_123
.LBB27_32:
	testl	%eax, %eax
	je	.LBB27_33
# BB#108:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -80(%rbp)
.LBB27_33:
	cmpl	$0, -80(%rbp)
	movb	$1, %al
	jne	.LBB27_35
# BB#34:
	cmpl	$0, -76(%rbp)
	setne	%al
.LBB27_35:
	testb	%al, %al
	je	.LBB27_36
# BB#109:
	movq	1056(%rsi), %rdi
	leaq	-88(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	4(%rdi), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	(%rdi), %ecx
	testb	$1, %cl
	je	.LBB27_110
# BB#113:
	movl	$1, -88(%rbp)
	jmp	.LBB27_111
.LBB27_36:
	leaq	-96(%rbp), %rcx
	leaq	-80(%rbp), %rdx
	movl	$8, %r8d
	callq	*__imp__iki_std_memcpy(%rip)
	andl	$1, -96(%rbp)
	andl	$1, -92(%rbp)
	jmp	.LBB27_37
.LBB27_8:
	movl	$12583094, %ecx         # imm = 0xC000B6
	movq	__imp__iki_stmt_online(%rip), %rax
	movq	%rax, %rbx
	callq	*%rbx
	movl	$2, 32(%rsp)
	leaq	ng1(%rip), %r8
	xorl	%r9d, %r9d
	movq	-224(%rbp), %rcx        # 8-byte Reload
	movq	-216(%rbp), %rdx        # 8-byte Reload
	movq	__imp__iki_vlog_schedule_transaction_blocking_var(%rip), %rax
	movq	%rax, %rdi
	callq	*%rdi
	movl	$12583095, %ecx         # imm = 0xC000B7
	callq	*%rbx
	movl	$7, 32(%rsp)
	leaq	ng15(%rip), %r8
	xorl	%r9d, %r9d
	movq	%r15, %rcx
	movq	%r14, %rdx
	callq	*%rdi
	movl	$12583096, %ecx         # imm = 0xC000B8
	callq	*%rbx
	movl	$3, 32(%rsp)
	leaq	ng0(%rip), %r14
	xorl	%r9d, %r9d
	movq	-208(%rbp), %rcx        # 8-byte Reload
	movq	-200(%rbp), %rdx        # 8-byte Reload
	movq	%r14, %r8
	callq	*%rdi
	movl	$12583097, %ecx         # imm = 0xC000B9
	callq	*%rbx
	xorl	%r9d, %r9d
	movq	%r12, %rcx
	movq	%r13, %rdx
	movq	%r14, %r8
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var_setback0(%rip)
	movl	$12583098, %ecx         # imm = 0xC000BA
	callq	*%rbx
	movl	$1, 32(%rsp)
	xorl	%r9d, %r9d
	movq	-240(%rbp), %rcx        # 8-byte Reload
	movq	-232(%rbp), %rdx        # 8-byte Reload
	leaq	ng1(%rip), %r8
	callq	*%rdi
	jmp	.LBB27_9
.LBB27_57:
	testl	%eax, %eax
	je	.LBB27_58
# BB#146:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -72(%rbp)
.LBB27_58:
	cmpl	$0, -72(%rbp)
	movb	$1, %al
	jne	.LBB27_60
# BB#59:
	cmpl	$0, -68(%rbp)
	setne	%al
.LBB27_60:
	testb	%al, %al
	je	.LBB27_61
# BB#147:
	leaq	152(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %rdi
	leaq	-80(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %ecx
	movl	4(%rdi), %ebx
	xorl	ng0(%rip), %ecx
	movl	ng0+4(%rip), %edx
	movl	%ebx, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %ebx
	movl	%ebx, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB27_149
# BB#148:
	testl	%ebx, %ebx
	movl	$1, -80(%rbp)
	je	.LBB27_149
# BB#153:
	movl	$1, -76(%rbp)
.LBB27_149:
	leaq	-88(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	-76(%rbp), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	-80(%rbp), %ecx
	testb	$1, %cl
	je	.LBB27_150
# BB#154:
	movl	$1, -88(%rbp)
	jmp	.LBB27_151
.LBB27_61:
	leaq	-96(%rbp), %rcx
	leaq	-72(%rbp), %rdx
	movl	$8, %r8d
	callq	*__imp__iki_std_memcpy(%rip)
	andl	$1, -96(%rbp)
	andl	$1, -92(%rbp)
	jmp	.LBB27_62
.LBB27_131:
	testl	%eax, %eax
	je	.LBB27_132
# BB#136:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -88(%rbp)
.LBB27_132:
	movl	-72(%rbp), %eax
	andl	-88(%rbp), %eax
	movl	%eax, -96(%rbp)
	movl	-68(%rbp), %eax
	orl	-84(%rbp), %eax
	movl	%eax, -92(%rbp)
	je	.LBB27_46
# BB#133:
	orl	%eax, -96(%rbp)
	movl	-72(%rbp), %eax
	movl	-68(%rbp), %ecx
	notl	%eax
	notl	%ecx
	andl	%eax, %ecx
	notl	%ecx
	andl	-92(%rbp), %ecx
	movl	-88(%rbp), %eax
	movl	-84(%rbp), %edx
	notl	%eax
	notl	%edx
	andl	%eax, %edx
	notl	%edx
	andl	%ecx, %edx
	movl	%edx, -92(%rbp)
	movl	-72(%rbp), %eax
	movl	-68(%rbp), %ecx
	notl	%eax
	notl	%ecx
	andl	%eax, %ecx
	notl	%ecx
	andl	-96(%rbp), %ecx
	movl	-88(%rbp), %eax
	movl	-84(%rbp), %edx
	notl	%eax
	notl	%edx
	andl	%eax, %edx
	notl	%edx
	andl	%ecx, %edx
	movl	%edx, -96(%rbp)
.LBB27_46:
	movl	-92(%rbp), %eax
	notl	%eax
	testl	-96(%rbp), %eax
	je	.LBB27_9
# BB#47:
	movl	$12583059, %ecx         # imm = 0xC00093
	callq	*__imp__iki_stmt_online(%rip)
	leaq	208(%rsi), %rcx
	movl	$1, %edi
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %r14
	movq	944(%rsi), %r9
	movl	$1, -176(%rbp)
	movl	$7, -172(%rbp)
	movl	$0, -168(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, 80(%rsp)
	leaq	ng0(%rip), %rax
	movq	%rax, 56(%rsp)
	leaq	ng54(%rip), %rax
	movq	%rax, 32(%rsp)
	movl	$1, 112(%rsp)
	movl	$2, 104(%rsp)
	movl	$1, 96(%rsp)
	movq	$0, 88(%rsp)
	movl	$1, 72(%rsp)
	movl	$32, 64(%rsp)
	movl	$1, 48(%rsp)
	movl	$32, 40(%rsp)
	leaq	-112(%rbp), %rcx
	movl	$1, %edx
	movl	$8, %r8d
	callq	*__imp__iki_vlog_get_part_select_value(%rip)
	leaq	-104(%rbp), %rcx
	xorl	%ebx, %ebx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, -108(%rbp)
	je	.LBB27_48
# BB#137:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -104(%rbp)
	jmp	.LBB27_51
.LBB27_48:
	movl	-112(%rbp), %ecx
	movl	%ecx, %eax
	andl	$1, %eax
	jmp	.LBB27_49
	.align	16, 0x90
.LBB27_141:                             #   in Loop: Header=BB27_49 Depth=1
	incl	%ebx
	shrl	%ecx
.LBB27_49:                              # =>This Inner Loop Header: Depth=1
	cmpl	$8, %ebx
	jae	.LBB27_50
# BB#138:                               #   in Loop: Header=BB27_49 Depth=1
	cmpl	$1, %edi
	jne	.LBB27_140
# BB#139:                               #   in Loop: Header=BB27_49 Depth=1
	xorl	%edi, %edi
	jmp	.LBB27_141
	.align	16, 0x90
.LBB27_140:                             #   in Loop: Header=BB27_49 Depth=1
	movl	%ecx, %edx
	andl	$1, %edx
	xorl	%edx, %eax
	jmp	.LBB27_141
.LBB27_50:
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -104(%rbp)
.LBB27_51:
	leaq	-120(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%r14), %ecx
	movl	4(%r14), %ebx
	xorl	-104(%rbp), %ecx
	movl	-100(%rbp), %edx
	movl	%ebx, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %ebx
	movl	%ebx, %ecx
	notl	%ecx
	testl	%ecx, %eax
	je	.LBB27_52
# BB#142:
	movl	$1, -120(%rbp)
	jmp	.LBB27_53
.LBB27_52:
	testl	%ebx, %ebx
	je	.LBB27_53
# BB#143:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -120(%rbp)
.LBB27_53:
	movl	-116(%rbp), %eax
	notl	%eax
	testl	-120(%rbp), %eax
	je	.LBB27_54
# BB#144:
	movl	$12583061, %ecx         # imm = 0xC00095
	callq	*__imp__iki_stmt_online(%rip)
	movl	$1, 32(%rsp)
	leaq	ng2(%rip), %r8
	xorl	%r9d, %r9d
	movq	-240(%rbp), %rcx        # 8-byte Reload
	movq	-232(%rbp), %rdx        # 8-byte Reload
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var(%rip)
.LBB27_54:
	movl	$12583063, %ecx         # imm = 0xC00097
	movq	__imp__iki_stmt_online(%rip), %rax
	movq	%rax, %rdi
	callq	*%rdi
	movl	$3, 32(%rsp)
	leaq	ng0(%rip), %r8
	xorl	%r9d, %r9d
	movq	-208(%rbp), %rcx        # 8-byte Reload
	movq	-200(%rbp), %rdx        # 8-byte Reload
	movq	__imp__iki_vlog_schedule_transaction_blocking_var(%rip), %rax
	movq	%rax, %rbx
	callq	*%rbx
	movl	$12583064, %ecx         # imm = 0xC00098
	callq	*%rdi
	movl	$2, 32(%rsp)
	leaq	ng4(%rip), %r8
	jmp	.LBB27_55
.LBB27_110:
	testl	%eax, %eax
	je	.LBB27_111
# BB#114:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -88(%rbp)
.LBB27_111:
	movl	-80(%rbp), %eax
	andl	-88(%rbp), %eax
	movl	%eax, -96(%rbp)
	movl	-76(%rbp), %eax
	orl	-84(%rbp), %eax
	movl	%eax, -92(%rbp)
	je	.LBB27_37
# BB#112:
	orl	%eax, -96(%rbp)
	movl	-80(%rbp), %eax
	movl	-76(%rbp), %ecx
	notl	%eax
	notl	%ecx
	andl	%eax, %ecx
	notl	%ecx
	andl	-92(%rbp), %ecx
	movl	-88(%rbp), %eax
	movl	-84(%rbp), %edx
	notl	%eax
	notl	%edx
	andl	%eax, %edx
	notl	%edx
	andl	%ecx, %edx
	movl	%edx, -92(%rbp)
	movl	-80(%rbp), %eax
	movl	-76(%rbp), %ecx
	notl	%eax
	notl	%ecx
	andl	%eax, %ecx
	notl	%ecx
	andl	-96(%rbp), %ecx
	movl	-88(%rbp), %eax
	movl	-84(%rbp), %edx
	notl	%eax
	notl	%edx
	andl	%eax, %edx
	notl	%edx
	andl	%ecx, %edx
	movl	%edx, -96(%rbp)
.LBB27_37:
	movl	-92(%rbp), %eax
	notl	%eax
	testl	-96(%rbp), %eax
	je	.LBB27_9
# BB#38:
	movl	$12583043, %ecx         # imm = 0xC00083
	callq	*__imp__iki_stmt_online(%rip)
	movq	944(%rsi), %r9
	movl	$1, -176(%rbp)
	movl	$7, -172(%rbp)
	movl	$0, -168(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, 80(%rsp)
	leaq	ng5(%rip), %rax
	movq	%rax, 56(%rsp)
	leaq	ng54(%rip), %rax
	movq	%rax, 32(%rsp)
	movl	$1, 112(%rsp)
	movl	$2, 104(%rsp)
	movl	$1, 96(%rsp)
	movq	$0, 88(%rsp)
	movl	$1, 72(%rsp)
	movl	$32, 64(%rsp)
	movl	$1, 48(%rsp)
	movl	$32, 40(%rsp)
	leaq	-104(%rbp), %rcx
	movl	$1, %edx
	movl	$7, %r8d
	callq	*__imp__iki_vlog_get_part_select_value(%rip)
	movl	$1, -192(%rbp)
	movl	$7, -188(%rbp)
	movl	$0, -184(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, 72(%rsp)
	leaq	ng0(%rip), %rax
	movq	%rax, 48(%rsp)
	movl	$1, 104(%rsp)
	movl	$2, 96(%rsp)
	movl	$1, 88(%rsp)
	movq	$0, 80(%rsp)
	movl	$1, 64(%rsp)
	movl	$32, 56(%rsp)
	movl	$1, 40(%rsp)
	movl	$32, 32(%rsp)
	leaq	ng52(%rip), %r9
	leaq	-112(%rbp), %rcx
	leaq	-120(%rbp), %rdx
	leaq	-128(%rbp), %r8
	callq	*__imp__iki_vlog_convert_part_select(%rip)
	cmpl	$0, -108(%rbp)
	je	.LBB27_115
# BB#39:
	xorl	%eax, %eax
	jmp	.LBB27_118
.LBB27_115:
	cmpl	$0, -116(%rbp)
	je	.LBB27_117
# BB#116:
	xorl	%eax, %eax
	jmp	.LBB27_118
.LBB27_150:
	testl	%eax, %eax
	je	.LBB27_151
# BB#155:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -88(%rbp)
.LBB27_151:
	movl	-72(%rbp), %eax
	andl	-88(%rbp), %eax
	movl	%eax, -96(%rbp)
	movl	-68(%rbp), %eax
	orl	-84(%rbp), %eax
	movl	%eax, -92(%rbp)
	je	.LBB27_62
# BB#152:
	orl	%eax, -96(%rbp)
	movl	-72(%rbp), %eax
	movl	-68(%rbp), %ecx
	notl	%eax
	notl	%ecx
	andl	%eax, %ecx
	notl	%ecx
	andl	-92(%rbp), %ecx
	movl	-88(%rbp), %eax
	movl	-84(%rbp), %edx
	notl	%eax
	notl	%edx
	andl	%eax, %edx
	notl	%edx
	andl	%ecx, %edx
	movl	%edx, -92(%rbp)
	movl	-72(%rbp), %eax
	movl	-68(%rbp), %ecx
	notl	%eax
	notl	%ecx
	andl	%eax, %ecx
	notl	%ecx
	andl	-96(%rbp), %ecx
	movl	-88(%rbp), %eax
	movl	-84(%rbp), %edx
	notl	%eax
	notl	%edx
	andl	%eax, %edx
	notl	%edx
	andl	%ecx, %edx
	movl	%edx, -96(%rbp)
.LBB27_62:
	movl	-92(%rbp), %eax
	notl	%eax
	testl	-96(%rbp), %eax
	je	.LBB27_9
# BB#63:
	movl	$12583074, %ecx         # imm = 0xC000A2
	callq	*__imp__iki_stmt_online(%rip)
	leaq	208(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %rdi
	leaq	-104(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %ecx
	movl	4(%rdi), %ebx
	xorl	ng0(%rip), %ecx
	movl	ng0+4(%rip), %edx
	movl	%ebx, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %ebx
	movl	%ebx, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB27_65
# BB#64:
	testl	%ebx, %ebx
	movl	$1, -104(%rbp)
	je	.LBB27_65
# BB#156:
	movl	$1, -100(%rbp)
.LBB27_65:
	movl	-100(%rbp), %eax
	notl	%eax
	testl	-104(%rbp), %eax
	je	.LBB27_66
# BB#157:
	movl	$12583075, %ecx         # imm = 0xC000A3
	callq	*__imp__iki_stmt_online(%rip)
	movl	$1, 32(%rsp)
	leaq	ng3(%rip), %r8
	xorl	%r9d, %r9d
	movq	-240(%rbp), %rcx        # 8-byte Reload
	movq	-232(%rbp), %rdx        # 8-byte Reload
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var(%rip)
.LBB27_66:
	movl	$12583077, %ecx         # imm = 0xC000A5
	movq	__imp__iki_stmt_online(%rip), %rax
	movq	%rax, %rdi
	callq	*%rdi
	movl	$3, 32(%rsp)
	leaq	ng0(%rip), %r8
	xorl	%r9d, %r9d
	movq	-208(%rbp), %rcx        # 8-byte Reload
	movq	-200(%rbp), %rdx        # 8-byte Reload
	movq	__imp__iki_vlog_schedule_transaction_blocking_var(%rip), %rax
	movq	%rax, %rbx
	callq	*%rbx
	movl	$12583078, %ecx         # imm = 0xC000A6
	callq	*%rdi
	movl	$2, 32(%rsp)
	leaq	ng6(%rip), %r8
.LBB27_55:
	xorl	%r9d, %r9d
	movq	-224(%rbp), %rcx        # 8-byte Reload
	movq	-216(%rbp), %rdx        # 8-byte Reload
	callq	*%rbx
	jmp	.LBB27_9
.LBB27_117:
	cmpl	$0, -124(%rbp)
	sete	%al
.LBB27_118:
	testb	%al, %al
	je	.LBB27_119
# BB#124:
	movl	-128(%rbp), %r9d
	movl	-112(%rbp), %eax
	subl	-120(%rbp), %eax
	incl	%eax
	movl	%eax, 32(%rsp)
	leaq	-136(%rbp), %rdi
	leaq	-104(%rbp), %r8
	xorl	%edx, %edx
	movq	%rdi, %rcx
	callq	*__imp__iki_vlog_bit_copy(%rip)
	movl	-120(%rbp), %r9d
	movl	-112(%rbp), %eax
	subl	%r9d, %eax
	movl	%eax, 32(%rsp)
	movq	%r15, %rcx
	movq	%r14, %rdx
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var(%rip)
.LBB27_119:
	movl	$12583044, %ecx         # imm = 0xC00084
	movq	__imp__iki_stmt_online(%rip), %rax
	movq	%rax, %rdi
	callq	*%rdi
	leaq	208(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movl	$0, 32(%rsp)
	movl	$7, %r9d
	movq	%r15, %rcx
	movq	%r14, %rdx
	movq	%rax, %r8
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var(%rip)
	movl	$12583046, %ecx         # imm = 0xC00086
	callq	*%rdi
	movq	832(%rsi), %rdi
	leaq	-72(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, 4(%rdi)
	jne	.LBB27_125
# BB#120:
	cmpl	$0, ng5+4(%rip)
	je	.LBB27_121
.LBB27_125:
	movq	$-1, -72(%rbp)
.LBB27_122:
	movl	$3, 32(%rsp)
	leaq	-72(%rbp), %r8
.LBB27_123:
	xorl	%r9d, %r9d
	movq	-208(%rbp), %rcx        # 8-byte Reload
	movq	-200(%rbp), %rdx        # 8-byte Reload
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var(%rip)
.LBB27_9:
	movl	$12583004, %ecx         # imm = 0xC0005C
	callq	*__imp__iki_stmt_online(%rip)
	movb	$1, 2040(%rsi)
	leaq	.Ltmp101(%rip), %rax
	movq	%rax, 1960(%rsi)
	addq	$312, %rsp              # imm = 0x138
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB27_121:
	movl	(%rdi), %eax
	addl	ng5(%rip), %eax
	movl	%eax, -72(%rbp)
	movl	$0, -68(%rbp)
	jmp	.LBB27_122

	.def	 _execute_35;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_35
	.align	16, 0x90
_execute_35:                            # @_execute_35
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$56, %rsp
	movq	%rdx, %rsi
	.align	16, 0x90
.LBB28_1:                               # =>This Inner Loop Header: Depth=1
	movl	$21, %edx
	movq	%rsi, %rcx
	callq	*__imp__iki_vlog_set_threadId_for_unrandom(%rip)
	movq	2096(%rsi), %rax
	testq	%rax, %rax
	je	.LBB28_5
# BB#2:                                 #   in Loop: Header=BB28_1 Depth=1
	jmpq	*%rax
.Ltmp105:                               # Block address taken
.LBB28_3:
	movb	$0, 2176(%rsi)
	movl	$13631586, %ecx         # imm = 0xD00062
	callq	*__imp__iki_stmt_online(%rip)
	leaq	96(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movl	4(%rax), %ecx
	notl	%ecx
	testl	(%rax), %ecx
	je	.LBB28_4
# BB#6:
	movq	__imp__iki_stmt_online(%rip), %r14
	movl	$13631588, %ecx         # imm = 0xD00064
	callq	*%r14
	movq	__imp__iki_malloc8(%rip), %rbx
	callq	*%rbx
	movq	%rax, %rdi
	movq	__imp__iki_std_memset(%rip), %r15
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r15
	movl	ng2(%rip), %eax
	andl	$15, %eax
	movl	%eax, (%rdi)
	movl	ng2+4(%rip), %eax
	andl	$15, %eax
	movl	%eax, 4(%rdi)
	leaq	768(%rsi), %rcx
	leaq	2184(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$3, 32(%rsp)
	movq	__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip), %r12
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r12
	movl	$13631589, %ecx         # imm = 0xD00065
	callq	*%r14
	callq	*%rbx
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r15
	movl	ng0(%rip), %eax
	andl	$1, %eax
	movl	%eax, (%rdi)
	movl	ng0+4(%rip), %eax
	andl	$1, %eax
	movl	%eax, 4(%rdi)
	leaq	880(%rsi), %rcx
	leaq	2224(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$0, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r12
	movl	$13631590, %ecx         # imm = 0xD00066
	callq	*%r14
	callq	*%rbx
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r15
	movzbl	ng1(%rip), %eax
	movl	%eax, (%rdi)
	movzbl	ng1+4(%rip), %eax
	movl	%eax, 4(%rdi)
	leaq	992(%rsi), %rcx
	leaq	2264(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r12
	movl	$13631591, %ecx         # imm = 0xD00067
	callq	*%r14
	callq	*%rbx
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r15
	movl	ng0(%rip), %eax
	andl	$1, %eax
	movl	%eax, (%rdi)
	movl	ng0+4(%rip), %eax
	andl	$1, %eax
	movl	%eax, 4(%rdi)
	leaq	1104(%rsi), %rcx
	leaq	2304(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$0, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r12
	movl	$13631592, %ecx         # imm = 0xD00068
	callq	*%r14
	callq	*%rbx
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r15
	movzbl	ng1(%rip), %eax
	movl	%eax, (%rdi)
	movzbl	ng1+4(%rip), %eax
	movl	%eax, 4(%rdi)
	leaq	1216(%rsi), %rcx
	leaq	2344(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r12
	movl	$13631593, %ecx         # imm = 0xD00069
	callq	*%r14
	callq	*%rbx
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r15
	movzbl	ng1(%rip), %eax
	movl	%eax, (%rdi)
	movzbl	ng1+4(%rip), %eax
	movl	%eax, 4(%rdi)
	leaq	1328(%rsi), %rcx
	leaq	2384(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r12
	movl	$13631594, %ecx         # imm = 0xD0006A
	callq	*%r14
	callq	*%rbx
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r15
	movzbl	ng1(%rip), %eax
	movl	%eax, (%rdi)
	movzbl	ng1+4(%rip), %eax
	movl	%eax, 4(%rdi)
	leaq	1440(%rsi), %rcx
	leaq	2424(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r12
	movl	$13631595, %ecx         # imm = 0xD0006B
	callq	*%r14
	callq	*%rbx
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r15
	movl	ng0(%rip), %eax
	andl	$1, %eax
	movl	%eax, (%rdi)
	movl	ng0+4(%rip), %eax
	andl	$1, %eax
	movl	%eax, 4(%rdi)
	leaq	1552(%rsi), %rcx
	leaq	2464(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$0, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r12
	jmp	.LBB28_5
.LBB28_4:
	movq	__imp__iki_stmt_online(%rip), %r14
	movl	$13631598, %ecx         # imm = 0xD0006E
	callq	*%r14
	movq	832(%rsi), %rbx
	movq	__imp__iki_malloc8(%rip), %r15
	callq	*%r15
	movq	%rax, %rdi
	movq	__imp__iki_std_memset(%rip), %r12
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r12
	movl	(%rbx), %eax
	andl	$15, %eax
	movl	%eax, (%rdi)
	movl	4(%rbx), %eax
	andl	$15, %eax
	movl	%eax, 4(%rdi)
	leaq	768(%rsi), %rcx
	leaq	2504(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$3, 32(%rsp)
	movq	__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip), %r13
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r13
	movl	$13631599, %ecx         # imm = 0xD0006F
	callq	*%r14
	movq	944(%rsi), %rbx
	callq	*%r15
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r12
	movl	(%rbx), %eax
	andl	$1, %eax
	movl	%eax, (%rdi)
	movl	4(%rbx), %eax
	andl	$1, %eax
	movl	%eax, 4(%rdi)
	leaq	880(%rsi), %rcx
	leaq	2544(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$0, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r13
	movl	$13631600, %ecx         # imm = 0xD00070
	callq	*%r14
	movq	1056(%rsi), %rbx
	callq	*%r15
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r12
	movzbl	(%rbx), %eax
	movl	%eax, (%rdi)
	movzbl	4(%rbx), %eax
	movl	%eax, 4(%rdi)
	leaq	992(%rsi), %rcx
	leaq	2584(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r13
	movl	$13631601, %ecx         # imm = 0xD00071
	callq	*%r14
	movq	1168(%rsi), %rbx
	callq	*%r15
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r12
	movl	(%rbx), %eax
	andl	$1, %eax
	movl	%eax, (%rdi)
	movl	4(%rbx), %eax
	andl	$1, %eax
	movl	%eax, 4(%rdi)
	leaq	1104(%rsi), %rcx
	leaq	2624(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$0, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r13
	movl	$13631602, %ecx         # imm = 0xD00072
	callq	*%r14
	movq	1280(%rsi), %rbx
	callq	*%r15
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r12
	movzbl	(%rbx), %eax
	movl	%eax, (%rdi)
	movzbl	4(%rbx), %eax
	movl	%eax, 4(%rdi)
	leaq	1216(%rsi), %rcx
	leaq	2664(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r13
	movl	$13631603, %ecx         # imm = 0xD00073
	callq	*%r14
	movq	1392(%rsi), %rbx
	callq	*%r15
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r12
	movzbl	(%rbx), %eax
	movl	%eax, (%rdi)
	movzbl	4(%rbx), %eax
	movl	%eax, 4(%rdi)
	leaq	1328(%rsi), %rcx
	leaq	2704(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r13
	movl	$13631604, %ecx         # imm = 0xD00074
	callq	*%r14
	movq	1504(%rsi), %rbx
	callq	*%r15
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r12
	movzbl	(%rbx), %eax
	movl	%eax, (%rdi)
	movzbl	4(%rbx), %eax
	movl	%eax, 4(%rdi)
	leaq	1440(%rsi), %rcx
	leaq	2744(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r13
	movl	$13631605, %ecx         # imm = 0xD00075
	callq	*%r14
	movq	1616(%rsi), %rbx
	callq	*%r15
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r12
	movl	(%rbx), %eax
	andl	$1, %eax
	movl	%eax, (%rdi)
	movl	4(%rbx), %eax
	andl	$1, %eax
	movl	%eax, 4(%rdi)
	leaq	1552(%rsi), %rcx
	leaq	2784(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$0, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r13
.LBB28_5:
	movl	$13631585, %ecx         # imm = 0xD00061
	callq	*__imp__iki_stmt_online(%rip)
	movb	$1, 2176(%rsi)
	leaq	.Ltmp105(%rip), %rax
	movq	%rax, 2096(%rsi)
	addq	$56, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret

	.def	 _execute_36;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_36
	.align	16, 0x90
_execute_36:                            # @_execute_36
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$232, %rsp
	movq	%rdx, %rsi
	.align	16, 0x90
.LBB29_1:                               # =>This Inner Loop Header: Depth=1
	movl	$22, %edx
	movq	%rsi, %rcx
	callq	*__imp__iki_vlog_set_threadId_for_unrandom(%rip)
	movq	2864(%rsi), %rax
	testq	%rax, %rax
	je	.LBB29_16
# BB#2:                                 #   in Loop: Header=BB29_1 Depth=1
	jmpq	*%rax
.Ltmp109:                               # Block address taken
.LBB29_3:
	movb	$0, 2944(%rsi)
	movq	__imp__iki_stmt_online(%rip), %rbx
	movl	$13631613, %ecx         # imm = 0xD0007D
	callq	*%rbx
	movq	776(%rsi), %r8
	leaq	824(%rsi), %rcx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	leaq	4296(%rsi), %rdx
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	movl	$3, 32(%rsp)
	movq	__imp__iki_vlog_schedule_transaction_blocking_var(%rip), %r15
	xorl	%r9d, %r9d
	callq	*%r15
	movl	$13631614, %ecx         # imm = 0xD0007E
	callq	*%rbx
	leaq	936(%rsi), %rcx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	leaq	4328(%rsi), %rdx
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	leaq	ng0(%rip), %r8
	movq	__imp__iki_vlog_schedule_transaction_blocking_var_setback0(%rip), %rdi
	xorl	%r9d, %r9d
	movq	%r8, %r12
	callq	*%rdi
	movl	$13631615, %ecx         # imm = 0xD0007F
	callq	*%rbx
	movq	1000(%rsi), %r8
	leaq	1048(%rsi), %r14
	leaq	4360(%rsi), %r13
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%r14, %rcx
	movq	%r13, %rdx
	callq	*%r15
	movl	$13631616, %ecx         # imm = 0xD00080
	callq	*%rbx
	leaq	1160(%rsi), %rcx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	leaq	4392(%rsi), %rdx
	movq	%rdx, -176(%rbp)        # 8-byte Spill
	xorl	%r9d, %r9d
	movq	%r12, %r8
	callq	*%rdi
	movl	$13631617, %ecx         # imm = 0xD00081
	callq	*%rbx
	movq	1224(%rsi), %r8
	leaq	1272(%rsi), %rcx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	leaq	4424(%rsi), %rdx
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	callq	*%r15
	movl	$13631618, %ecx         # imm = 0xD00082
	callq	*%rbx
	movq	1336(%rsi), %r8
	leaq	1384(%rsi), %rcx
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	leaq	4456(%rsi), %rdx
	movq	%rdx, -216(%rbp)        # 8-byte Spill
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	callq	*%r15
	movl	$13631619, %ecx         # imm = 0xD00083
	callq	*%rbx
	movq	1448(%rsi), %r8
	leaq	1496(%rsi), %rcx
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	leaq	4488(%rsi), %rdx
	movq	%rdx, -248(%rbp)        # 8-byte Spill
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	callq	*%r15
	movl	$13631620, %ecx         # imm = 0xD00084
	callq	*%rbx
	leaq	1608(%rsi), %rcx
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	leaq	4520(%rsi), %rdx
	movq	%rdx, -232(%rbp)        # 8-byte Spill
	xorl	%r9d, %r9d
	movq	%r12, %r8
	callq	*%rdi
	movl	$13631622, %ecx         # imm = 0xD00086
	callq	*%rbx
	movq	776(%rsi), %rdx
	leaq	-64(%rbp), %rdi
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	ng2(%rip), %r8
	movl	$4, %edx
	movl	$4, %r9d
	movq	%rdi, %rcx
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB29_4
# BB#17:
	movl	$13631627, %ecx         # imm = 0xD0008B
	callq	*%rbx
	movl	$3, 32(%rsp)
	leaq	ng3(%rip), %r8
	xorl	%r9d, %r9d
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movq	-160(%rbp), %rdx        # 8-byte Reload
	callq	*%r15
	movl	$13631628, %ecx         # imm = 0xD0008C
	callq	*%rbx
	leaq	ng5(%rip), %r8
	xorl	%r9d, %r9d
	movq	-144(%rbp), %rcx        # 8-byte Reload
	movq	-152(%rbp), %rdx        # 8-byte Reload
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var_setback0(%rip)
	movl	$13631629, %ecx         # imm = 0xD0008D
	callq	*%rbx
	movl	$7, 32(%rsp)
	leaq	ng15(%rip), %r8
.LBB29_26:
	xorl	%r9d, %r9d
	movq	%r14, %rcx
	movq	%r13, %rdx
	callq	*%r15
	jmp	.LBB29_16
.LBB29_4:
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	-152(%rbp), %r12        # 8-byte Reload
	leaq	ng3(%rip), %r8
	leaq	-64(%rbp), %rcx
	movl	$4, %edx
	movl	$4, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB29_5
# BB#36:
	movl	$13631636, %ecx         # imm = 0xD00094
	callq	*__imp__iki_stmt_online(%rip)
	leaq	264(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movl	4(%rax), %ecx
	notl	%ecx
	testl	(%rax), %ecx
	je	.LBB29_16
# BB#37:
	movl	$13631637, %ecx         # imm = 0xD00095
	callq	*__imp__iki_stmt_online(%rip)
	movl	$3, 32(%rsp)
	leaq	ng4(%rip), %r8
.LBB29_38:
	xorl	%r9d, %r9d
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movq	-160(%rbp), %rdx        # 8-byte Reload
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var(%rip)
	jmp	.LBB29_16
.LBB29_5:
	leaq	ng4(%rip), %r8
	leaq	-64(%rbp), %rcx
	movl	$4, %edx
	movl	$4, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB29_6
# BB#18:
	movl	$13631644, %ecx         # imm = 0xD0009C
	callq	*__imp__iki_stmt_online(%rip)
	leaq	488(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movl	4(%rax), %ecx
	notl	%ecx
	testl	(%rax), %ecx
	je	.LBB29_19
# BB#39:
	movl	$13631646, %ecx         # imm = 0xD0009E
	callq	*__imp__iki_stmt_online(%rip)
	leaq	376(%rsi), %rcx
	movl	$8, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %rdi
	leaq	-72(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %ecx
	movl	4(%rdi), %ebx
	xorl	ng56(%rip), %ecx
	movl	ng56+4(%rip), %edx
	movl	%ebx, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %ebx
	movl	%ebx, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB29_41
# BB#40:
	testl	%ebx, %ebx
	movl	$1, -72(%rbp)
	je	.LBB29_41
# BB#50:
	movl	$1, -68(%rbp)
.LBB29_41:
	leaq	-80(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	-72(%rbp), %ecx
	testb	$1, %cl
	je	.LBB29_42
# BB#51:
	movl	$1, -80(%rbp)
	jmp	.LBB29_43
.LBB29_6:
	leaq	ng6(%rip), %r8
	leaq	-64(%rbp), %rcx
	movl	$4, %edx
	movl	$4, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB29_7
# BB#21:
	movl	$13631659, %ecx         # imm = 0xD000AB
	callq	*__imp__iki_stmt_online(%rip)
	leaq	488(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movl	4(%rax), %ecx
	notl	%ecx
	testl	(%rax), %ecx
	je	.LBB29_22
# BB#63:
	movl	$13631661, %ecx         # imm = 0xD000AD
	callq	*__imp__iki_stmt_online(%rip)
	leaq	376(%rsi), %rcx
	movl	$8, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %rdi
	leaq	-72(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %ecx
	movl	4(%rdi), %ebx
	xorl	ng57(%rip), %ecx
	movl	ng57+4(%rip), %edx
	movl	%ebx, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %ebx
	movl	%ebx, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB29_65
# BB#64:
	testl	%ebx, %ebx
	movl	$1, -72(%rbp)
	je	.LBB29_65
# BB#74:
	movl	$1, -68(%rbp)
.LBB29_65:
	leaq	-80(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	-72(%rbp), %ecx
	testb	$1, %cl
	je	.LBB29_66
# BB#75:
	movl	$1, -80(%rbp)
	jmp	.LBB29_67
.LBB29_7:
	leaq	ng7(%rip), %r8
	leaq	-64(%rbp), %rcx
	movl	$4, %edx
	movl	$4, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB29_8
# BB#23:
	movl	$13631674, %ecx         # imm = 0xD000BA
	callq	*__imp__iki_stmt_online(%rip)
	leaq	488(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movl	4(%rax), %ecx
	notl	%ecx
	testl	(%rax), %ecx
	je	.LBB29_24
# BB#87:
	movl	$13631676, %ecx         # imm = 0xD000BC
	callq	*__imp__iki_stmt_online(%rip)
	leaq	376(%rsi), %rcx
	movl	$8, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %rdi
	leaq	-72(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %ecx
	movl	4(%rdi), %ebx
	xorl	ng1(%rip), %ecx
	movl	ng1+4(%rip), %edx
	movl	%ebx, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %ebx
	movl	%ebx, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB29_89
# BB#88:
	testl	%ebx, %ebx
	movl	$1, -72(%rbp)
	je	.LBB29_89
# BB#98:
	movl	$1, -68(%rbp)
.LBB29_89:
	leaq	-80(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	-72(%rbp), %ecx
	testb	$1, %cl
	je	.LBB29_90
# BB#99:
	movl	$1, -80(%rbp)
	jmp	.LBB29_91
.LBB29_8:
	leaq	ng8(%rip), %r8
	leaq	-64(%rbp), %rcx
	movl	$4, %edx
	movl	$4, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB29_9
# BB#25:
	movl	$13631689, %ecx         # imm = 0xD000C9
	callq	*%rbx
	movl	$3, 32(%rsp)
	leaq	ng9(%rip), %r8
	xorl	%r9d, %r9d
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movq	-160(%rbp), %rdx        # 8-byte Reload
	callq	*%r15
	movl	$13631690, %ecx         # imm = 0xD000CA
	callq	*%rbx
	leaq	ng5(%rip), %r8
	xorl	%r9d, %r9d
	movq	%rdi, %rcx
	movq	%r12, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var_setback0(%rip)
	movl	$13631691, %ecx         # imm = 0xD000CB
	callq	*%rbx
	movl	$7, 32(%rsp)
	leaq	ng58(%rip), %r8
	jmp	.LBB29_26
.LBB29_42:
	testl	%eax, %eax
	je	.LBB29_43
# BB#52:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -80(%rbp)
.LBB29_43:
	cmpl	$0, -80(%rbp)
	movb	$1, %al
	jne	.LBB29_45
# BB#44:
	cmpl	$0, -76(%rbp)
	setne	%al
.LBB29_45:
	testb	%al, %al
	je	.LBB29_46
# BB#53:
	leaq	432(%rsi), %rcx
	movl	$2, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %rdi
	leaq	-88(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %ecx
	movl	4(%rdi), %ebx
	xorl	ng1(%rip), %ecx
	movl	ng1+4(%rip), %edx
	movl	%ebx, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %ebx
	movl	%ebx, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB29_55
# BB#54:
	testl	%ebx, %ebx
	movl	$1, -88(%rbp)
	je	.LBB29_55
# BB#59:
	movl	$1, -84(%rbp)
.LBB29_55:
	leaq	-96(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	-84(%rbp), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	-88(%rbp), %ecx
	testb	$1, %cl
	je	.LBB29_56
# BB#60:
	movl	$1, -96(%rbp)
	movq	-160(%rbp), %rdi        # 8-byte Reload
	jmp	.LBB29_57
.LBB29_46:
	leaq	-104(%rbp), %rcx
	leaq	-80(%rbp), %rdx
	movl	$8, %r8d
	callq	*__imp__iki_std_memcpy(%rip)
	andl	$1, -104(%rbp)
	andl	$1, -100(%rbp)
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	-168(%rbp), %rbx        # 8-byte Reload
	jmp	.LBB29_47
.LBB29_22:
	movl	$13631667, %ecx         # imm = 0xD000B3
	jmp	.LBB29_20
.LBB29_9:
	leaq	ng9(%rip), %r8
	leaq	-64(%rbp), %rcx
	movl	$4, %edx
	movl	$4, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB29_10
# BB#111:
	movl	$13631698, %ecx         # imm = 0xD000D2
	callq	*__imp__iki_stmt_online(%rip)
	leaq	264(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movl	4(%rax), %ecx
	notl	%ecx
	testl	(%rax), %ecx
	je	.LBB29_16
# BB#112:
	movl	$13631699, %ecx         # imm = 0xD000D3
	callq	*__imp__iki_stmt_online(%rip)
	movl	$3, 32(%rsp)
	leaq	ng10(%rip), %r8
	jmp	.LBB29_38
.LBB29_66:
	testl	%eax, %eax
	je	.LBB29_67
# BB#76:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -80(%rbp)
.LBB29_67:
	cmpl	$0, -80(%rbp)
	movb	$1, %al
	jne	.LBB29_69
# BB#68:
	cmpl	$0, -76(%rbp)
	setne	%al
.LBB29_69:
	testb	%al, %al
	je	.LBB29_70
# BB#77:
	leaq	432(%rsi), %rcx
	movl	$2, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %rdi
	leaq	-88(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %ecx
	movl	4(%rdi), %ebx
	xorl	ng1(%rip), %ecx
	movl	ng1+4(%rip), %edx
	movl	%ebx, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %ebx
	movl	%ebx, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB29_79
# BB#78:
	testl	%ebx, %ebx
	movl	$1, -88(%rbp)
	je	.LBB29_79
# BB#83:
	movl	$1, -84(%rbp)
.LBB29_79:
	leaq	-96(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	-84(%rbp), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	-88(%rbp), %ecx
	testb	$1, %cl
	movq	-160(%rbp), %rdi        # 8-byte Reload
	je	.LBB29_80
# BB#84:
	movl	$1, -96(%rbp)
	movq	-168(%rbp), %rbx        # 8-byte Reload
	jmp	.LBB29_81
.LBB29_70:
	leaq	-104(%rbp), %rcx
	leaq	-80(%rbp), %rdx
	movl	$8, %r8d
	callq	*__imp__iki_std_memcpy(%rip)
	andl	$1, -104(%rbp)
	andl	$1, -100(%rbp)
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	-168(%rbp), %rbx        # 8-byte Reload
	jmp	.LBB29_71
.LBB29_56:
	testl	%eax, %eax
	movq	-160(%rbp), %rdi        # 8-byte Reload
	je	.LBB29_57
# BB#61:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -96(%rbp)
.LBB29_57:
	movl	-80(%rbp), %eax
	andl	-96(%rbp), %eax
	movl	%eax, -104(%rbp)
	movl	-76(%rbp), %eax
	orl	-92(%rbp), %eax
	movl	%eax, -100(%rbp)
	movq	-168(%rbp), %rbx        # 8-byte Reload
	je	.LBB29_47
# BB#58:
	orl	%eax, -104(%rbp)
	movl	-80(%rbp), %eax
	movl	-76(%rbp), %ecx
	notl	%eax
	notl	%ecx
	andl	%eax, %ecx
	notl	%ecx
	andl	-100(%rbp), %ecx
	movl	-96(%rbp), %eax
	movl	-92(%rbp), %edx
	notl	%eax
	notl	%edx
	andl	%eax, %edx
	notl	%edx
	andl	%ecx, %edx
	movl	%edx, -100(%rbp)
	movl	-80(%rbp), %eax
	movl	-76(%rbp), %ecx
	notl	%eax
	notl	%ecx
	andl	%eax, %ecx
	notl	%ecx
	andl	-104(%rbp), %ecx
	movl	-96(%rbp), %eax
	movl	-92(%rbp), %edx
	notl	%eax
	notl	%edx
	andl	%eax, %edx
	notl	%edx
	andl	%ecx, %edx
	movl	%edx, -104(%rbp)
.LBB29_47:
	movl	-100(%rbp), %eax
	notl	%eax
	testl	-104(%rbp), %eax
	je	.LBB29_48
# BB#62:
	movl	$13631647, %ecx         # imm = 0xD0009F
	callq	*__imp__iki_stmt_online(%rip)
	movl	$3, 32(%rsp)
	leaq	ng6(%rip), %r8
	jmp	.LBB29_49
.LBB29_48:
	movl	$13631650, %ecx         # imm = 0xD000A2
	callq	*__imp__iki_stmt_online(%rip)
	movl	$3, 32(%rsp)
	leaq	ng2(%rip), %r8
.LBB29_49:
	xorl	%r9d, %r9d
	movq	%rbx, %rcx
	movq	%rdi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var(%rip)
.LBB29_19:
	movl	$13631652, %ecx         # imm = 0xD000A4
	jmp	.LBB29_20
.LBB29_24:
	movl	$13631681, %ecx         # imm = 0xD000C1
	jmp	.LBB29_20
.LBB29_10:
	leaq	ng10(%rip), %r8
	leaq	-64(%rbp), %rcx
	movl	$4, %edx
	movl	$4, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB29_11
# BB#27:
	movl	$13631706, %ecx         # imm = 0xD000DA
	callq	*__imp__iki_stmt_online(%rip)
	leaq	488(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movl	4(%rax), %ecx
	notl	%ecx
	testl	(%rax), %ecx
	je	.LBB29_28
# BB#113:
	movl	$13631707, %ecx         # imm = 0xD000DB
	callq	*__imp__iki_stmt_online(%rip)
	leaq	376(%rsi), %rdi
	movl	$8, %edx
	movq	%rdi, %rcx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %rbx
	leaq	-72(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rbx), %ecx
	movl	4(%rbx), %ebx
	xorl	ng56(%rip), %ecx
	movl	ng56+4(%rip), %edx
	movl	%ebx, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %ebx
	movl	%ebx, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB29_115
# BB#114:
	testl	%ebx, %ebx
	movl	$1, -72(%rbp)
	je	.LBB29_115
# BB#130:
	movl	$1, -68(%rbp)
.LBB29_115:
	leaq	-80(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	-72(%rbp), %ecx
	testb	$1, %cl
	je	.LBB29_116
# BB#131:
	movl	$1, -80(%rbp)
	jmp	.LBB29_117
.LBB29_90:
	testl	%eax, %eax
	je	.LBB29_91
# BB#100:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -80(%rbp)
.LBB29_91:
	cmpl	$0, -80(%rbp)
	movb	$1, %al
	jne	.LBB29_93
# BB#92:
	cmpl	$0, -76(%rbp)
	setne	%al
.LBB29_93:
	testb	%al, %al
	je	.LBB29_94
# BB#101:
	leaq	432(%rsi), %rcx
	movl	$2, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %rdi
	leaq	-88(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %ecx
	movl	4(%rdi), %ebx
	xorl	ng1(%rip), %ecx
	movl	ng1+4(%rip), %edx
	movl	%ebx, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %ebx
	movl	%ebx, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB29_103
# BB#102:
	testl	%ebx, %ebx
	movl	$1, -88(%rbp)
	je	.LBB29_103
# BB#107:
	movl	$1, -84(%rbp)
.LBB29_103:
	leaq	-96(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	-84(%rbp), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	-88(%rbp), %ecx
	testb	$1, %cl
	movq	-160(%rbp), %rdi        # 8-byte Reload
	je	.LBB29_104
# BB#108:
	movl	$1, -96(%rbp)
	movq	-168(%rbp), %rbx        # 8-byte Reload
	jmp	.LBB29_105
.LBB29_94:
	leaq	-104(%rbp), %rcx
	leaq	-80(%rbp), %rdx
	movl	$8, %r8d
	callq	*__imp__iki_std_memcpy(%rip)
	andl	$1, -104(%rbp)
	andl	$1, -100(%rbp)
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	-168(%rbp), %rbx        # 8-byte Reload
	jmp	.LBB29_95
.LBB29_80:
	testl	%eax, %eax
	movq	-168(%rbp), %rbx        # 8-byte Reload
	je	.LBB29_81
# BB#85:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -96(%rbp)
.LBB29_81:
	movl	-80(%rbp), %eax
	andl	-96(%rbp), %eax
	movl	%eax, -104(%rbp)
	movl	-76(%rbp), %eax
	orl	-92(%rbp), %eax
	movl	%eax, -100(%rbp)
	je	.LBB29_71
# BB#82:
	orl	%eax, -104(%rbp)
	movl	-80(%rbp), %eax
	movl	-76(%rbp), %ecx
	notl	%eax
	notl	%ecx
	andl	%eax, %ecx
	notl	%ecx
	andl	-100(%rbp), %ecx
	movl	-96(%rbp), %eax
	movl	-92(%rbp), %edx
	notl	%eax
	notl	%edx
	andl	%eax, %edx
	notl	%edx
	andl	%ecx, %edx
	movl	%edx, -100(%rbp)
	movl	-80(%rbp), %eax
	movl	-76(%rbp), %ecx
	notl	%eax
	notl	%ecx
	andl	%eax, %ecx
	notl	%ecx
	andl	-104(%rbp), %ecx
	movl	-96(%rbp), %eax
	movl	-92(%rbp), %edx
	notl	%eax
	notl	%edx
	andl	%eax, %edx
	notl	%edx
	andl	%ecx, %edx
	movl	%edx, -104(%rbp)
.LBB29_71:
	movl	-100(%rbp), %eax
	notl	%eax
	testl	-104(%rbp), %eax
	je	.LBB29_72
# BB#86:
	movl	$13631662, %ecx         # imm = 0xD000AE
	callq	*__imp__iki_stmt_online(%rip)
	movl	$3, 32(%rsp)
	leaq	ng7(%rip), %r8
	jmp	.LBB29_73
.LBB29_72:
	movl	$13631665, %ecx         # imm = 0xD000B1
	callq	*__imp__iki_stmt_online(%rip)
	movl	$3, 32(%rsp)
	leaq	ng2(%rip), %r8
.LBB29_73:
	xorl	%r9d, %r9d
	movq	%rbx, %rcx
	movq	%rdi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var(%rip)
	movl	$13631667, %ecx         # imm = 0xD000B3
	jmp	.LBB29_20
.LBB29_11:
	leaq	ng11(%rip), %r8
	leaq	-64(%rbp), %rcx
	movl	$4, %edx
	movl	$4, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB29_12
# BB#29:
	movl	$13631719, %ecx         # imm = 0xD000E7
	callq	*__imp__iki_stmt_online(%rip)
	leaq	488(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movl	4(%rax), %ecx
	notl	%ecx
	testl	(%rax), %ecx
	je	.LBB29_30
# BB#154:
	movl	$13631720, %ecx         # imm = 0xD000E8
	callq	*__imp__iki_stmt_online(%rip)
	leaq	432(%rsi), %rcx
	movl	$2, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %r14
	leaq	-72(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%r14), %ecx
	movl	4(%r14), %edx
	xorl	ng1(%rip), %ecx
	movl	ng1+4(%rip), %r8d
	movl	%edx, %eax
	xorl	%r8d, %eax
	orl	%ecx, %eax
	orl	%r8d, %edx
	movl	%edx, %ecx
	notl	%ecx
	testl	%ecx, %eax
	movq	%r15, %rdi
	jne	.LBB29_156
# BB#155:
	testl	%edx, %edx
	movl	$1, -72(%rbp)
	je	.LBB29_156
# BB#158:
	movl	$1, -68(%rbp)
.LBB29_156:
	movl	-68(%rbp), %eax
	notl	%eax
	testl	-72(%rbp), %eax
	je	.LBB29_157
# BB#159:
	movl	$13631721, %ecx         # imm = 0xD000E9
	movq	%rbx, %r12
	callq	*%r12
	movl	$3, 32(%rsp)
	leaq	ng12(%rip), %r8
	xorl	%r9d, %r9d
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movq	-160(%rbp), %rdx        # 8-byte Reload
	callq	*%rdi
	movl	$13631722, %ecx         # imm = 0xD000EA
	callq	*%r12
	leaq	376(%rsi), %rcx
	movl	$8, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	movq	-192(%rbp), %rcx        # 8-byte Reload
	movq	-200(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %r8
	callq	*%rdi
	movl	$13631726, %ecx         # imm = 0xD000EE
	jmp	.LBB29_20
.LBB29_104:
	testl	%eax, %eax
	movq	-168(%rbp), %rbx        # 8-byte Reload
	je	.LBB29_105
# BB#109:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -96(%rbp)
.LBB29_105:
	movl	-80(%rbp), %eax
	andl	-96(%rbp), %eax
	movl	%eax, -104(%rbp)
	movl	-76(%rbp), %eax
	orl	-92(%rbp), %eax
	movl	%eax, -100(%rbp)
	je	.LBB29_95
# BB#106:
	orl	%eax, -104(%rbp)
	movl	-80(%rbp), %eax
	movl	-76(%rbp), %ecx
	notl	%eax
	notl	%ecx
	andl	%eax, %ecx
	notl	%ecx
	andl	-100(%rbp), %ecx
	movl	-96(%rbp), %eax
	movl	-92(%rbp), %edx
	notl	%eax
	notl	%edx
	andl	%eax, %edx
	notl	%edx
	andl	%ecx, %edx
	movl	%edx, -100(%rbp)
	movl	-80(%rbp), %eax
	movl	-76(%rbp), %ecx
	notl	%eax
	notl	%ecx
	andl	%eax, %ecx
	notl	%ecx
	andl	-104(%rbp), %ecx
	movl	-96(%rbp), %eax
	movl	-92(%rbp), %edx
	notl	%eax
	notl	%edx
	andl	%eax, %edx
	notl	%edx
	andl	%ecx, %edx
	movl	%edx, -104(%rbp)
.LBB29_95:
	movl	-100(%rbp), %eax
	notl	%eax
	testl	-104(%rbp), %eax
	je	.LBB29_96
# BB#110:
	movl	$13631677, %ecx         # imm = 0xD000BD
	callq	*__imp__iki_stmt_online(%rip)
	movl	$3, 32(%rsp)
	leaq	ng8(%rip), %r8
	jmp	.LBB29_97
.LBB29_96:
	movl	$13631679, %ecx         # imm = 0xD000BF
	callq	*__imp__iki_stmt_online(%rip)
	movl	$3, 32(%rsp)
	leaq	ng2(%rip), %r8
.LBB29_97:
	xorl	%r9d, %r9d
	movq	%rbx, %rcx
	movq	%rdi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var(%rip)
	movl	$13631681, %ecx         # imm = 0xD000C1
.LBB29_20:
	callq	*__imp__iki_stmt_online(%rip)
	leaq	ng5(%rip), %r8
	xorl	%r9d, %r9d
	movq	-184(%rbp), %rcx        # 8-byte Reload
	movq	-176(%rbp), %rdx        # 8-byte Reload
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var_setback0(%rip)
.LBB29_16:
	movl	$13631611, %ecx         # imm = 0xD0007B
	callq	*__imp__iki_stmt_online(%rip)
	movb	$1, 2944(%rsi)
	leaq	.Ltmp109(%rip), %rax
	movq	%rax, 2864(%rsi)
	addq	$232, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB29_12:
	leaq	ng12(%rip), %r8
	leaq	-64(%rbp), %rcx
	movl	$4, %edx
	movl	$4, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB29_13
# BB#31:
	movl	$13631733, %ecx         # imm = 0xD000F5
	callq	*__imp__iki_stmt_online(%rip)
	leaq	488(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movl	4(%rax), %ecx
	notl	%ecx
	testl	(%rax), %ecx
	je	.LBB29_32
# BB#160:
	movl	$13631734, %ecx         # imm = 0xD000F6
	callq	*__imp__iki_stmt_online(%rip)
	leaq	432(%rsi), %rcx
	movl	$2, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %r14
	leaq	-72(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%r14), %ecx
	movl	4(%r14), %edx
	xorl	ng1(%rip), %ecx
	movl	ng1+4(%rip), %r8d
	movl	%edx, %eax
	xorl	%r8d, %eax
	orl	%ecx, %eax
	orl	%r8d, %edx
	movl	%edx, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB29_162
# BB#161:
	testl	%edx, %edx
	movl	$1, -72(%rbp)
	je	.LBB29_162
# BB#164:
	movl	$1, -68(%rbp)
.LBB29_162:
	movl	-68(%rbp), %eax
	notl	%eax
	testl	-72(%rbp), %eax
	je	.LBB29_163
# BB#165:
	movl	$13631735, %ecx         # imm = 0xD000F7
	movq	%rbx, %r12
	callq	*%r12
	movl	$3, 32(%rsp)
	leaq	ng13(%rip), %r8
	xorl	%r9d, %r9d
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movq	-160(%rbp), %rdx        # 8-byte Reload
	movq	%r15, %rdi
	callq	*%rdi
	movl	$13631736, %ecx         # imm = 0xD000F8
	callq	*%r12
	leaq	376(%rsi), %rcx
	movl	$8, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	movq	-208(%rbp), %rcx        # 8-byte Reload
	movq	-216(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %r8
	callq	*%rdi
	movl	$13631740, %ecx         # imm = 0xD000FC
	jmp	.LBB29_20
.LBB29_28:
	movl	$13631712, %ecx         # imm = 0xD000E0
	jmp	.LBB29_20
.LBB29_13:
	leaq	ng13(%rip), %r8
	leaq	-64(%rbp), %rcx
	movl	$4, %edx
	movl	$4, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB29_14
# BB#33:
	movl	$13631747, %ecx         # imm = 0xD00103
	callq	*__imp__iki_stmt_online(%rip)
	leaq	488(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movl	4(%rax), %ecx
	notl	%ecx
	testl	(%rax), %ecx
	je	.LBB29_34
# BB#166:
	movl	$13631748, %ecx         # imm = 0xD00104
	callq	*__imp__iki_stmt_online(%rip)
	leaq	432(%rsi), %rcx
	movl	$2, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %r14
	leaq	-72(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%r14), %ecx
	movl	4(%r14), %edx
	xorl	ng1(%rip), %ecx
	movl	ng1+4(%rip), %r8d
	movl	%edx, %eax
	xorl	%r8d, %eax
	orl	%ecx, %eax
	orl	%r8d, %edx
	movl	%edx, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB29_168
# BB#167:
	testl	%edx, %edx
	movl	$1, -72(%rbp)
	je	.LBB29_168
# BB#170:
	movl	$1, -68(%rbp)
.LBB29_168:
	movl	-68(%rbp), %eax
	notl	%eax
	testl	-72(%rbp), %eax
	je	.LBB29_169
# BB#171:
	movl	$13631749, %ecx         # imm = 0xD00105
	callq	*%rbx
	movl	$3, 32(%rsp)
	leaq	ng33(%rip), %rax
	xorl	%r9d, %r9d
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movq	-160(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %r8
	movq	%r15, %rdi
	callq	*%rdi
	movl	$13631750, %ecx         # imm = 0xD00106
	callq	*%rbx
	leaq	376(%rsi), %rax
	movl	$8, %edx
	movq	%rax, %rcx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	movq	-240(%rbp), %rcx        # 8-byte Reload
	movq	-248(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %r8
	callq	*%rdi
	movl	$13631754, %ecx         # imm = 0xD0010A
	jmp	.LBB29_20
.LBB29_116:
	testl	%eax, %eax
	je	.LBB29_117
# BB#132:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -80(%rbp)
.LBB29_117:
	cmpl	$0, -80(%rbp)
	movb	$1, %al
	jne	.LBB29_119
# BB#118:
	cmpl	$0, -76(%rbp)
	setne	%al
.LBB29_119:
	testb	%al, %al
	je	.LBB29_120
# BB#133:
	leaq	432(%rsi), %rcx
	movl	$2, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %rbx
	leaq	-88(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rbx), %ecx
	movl	4(%rbx), %ebx
	xorl	ng1(%rip), %ecx
	movl	ng1+4(%rip), %edx
	movl	%ebx, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %ebx
	movl	%ebx, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB29_135
# BB#134:
	testl	%ebx, %ebx
	movl	$1, -88(%rbp)
	je	.LBB29_135
# BB#139:
	movl	$1, -84(%rbp)
.LBB29_135:
	leaq	-96(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	-84(%rbp), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	-88(%rbp), %ecx
	testb	$1, %cl
	je	.LBB29_136
# BB#140:
	movl	$1, -96(%rbp)
	jmp	.LBB29_137
.LBB29_120:
	leaq	-104(%rbp), %rcx
	leaq	-80(%rbp), %rdx
	movl	$8, %r8d
	callq	*__imp__iki_std_memcpy(%rip)
	andl	$1, -104(%rbp)
	andl	$1, -100(%rbp)
	jmp	.LBB29_121
.LBB29_30:
	movl	$13631726, %ecx         # imm = 0xD000EE
	jmp	.LBB29_20
.LBB29_14:
	leaq	ng33(%rip), %r8
	leaq	-64(%rbp), %rcx
	movl	$4, %edx
	movl	$4, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB29_15
# BB#35:
	movl	$13631761, %ecx         # imm = 0xD00111
	movq	%rbx, %r12
	callq	*%r12
	movl	$3, 32(%rsp)
	leaq	ng11(%rip), %r8
	xorl	%r9d, %r9d
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movq	-160(%rbp), %rdx        # 8-byte Reload
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var(%rip)
	movl	$13631762, %ecx         # imm = 0xD00112
	callq	*%r12
	leaq	ng5(%rip), %r8
	xorl	%r9d, %r9d
	movq	-224(%rbp), %rcx        # 8-byte Reload
	movq	-232(%rbp), %rdx        # 8-byte Reload
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var_setback0(%rip)
	jmp	.LBB29_16
.LBB29_157:
	movl	$13631724, %ecx         # imm = 0xD000EC
	callq	*__imp__iki_stmt_online(%rip)
	movl	$3, 32(%rsp)
	leaq	ng2(%rip), %r8
	xorl	%r9d, %r9d
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movq	-160(%rbp), %rdx        # 8-byte Reload
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var(%rip)
	movl	$13631726, %ecx         # imm = 0xD000EE
	jmp	.LBB29_20
.LBB29_32:
	movl	$13631740, %ecx         # imm = 0xD000FC
	jmp	.LBB29_20
.LBB29_34:
	movl	$13631754, %ecx         # imm = 0xD0010A
	jmp	.LBB29_20
.LBB29_136:
	testl	%eax, %eax
	je	.LBB29_137
# BB#141:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -96(%rbp)
.LBB29_137:
	movl	-80(%rbp), %eax
	andl	-96(%rbp), %eax
	movl	%eax, -104(%rbp)
	movl	-76(%rbp), %eax
	orl	-92(%rbp), %eax
	movl	%eax, -100(%rbp)
	je	.LBB29_121
# BB#138:
	orl	%eax, -104(%rbp)
	movl	-80(%rbp), %eax
	movl	-76(%rbp), %ecx
	notl	%eax
	notl	%ecx
	andl	%eax, %ecx
	notl	%ecx
	andl	-100(%rbp), %ecx
	movl	-96(%rbp), %eax
	movl	-92(%rbp), %edx
	notl	%eax
	notl	%edx
	andl	%eax, %edx
	notl	%edx
	andl	%ecx, %edx
	movl	%edx, -100(%rbp)
	movl	-80(%rbp), %eax
	movl	-76(%rbp), %ecx
	notl	%eax
	notl	%ecx
	andl	%eax, %ecx
	notl	%ecx
	andl	-104(%rbp), %ecx
	movl	-96(%rbp), %eax
	movl	-92(%rbp), %edx
	notl	%eax
	notl	%edx
	andl	%eax, %edx
	notl	%edx
	andl	%ecx, %edx
	movl	%edx, -104(%rbp)
.LBB29_121:
	leaq	-112(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	-100(%rbp), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	-104(%rbp), %ecx
	testb	$1, %cl
	je	.LBB29_122
# BB#142:
	movl	$1, -112(%rbp)
	jmp	.LBB29_123
.LBB29_122:
	testl	%eax, %eax
	je	.LBB29_123
# BB#143:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -112(%rbp)
.LBB29_123:
	cmpl	$0, -112(%rbp)
	movb	$1, %al
	je	.LBB29_125
# BB#124:
	cmpl	$0, -108(%rbp)
	setne	%al
.LBB29_125:
	testb	%al, %al
	je	.LBB29_126
# BB#144:
	movl	$8, %edx
	movq	%rdi, %rcx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %rdi
	leaq	-120(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %ecx
	movl	4(%rdi), %ebx
	xorl	ng58(%rip), %ecx
	movl	ng58+4(%rip), %edx
	movl	%ebx, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %ebx
	movl	%ebx, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB29_146
# BB#145:
	testl	%ebx, %ebx
	movl	$1, -120(%rbp)
	je	.LBB29_146
# BB#150:
	movl	$1, -116(%rbp)
.LBB29_146:
	leaq	-128(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	-116(%rbp), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	-120(%rbp), %ecx
	testb	$1, %cl
	je	.LBB29_147
# BB#151:
	movl	$1, -128(%rbp)
	jmp	.LBB29_148
.LBB29_126:
	leaq	-136(%rbp), %rcx
	leaq	-112(%rbp), %rdx
	movl	$8, %r8d
	callq	*__imp__iki_std_memcpy(%rip)
	andl	$1, -136(%rbp)
	andl	$1, -132(%rbp)
	movq	-160(%rbp), %rdi        # 8-byte Reload
	jmp	.LBB29_127
.LBB29_15:
	movl	$13631769, %ecx         # imm = 0xD00119
	callq	*%rbx
	movl	$3, 32(%rsp)
	leaq	ng2(%rip), %r8
	xorl	%r9d, %r9d
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movq	-160(%rbp), %rdx        # 8-byte Reload
	callq	*%r15
	movl	$13631770, %ecx         # imm = 0xD0011A
	callq	*%rbx
	leaq	ng0(%rip), %r8
	xorl	%r9d, %r9d
	movq	%rdi, %rcx
	movq	%r12, %rdx
	movq	%r8, %rdi
	movq	__imp__iki_vlog_schedule_transaction_blocking_var_setback0(%rip), %r12
	callq	*%r12
	movl	$13631771, %ecx         # imm = 0xD0011B
	callq	*%rbx
	movl	$7, 32(%rsp)
	leaq	ng15(%rip), %r8
	xorl	%r9d, %r9d
	movq	%r14, %rcx
	movq	%r13, %rdx
	callq	*%r15
	movl	$13631772, %ecx         # imm = 0xD0011C
	callq	*%rbx
	xorl	%r9d, %r9d
	movq	-184(%rbp), %rcx        # 8-byte Reload
	movq	-176(%rbp), %rdx        # 8-byte Reload
	movq	%rdi, %r8
	callq	*%r12
	movl	$13631773, %ecx         # imm = 0xD0011D
	callq	*%rbx
	movl	$7, 32(%rsp)
	leaq	ng1(%rip), %r14
	xorl	%r9d, %r9d
	movq	-192(%rbp), %rcx        # 8-byte Reload
	movq	-200(%rbp), %rdx        # 8-byte Reload
	movq	%r14, %r8
	callq	*%r15
	movl	$13631774, %ecx         # imm = 0xD0011E
	callq	*%rbx
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	movq	-208(%rbp), %rcx        # 8-byte Reload
	movq	-216(%rbp), %rdx        # 8-byte Reload
	movq	%r14, %r8
	callq	*%r15
	movl	$13631775, %ecx         # imm = 0xD0011F
	callq	*%rbx
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	movq	-240(%rbp), %rcx        # 8-byte Reload
	movq	-248(%rbp), %rdx        # 8-byte Reload
	movq	%r14, %r8
	callq	*%r15
	movl	$13631776, %ecx         # imm = 0xD00120
	callq	*%rbx
	xorl	%r9d, %r9d
	movq	-224(%rbp), %rcx        # 8-byte Reload
	movq	-232(%rbp), %rdx        # 8-byte Reload
	movq	%rdi, %r8
	callq	*%r12
	jmp	.LBB29_16
.LBB29_163:
	movl	$13631738, %ecx         # imm = 0xD000FA
	callq	*__imp__iki_stmt_online(%rip)
	movl	$3, 32(%rsp)
	leaq	ng2(%rip), %rax
	xorl	%r9d, %r9d
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movq	-160(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %r8
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var(%rip)
	movl	$13631740, %ecx         # imm = 0xD000FC
	jmp	.LBB29_20
.LBB29_169:
	movl	$13631752, %ecx         # imm = 0xD00108
	callq	*__imp__iki_stmt_online(%rip)
	movl	$3, 32(%rsp)
	leaq	ng2(%rip), %rax
	xorl	%r9d, %r9d
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movq	-160(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %r8
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var(%rip)
	movl	$13631754, %ecx         # imm = 0xD0010A
	jmp	.LBB29_20
.LBB29_147:
	testl	%eax, %eax
	je	.LBB29_148
# BB#152:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -128(%rbp)
.LBB29_148:
	movl	-112(%rbp), %eax
	orl	-128(%rbp), %eax
	movl	%eax, -136(%rbp)
	movl	-108(%rbp), %eax
	orl	-124(%rbp), %eax
	movl	%eax, -132(%rbp)
	movq	-160(%rbp), %rdi        # 8-byte Reload
	je	.LBB29_127
# BB#149:
	orl	%eax, -136(%rbp)
	movl	-108(%rbp), %eax
	notl	%eax
	andl	-112(%rbp), %eax
	notl	%eax
	andl	-132(%rbp), %eax
	movl	-124(%rbp), %ecx
	notl	%ecx
	andl	-128(%rbp), %ecx
	notl	%ecx
	andl	%eax, %ecx
	movl	%ecx, -132(%rbp)
.LBB29_127:
	movl	-132(%rbp), %eax
	notl	%eax
	testl	-136(%rbp), %eax
	movq	-168(%rbp), %rbx        # 8-byte Reload
	je	.LBB29_128
# BB#153:
	movl	$13631708, %ecx         # imm = 0xD000DC
	callq	*__imp__iki_stmt_online(%rip)
	movl	$3, 32(%rsp)
	leaq	ng11(%rip), %r8
	jmp	.LBB29_129
.LBB29_128:
	movl	$13631710, %ecx         # imm = 0xD000DE
	callq	*__imp__iki_stmt_online(%rip)
	movl	$3, 32(%rsp)
	leaq	ng2(%rip), %r8
.LBB29_129:
	xorl	%r9d, %r9d
	movq	%rbx, %rcx
	movq	%rdi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var(%rip)
	movl	$13631712, %ecx         # imm = 0xD000E0
	jmp	.LBB29_20

	.def	 _execute_24;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_24
	.align	16, 0x90
_execute_24:                            # @_execute_24
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$72, %rsp
	movq	%rdx, %rsi
	movl	$23, %edx
	movq	%rsi, %rcx
	callq	*__imp__iki_vlog_set_threadId_for_unrandom(%rip)
	movq	__imp__iki_stmt_online(%rip), %r15
	movl	$10485815, %ecx         # imm = 0xA00037
	callq	*%r15
	movl	ng0(%rip), %eax
	andl	$15, %eax
	leaq	2616(%rsi), %r8
	movl	%eax, 2616(%rsi)
	movl	ng0+4(%rip), %eax
	andl	$15, %eax
	movl	%eax, 2620(%rsi)
	leaq	544(%rsi), %rcx
	leaq	2592(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$8, 40(%rsp)
	movl	$3, 32(%rsp)
	movq	__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip), %r14
	xorl	%r9d, %r9d
	callq	*%r14
	movl	$10485816, %ecx         # imm = 0xA00038
	callq	*%r15
	movzbl	ng0(%rip), %eax
	leaq	2656(%rsi), %r8
	movl	%eax, 2656(%rsi)
	movzbl	ng0+4(%rip), %eax
	movl	%eax, 2660(%rsi)
	leaq	432(%rsi), %rcx
	leaq	2632(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$8, 40(%rsp)
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	callq	*%r14
	movl	$10485817, %ecx         # imm = 0xA00039
	callq	*%r15
	movq	__imp__iki_std_memset(%rip), %r12
	leaq	-64(%rbp), %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r12
	leaq	ng38(%rip), %rbx
	movq	%rbx, 32(%rsp)
	movl	$32, 40(%rsp)
	leaq	ng59(%rip), %r8
	movq	__imp__iki_vlog_unsigned_divide(%rip), %r13
	movl	$32, %edx
	movl	$8, %r9d
	movq	%rdi, %rcx
	callq	*%r13
	movzbl	(%rax), %ecx
	leaq	2696(%rsi), %r8
	movl	%ecx, 2696(%rsi)
	movzbl	4(%rax), %eax
	movl	%eax, 2700(%rsi)
	leaq	600(%rsi), %rcx
	leaq	2672(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$8, 40(%rsp)
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	callq	*%r14
	movl	$10485818, %ecx         # imm = 0xA0003A
	callq	*%r15
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r12
	movq	%rbx, 32(%rsp)
	movl	$32, 40(%rsp)
	leaq	ng60(%rip), %r8
	movl	$32, %edx
	movl	$8, %r9d
	movq	%rdi, %rcx
	callq	*%r13
	movzbl	(%rax), %ecx
	movl	%ecx, 2736(%rsi)
	movzbl	4(%rax), %eax
	movl	%eax, 2740(%rsi)
	leaq	2736(%rsi), %r8
	leaq	656(%rsi), %rcx
	leaq	2712(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$8, 40(%rsp)
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	callq	*%r14
	addq	$72, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret

	.def	 _execute_104;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_104
	.align	16, 0x90
_execute_104:                           # @_execute_104
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	pushq	%rdi
	subq	$64, %rsp
	movq	%rdx, %rsi
	movl	$10485859, %ecx         # imm = 0xA00063
	callq	*__imp__iki_stmt_online(%rip)
	movq	776(%rsi), %rdi
	leaq	-32(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	4(%rdi), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	(%rdi), %ecx
	testb	$1, %cl
	je	.LBB31_1
# BB#7:
	movl	$1, -32(%rbp)
	jmp	.LBB31_2
.LBB31_1:
	testl	%eax, %eax
	je	.LBB31_2
# BB#8:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -32(%rbp)
.LBB31_2:
	cmpl	$0, -28(%rbp)
	je	.LBB31_3
# BB#9:
	leaq	ng61(%rip), %rax
	movq	%rax, 32(%rsp)
	movl	$1, 40(%rsp)
	leaq	ng1(%rip), %r8
	leaq	-24(%rbp), %rcx
	movl	$1, %edx
	movl	$1, %r9d
	callq	*__imp__iki_vlog_unsigned_bit_combine(%rip)
	jmp	.LBB31_6
.LBB31_3:
	movl	-32(%rbp), %eax
	testl	%eax, %eax
	je	.LBB31_4
# BB#10:
	leaq	ng1(%rip), %rdx
	jmp	.LBB31_5
.LBB31_4:
	leaq	ng61(%rip), %rdx
.LBB31_5:
	leaq	-24(%rbp), %rcx
	movl	$8, %r8d
	callq	*__imp__iki_std_memcpy(%rip)
.LBB31_6:
	leaq	3800(%rsi), %rcx
	leaq	-24(%rbp), %rdx
	movl	$8, %r8d
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	152(%rsi), %rcx
	addq	$3776, %rsi             # imm = 0xEC0
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%rsi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_signal_fast_no_reg_no_agg(%rip)
	addq	$64, %rsp
	popq	%rdi
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_106;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_106
	.align	16, 0x90
_execute_106:                           # @_execute_106
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	pushq	%rdi
	subq	$64, %rsp
	movq	%rdx, %rsi
	movl	$10485864, %ecx         # imm = 0xA00068
	callq	*__imp__iki_stmt_online(%rip)
	movq	944(%rsi), %rdi
	leaq	-32(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	4(%rdi), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	(%rdi), %ecx
	testb	$1, %cl
	je	.LBB32_1
# BB#10:
	movl	$1, -32(%rbp)
	jmp	.LBB32_2
.LBB32_1:
	testl	%eax, %eax
	je	.LBB32_2
# BB#11:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -32(%rbp)
.LBB32_2:
	cmpl	$0, -32(%rbp)
	movb	$1, %al
	jne	.LBB32_4
# BB#3:
	cmpl	$0, -28(%rbp)
	setne	%al
.LBB32_4:
	testb	%al, %al
                                        # implicit-def: RAX
	je	.LBB32_5
# BB#12:
	movq	888(%rsi), %rax
.LBB32_5:
	cmpl	$0, -28(%rbp)
	je	.LBB32_6
# BB#13:
	leaq	ng61(%rip), %rcx
	movq	%rcx, 32(%rsp)
	movl	$1, 40(%rsp)
	leaq	-24(%rbp), %rcx
	movl	$1, %edx
	movl	$1, %r9d
	movq	%rax, %r8
	callq	*__imp__iki_vlog_unsigned_bit_combine(%rip)
	jmp	.LBB32_9
.LBB32_6:
	movl	-32(%rbp), %ecx
	testl	%ecx, %ecx
	je	.LBB32_7
# BB#14:
	leaq	-24(%rbp), %rcx
	movl	$8, %r8d
	movq	%rax, %rdx
	jmp	.LBB32_8
.LBB32_7:
	leaq	ng61(%rip), %rdx
	leaq	-24(%rbp), %rcx
	movl	$8, %r8d
.LBB32_8:
	callq	*__imp__iki_std_memcpy(%rip)
.LBB32_9:
	leaq	4136(%rsi), %rcx
	leaq	-24(%rbp), %rdx
	movl	$8, %r8d
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	208(%rsi), %rcx
	addq	$4112, %rsi             # imm = 0x1010
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%rsi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_signal_fast_no_reg_no_agg(%rip)
	addq	$64, %rsp
	popq	%rdi
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_25;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_25
	.align	16, 0x90
_execute_25:                            # @_execute_25
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$208, %rsp
	movq	%rdx, %rsi
	.align	16, 0x90
.LBB33_1:                               # =>This Inner Loop Header: Depth=1
	movl	$24, %edx
	movq	%rsi, %rcx
	callq	*__imp__iki_vlog_set_threadId_for_unrandom(%rip)
	movq	2792(%rsi), %rax
	testq	%rax, %rax
	je	.LBB33_24
# BB#2:                                 #   in Loop: Header=BB33_1 Depth=1
	jmpq	*%rax
.Ltmp122:                               # Block address taken
.LBB33_3:
	movb	$0, 2872(%rsi)
	movl	$10485872, %ecx         # imm = 0xA00070
	callq	*__imp__iki_stmt_online(%rip)
	leaq	40(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movl	4(%rax), %ecx
	notl	%ecx
	testl	(%rax), %ecx
	je	.LBB33_4
# BB#25:
	movl	$10485873, %ecx         # imm = 0xA00071
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	ng0(%rip), %eax
	andl	$1, %eax
	movl	%eax, (%rdi)
	movl	ng0+4(%rip), %eax
	andl	$1, %eax
	movl	%eax, 4(%rdi)
	leaq	712(%rsi), %rcx
	leaq	2880(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$0, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
	jmp	.LBB33_24
.LBB33_4:
	movl	$10485876, %ecx         # imm = 0xA00074
	callq	*__imp__iki_stmt_online(%rip)
	leaq	1664(%rsi), %r14
	movq	1672(%rsi), %r9
	movl	$1, -80(%rbp)
	movl	$7, -76(%rbp)
	movl	$0, -72(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, 80(%rsp)
	leaq	ng0(%rip), %rax
	movq	%rax, 56(%rsp)
	leaq	ng52(%rip), %rax
	movq	%rax, 32(%rsp)
	movl	$1, 112(%rsp)
	movl	$2, 104(%rsp)
	movl	$1, 96(%rsp)
	movq	$0, 88(%rsp)
	movl	$1, 72(%rsp)
	movl	$32, 64(%rsp)
	movl	$1, 48(%rsp)
	movl	$32, 40(%rsp)
	leaq	-56(%rbp), %rcx
	movl	$1, %edx
	movl	$7, %r8d
	callq	*__imp__iki_vlog_get_part_select_value(%rip)
	movl	$1, -128(%rbp)
	movl	$7, -124(%rbp)
	movl	$0, -120(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, 72(%rsp)
	leaq	ng5(%rip), %rax
	movq	%rax, 48(%rsp)
	movl	$1, 104(%rsp)
	movl	$2, 96(%rsp)
	movl	$1, 88(%rsp)
	movq	$0, 80(%rsp)
	movl	$1, 64(%rsp)
	movl	$32, 56(%rsp)
	movl	$1, 40(%rsp)
	movl	$32, 32(%rsp)
	leaq	ng54(%rip), %r9
	leaq	-88(%rbp), %rcx
	leaq	-96(%rbp), %rdx
	leaq	-104(%rbp), %r8
	callq	*__imp__iki_vlog_convert_part_select(%rip)
	cmpl	$0, -84(%rbp)
	je	.LBB33_6
# BB#5:
	xorl	%eax, %eax
	jmp	.LBB33_9
.LBB33_6:
	cmpl	$0, -92(%rbp)
	je	.LBB33_8
# BB#7:
	xorl	%eax, %eax
	jmp	.LBB33_9
.LBB33_8:
	cmpl	$0, -100(%rbp)
	sete	%al
.LBB33_9:
	testb	%al, %al
	je	.LBB33_10
# BB#26:
	movl	-104(%rbp), %r9d
	movl	-88(%rbp), %eax
	subl	-96(%rbp), %eax
	incl	%eax
	movl	%eax, 32(%rsp)
	leaq	-136(%rbp), %rcx
	leaq	-56(%rbp), %r8
	xorl	%edx, %edx
	callq	*__imp__iki_vlog_bit_copy(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	-136(%rbp), %eax
	andl	$127, %eax
	movl	%eax, (%rdi)
	movl	-132(%rbp), %eax
	andl	$127, %eax
	movl	%eax, 4(%rdi)
	leaq	2920(%rsi), %rdx
	movl	-96(%rbp), %r9d
	movl	-88(%rbp), %eax
	subl	%r9d, %eax
	movl	%eax, 32(%rsp)
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movq	%r14, %rcx
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
.LBB33_10:
	movq	__imp__iki_stmt_online(%rip), %r12
	movl	$10485877, %ecx         # imm = 0xA00075
	callq	*%r12
	leaq	152(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value(%rip)
	movq	%rax, %rdi
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rbx
	movq	__imp__iki_std_memset(%rip), %r15
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*%r15
	movl	(%rdi), %eax
	andl	$1, %eax
	movl	%eax, (%rbx)
	movl	4(%rdi), %eax
	andl	$1, %eax
	movl	%eax, 4(%rbx)
	leaq	2960(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$0, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%r14, %rcx
	movq	%rbx, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
	movl	$10485880, %ecx         # imm = 0xA00078
	callq	*%r12
	leaq	712(%rsi), %rdi
	movq	720(%rsi), %rbx
	leaq	-56(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*%r15
	movl	4(%rbx), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	(%rbx), %ecx
	testb	$1, %cl
	je	.LBB33_11
# BB#27:
	movl	$1, -56(%rbp)
	jmp	.LBB33_12
.LBB33_11:
	testl	%eax, %eax
	je	.LBB33_12
# BB#28:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -56(%rbp)
.LBB33_12:
	cmpl	$0, -56(%rbp)
	movb	$1, %al
	jne	.LBB33_14
# BB#13:
	cmpl	$0, -52(%rbp)
	setne	%al
.LBB33_14:
	testb	%al, %al
	je	.LBB33_15
# BB#29:
	movq	8(%r14), %rbx
	leaq	-88(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rbx), %ecx
	movl	4(%rbx), %ebx
	xorl	ng1(%rip), %ecx
	movl	ng1+4(%rip), %edx
	movl	%ebx, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %ebx
	movl	%ebx, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB33_31
# BB#30:
	testl	%ebx, %ebx
	movl	$1, -88(%rbp)
	je	.LBB33_31
# BB#35:
	movl	$1, -84(%rbp)
.LBB33_31:
	leaq	-96(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	-84(%rbp), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	-88(%rbp), %ecx
	testb	$1, %cl
	je	.LBB33_32
# BB#36:
	movl	$1, -96(%rbp)
	jmp	.LBB33_33
.LBB33_15:
	leaq	-104(%rbp), %rcx
	leaq	-56(%rbp), %rdx
	movl	$8, %r8d
	callq	*__imp__iki_std_memcpy(%rip)
	andl	$1, -104(%rbp)
	andl	$1, -100(%rbp)
	jmp	.LBB33_16
.LBB33_32:
	testl	%eax, %eax
	je	.LBB33_33
# BB#37:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -96(%rbp)
.LBB33_33:
	movl	-56(%rbp), %eax
	andl	-96(%rbp), %eax
	movl	%eax, -104(%rbp)
	movl	-52(%rbp), %eax
	orl	-92(%rbp), %eax
	movl	%eax, -100(%rbp)
	je	.LBB33_16
# BB#34:
	orl	%eax, -104(%rbp)
	movl	-56(%rbp), %eax
	movl	-52(%rbp), %ecx
	notl	%eax
	notl	%ecx
	andl	%eax, %ecx
	notl	%ecx
	andl	-100(%rbp), %ecx
	movl	-96(%rbp), %eax
	movl	-92(%rbp), %edx
	notl	%eax
	notl	%edx
	andl	%eax, %edx
	notl	%edx
	andl	%ecx, %edx
	movl	%edx, -100(%rbp)
	movl	-56(%rbp), %eax
	movl	-52(%rbp), %ecx
	notl	%eax
	notl	%ecx
	andl	%eax, %ecx
	notl	%ecx
	andl	-104(%rbp), %ecx
	movl	-96(%rbp), %eax
	movl	-92(%rbp), %edx
	notl	%eax
	notl	%edx
	andl	%eax, %edx
	notl	%edx
	andl	%ecx, %edx
	movl	%edx, -104(%rbp)
.LBB33_16:
	movl	-100(%rbp), %eax
	notl	%eax
	testl	-104(%rbp), %eax
	je	.LBB33_17
# BB#38:
	movl	$10485881, %ecx         # imm = 0xA00079
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	ng0(%rip), %eax
	andl	$1, %eax
	movl	%eax, (%rbx)
	movl	ng0+4(%rip), %eax
	andl	$1, %eax
	movl	%eax, 4(%rbx)
	leaq	3000(%rsi), %rdx
	jmp	.LBB33_39
.LBB33_17:
	movl	$10485883, %ecx         # imm = 0xA0007B
	callq	*__imp__iki_stmt_online(%rip)
	movq	8(%rdi), %rbx
	leaq	-56(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*%r15
	movl	4(%rbx), %eax
	movl	%eax, %ecx
	andl	$1, %ecx
	movl	%ecx, -52(%rbp)
	movl	(%rbx), %ecx
	notl	%ecx
	orl	%eax, %ecx
	andl	$1, %ecx
	movl	%ecx, -56(%rbp)
	leaq	-88(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*%r15
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	-56(%rbp), %ecx
	testb	$1, %cl
	je	.LBB33_18
# BB#40:
	movl	$1, -88(%rbp)
	jmp	.LBB33_19
.LBB33_18:
	testl	%eax, %eax
	je	.LBB33_19
# BB#41:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -88(%rbp)
.LBB33_19:
	cmpl	$0, -88(%rbp)
	movb	$1, %al
	jne	.LBB33_21
# BB#20:
	cmpl	$0, -84(%rbp)
	setne	%al
.LBB33_21:
	testb	%al, %al
	je	.LBB33_22
# BB#42:
	movq	8(%r14), %rbx
	leaq	-96(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rbx), %ecx
	movl	4(%rbx), %ebx
	xorl	ng15(%rip), %ecx
	movl	ng15+4(%rip), %edx
	movl	%ebx, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %ebx
	movl	%ebx, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB33_44
# BB#43:
	testl	%ebx, %ebx
	movl	$1, -96(%rbp)
	je	.LBB33_44
# BB#48:
	movl	$1, -92(%rbp)
.LBB33_44:
	leaq	-104(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	-92(%rbp), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	-96(%rbp), %ecx
	testb	$1, %cl
	je	.LBB33_45
# BB#49:
	movl	$1, -104(%rbp)
	jmp	.LBB33_46
.LBB33_22:
	leaq	-136(%rbp), %rcx
	leaq	-88(%rbp), %rdx
	movl	$8, %r8d
	callq	*__imp__iki_std_memcpy(%rip)
	andl	$1, -136(%rbp)
	andl	$1, -132(%rbp)
	jmp	.LBB33_23
.LBB33_45:
	testl	%eax, %eax
	je	.LBB33_46
# BB#50:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -104(%rbp)
.LBB33_46:
	movl	-88(%rbp), %eax
	andl	-104(%rbp), %eax
	movl	%eax, -136(%rbp)
	movl	-84(%rbp), %eax
	orl	-100(%rbp), %eax
	movl	%eax, -132(%rbp)
	je	.LBB33_23
# BB#47:
	orl	%eax, -136(%rbp)
	movl	-88(%rbp), %eax
	movl	-84(%rbp), %ecx
	notl	%eax
	notl	%ecx
	andl	%eax, %ecx
	notl	%ecx
	andl	-132(%rbp), %ecx
	movl	-104(%rbp), %eax
	movl	-100(%rbp), %edx
	notl	%eax
	notl	%edx
	andl	%eax, %edx
	notl	%edx
	andl	%ecx, %edx
	movl	%edx, -132(%rbp)
	movl	-88(%rbp), %eax
	movl	-84(%rbp), %ecx
	notl	%eax
	notl	%ecx
	andl	%eax, %ecx
	notl	%ecx
	andl	-136(%rbp), %ecx
	movl	-104(%rbp), %eax
	movl	-100(%rbp), %edx
	notl	%eax
	notl	%edx
	andl	%eax, %edx
	notl	%edx
	andl	%ecx, %edx
	movl	%edx, -136(%rbp)
.LBB33_23:
	movl	-132(%rbp), %eax
	notl	%eax
	testl	-136(%rbp), %eax
	je	.LBB33_24
# BB#51:
	movl	$10485884, %ecx         # imm = 0xA0007C
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	ng5(%rip), %eax
	andl	$1, %eax
	movl	%eax, (%rbx)
	movl	ng5+4(%rip), %eax
	andl	$1, %eax
	movl	%eax, 4(%rbx)
	leaq	3040(%rsi), %rdx
.LBB33_39:
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$0, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %rcx
	movq	%rbx, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
.LBB33_24:
	movl	$10485871, %ecx         # imm = 0xA0006F
	callq	*__imp__iki_stmt_online(%rip)
	movb	$1, 2872(%rsi)
	leaq	.Ltmp122(%rip), %rax
	movq	%rax, 2792(%rsi)
	addq	$208, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	ret

	.def	 _execute_125;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_125
	.align	16, 0x90
_execute_125:                           # @_execute_125
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	pushq	%rdi
	subq	$240, %rsp
	movq	%rdx, %rsi
	movl	$10485961, %ecx         # imm = 0xA000C9
	callq	*__imp__iki_stmt_online(%rip)
	movq	1392(%rsi), %rdx
	leaq	-40(%rbp), %rcx
	movl	$6, %r8d
	callq	*__imp__iki_vlog_get_bit_select_value_simple(%rip)
	movq	%rax, %rdi
	leaq	-32(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	4(%rdi), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	(%rdi), %ecx
	testb	$1, %cl
	je	.LBB34_1
# BB#13:
	movl	$1, -32(%rbp)
	jmp	.LBB34_2
.LBB34_1:
	testl	%eax, %eax
	je	.LBB34_2
# BB#14:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -32(%rbp)
.LBB34_2:
	cmpl	$0, -32(%rbp)
	movb	$1, %al
	jne	.LBB34_4
# BB#3:
	cmpl	$0, -28(%rbp)
	setne	%al
.LBB34_4:
	testb	%al, %al
	je	.LBB34_5
# BB#15:
	movq	1392(%rsi), %rdx
	leaq	-64(%rbp), %rcx
	movl	$4, %r8d
	callq	*__imp__iki_vlog_get_bit_select_value_simple(%rip)
	movq	%rax, %rdi
	leaq	-56(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	4(%rdi), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	(%rdi), %ecx
	testb	$1, %cl
	je	.LBB34_16
# BB#30:
	movl	$1, -56(%rbp)
	jmp	.LBB34_17
.LBB34_16:
	testl	%eax, %eax
	je	.LBB34_17
# BB#31:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -56(%rbp)
.LBB34_17:
	cmpl	$0, -56(%rbp)
	movb	$1, %al
	jne	.LBB34_19
# BB#18:
	cmpl	$0, -52(%rbp)
	setne	%al
.LBB34_19:
	testb	%al, %al
	je	.LBB34_20
# BB#32:
	movq	1392(%rsi), %rdx
	leaq	-80(%rbp), %rcx
	movl	$4, %r8d
	callq	*__imp__iki_vlog_get_bit_select_value_simple(%rip)
	leaq	ng1(%rip), %rcx
	movq	%rcx, 48(%rsp)
	movq	%rax, 32(%rsp)
	movl	$8, 56(%rsp)
	movl	$1, 40(%rsp)
	leaq	-72(%rbp), %rcx
	movl	$9, %edx
	movl	$9, %r8d
	movl	$2, %r9d
	callq	*__imp__iki_vlog_concat(%rip)
.LBB34_20:
	cmpl	$0, -56(%rbp)
	movb	$1, %al
	je	.LBB34_22
# BB#21:
	cmpl	$0, -52(%rbp)
	setne	%al
.LBB34_22:
	testb	%al, %al
	je	.LBB34_23
# BB#33:
	movq	1392(%rsi), %rdx
	leaq	-96(%rbp), %rcx
	movl	$4, %r8d
	callq	*__imp__iki_vlog_get_bit_select_value_simple(%rip)
	leaq	ng15(%rip), %rcx
	movq	%rcx, 48(%rsp)
	movq	%rax, 32(%rsp)
	movl	$8, 56(%rsp)
	movl	$1, 40(%rsp)
	leaq	-88(%rbp), %rcx
	movl	$9, %edx
	movl	$9, %r8d
	movl	$2, %r9d
	callq	*__imp__iki_vlog_concat(%rip)
.LBB34_23:
	cmpl	$0, -52(%rbp)
	je	.LBB34_24
# BB#34:
	leaq	-88(%rbp), %rax
	movq	%rax, 32(%rsp)
	movl	$9, 40(%rsp)
	leaq	-48(%rbp), %rcx
	leaq	-72(%rbp), %r8
	movl	$9, %edx
	movl	$9, %r9d
	callq	*__imp__iki_vlog_unsigned_bit_combine(%rip)
	jmp	.LBB34_5
.LBB34_24:
	cmpl	$0, -56(%rbp)
	je	.LBB34_25
# BB#35:
	leaq	-48(%rbp), %rcx
	leaq	-72(%rbp), %rdx
	jmp	.LBB34_26
.LBB34_25:
	leaq	-48(%rbp), %rcx
	leaq	-88(%rbp), %rdx
.LBB34_26:
	movl	$8, %r8d
	callq	*__imp__iki_std_memcpy(%rip)
.LBB34_5:
	cmpl	$0, -32(%rbp)
	movb	$1, %al
	je	.LBB34_7
# BB#6:
	cmpl	$0, -28(%rbp)
	setne	%al
.LBB34_7:
	testb	%al, %al
	je	.LBB34_8
# BB#27:
	movq	1448(%rsi), %r9
	movl	$1, -128(%rbp)
	movl	$7, -124(%rbp)
	movl	$0, -120(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, 80(%rsp)
	leaq	ng0(%rip), %rax
	movq	%rax, 56(%rsp)
	leaq	ng54(%rip), %rax
	movq	%rax, 32(%rsp)
	movl	$1, 112(%rsp)
	movl	$2, 104(%rsp)
	movl	$1, 96(%rsp)
	movq	$0, 88(%rsp)
	movl	$1, 72(%rsp)
	movl	$32, 64(%rsp)
	movl	$1, 48(%rsp)
	movl	$32, 40(%rsp)
	leaq	-112(%rbp), %rdi
	movl	$1, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_vlog_get_part_select_value(%rip)
	movq	1392(%rsi), %rdx
	leaq	-136(%rbp), %rcx
	movl	$4, %r8d
	callq	*__imp__iki_vlog_get_bit_select_value_simple(%rip)
	movq	%rdi, 48(%rsp)
	movq	%rax, 32(%rsp)
	movl	$8, 56(%rsp)
	movl	$1, 40(%rsp)
	leaq	-104(%rbp), %rcx
	movl	$9, %edx
	movl	$9, %r8d
	movl	$2, %r9d
	callq	*__imp__iki_vlog_concat(%rip)
.LBB34_8:
	cmpl	$0, -28(%rbp)
	je	.LBB34_9
# BB#28:
	leaq	-104(%rbp), %rax
	movq	%rax, 32(%rsp)
	movl	$9, 40(%rsp)
	leaq	-24(%rbp), %rcx
	leaq	-48(%rbp), %r8
	movl	$9, %edx
	movl	$9, %r9d
	callq	*__imp__iki_vlog_unsigned_bit_combine(%rip)
	jmp	.LBB34_12
.LBB34_9:
	cmpl	$0, -32(%rbp)
	je	.LBB34_10
# BB#29:
	leaq	-24(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	jmp	.LBB34_11
.LBB34_10:
	leaq	-24(%rbp), %rcx
	leaq	-104(%rbp), %rdx
.LBB34_11:
	movl	$8, %r8d
	callq	*__imp__iki_std_memcpy(%rip)
.LBB34_12:
	leaq	4976(%rsi), %rcx
	leaq	-24(%rbp), %rdx
	movl	$8, %r8d
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	1720(%rsi), %rcx
	addq	$4952, %rsi             # imm = 0x1358
	xorl	%r8d, %r8d
	movl	$8, %r9d
	movq	%rsi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_signal_fast_no_reg_no_agg(%rip)
	addq	$240, %rsp
	popq	%rdi
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_126;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_126
	.align	16, 0x90
_execute_126:                           # @_execute_126
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	pushq	%rdi
	subq	$240, %rsp
	movq	%rdx, %rsi
	movl	$10485965, %ecx         # imm = 0xA000CD
	callq	*__imp__iki_stmt_online(%rip)
	movq	1392(%rsi), %rdx
	leaq	-40(%rbp), %rcx
	movl	$7, %r8d
	callq	*__imp__iki_vlog_get_bit_select_value_simple(%rip)
	movq	%rax, %rdi
	leaq	-32(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	4(%rdi), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	(%rdi), %ecx
	testb	$1, %cl
	je	.LBB35_1
# BB#13:
	movl	$1, -32(%rbp)
	jmp	.LBB35_2
.LBB35_1:
	testl	%eax, %eax
	je	.LBB35_2
# BB#14:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -32(%rbp)
.LBB35_2:
	cmpl	$0, -32(%rbp)
	movb	$1, %al
	jne	.LBB35_4
# BB#3:
	cmpl	$0, -28(%rbp)
	setne	%al
.LBB35_4:
	testb	%al, %al
	je	.LBB35_5
# BB#15:
	movq	1392(%rsi), %rdx
	leaq	-64(%rbp), %rcx
	movl	$5, %r8d
	callq	*__imp__iki_vlog_get_bit_select_value_simple(%rip)
	movq	%rax, %rdi
	leaq	-56(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	4(%rdi), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	(%rdi), %ecx
	testb	$1, %cl
	je	.LBB35_16
# BB#30:
	movl	$1, -56(%rbp)
	jmp	.LBB35_17
.LBB35_16:
	testl	%eax, %eax
	je	.LBB35_17
# BB#31:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -56(%rbp)
.LBB35_17:
	cmpl	$0, -56(%rbp)
	movb	$1, %al
	jne	.LBB35_19
# BB#18:
	cmpl	$0, -52(%rbp)
	setne	%al
.LBB35_19:
	testb	%al, %al
	je	.LBB35_20
# BB#32:
	movq	1392(%rsi), %rdx
	leaq	-80(%rbp), %rcx
	movl	$5, %r8d
	callq	*__imp__iki_vlog_get_bit_select_value_simple(%rip)
	leaq	ng1(%rip), %rcx
	movq	%rcx, 48(%rsp)
	movq	%rax, 32(%rsp)
	movl	$8, 56(%rsp)
	movl	$1, 40(%rsp)
	leaq	-72(%rbp), %rcx
	movl	$9, %edx
	movl	$9, %r8d
	movl	$2, %r9d
	callq	*__imp__iki_vlog_concat(%rip)
.LBB35_20:
	cmpl	$0, -56(%rbp)
	movb	$1, %al
	je	.LBB35_22
# BB#21:
	cmpl	$0, -52(%rbp)
	setne	%al
.LBB35_22:
	testb	%al, %al
	je	.LBB35_23
# BB#33:
	movq	1392(%rsi), %rdx
	leaq	-96(%rbp), %rcx
	movl	$5, %r8d
	callq	*__imp__iki_vlog_get_bit_select_value_simple(%rip)
	leaq	ng15(%rip), %rcx
	movq	%rcx, 48(%rsp)
	movq	%rax, 32(%rsp)
	movl	$8, 56(%rsp)
	movl	$1, 40(%rsp)
	leaq	-88(%rbp), %rcx
	movl	$9, %edx
	movl	$9, %r8d
	movl	$2, %r9d
	callq	*__imp__iki_vlog_concat(%rip)
.LBB35_23:
	cmpl	$0, -52(%rbp)
	je	.LBB35_24
# BB#34:
	leaq	-88(%rbp), %rax
	movq	%rax, 32(%rsp)
	movl	$9, 40(%rsp)
	leaq	-48(%rbp), %rcx
	leaq	-72(%rbp), %r8
	movl	$9, %edx
	movl	$9, %r9d
	callq	*__imp__iki_vlog_unsigned_bit_combine(%rip)
	jmp	.LBB35_5
.LBB35_24:
	cmpl	$0, -56(%rbp)
	je	.LBB35_25
# BB#35:
	leaq	-48(%rbp), %rcx
	leaq	-72(%rbp), %rdx
	jmp	.LBB35_26
.LBB35_25:
	leaq	-48(%rbp), %rcx
	leaq	-88(%rbp), %rdx
.LBB35_26:
	movl	$8, %r8d
	callq	*__imp__iki_std_memcpy(%rip)
.LBB35_5:
	cmpl	$0, -32(%rbp)
	movb	$1, %al
	je	.LBB35_7
# BB#6:
	cmpl	$0, -28(%rbp)
	setne	%al
.LBB35_7:
	testb	%al, %al
	je	.LBB35_8
# BB#27:
	movq	1504(%rsi), %r9
	movl	$1, -128(%rbp)
	movl	$7, -124(%rbp)
	movl	$0, -120(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, 80(%rsp)
	leaq	ng0(%rip), %rax
	movq	%rax, 56(%rsp)
	leaq	ng54(%rip), %rax
	movq	%rax, 32(%rsp)
	movl	$1, 112(%rsp)
	movl	$2, 104(%rsp)
	movl	$1, 96(%rsp)
	movq	$0, 88(%rsp)
	movl	$1, 72(%rsp)
	movl	$32, 64(%rsp)
	movl	$1, 48(%rsp)
	movl	$32, 40(%rsp)
	leaq	-112(%rbp), %rdi
	movl	$1, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_vlog_get_part_select_value(%rip)
	movq	1392(%rsi), %rdx
	leaq	-136(%rbp), %rcx
	movl	$5, %r8d
	callq	*__imp__iki_vlog_get_bit_select_value_simple(%rip)
	movq	%rdi, 48(%rsp)
	movq	%rax, 32(%rsp)
	movl	$8, 56(%rsp)
	movl	$1, 40(%rsp)
	leaq	-104(%rbp), %rcx
	movl	$9, %edx
	movl	$9, %r8d
	movl	$2, %r9d
	callq	*__imp__iki_vlog_concat(%rip)
.LBB35_8:
	cmpl	$0, -28(%rbp)
	je	.LBB35_9
# BB#28:
	leaq	-104(%rbp), %rax
	movq	%rax, 32(%rsp)
	movl	$9, 40(%rsp)
	leaq	-24(%rbp), %rcx
	leaq	-48(%rbp), %r8
	movl	$9, %edx
	movl	$9, %r9d
	callq	*__imp__iki_vlog_unsigned_bit_combine(%rip)
	jmp	.LBB35_12
.LBB35_9:
	cmpl	$0, -32(%rbp)
	je	.LBB35_10
# BB#29:
	leaq	-24(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	jmp	.LBB35_11
.LBB35_10:
	leaq	-24(%rbp), %rcx
	leaq	-104(%rbp), %rdx
.LBB35_11:
	movl	$8, %r8d
	callq	*__imp__iki_std_memcpy(%rip)
.LBB35_12:
	leaq	5144(%rsi), %rcx
	leaq	-24(%rbp), %rdx
	movl	$8, %r8d
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	1776(%rsi), %rcx
	addq	$5120, %rsi             # imm = 0x1400
	xorl	%r8d, %r8d
	movl	$8, %r9d
	movq	%rsi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_signal_fast_no_reg_no_agg(%rip)
	addq	$240, %rsp
	popq	%rdi
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_127;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_127
	.align	16, 0x90
_execute_127:                           # @_execute_127
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	pushq	%rdi
	subq	$80, %rsp
	movq	%rdx, %rsi
	movl	$10485984, %ecx         # imm = 0xA000E0
	callq	*__imp__iki_stmt_online(%rip)
	movq	608(%rsi), %rax
	movq	%rax, 48(%rsp)
	leaq	ng1(%rip), %rax
	movq	%rax, 32(%rsp)
	movl	$8, 56(%rsp)
	movl	$1, 40(%rsp)
	leaq	-24(%rbp), %rcx
	movl	$9, %edx
	movl	$9, %r8d
	movl	$2, %r9d
	callq	*__imp__iki_vlog_concat(%rip)
	movq	2064(%rsi), %rdi
	leaq	-32(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, -20(%rbp)
	jne	.LBB36_4
# BB#1:
	cmpl	$0, 4(%rdi)
	je	.LBB36_2
.LBB36_4:
	movq	$-1, -32(%rbp)
.LBB36_3:
	andl	$511, -32(%rbp)         # imm = 0x1FF
	andl	$511, -28(%rbp)         # imm = 0x1FF
	leaq	5312(%rsi), %rcx
	leaq	-32(%rbp), %rdx
	movl	$8, %r8d
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	1832(%rsi), %rcx
	addq	$5288, %rsi             # imm = 0x14A8
	xorl	%r8d, %r8d
	movl	$8, %r9d
	movq	%rsi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_signal_fast_no_reg_no_agg(%rip)
	addq	$80, %rsp
	popq	%rdi
	popq	%rsi
	popq	%rbp
	ret
.LBB36_2:
	movl	-24(%rbp), %eax
	addl	(%rdi), %eax
	movl	%eax, -32(%rbp)
	movl	$0, -28(%rbp)
	jmp	.LBB36_3

	.def	 _execute_128;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_128
	.align	16, 0x90
_execute_128:                           # @_execute_128
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	pushq	%rdi
	subq	$80, %rsp
	movq	%rdx, %rsi
	movl	$10485985, %ecx         # imm = 0xA000E1
	callq	*__imp__iki_stmt_online(%rip)
	movq	664(%rsi), %rax
	movq	%rax, 48(%rsp)
	leaq	ng1(%rip), %rax
	movq	%rax, 32(%rsp)
	movl	$8, 56(%rsp)
	movl	$1, 40(%rsp)
	leaq	-24(%rbp), %rcx
	movl	$9, %edx
	movl	$9, %r8d
	movl	$2, %r9d
	callq	*__imp__iki_vlog_concat(%rip)
	movq	2120(%rsi), %rdi
	leaq	-32(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, -20(%rbp)
	jne	.LBB37_4
# BB#1:
	cmpl	$0, 4(%rdi)
	je	.LBB37_2
.LBB37_4:
	movq	$-1, -32(%rbp)
.LBB37_3:
	andl	$511, -32(%rbp)         # imm = 0x1FF
	andl	$511, -28(%rbp)         # imm = 0x1FF
	leaq	5480(%rsi), %rcx
	leaq	-32(%rbp), %rdx
	movl	$8, %r8d
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	1888(%rsi), %rcx
	addq	$5456, %rsi             # imm = 0x1550
	xorl	%r8d, %r8d
	movl	$8, %r9d
	movq	%rsi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_signal_fast_no_reg_no_agg(%rip)
	addq	$80, %rsp
	popq	%rdi
	popq	%rsi
	popq	%rbp
	ret
.LBB37_2:
	movl	-24(%rbp), %eax
	addl	(%rdi), %eax
	movl	%eax, -32(%rbp)
	movl	$0, -28(%rbp)
	jmp	.LBB37_3

	.def	 _execute_37;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_37
	.align	16, 0x90
_execute_37:                            # @_execute_37
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$184, %rsp
	movq	%rdx, %rsi
	.align	16, 0x90
.LBB38_1:                               # =>This Inner Loop Header: Depth=1
	movl	$25, %edx
	movq	%rsi, %rcx
	callq	*__imp__iki_vlog_set_threadId_for_unrandom(%rip)
	movq	3120(%rsi), %rax
	testq	%rax, %rax
	je	.LBB38_5
# BB#2:                                 #   in Loop: Header=BB38_1 Depth=1
	jmpq	*%rax
.Ltmp138:                               # Block address taken
.LBB38_3:
	movb	$0, 3200(%rsi)
	movl	$10485993, %ecx         # imm = 0xA000E9
	callq	*__imp__iki_stmt_online(%rip)
	leaq	40(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movl	4(%rax), %ecx
	notl	%ecx
	testl	(%rax), %ecx
	je	.LBB38_4
# BB#6:
	movq	__imp__iki_stmt_online(%rip), %rdi
	movl	$10485994, %ecx         # imm = 0xA000EA
	callq	*%rdi
	movq	%rdi, %r14
	movq	__imp__iki_malloc8(%rip), %rdi
	callq	*%rdi
	movq	%rdi, %r12
	movq	%rax, %rdi
	movq	__imp__iki_std_memset(%rip), %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%rbx
	movq	%rbx, %r15
	movl	ng0(%rip), %eax
	andl	$15, %eax
	movl	%eax, (%rdi)
	movl	ng0+4(%rip), %eax
	andl	$15, %eax
	movl	%eax, 4(%rdi)
	leaq	544(%rsi), %rcx
	leaq	3208(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$3, 32(%rsp)
	movq	__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip), %rbx
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%rbx
	movq	%rbx, %r13
	movl	$10485995, %ecx         # imm = 0xA000EB
	callq	*%r14
	leaq	-64(%rbp), %r14
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%r14, %rcx
	callq	*%r15
	leaq	ng38(%rip), %rax
	movq	%rax, 32(%rsp)
	movl	$32, 40(%rsp)
	leaq	ng59(%rip), %r8
	movl	$32, %edx
	movl	$8, %r9d
	movq	%r14, %rcx
	callq	*__imp__iki_vlog_unsigned_divide(%rip)
	movq	%rax, %rbx
	callq	*%r12
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r15
	movzbl	(%rbx), %eax
	movl	%eax, (%rdi)
	movzbl	4(%rbx), %eax
	movl	%eax, 4(%rdi)
	leaq	600(%rsi), %rcx
	leaq	3248(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r13
	movl	$10485996, %ecx         # imm = 0xA000EC
	callq	*__imp__iki_stmt_online(%rip)
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%r14, %rcx
	callq	*%r15
	leaq	ng38(%rip), %rax
	movq	%rax, 32(%rsp)
	movl	$32, 40(%rsp)
	leaq	ng60(%rip), %r8
	movl	$32, %edx
	movl	$8, %r9d
	movq	%r14, %rcx
	callq	*__imp__iki_vlog_unsigned_divide(%rip)
	movq	%rax, %rdi
	callq	*%r12
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*%r15
	movzbl	(%rdi), %eax
	movl	%eax, (%rbx)
	movzbl	4(%rdi), %eax
	movl	%eax, 4(%rbx)
	leaq	656(%rsi), %rcx
	leaq	3288(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rbx, %r8
	callq	*%r13
	jmp	.LBB38_5
.LBB38_4:
	movl	$10485997, %ecx         # imm = 0xA000ED
	callq	*__imp__iki_stmt_online(%rip)
	movq	1560(%rsi), %rax
	movl	4(%rax), %ecx
	notl	%ecx
	testl	(%rax), %ecx
	je	.LBB38_5
# BB#7:
	movl	$10485999, %ecx         # imm = 0xA000EF
	callq	*__imp__iki_stmt_online(%rip)
	movq	1392(%rsi), %rdx
	movq	__imp__iki_vlog_get_bit_select_value_simple(%rip), %r12
	leaq	-72(%rbp), %rcx
	xorl	%r8d, %r8d
	callq	*%r12
	movq	%rax, %r14
	movq	1392(%rsi), %rdx
	leaq	-80(%rbp), %rcx
	movl	$1, %r8d
	callq	*%r12
	movq	%rax, %rbx
	movq	1392(%rsi), %rdx
	leaq	-88(%rbp), %rcx
	movl	$6, %r8d
	callq	*%r12
	movq	%rax, %rdi
	movq	1392(%rsi), %rdx
	leaq	-96(%rbp), %rcx
	movl	$7, %r8d
	callq	*%r12
	movq	%r14, 80(%rsp)
	movq	%rbx, 64(%rsp)
	movq	%rdi, 48(%rsp)
	movq	%rax, 32(%rsp)
	movl	$1, 88(%rsp)
	movl	$1, 72(%rsp)
	movl	$1, 56(%rsp)
	movl	$1, 40(%rsp)
	leaq	-64(%rbp), %rcx
	movl	$4, %edx
	movl	$4, %r8d
	movl	$4, %r9d
	callq	*__imp__iki_vlog_concat(%rip)
	movq	__imp__iki_malloc8(%rip), %rdi
	callq	*%rdi
	movq	%rax, %rbx
	movq	__imp__iki_std_memset(%rip), %r15
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*%r15
	movl	-64(%rbp), %eax
	andl	$15, %eax
	movl	%eax, (%rbx)
	movl	-60(%rbp), %eax
	andl	$15, %eax
	movl	%eax, 4(%rbx)
	leaq	544(%rsi), %rcx
	leaq	3328(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$3, 32(%rsp)
	movq	__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip), %r14
	xorl	%r9d, %r9d
	movq	%rbx, %r8
	callq	*%r14
	movq	%r14, %r13
	movl	$10486000, %ecx         # imm = 0xA000F0
	movq	__imp__iki_stmt_online(%rip), %r12
	callq	*%r12
	movq	1392(%rsi), %r14
	callq	*%rdi
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*%r15
	movzbl	(%r14), %eax
	movl	%eax, (%rbx)
	movzbl	4(%r14), %eax
	movq	%r15, %r14
	movl	%eax, 4(%rbx)
	leaq	432(%rsi), %rcx
	leaq	3368(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rbx, %r8
	callq	*%r13
	movl	$10486003, %ecx         # imm = 0xA000F3
	callq	*%r12
	movq	1840(%rsi), %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	leaq	-64(%rbp), %rdi
	movq	%rdi, %rcx
	callq	*%r14
	leaq	ng0(%rip), %r15
	movq	%r15, 32(%rsp)
	movl	$32, 40(%rsp)
	movl	$32, %edx
	movl	$9, %r9d
	movq	%rdi, %rcx
	movq	%rbx, %r8
	callq	*__imp__iki_vlog_signed_less(%rip)
	movl	4(%rax), %ecx
	notl	%ecx
	testl	(%rax), %ecx
	je	.LBB38_8
# BB#20:
	movl	$10486004, %ecx         # imm = 0xA000F4
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movzbl	ng0(%rip), %eax
	movl	%eax, (%rdi)
	movzbl	ng0+4(%rip), %eax
	movl	%eax, 4(%rdi)
	leaq	600(%rsi), %rcx
	leaq	3408(%rsi), %rdx
	jmp	.LBB38_13
.LBB38_8:
	movl	$10486005, %ecx         # imm = 0xA000F5
	callq	*__imp__iki_stmt_online(%rip)
	movq	1840(%rsi), %rbx
	leaq	-64(%rbp), %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r14
	leaq	ng5(%rip), %r12
	movq	%r12, 32(%rsp)
	movl	$32, 40(%rsp)
	leaq	ng59(%rip), %r8
	movl	$32, %edx
	movl	$8, %r9d
	movq	%rdi, %rcx
	callq	*__imp__iki_vlog_unsigned_minus(%rip)
	movq	%rax, %rdi
	leaq	-72(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*%r14
	cmpl	$0, 4(%rbx)
	jne	.LBB38_21
# BB#9:
	cmpl	$0, 4(%rdi)
	je	.LBB38_10
.LBB38_21:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -72(%rbp)
.LBB38_11:
	movl	-68(%rbp), %eax
	notl	%eax
	testl	-72(%rbp), %eax
	je	.LBB38_12
# BB#23:
	movl	$10486006, %ecx         # imm = 0xA000F6
	callq	*__imp__iki_stmt_online(%rip)
	leaq	-80(%rbp), %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r14
	movq	%r12, 32(%rsp)
	movl	$32, 40(%rsp)
	leaq	ng59(%rip), %r8
	movl	$32, %edx
	movl	$8, %r9d
	movq	%rdi, %rcx
	callq	*__imp__iki_vlog_unsigned_minus(%rip)
	movq	%rax, %rdi
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*%r14
	movzbl	(%rdi), %eax
	movl	%eax, (%rbx)
	movzbl	4(%rdi), %eax
	movl	%eax, 4(%rbx)
	leaq	600(%rsi), %rcx
	leaq	3448(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rbx, %r8
	jmp	.LBB38_14
.LBB38_12:
	movl	$10486008, %ecx         # imm = 0xA000F8
	callq	*__imp__iki_stmt_online(%rip)
	movq	1840(%rsi), %r9
	movl	$1, -112(%rbp)
	movl	$8, -108(%rbp)
	movl	$0, -104(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, 80(%rsp)
	movq	%r15, 56(%rsp)
	leaq	ng54(%rip), %rax
	movq	%rax, 32(%rsp)
	movl	$1, 112(%rsp)
	movl	$2, 104(%rsp)
	movl	$1, 96(%rsp)
	movq	$0, 88(%rsp)
	movl	$1, 72(%rsp)
	movl	$32, 64(%rsp)
	movl	$1, 48(%rsp)
	movl	$32, 40(%rsp)
	leaq	-64(%rbp), %rcx
	movl	$1, %edx
	movl	$8, %r8d
	callq	*__imp__iki_vlog_get_part_select_value(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movzbl	-64(%rbp), %eax
	movl	%eax, (%rdi)
	movzbl	-60(%rbp), %eax
	movl	%eax, 4(%rdi)
	leaq	600(%rsi), %rcx
	leaq	3488(%rsi), %rdx
.LBB38_13:
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
.LBB38_14:
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
	movl	$10486011, %ecx         # imm = 0xA000FB
	callq	*__imp__iki_stmt_online(%rip)
	movq	1896(%rsi), %rdi
	leaq	-64(%rbp), %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movq	%r15, 32(%rsp)
	movl	$32, 40(%rsp)
	movl	$32, %edx
	movl	$9, %r9d
	movq	%rbx, %rcx
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_signed_less(%rip)
	movl	4(%rax), %ecx
	notl	%ecx
	testl	(%rax), %ecx
	je	.LBB38_15
# BB#24:
	movl	$10486012, %ecx         # imm = 0xA000FC
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movzbl	ng0(%rip), %eax
	movl	%eax, (%rdi)
	movzbl	ng0+4(%rip), %eax
	movl	%eax, 4(%rdi)
	leaq	656(%rsi), %rcx
	leaq	3528(%rsi), %rdx
	jmp	.LBB38_25
.LBB38_15:
	movl	$10486013, %ecx         # imm = 0xA000FD
	callq	*__imp__iki_stmt_online(%rip)
	movq	1896(%rsi), %rbx
	leaq	-64(%rbp), %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r14
	leaq	ng5(%rip), %r12
	movq	%r12, 32(%rsp)
	movl	$32, 40(%rsp)
	leaq	ng60(%rip), %r8
	movl	$32, %edx
	movl	$8, %r9d
	movq	%rdi, %rcx
	callq	*__imp__iki_vlog_unsigned_minus(%rip)
	movq	%rax, %rdi
	leaq	-72(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*%r14
	cmpl	$0, 4(%rbx)
	jne	.LBB38_26
# BB#16:
	cmpl	$0, 4(%rdi)
	je	.LBB38_17
.LBB38_26:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -72(%rbp)
.LBB38_18:
	movl	-68(%rbp), %eax
	notl	%eax
	testl	-72(%rbp), %eax
	je	.LBB38_19
# BB#28:
	movl	$10486014, %ecx         # imm = 0xA000FE
	callq	*__imp__iki_stmt_online(%rip)
	leaq	-80(%rbp), %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r14
	movq	%r12, 32(%rsp)
	movl	$32, 40(%rsp)
	leaq	ng60(%rip), %r8
	movl	$32, %edx
	movl	$8, %r9d
	movq	%rdi, %rcx
	callq	*__imp__iki_vlog_unsigned_minus(%rip)
	movq	%rax, %rdi
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*%r14
	movzbl	(%rdi), %eax
	movl	%eax, (%rbx)
	movzbl	4(%rdi), %eax
	movl	%eax, 4(%rbx)
	leaq	656(%rsi), %rcx
	leaq	3568(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rbx, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
	jmp	.LBB38_5
.LBB38_19:
	movl	$10486016, %ecx         # imm = 0xA00100
	callq	*__imp__iki_stmt_online(%rip)
	movq	1896(%rsi), %r9
	movl	$1, -112(%rbp)
	movl	$8, -108(%rbp)
	movl	$0, -104(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, 80(%rsp)
	movq	%r15, 56(%rsp)
	leaq	ng54(%rip), %rax
	movq	%rax, 32(%rsp)
	movl	$1, 112(%rsp)
	movl	$2, 104(%rsp)
	movl	$1, 96(%rsp)
	movq	$0, 88(%rsp)
	movl	$1, 72(%rsp)
	movl	$32, 64(%rsp)
	movl	$1, 48(%rsp)
	movl	$32, 40(%rsp)
	leaq	-64(%rbp), %rcx
	movl	$1, %edx
	movl	$8, %r8d
	callq	*__imp__iki_vlog_get_part_select_value(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movzbl	-64(%rbp), %eax
	movl	%eax, (%rdi)
	movzbl	-60(%rbp), %eax
	movl	%eax, 4(%rdi)
	leaq	656(%rsi), %rcx
	leaq	3608(%rsi), %rdx
.LBB38_25:
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
.LBB38_5:
	movl	$10485992, %ecx         # imm = 0xA000E8
	callq	*__imp__iki_stmt_online(%rip)
	movb	$1, 3200(%rsi)
	leaq	.Ltmp138(%rip), %rax
	movq	%rax, 3120(%rsi)
	addq	$184, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB38_10:
	movl	(%rbx), %eax
	cmpl	(%rdi), %eax
	jbe	.LBB38_11
# BB#22:
	movl	$1, -72(%rbp)
	jmp	.LBB38_11
.LBB38_17:
	movl	(%rbx), %eax
	cmpl	(%rdi), %eax
	jbe	.LBB38_18
# BB#27:
	movl	$1, -72(%rbp)
	jmp	.LBB38_18

	.def	 _execute_129;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_129
	.align	16, 0x90
_execute_129:                           # @_execute_129
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	pushq	%rdi
	subq	$80, %rsp
	movq	%rdx, %rsi
	movl	$10485976, %ecx         # imm = 0xA000D8
	callq	*__imp__iki_stmt_online(%rip)
	movq	1728(%rsi), %rdi
	leaq	-32(%rbp), %rcx
	movl	$8, %r8d
	movq	%rdi, %rdx
	callq	*__imp__iki_vlog_get_bit_select_value_simple(%rip)
	movq	%rdi, 48(%rsp)
	movq	%rax, 32(%rsp)
	movl	$9, 56(%rsp)
	movl	$1, 40(%rsp)
	leaq	-24(%rbp), %rcx
	movl	$10, %edx
	movl	$10, %r8d
	movl	$2, %r9d
	callq	*__imp__iki_vlog_concat(%rip)
	movl	$511, %eax              # imm = 0x1FF
	movl	-24(%rbp), %ecx
	andl	%eax, %ecx
	movl	%ecx, 5648(%rsi)
	andl	-20(%rbp), %eax
	movl	%eax, 5652(%rsi)
	leaq	1944(%rsi), %rcx
	addq	$5624, %rsi             # imm = 0x15F8
	xorl	%r8d, %r8d
	movl	$8, %r9d
	movq	%rsi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_signal_fast_no_reg_no_agg(%rip)
	addq	$80, %rsp
	popq	%rdi
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_130;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_130
	.align	16, 0x90
_execute_130:                           # @_execute_130
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	pushq	%rdi
	subq	$80, %rsp
	movq	%rdx, %rsi
	movl	$10485977, %ecx         # imm = 0xA000D9
	callq	*__imp__iki_stmt_online(%rip)
	movq	1784(%rsi), %rdi
	leaq	-32(%rbp), %rcx
	movl	$8, %r8d
	movq	%rdi, %rdx
	callq	*__imp__iki_vlog_get_bit_select_value_simple(%rip)
	movq	%rdi, 48(%rsp)
	movq	%rax, 32(%rsp)
	movl	$9, 56(%rsp)
	movl	$1, 40(%rsp)
	leaq	-24(%rbp), %rcx
	movl	$10, %edx
	movl	$10, %r8d
	movl	$2, %r9d
	callq	*__imp__iki_vlog_concat(%rip)
	movl	$511, %eax              # imm = 0x1FF
	movl	-24(%rbp), %ecx
	andl	%eax, %ecx
	movl	%ecx, 5816(%rsi)
	andl	-20(%rbp), %eax
	movl	%eax, 5820(%rsi)
	leaq	2000(%rsi), %rcx
	addq	$5792, %rsi             # imm = 0x16A0
	xorl	%r8d, %r8d
	movl	$8, %r9d
	movq	%rsi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_signal_fast_no_reg_no_agg(%rip)
	addq	$80, %rsp
	popq	%rdi
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_131;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_131
	.align	16, 0x90
_execute_131:                           # @_execute_131
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$56, %rsp
	movq	%rdx, %rsi
	movl	$10485980, %ecx         # imm = 0xA000DC
	callq	*__imp__iki_stmt_online(%rip)
	movq	1952(%rsi), %rdi
	leaq	-32(%rbp), %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*__imp__iki_std_memset(%rip)
	leaq	ng5(%rip), %rax
	movq	%rax, 32(%rsp)
	movl	$32, 40(%rsp)
	movl	$9, %edx
	movl	$9, %r9d
	movq	%rbx, %rcx
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_signed_arith_rshift(%rip)
	leaq	5984(%rsi), %rcx
	movl	$8, %r8d
	movq	%rax, %rdx
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	2056(%rsi), %rcx
	addq	$5960, %rsi             # imm = 0x1748
	xorl	%r8d, %r8d
	movl	$8, %r9d
	movq	%rsi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_signal_fast_no_reg_no_agg(%rip)
	addq	$56, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_132;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_132
	.align	16, 0x90
_execute_132:                           # @_execute_132
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$56, %rsp
	movq	%rdx, %rsi
	movl	$10485981, %ecx         # imm = 0xA000DD
	callq	*__imp__iki_stmt_online(%rip)
	movq	2008(%rsi), %rdi
	leaq	-32(%rbp), %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*__imp__iki_std_memset(%rip)
	leaq	ng5(%rip), %rax
	movq	%rax, 32(%rsp)
	movl	$32, 40(%rsp)
	movl	$9, %edx
	movl	$9, %r9d
	movq	%rbx, %rcx
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_signed_arith_rshift(%rip)
	leaq	6152(%rsi), %rcx
	movl	$8, %r8d
	movq	%rax, %rdx
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	2112(%rsi), %rcx
	addq	$6128, %rsi             # imm = 0x17F0
	xorl	%r8d, %r8d
	movl	$8, %r9d
	movq	%rsi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_signal_fast_no_reg_no_agg(%rip)
	addq	$56, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_133;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_133
	.align	16, 0x90
_execute_133:                           # @_execute_133
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	subq	$40, %rsp
	movq	%rdx, %rsi
	leaq	2224(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value(%rip)
	leaq	6320(%rsi), %rcx
	movl	$8, %r8d
	movq	%rax, %rdx
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	2168(%rsi), %rcx
	addq	$6296, %rsi             # imm = 0x1898
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%rsi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_signal_fast(%rip)
	addq	$40, %rsp
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_134;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_134
	.align	16, 0x90
_execute_134:                           # @_execute_134
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	subq	$40, %rsp
	movq	%rdx, %rsi
	leaq	2336(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value(%rip)
	leaq	6488(%rsi), %rcx
	movl	$8, %r8d
	movq	%rax, %rdx
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	2280(%rsi), %rcx
	addq	$6464, %rsi             # imm = 0x1940
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%rsi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_signal_fast(%rip)
	addq	$40, %rsp
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_38;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_38
	.align	16, 0x90
_execute_38:                            # @_execute_38
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	pushq	%rdi
	subq	$64, %rsp
	movq	%rdx, %rsi
	.align	16, 0x90
.LBB45_1:                               # =>This Inner Loop Header: Depth=1
	movl	$26, %edx
	movq	%rsi, %rcx
	callq	*__imp__iki_vlog_set_threadId_for_unrandom(%rip)
	movq	1168(%rsi), %rax
	testq	%rax, %rax
	je	.LBB45_6
# BB#2:                                 #   in Loop: Header=BB45_1 Depth=1
	jmpq	*%rax
.Ltmp160:                               # Block address taken
.LBB45_3:
	movb	$0, 1248(%rsi)
	movl	$9437243, %ecx          # imm = 0x90003B
	callq	*__imp__iki_stmt_online(%rip)
	leaq	96(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movl	4(%rax), %ecx
	notl	%ecx
	testl	(%rax), %ecx
	je	.LBB45_4
# BB#7:
	movl	$9437244, %ecx          # imm = 0x90003C
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	ng1(%rip), %eax
	andl	$1, %eax
	movl	%eax, (%rdi)
	movl	ng1+4(%rip), %eax
	andl	$1, %eax
	movl	%eax, 4(%rdi)
	leaq	768(%rsi), %rcx
	leaq	1256(%rsi), %rdx
	jmp	.LBB45_8
.LBB45_4:
	movl	$9437245, %ecx          # imm = 0x90003D
	callq	*__imp__iki_stmt_online(%rip)
	movq	720(%rsi), %rax
	movl	4(%rax), %ecx
	notl	%ecx
	testl	(%rax), %ecx
	je	.LBB45_5
# BB#9:
	movl	$9437246, %ecx          # imm = 0x90003E
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	ng2(%rip), %eax
	andl	$1, %eax
	movl	%eax, (%rdi)
	movl	ng2+4(%rip), %eax
	andl	$1, %eax
	movl	%eax, 4(%rdi)
	leaq	768(%rsi), %rcx
	leaq	1296(%rsi), %rdx
	jmp	.LBB45_8
.LBB45_5:
	movl	$9437247, %ecx          # imm = 0x90003F
	callq	*__imp__iki_stmt_online(%rip)
	leaq	488(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movl	4(%rax), %ecx
	notl	%ecx
	testl	(%rax), %ecx
	je	.LBB45_6
# BB#10:
	movl	$9437248, %ecx          # imm = 0x900040
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	ng1(%rip), %eax
	andl	$1, %eax
	movl	%eax, (%rdi)
	movl	ng1+4(%rip), %eax
	andl	$1, %eax
	movl	%eax, 4(%rdi)
	leaq	768(%rsi), %rcx
	leaq	1336(%rsi), %rdx
.LBB45_8:
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$0, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
.LBB45_6:
	movl	$9437242, %ecx          # imm = 0x90003A
	callq	*__imp__iki_stmt_online(%rip)
	movb	$1, 1248(%rsi)
	leaq	.Ltmp160(%rip), %rax
	movq	%rax, 1168(%rsi)
	addq	$64, %rsp
	popq	%rdi
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_136;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_136
	.align	16, 0x90
_execute_136:                           # @_execute_136
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	pushq	%rdi
	subq	$64, %rsp
	movq	%rdx, %rsi
	movl	$9437261, %ecx          # imm = 0x90004D
	callq	*__imp__iki_stmt_online(%rip)
	movq	888(%rsi), %rdi
	leaq	-32(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	4(%rdi), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	(%rdi), %ecx
	testb	$1, %cl
	je	.LBB46_1
# BB#10:
	movl	$1, -32(%rbp)
	jmp	.LBB46_2
.LBB46_1:
	testl	%eax, %eax
	je	.LBB46_2
# BB#11:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -32(%rbp)
.LBB46_2:
	cmpl	$0, -32(%rbp)
	movb	$1, %al
	jne	.LBB46_4
# BB#3:
	cmpl	$0, -28(%rbp)
	setne	%al
.LBB46_4:
	testb	%al, %al
                                        # implicit-def: RAX
	je	.LBB46_5
# BB#12:
	movq	832(%rsi), %rax
.LBB46_5:
	cmpl	$0, -28(%rbp)
	je	.LBB46_6
# BB#13:
	leaq	ng14(%rip), %rcx
	movq	%rcx, 32(%rsp)
	movl	$8, 40(%rsp)
	leaq	-24(%rbp), %rcx
	movl	$8, %edx
	movl	$8, %r9d
	movq	%rax, %r8
	callq	*__imp__iki_vlog_unsigned_bit_combine(%rip)
	jmp	.LBB46_9
.LBB46_6:
	movl	-32(%rbp), %ecx
	testl	%ecx, %ecx
	je	.LBB46_7
# BB#14:
	leaq	-24(%rbp), %rcx
	movl	$8, %r8d
	movq	%rax, %rdx
	jmp	.LBB46_8
.LBB46_7:
	leaq	ng14(%rip), %rdx
	leaq	-24(%rbp), %rcx
	movl	$8, %r8d
.LBB46_8:
	callq	*__imp__iki_std_memcpy(%rip)
.LBB46_9:
	leaq	1984(%rsi), %rcx
	leaq	-24(%rbp), %rdx
	movl	$8, %r8d
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	264(%rsi), %rcx
	addq	$1960, %rsi             # imm = 0x7A8
	xorl	%r8d, %r8d
	movl	$7, %r9d
	movq	%rsi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_signal_fast_no_reg_no_agg(%rip)
	addq	$64, %rsp
	popq	%rdi
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_137;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_137
	.align	16, 0x90
_execute_137:                           # @_execute_137
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	subq	$40, %rsp
	movq	%rdx, %rsi
	movl	$9437265, %ecx          # imm = 0x900051
	callq	*__imp__iki_stmt_online(%rip)
	movq	552(%rsi), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, 2152(%rsi)
	movzbl	4(%rax), %eax
	movl	%eax, 2156(%rsi)
	leaq	936(%rsi), %rcx
	addq	$2128, %rsi             # imm = 0x850
	xorl	%r8d, %r8d
	movl	$7, %r9d
	movq	%rsi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_signal_fast_no_reg_no_agg(%rip)
	addq	$40, %rsp
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_138;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_138
	.align	16, 0x90
_execute_138:                           # @_execute_138
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	subq	$40, %rsp
	movq	%rdx, %rsi
	movl	$9437266, %ecx          # imm = 0x900052
	callq	*__imp__iki_stmt_online(%rip)
	movq	608(%rsi), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, 2320(%rsi)
	movzbl	4(%rax), %eax
	movl	%eax, 2324(%rsi)
	leaq	936(%rsi), %rcx
	addq	$2296, %rsi             # imm = 0x8F8
	movl	$8, %r8d
	movl	$7, %r9d
	movq	%rsi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_signal_fast_no_reg_no_agg(%rip)
	addq	$40, %rsp
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_139;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_139
	.align	16, 0x90
_execute_139:                           # @_execute_139
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	subq	$40, %rsp
	movq	%rdx, %rsi
	movl	$9437267, %ecx          # imm = 0x900053
	callq	*__imp__iki_stmt_online(%rip)
	movq	664(%rsi), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, 2488(%rsi)
	movzbl	4(%rax), %eax
	movl	%eax, 2492(%rsi)
	leaq	936(%rsi), %rcx
	addq	$2464, %rsi             # imm = 0x9A0
	movl	$16, %r8d
	movl	$7, %r9d
	movq	%rsi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_signal_fast_no_reg_no_agg(%rip)
	addq	$40, %rsp
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_39;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_39
	.align	16, 0x90
_execute_39:                            # @_execute_39
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$168, %rsp
	movq	%rdx, %rsi
	.align	16, 0x90
.LBB50_1:                               # =>This Inner Loop Header: Depth=1
	movl	$27, %edx
	movq	%rsi, %rcx
	callq	*__imp__iki_vlog_set_threadId_for_unrandom(%rip)
	movq	1416(%rsi), %rax
	testq	%rax, %rax
	je	.LBB50_17
# BB#2:                                 #   in Loop: Header=BB50_1 Depth=1
	jmpq	*%rax
.Ltmp176:                               # Block address taken
.LBB50_3:
	movb	$0, 1496(%rsi)
	movl	$9437272, %ecx          # imm = 0x900058
	callq	*__imp__iki_stmt_online(%rip)
	leaq	320(%rsi), %r15
	movl	$8, %edx
	movq	%r15, %rcx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %rbx
	leaq	-48(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, 4(%rbx)
	jne	.LBB50_18
# BB#4:
	cmpl	$0, ng62+4(%rip)
	je	.LBB50_5
.LBB50_18:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -48(%rbp)
.LBB50_7:
	movl	$8, %edx
	movq	%r15, %rcx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %rbx
	leaq	-56(%rbp), %r14
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%r14, %rcx
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, ng62+4(%rip)
	jne	.LBB50_19
# BB#8:
	cmpl	$0, ng21+4(%rip)
	je	.LBB50_9
.LBB50_19:
	movq	$-1, -56(%rbp)
.LBB50_10:
	leaq	-64(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, 4(%rbx)
	jne	.LBB50_20
# BB#11:
	cmpl	$0, -52(%rbp)
	je	.LBB50_12
.LBB50_20:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -64(%rbp)
.LBB50_13:
	movl	-48(%rbp), %edi
	movl	-44(%rbp), %edx
	movl	-64(%rbp), %r8d
	movl	-60(%rbp), %ebx
	movl	%edi, %ecx
	andl	%r8d, %ecx
	movl	%edx, %eax
	orl	%ebx, %eax
	je	.LBB50_14
# BB#22:
	orl	%eax, %ecx
	notl	%edi
	notl	%edx
	andl	%edi, %edx
	notl	%edx
	andl	%edx, %eax
	notl	%r8d
	notl	%ebx
	andl	%r8d, %ebx
	notl	%ebx
	andl	%ebx, %eax
	andl	%ecx, %edx
	andl	%ebx, %edx
	movl	%edx, %ecx
.LBB50_14:
	notl	%eax
	testl	%eax, %ecx
	je	.LBB50_15
# BB#23:
	movl	$9437273, %ecx          # imm = 0x900059
	callq	*__imp__iki_stmt_online(%rip)
	leaq	376(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movl	4(%rax), %ecx
	notl	%ecx
	testl	(%rax), %ecx
	je	.LBB50_24
# BB#25:
	movl	$9437274, %ecx          # imm = 0x90005A
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	ng1(%rip), %eax
	andl	$1, %eax
	movl	%eax, (%rbx)
	movl	ng1+4(%rip), %eax
	andl	$1, %eax
	movl	%eax, 4(%rbx)
	leaq	880(%rsi), %rcx
	leaq	1504(%rsi), %rdx
	jmp	.LBB50_16
.LBB50_15:
	movl	$9437278, %ecx          # imm = 0x90005E
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	ng1(%rip), %eax
	andl	$1, %eax
	movl	%eax, (%rbx)
	movl	ng1+4(%rip), %eax
	andl	$1, %eax
	movl	%eax, 4(%rbx)
	leaq	880(%rsi), %rcx
	leaq	1584(%rsi), %rdx
	jmp	.LBB50_16
.LBB50_24:
	movl	$9437276, %ecx          # imm = 0x90005C
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	ng2(%rip), %eax
	andl	$1, %eax
	movl	%eax, (%rbx)
	movl	ng2+4(%rip), %eax
	andl	$1, %eax
	movl	%eax, 4(%rbx)
	leaq	880(%rsi), %rcx
	leaq	1544(%rsi), %rdx
.LBB50_16:
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$0, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rbx, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
	movl	$9437281, %ecx          # imm = 0x900061
	callq	*__imp__iki_stmt_online(%rip)
	movq	944(%rsi), %rbx
	movl	$8, %edx
	movq	%r15, %rcx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movl	$1, -80(%rbp)
	movl	$7, -76(%rbp)
	movl	$0, -72(%rbp)
	leaq	-80(%rbp), %rcx
	movq	%rcx, 80(%rsp)
	leaq	ng0(%rip), %rcx
	movq	%rcx, 56(%rsp)
	leaq	ng21(%rip), %rcx
	movq	%rcx, 32(%rsp)
	movl	$1, 112(%rsp)
	movl	$2, 104(%rsp)
	movl	$1, 96(%rsp)
	movq	$0, 88(%rsp)
	movl	$1, 72(%rsp)
	movl	$32, 64(%rsp)
	movl	$1, 48(%rsp)
	movl	$32, 40(%rsp)
	movl	$1, %edx
	movl	$4, %r8d
	movq	%r14, %rcx
	movq	%rax, %r9
	callq	*__imp__iki_vlog_get_part_select_value(%rip)
	movq	%r14, 104(%rsp)
	movl	$2, 120(%rsp)
	movl	$4, 112(%rsp)
	movl	$8, 96(%rsp)
	movl	$2, 88(%rsp)
	movl	$1, 80(%rsp)
	movl	$0, 72(%rsp)
	movl	$2, 64(%rsp)
	movl	$1, 56(%rsp)
	movl	$0, 48(%rsp)
	movl	$7, 40(%rsp)
	movl	$1, 32(%rsp)
	leaq	-48(%rbp), %rcx
	movl	$1, %edx
	movl	$8, %r8d
	movq	%rbx, %r9
	callq	*__imp__iki_vlog_get_bit_select_value_pu_input(%rip)
	movq	%rax, %rdi
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movzbl	(%rdi), %eax
	movl	%eax, (%rbx)
	movzbl	4(%rdi), %eax
	movl	%eax, 4(%rbx)
	leaq	824(%rsi), %rcx
	leaq	1624(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rbx, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
.LBB50_17:
	movl	$9437270, %ecx          # imm = 0x900056
	callq	*__imp__iki_stmt_online(%rip)
	movb	$1, 1496(%rsi)
	leaq	.Ltmp176(%rip), %rax
	movq	%rax, 1416(%rsi)
	addq	$168, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB50_5:
	movl	(%rbx), %eax
	cmpl	ng62(%rip), %eax
	jb	.LBB50_7
# BB#6:
	movl	$1, -48(%rbp)
	jmp	.LBB50_7
.LBB50_9:
	movl	ng62(%rip), %eax
	addl	ng21(%rip), %eax
	movl	%eax, -56(%rbp)
	movl	$0, -52(%rbp)
	jmp	.LBB50_10
.LBB50_12:
	movl	(%rbx), %eax
	cmpl	-56(%rbp), %eax
	jae	.LBB50_13
# BB#21:
	movl	$1, -64(%rbp)
	jmp	.LBB50_13

	.def	 _execute_140;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_140
	.align	16, 0x90
_execute_140:                           # @_execute_140
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	subq	$40, %rsp
	movq	%rdx, %rsi
	leaq	992(%rsi), %rcx
	movl	$8, %edx
	callq	*__imp__iki_vlog_signal_handle_value(%rip)
	leaq	2656(%rsi), %rcx
	movl	$8, %r8d
	movq	%rax, %rdx
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	1048(%rsi), %rcx
	addq	$2632, %rsi             # imm = 0xA48
	xorl	%r8d, %r8d
	movl	$7, %r9d
	movq	%rsi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_signal_fast(%rip)
	addq	$40, %rsp
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_41;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_41
	.align	16, 0x90
_execute_41:                            # @_execute_41
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$192, %rsp
	movq	%rdx, %rsi
	.align	16, 0x90
.LBB52_1:                               # =>This Inner Loop Header: Depth=1
	movl	$28, %edx
	movq	%rsi, %rcx
	callq	*__imp__iki_vlog_set_threadId_for_unrandom(%rip)
	movq	440(%rsi), %rax
	testq	%rax, %rax
	je	.LBB52_5
# BB#2:                                 #   in Loop: Header=BB52_1 Depth=1
	jmpq	*%rax
.Ltmp183:                               # Block address taken
.LBB52_3:
	movb	$0, 520(%rsi)
	movl	$14680102, %ecx         # imm = 0xE00026
	callq	*__imp__iki_stmt_online(%rip)
	leaq	96(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movl	4(%rax), %ecx
	notl	%ecx
	testl	(%rax), %ecx
	je	.LBB52_4
# BB#6:
	movl	$14680103, %ecx         # imm = 0xE00027
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movzwl	ng0(%rip), %eax
	movl	%eax, (%rdi)
	movzwl	ng0+4(%rip), %eax
	movl	%eax, 4(%rdi)
	leaq	320(%rsi), %rcx
	leaq	528(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$15, 32(%rsp)
	xorl	%r9d, %r9d
.LBB52_28:
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
.LBB52_5:
	movl	$14680101, %ecx         # imm = 0xE00025
	callq	*__imp__iki_stmt_online(%rip)
	movb	$1, 520(%rsi)
	leaq	.Ltmp183(%rip), %rax
	movq	%rax, 440(%rsi)
	addq	$192, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%rbp
	ret
.LBB52_4:
	movl	$14680104, %ecx         # imm = 0xE00028
	callq	*__imp__iki_stmt_online(%rip)
	leaq	264(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movl	4(%rax), %ecx
	notl	%ecx
	testl	(%rax), %ecx
	je	.LBB52_5
# BB#7:
	movl	$14680105, %ecx         # imm = 0xE00029
	callq	*__imp__iki_stmt_online(%rip)
	leaq	152(%rsi), %rdi
	movl	$8, %edx
	movq	%rdi, %rcx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %rbx
	leaq	-40(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rbx), %ecx
	movl	4(%rbx), %ebx
	xorl	ng63(%rip), %ecx
	movl	ng63+4(%rip), %edx
	movl	%ebx, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %ebx
	movl	%ebx, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB52_9
# BB#8:
	testl	%ebx, %ebx
	movl	$1, -40(%rbp)
	je	.LBB52_9
# BB#19:
	movl	$1, -36(%rbp)
.LBB52_9:
	movl	-36(%rbp), %eax
	notl	%eax
	testl	-40(%rbp), %eax
	je	.LBB52_10
# BB#20:
	movl	$14680106, %ecx         # imm = 0xE0002A
	callq	*__imp__iki_stmt_online(%rip)
	leaq	208(%rsi), %rcx
	movl	$8, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %rdi
	movl	$1, -80(%rbp)
	movl	$15, -76(%rbp)
	movl	$0, -72(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, 72(%rsp)
	leaq	ng0(%rip), %rax
	movq	%rax, 48(%rsp)
	movl	$1, 104(%rsp)
	movl	$2, 96(%rsp)
	movl	$1, 88(%rsp)
	movq	$0, 80(%rsp)
	movl	$1, 64(%rsp)
	movl	$32, 56(%rsp)
	movl	$1, 40(%rsp)
	movl	$32, 32(%rsp)
	leaq	ng54(%rip), %r9
	leaq	-48(%rbp), %rcx
	leaq	-56(%rbp), %rdx
	leaq	-64(%rbp), %r8
	callq	*__imp__iki_vlog_convert_part_select(%rip)
	cmpl	$0, -44(%rbp)
	je	.LBB52_22
# BB#21:
	xorl	%eax, %eax
	jmp	.LBB52_25
.LBB52_10:
	movl	$14680107, %ecx         # imm = 0xE0002B
	callq	*__imp__iki_stmt_online(%rip)
	movl	$8, %edx
	movq	%rdi, %rcx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %rdi
	leaq	-40(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, ng63+4(%rip)
	jne	.LBB52_29
# BB#11:
	cmpl	$0, ng5+4(%rip)
	je	.LBB52_12
.LBB52_29:
	movq	$-1, -40(%rbp)
.LBB52_13:
	leaq	-48(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %ecx
	movl	4(%rdi), %ebx
	xorl	-40(%rbp), %ecx
	movl	-36(%rbp), %edx
	movl	%ebx, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %ebx
	movl	%ebx, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB52_15
# BB#14:
	testl	%ebx, %ebx
	movl	$1, -48(%rbp)
	je	.LBB52_15
# BB#30:
	movl	$1, -44(%rbp)
.LBB52_15:
	movl	-44(%rbp), %eax
	notl	%eax
	testl	-48(%rbp), %eax
	je	.LBB52_5
# BB#16:
	movl	$14680108, %ecx         # imm = 0xE0002C
	callq	*__imp__iki_stmt_online(%rip)
	leaq	208(%rsi), %rcx
	movl	$8, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %rdi
	leaq	-56(%rbp), %rbx
	xorl	%r14d, %r14d
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*__imp__iki_std_memset(%rip)
	leaq	ng64(%rip), %rax
	movq	%rax, 32(%rsp)
	movl	$32, 40(%rsp)
	movl	$8, %edx
	movl	$8, %r9d
	movq	%rbx, %rcx
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_unsigned_lshift(%rip)
	movq	%rax, %rdi
	movl	$1, -80(%rbp)
	movl	$15, -76(%rbp)
	movl	$0, -72(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, 72(%rsp)
	leaq	ng66(%rip), %rax
	movq	%rax, 48(%rsp)
	movl	$1, 104(%rsp)
	movl	$2, 96(%rsp)
	movl	$1, 88(%rsp)
	movq	$0, 80(%rsp)
	movl	$1, 64(%rsp)
	movl	$32, 56(%rsp)
	movl	$1, 40(%rsp)
	movl	$32, 32(%rsp)
	leaq	ng65(%rip), %r9
	leaq	-64(%rbp), %rcx
	leaq	-88(%rbp), %rdx
	leaq	-96(%rbp), %r8
	callq	*__imp__iki_vlog_convert_part_select(%rip)
	cmpl	$0, -60(%rbp)
	jne	.LBB52_32
# BB#17:
	cmpl	$0, -84(%rbp)
	je	.LBB52_31
# BB#18:
	xorl	%r14d, %r14d
	jmp	.LBB52_32
.LBB52_22:
	cmpl	$0, -52(%rbp)
	je	.LBB52_24
# BB#23:
	xorl	%eax, %eax
	jmp	.LBB52_25
.LBB52_24:
	cmpl	$0, -60(%rbp)
	sete	%al
.LBB52_25:
	testb	%al, %al
	je	.LBB52_5
# BB#26:
	movl	-64(%rbp), %r9d
	movl	-48(%rbp), %eax
	subl	-56(%rbp), %eax
	incl	%eax
	movl	%eax, 32(%rsp)
	leaq	-88(%rbp), %rcx
	xorl	%edx, %edx
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_bit_copy(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movzbl	-88(%rbp), %eax
	movl	%eax, (%rdi)
	movzbl	-84(%rbp), %eax
	movl	%eax, 4(%rdi)
	leaq	320(%rsi), %rcx
	leaq	568(%rsi), %rdx
	movl	-56(%rbp), %r9d
	movl	-48(%rbp), %eax
	jmp	.LBB52_27
.LBB52_12:
	movl	ng63(%rip), %eax
	addl	ng5(%rip), %eax
	movl	%eax, -40(%rbp)
	movl	$0, -36(%rbp)
	jmp	.LBB52_13
.LBB52_31:
	cmpl	$0, -92(%rbp)
	sete	%r14b
.LBB52_32:
	testb	%r14b, %r14b
	je	.LBB52_5
# BB#33:
	movl	-96(%rbp), %r9d
	movl	-64(%rbp), %eax
	subl	-88(%rbp), %eax
	incl	%eax
	movl	%eax, 32(%rsp)
	leaq	-104(%rbp), %rcx
	xorl	%edx, %edx
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_bit_copy(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movzbl	-104(%rbp), %eax
	movl	%eax, (%rdi)
	movzbl	-100(%rbp), %eax
	movl	%eax, 4(%rdi)
	leaq	320(%rsi), %rcx
	leaq	608(%rsi), %rdx
	movl	-88(%rbp), %r9d
	movl	-64(%rbp), %eax
.LBB52_27:
	subl	%r9d, %eax
	movl	%eax, 32(%rsp)
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	jmp	.LBB52_28

	.def	 _execute_44;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_44
	.align	16, 0x90
_execute_44:                            # @_execute_44
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$144, %rsp
	movq	%rdx, %rsi
	.align	16, 0x90
.LBB53_1:                               # =>This Inner Loop Header: Depth=1
	movl	$29, %edx
	movq	%rsi, %rcx
	callq	*__imp__iki_vlog_set_threadId_for_unrandom(%rip)
	movq	584(%rsi), %rax
	testq	%rax, %rax
	je	.LBB53_5
# BB#2:                                 #   in Loop: Header=BB53_1 Depth=1
	jmpq	*%rax
.Ltmp187:                               # Block address taken
.LBB53_3:
	movb	$0, 664(%rsi)
	movl	$16777258, %ecx         # imm = 0x100002A
	callq	*__imp__iki_stmt_online(%rip)
	leaq	264(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movl	4(%rax), %ecx
	notl	%ecx
	testl	(%rax), %ecx
	je	.LBB53_4
# BB#6:
	movl	$16777259, %ecx         # imm = 0x100002B
	callq	*__imp__iki_stmt_online(%rip)
	leaq	152(%rsi), %rcx
	movq	__imp__iki_vlog_signal_handle_value_input(%rip), %rbx
	movl	$1, %edx
	callq	*%rbx
	movq	%rax, %rdi
	leaq	96(%rsi), %rcx
	movl	$15, %edx
	callq	*%rbx
	cmpl	$32767, (%rax)          # imm = 0x7FFF
	movb	$1, %cl
	movb	$1, %dl
	ja	.LBB53_8
# BB#7:                                 # %select.mid
	xorl	%edx, %edx
.LBB53_8:                               # %select.end
	testb	%dl, %dl
	movl	(%rax), %r14d
	jne	.LBB53_10
# BB#9:
	cmpl	$0, 4(%rax)
	setne	%cl
.LBB53_10:
	testb	%cl, %cl
	jne	.LBB53_4
# BB#11:
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %eax
	andl	$1, %eax
	movl	%eax, (%rbx)
	movl	4(%rdi), %eax
	andl	$1, %eax
	movl	%eax, 4(%rbx)
	leaq	488(%rsi), %rcx
	leaq	672(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$0, 32(%rsp)
	movq	%rbx, %r8
	movl	%r14d, %r9d
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
.LBB53_4:
	movl	$16777261, %ecx         # imm = 0x100002D
	callq	*__imp__iki_stmt_online(%rip)
	movq	496(%rsi), %rdi
	leaq	96(%rsi), %rcx
	movl	$15, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, 104(%rsp)
	movl	$2, 120(%rsp)
	movl	$15, 112(%rsp)
	movl	$1, 96(%rsp)
	movl	$2, 88(%rsp)
	movl	$1, 80(%rsp)
	movl	$0, 72(%rsp)
	movl	$32767, 64(%rsp)        # imm = 0x7FFF
	movl	$1, 56(%rsp)
	movl	$0, 48(%rsp)
	movl	$0, 40(%rsp)
	movl	$1, 32(%rsp)
	leaq	-40(%rbp), %rcx
	movl	$1, %edx
	movl	$1, %r8d
	movq	%rdi, %r9
	callq	*__imp__iki_vlog_get_bit_select_value_pu_input(%rip)
	movq	%rax, %rdi
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %eax
	andl	$1, %eax
	movl	%eax, (%rbx)
	movl	4(%rdi), %eax
	andl	$1, %eax
	movl	%eax, 4(%rbx)
	leaq	208(%rsi), %rcx
	leaq	712(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$0, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rbx, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
.LBB53_5:
	movl	$16777257, %ecx         # imm = 0x1000029
	callq	*__imp__iki_stmt_online(%rip)
	movb	$1, 664(%rsi)
	leaq	.Ltmp187(%rip), %rax
	movq	%rax, 584(%rsi)
	addq	$144, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%rbp
	ret

	.def	 _execute_45;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_45
	.align	16, 0x90
_execute_45:                            # @_execute_45
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$136, %rsp
	movq	%rdx, %rsi
	.align	16, 0x90
.LBB54_1:                               # =>This Inner Loop Header: Depth=1
	movl	$30, %edx
	movq	%rsi, %rcx
	callq	*__imp__iki_vlog_set_threadId_for_unrandom(%rip)
	movq	792(%rsi), %rax
	testq	%rax, %rax
	je	.LBB54_4
# BB#2:                                 #   in Loop: Header=BB54_1 Depth=1
	jmpq	*%rax
.Ltmp191:                               # Block address taken
.LBB54_3:
	movb	$0, 872(%rsi)
	movl	$16777266, %ecx         # imm = 0x1000032
	callq	*__imp__iki_stmt_online(%rip)
	movq	496(%rsi), %rdi
	leaq	376(%rsi), %rcx
	movl	$15, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, 104(%rsp)
	movl	$2, 120(%rsp)
	movl	$15, 112(%rsp)
	movl	$1, 96(%rsp)
	movl	$2, 88(%rsp)
	movl	$1, 80(%rsp)
	movl	$0, 72(%rsp)
	movl	$32767, 64(%rsp)        # imm = 0x7FFF
	movl	$1, 56(%rsp)
	movl	$0, 48(%rsp)
	movl	$0, 40(%rsp)
	movl	$1, 32(%rsp)
	leaq	-32(%rbp), %rcx
	movl	$1, %edx
	movl	$1, %r8d
	movq	%rdi, %r9
	callq	*__imp__iki_vlog_get_bit_select_value_pu_input(%rip)
	movq	%rax, %rdi
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %eax
	andl	$1, %eax
	movl	%eax, (%rbx)
	movl	4(%rdi), %eax
	andl	$1, %eax
	movl	%eax, 4(%rbx)
	leaq	432(%rsi), %rcx
	leaq	880(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$0, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rbx, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
.LBB54_4:
	movl	$16777265, %ecx         # imm = 0x1000031
	callq	*__imp__iki_stmt_online(%rip)
	movb	$1, 872(%rsi)
	leaq	.Ltmp191(%rip), %rax
	movq	%rax, 792(%rsi)
	addq	$136, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_47;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_47
	.align	16, 0x90
_execute_47:                            # @_execute_47
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$72, %rsp
	movq	%rdx, %rsi
	.align	16, 0x90
.LBB55_1:                               # =>This Inner Loop Header: Depth=1
	movl	$31, %edx
	movq	%rsi, %rcx
	callq	*__imp__iki_vlog_set_threadId_for_unrandom(%rip)
	movq	1160(%rsi), %rax
	testq	%rax, %rax
	je	.LBB55_9
# BB#2:                                 #   in Loop: Header=BB55_1 Depth=1
	jmpq	*%rax
.Ltmp195:                               # Block address taken
.LBB55_3:
	movb	$0, 1240(%rsi)
	movl	$17825834, %ecx         # imm = 0x110002A
	callq	*__imp__iki_stmt_online(%rip)
	leaq	96(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movl	4(%rax), %ecx
	notl	%ecx
	testl	(%rax), %ecx
	je	.LBB55_4
# BB#10:
	movl	$17825835, %ecx         # imm = 0x110002B
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	ng0(%rip), %eax
	andl	$3, %eax
	movl	%eax, (%rdi)
	movl	ng0+4(%rip), %eax
	andl	$3, %eax
	movl	%eax, 4(%rdi)
	leaq	544(%rsi), %rcx
	leaq	1248(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$1, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	jmp	.LBB55_8
.LBB55_4:
	movl	$17825837, %ecx         # imm = 0x110002D
	callq	*__imp__iki_stmt_online(%rip)
	leaq	544(%rsi), %rdi
	movq	552(%rsi), %rbx
	leaq	-32(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, 4(%rbx)
	jne	.LBB55_11
# BB#5:
	cmpl	$0, ng5+4(%rip)
	je	.LBB55_6
.LBB55_11:
	movq	$-1, -32(%rbp)
.LBB55_7:
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	-32(%rbp), %eax
	andl	$3, %eax
	movl	%eax, (%rbx)
	movl	-28(%rbp), %eax
	andl	$3, %eax
	movl	%eax, 4(%rbx)
	leaq	1288(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$1, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %rcx
	movq	%rbx, %r8
.LBB55_8:
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
.LBB55_9:
	movl	$17825833, %ecx         # imm = 0x1100029
	callq	*__imp__iki_stmt_online(%rip)
	movb	$1, 1240(%rsi)
	leaq	.Ltmp195(%rip), %rax
	movq	%rax, 1160(%rsi)
	addq	$72, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%rbp
	ret
.LBB55_6:
	movl	(%rbx), %eax
	addl	ng5(%rip), %eax
	movl	%eax, -32(%rbp)
	movl	$0, -28(%rbp)
	jmp	.LBB55_7

	.def	 _execute_48;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_48
	.align	16, 0x90
_execute_48:                            # @_execute_48
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$72, %rsp
	movq	%rdx, %rsi
	.align	16, 0x90
.LBB56_1:                               # =>This Inner Loop Header: Depth=1
	movl	$32, %edx
	movq	%rsi, %rcx
	callq	*__imp__iki_vlog_set_threadId_for_unrandom(%rip)
	movq	1368(%rsi), %rax
	testq	%rax, %rax
	je	.LBB56_14
# BB#2:                                 #   in Loop: Header=BB56_1 Depth=1
	jmpq	*%rax
.Ltmp199:                               # Block address taken
.LBB56_3:
	movb	$0, 1448(%rsi)
	movl	$17825875, %ecx         # imm = 0x1100053
	callq	*__imp__iki_stmt_online(%rip)
	leaq	96(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movl	4(%rax), %ecx
	notl	%ecx
	testl	(%rax), %ecx
	je	.LBB56_4
# BB#12:
	movl	$17825876, %ecx         # imm = 0x1100054
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	$1023, %eax             # imm = 0x3FF
	movl	ng0(%rip), %ecx
	andl	%eax, %ecx
	movl	%ecx, (%rdi)
	andl	ng0+4(%rip), %eax
	movl	%eax, 4(%rdi)
	leaq	656(%rsi), %rcx
	leaq	1456(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$9, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	jmp	.LBB56_13
.LBB56_4:
	movl	$17825877, %ecx         # imm = 0x1100055
	callq	*__imp__iki_stmt_online(%rip)
	movq	664(%rsi), %rdi
	leaq	-32(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %ecx
	movl	4(%rdi), %ebx
	xorl	ng67(%rip), %ecx
	movl	ng67+4(%rip), %edx
	movl	%ebx, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %ebx
	movl	%ebx, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB56_6
# BB#5:
	testl	%ebx, %ebx
	movl	$1, -32(%rbp)
	je	.LBB56_6
# BB#15:
	movl	$1, -28(%rbp)
.LBB56_6:
	leaq	656(%rsi), %rdi
	movl	-28(%rbp), %eax
	notl	%eax
	testl	-32(%rbp), %eax
	je	.LBB56_7
# BB#16:
	movl	$17825878, %ecx         # imm = 0x1100056
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	$1023, %eax             # imm = 0x3FF
	movl	ng0(%rip), %ecx
	andl	%eax, %ecx
	movl	%ecx, (%rbx)
	andl	ng0+4(%rip), %eax
	movl	%eax, 4(%rbx)
	leaq	1496(%rsi), %rdx
	jmp	.LBB56_11
.LBB56_7:
	movl	$17825880, %ecx         # imm = 0x1100058
	callq	*__imp__iki_stmt_online(%rip)
	movq	8(%rdi), %rbx
	leaq	-32(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, 4(%rbx)
	jne	.LBB56_17
# BB#8:
	cmpl	$0, ng5+4(%rip)
	je	.LBB56_9
.LBB56_17:
	movq	$-1, -32(%rbp)
.LBB56_10:
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	$1023, %eax             # imm = 0x3FF
	movl	-32(%rbp), %ecx
	andl	%eax, %ecx
	movl	%ecx, (%rbx)
	andl	-28(%rbp), %eax
	movl	%eax, 4(%rbx)
	leaq	1536(%rsi), %rdx
.LBB56_11:
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$9, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %rcx
	movq	%rbx, %r8
.LBB56_13:
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
.LBB56_14:
	movl	$17825874, %ecx         # imm = 0x1100052
	callq	*__imp__iki_stmt_online(%rip)
	movb	$1, 1448(%rsi)
	leaq	.Ltmp199(%rip), %rax
	movq	%rax, 1368(%rsi)
	addq	$72, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%rbp
	ret
.LBB56_9:
	movl	(%rbx), %eax
	addl	ng5(%rip), %eax
	movl	%eax, -32(%rbp)
	movl	$0, -28(%rbp)
	jmp	.LBB56_10

	.def	 _execute_49;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_49
	.align	16, 0x90
_execute_49:                            # @_execute_49
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$72, %rsp
	movq	%rdx, %rsi
	.align	16, 0x90
.LBB57_1:                               # =>This Inner Loop Header: Depth=1
	movl	$33, %edx
	movq	%rsi, %rcx
	callq	*__imp__iki_vlog_set_threadId_for_unrandom(%rip)
	movq	1616(%rsi), %rax
	testq	%rax, %rax
	je	.LBB57_7
# BB#2:                                 #   in Loop: Header=BB57_1 Depth=1
	jmpq	*%rax
.Ltmp203:                               # Block address taken
.LBB57_3:
	movb	$0, 1696(%rsi)
	movl	$17825885, %ecx         # imm = 0x110005D
	callq	*__imp__iki_stmt_online(%rip)
	leaq	96(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movl	4(%rax), %ecx
	notl	%ecx
	testl	(%rax), %ecx
	je	.LBB57_4
# BB#8:
	movl	$17825886, %ecx         # imm = 0x110005E
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	$1023, %eax             # imm = 0x3FF
	movl	ng0(%rip), %ecx
	andl	%eax, %ecx
	movl	%ecx, (%rdi)
	andl	ng0+4(%rip), %eax
	movl	%eax, 4(%rdi)
	leaq	712(%rsi), %rcx
	leaq	1704(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$9, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
	jmp	.LBB57_7
.LBB57_4:
	movl	$17825887, %ecx         # imm = 0x110005F
	callq	*__imp__iki_stmt_online(%rip)
	movq	664(%rsi), %rdi
	leaq	-32(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %ecx
	movl	4(%rdi), %ebx
	xorl	ng67(%rip), %ecx
	movl	ng67+4(%rip), %edx
	movl	%ebx, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %ebx
	movl	%ebx, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB57_6
# BB#5:
	testl	%ebx, %ebx
	movl	$1, -32(%rbp)
	je	.LBB57_6
# BB#9:
	movl	$1, -28(%rbp)
.LBB57_6:
	movl	-28(%rbp), %eax
	notl	%eax
	testl	-32(%rbp), %eax
	je	.LBB57_7
# BB#10:
	movl	$17825888, %ecx         # imm = 0x1100060
	callq	*__imp__iki_stmt_online(%rip)
	movq	720(%rsi), %rdi
	leaq	-40(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %ecx
	movl	4(%rdi), %ebx
	xorl	ng68(%rip), %ecx
	movl	ng68+4(%rip), %edx
	movl	%ebx, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %ebx
	movl	%ebx, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB57_12
# BB#11:
	testl	%ebx, %ebx
	movl	$1, -40(%rbp)
	je	.LBB57_12
# BB#18:
	movl	$1, -36(%rbp)
.LBB57_12:
	leaq	712(%rsi), %rdi
	movl	-36(%rbp), %eax
	notl	%eax
	testl	-40(%rbp), %eax
	je	.LBB57_13
# BB#19:
	movl	$17825889, %ecx         # imm = 0x1100061
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	$1023, %eax             # imm = 0x3FF
	movl	ng0(%rip), %ecx
	andl	%eax, %ecx
	movl	%ecx, (%rbx)
	andl	ng0+4(%rip), %eax
	movl	%eax, 4(%rbx)
	leaq	1744(%rsi), %rdx
	jmp	.LBB57_17
.LBB57_13:
	movl	$17825891, %ecx         # imm = 0x1100063
	callq	*__imp__iki_stmt_online(%rip)
	movq	8(%rdi), %rbx
	leaq	-32(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, 4(%rbx)
	jne	.LBB57_20
# BB#14:
	cmpl	$0, ng5+4(%rip)
	je	.LBB57_15
.LBB57_20:
	movq	$-1, -32(%rbp)
.LBB57_16:
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	$1023, %eax             # imm = 0x3FF
	movl	-32(%rbp), %ecx
	andl	%eax, %ecx
	movl	%ecx, (%rbx)
	andl	-28(%rbp), %eax
	movl	%eax, 4(%rbx)
	leaq	1784(%rsi), %rdx
.LBB57_17:
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$9, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %rcx
	movq	%rbx, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
.LBB57_7:
	movl	$17825884, %ecx         # imm = 0x110005C
	callq	*__imp__iki_stmt_online(%rip)
	movb	$1, 1696(%rsi)
	leaq	.Ltmp203(%rip), %rax
	movq	%rax, 1616(%rsi)
	addq	$72, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%rbp
	ret
.LBB57_15:
	movl	(%rbx), %eax
	addl	ng5(%rip), %eax
	movl	%eax, -32(%rbp)
	movl	$0, -28(%rbp)
	jmp	.LBB57_16

	.def	 _execute_142;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_142
	.align	16, 0x90
_execute_142:                           # @_execute_142
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$192, %rsp
	movq	%rdx, %rsi
	movl	$17825897, %ecx         # imm = 0x1100069
	callq	*__imp__iki_stmt_online(%rip)
	movq	776(%rsi), %r9
	movl	$1, -64(%rbp)
	movl	$9, -60(%rbp)
	movl	$0, -56(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, 80(%rsp)
	leaq	ng38(%rip), %rbx
	movq	%rbx, 56(%rsp)
	leaq	ng69(%rip), %rax
	movq	%rax, 32(%rsp)
	movl	$1, 112(%rsp)
	movl	$2, 104(%rsp)
	movl	$1, 96(%rsp)
	movq	$0, 88(%rsp)
	movl	$1, 72(%rsp)
	movl	$32, 64(%rsp)
	movl	$1, 48(%rsp)
	movl	$32, 40(%rsp)
	movq	__imp__iki_vlog_get_part_select_value(%rip), %rdi
	leaq	-48(%rbp), %r14
	movl	$1, %edx
	movl	$8, %r8d
	movq	%r14, %rcx
	callq	*%rdi
	movq	832(%rsi), %r9
	movl	$1, -96(%rbp)
	movl	$9, -92(%rbp)
	movl	$0, -88(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, 80(%rsp)
	movq	%rbx, 56(%rsp)
	leaq	ng66(%rip), %rax
	movq	%rax, 32(%rsp)
	movl	$1, 112(%rsp)
	movl	$2, 104(%rsp)
	movl	$1, 96(%rsp)
	movq	$0, 88(%rsp)
	movl	$1, 72(%rsp)
	movl	$32, 64(%rsp)
	movl	$1, 48(%rsp)
	movl	$32, 40(%rsp)
	leaq	-72(%rbp), %rbx
	movl	$1, %edx
	movl	$7, %r8d
	movq	%rbx, %rcx
	callq	*%rdi
	movq	%r14, 48(%rsp)
	movq	%rbx, 32(%rsp)
	movl	$8, 56(%rsp)
	movl	$7, 40(%rsp)
	leaq	-40(%rbp), %rdi
	movl	$15, %edx
	movl	$15, %r8d
	movl	$2, %r9d
	movq	%rdi, %rcx
	callq	*__imp__iki_vlog_concat(%rip)
	leaq	2712(%rsi), %rcx
	movl	$8, %r8d
	movq	%rdi, %rdx
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	264(%rsi), %rcx
	addq	$2688, %rsi             # imm = 0xA80
	xorl	%r8d, %r8d
	movl	$14, %r9d
	movq	%rsi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_signal_fast_no_reg_no_agg(%rip)
	addq	$192, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%rbp
	ret

	.def	 _execute_50;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_50
	.align	16, 0x90
_execute_50:                            # @_execute_50
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$256, %rsp              # imm = 0x100
	movq	%rdx, %rsi
	.align	16, 0x90
.LBB59_1:                               # =>This Inner Loop Header: Depth=1
	movl	$34, %edx
	movq	%rsi, %rcx
	callq	*__imp__iki_vlog_set_threadId_for_unrandom(%rip)
	movq	1864(%rsi), %rax
	testq	%rax, %rax
	je	.LBB59_62
# BB#2:                                 #   in Loop: Header=BB59_1 Depth=1
	jmpq	*%rax
.Ltmp210:                               # Block address taken
.LBB59_3:
	movb	$0, 1944(%rsi)
	movl	$17825902, %ecx         # imm = 0x110006E
	callq	*__imp__iki_stmt_online(%rip)
	movq	664(%rsi), %rdi
	leaq	-40(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, 4(%rdi)
	jne	.LBB59_63
# BB#4:
	cmpl	$0, 1028(%rsi)
	je	.LBB59_5
.LBB59_63:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -40(%rbp)
.LBB59_6:
	movl	-36(%rbp), %eax
	notl	%eax
	testl	-40(%rbp), %eax
	je	.LBB59_7
# BB#65:
	movl	$17825903, %ecx         # imm = 0x110006F
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	ng0(%rip), %eax
	andl	$1, %eax
	movl	%eax, (%rdi)
	movl	ng0+4(%rip), %eax
	andl	$1, %eax
	movl	%eax, 4(%rdi)
	leaq	376(%rsi), %rcx
	leaq	1952(%rsi), %rdx
	jmp	.LBB59_8
.LBB59_7:
	movl	$17825905, %ecx         # imm = 0x1100071
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	ng5(%rip), %eax
	andl	$1, %eax
	movl	%eax, (%rdi)
	movl	ng5+4(%rip), %eax
	andl	$1, %eax
	movl	%eax, 4(%rdi)
	leaq	376(%rsi), %rcx
	leaq	1992(%rsi), %rdx
.LBB59_8:
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$0, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
	movl	$17825908, %ecx         # imm = 0x1100074
	callq	*__imp__iki_stmt_online(%rip)
	movq	720(%rsi), %rdi
	leaq	-40(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, 4(%rdi)
	jne	.LBB59_66
# BB#9:
	cmpl	$0, 1036(%rsi)
	je	.LBB59_10
.LBB59_66:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -40(%rbp)
.LBB59_11:
	movl	-36(%rbp), %eax
	notl	%eax
	testl	-40(%rbp), %eax
	je	.LBB59_12
# BB#68:
	movl	$17825909, %ecx         # imm = 0x1100075
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	ng0(%rip), %eax
	andl	$1, %eax
	movl	%eax, (%rdi)
	movl	ng0+4(%rip), %eax
	andl	$1, %eax
	movl	%eax, 4(%rdi)
	leaq	432(%rsi), %rcx
	leaq	2032(%rsi), %rdx
	jmp	.LBB59_13
.LBB59_12:
	movl	$17825911, %ecx         # imm = 0x1100077
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	ng5(%rip), %eax
	andl	$1, %eax
	movl	%eax, (%rdi)
	movl	ng5+4(%rip), %eax
	andl	$1, %eax
	movl	%eax, 4(%rdi)
	leaq	432(%rsi), %rcx
	leaq	2072(%rsi), %rdx
.LBB59_13:
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$0, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
	movl	$17825914, %ecx         # imm = 0x110007A
	callq	*__imp__iki_stmt_online(%rip)
	movq	664(%rsi), %rdi
	leaq	-40(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, 4(%rdi)
	jne	.LBB59_69
# BB#14:
	cmpl	$0, 1044(%rsi)
	je	.LBB59_15
.LBB59_69:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -40(%rbp)
.LBB59_17:
	leaq	-48(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	-40(%rbp), %ecx
	testb	$1, %cl
	je	.LBB59_18
# BB#70:
	movl	$1, -48(%rbp)
	jmp	.LBB59_19
.LBB59_18:
	testl	%eax, %eax
	je	.LBB59_19
# BB#71:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -48(%rbp)
.LBB59_19:
	cmpl	$0, -48(%rbp)
	movb	$1, %al
	jne	.LBB59_21
# BB#20:
	cmpl	$0, -44(%rbp)
	setne	%al
.LBB59_21:
	testb	%al, %al
	je	.LBB59_22
# BB#72:
	movq	664(%rsi), %rdi
	leaq	-56(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, 4(%rdi)
	jne	.LBB59_79
# BB#73:
	cmpl	$0, 1052(%rsi)
	je	.LBB59_74
.LBB59_79:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -56(%rbp)
.LBB59_75:
	leaq	-64(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	-56(%rbp), %ecx
	testb	$1, %cl
	je	.LBB59_76
# BB#81:
	movl	$1, -64(%rbp)
	jmp	.LBB59_77
.LBB59_22:
	leaq	-72(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	movl	$8, %r8d
	callq	*__imp__iki_std_memcpy(%rip)
	andl	$1, -72(%rbp)
	andl	$1, -68(%rbp)
	jmp	.LBB59_23
.LBB59_76:
	testl	%eax, %eax
	je	.LBB59_77
# BB#82:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -64(%rbp)
.LBB59_77:
	movl	-48(%rbp), %eax
	andl	-64(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	-44(%rbp), %eax
	orl	-60(%rbp), %eax
	movl	%eax, -68(%rbp)
	je	.LBB59_23
# BB#78:
	orl	%eax, -72(%rbp)
	movl	-48(%rbp), %eax
	movl	-44(%rbp), %ecx
	notl	%eax
	notl	%ecx
	andl	%eax, %ecx
	notl	%ecx
	andl	-68(%rbp), %ecx
	movl	-64(%rbp), %eax
	movl	-60(%rbp), %edx
	notl	%eax
	notl	%edx
	andl	%eax, %edx
	notl	%edx
	andl	%ecx, %edx
	movl	%edx, -68(%rbp)
	movl	-48(%rbp), %eax
	movl	-44(%rbp), %ecx
	notl	%eax
	notl	%ecx
	andl	%eax, %ecx
	notl	%ecx
	andl	-72(%rbp), %ecx
	movl	-64(%rbp), %eax
	movl	-60(%rbp), %edx
	notl	%eax
	notl	%edx
	andl	%eax, %edx
	notl	%edx
	andl	%ecx, %edx
	movl	%edx, -72(%rbp)
.LBB59_23:
	movl	-68(%rbp), %eax
	notl	%eax
	testl	-72(%rbp), %eax
	je	.LBB59_24
# BB#83:
	movl	$17825915, %ecx         # imm = 0x110007B
	callq	*__imp__iki_stmt_online(%rip)
	movq	664(%rsi), %rdi
	movq	__imp__iki_std_memset(%rip), %r14
	leaq	-80(%rbp), %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*%r14
	leaq	1056(%rsi), %rax
	movq	%rax, 32(%rsp)
	movl	$32, 40(%rsp)
	movl	$32, %edx
	movl	$10, %r9d
	movq	%rbx, %rcx
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_unsigned_minus(%rip)
	movq	%rax, %rdi
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*%r14
	movl	$1023, %eax             # imm = 0x3FF
	movl	(%rdi), %ecx
	andl	%eax, %ecx
	movl	%ecx, (%rbx)
	andl	4(%rdi), %eax
	movl	%eax, 4(%rbx)
	leaq	768(%rsi), %rcx
	leaq	2112(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$9, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rbx, %r8
	jmp	.LBB59_25
.LBB59_24:
	movl	$17825917, %ecx         # imm = 0x110007D
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	$1023, %eax             # imm = 0x3FF
	movl	ng0(%rip), %ecx
	andl	%eax, %ecx
	movl	%ecx, (%rdi)
	andl	ng0+4(%rip), %eax
	movl	%eax, 4(%rdi)
	leaq	768(%rsi), %rcx
	leaq	2152(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$9, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
.LBB59_25:
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
	movl	$17825920, %ecx         # imm = 0x1100080
	callq	*__imp__iki_stmt_online(%rip)
	movq	720(%rsi), %rdi
	leaq	-40(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, 4(%rdi)
	jne	.LBB59_84
# BB#26:
	cmpl	$0, 1068(%rsi)
	je	.LBB59_27
.LBB59_84:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -40(%rbp)
.LBB59_29:
	leaq	-48(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	-40(%rbp), %ecx
	testb	$1, %cl
	je	.LBB59_30
# BB#85:
	movl	$1, -48(%rbp)
	jmp	.LBB59_31
.LBB59_30:
	testl	%eax, %eax
	je	.LBB59_31
# BB#86:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -48(%rbp)
.LBB59_31:
	cmpl	$0, -48(%rbp)
	movb	$1, %al
	jne	.LBB59_33
# BB#32:
	cmpl	$0, -44(%rbp)
	setne	%al
.LBB59_33:
	testb	%al, %al
	je	.LBB59_34
# BB#87:
	movq	720(%rsi), %rdi
	leaq	-56(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, 4(%rdi)
	jne	.LBB59_94
# BB#88:
	cmpl	$0, 1076(%rsi)
	je	.LBB59_89
.LBB59_94:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -56(%rbp)
.LBB59_90:
	leaq	-64(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	-56(%rbp), %ecx
	testb	$1, %cl
	je	.LBB59_91
# BB#96:
	movl	$1, -64(%rbp)
	jmp	.LBB59_92
.LBB59_34:
	leaq	-72(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	movl	$8, %r8d
	callq	*__imp__iki_std_memcpy(%rip)
	andl	$1, -72(%rbp)
	andl	$1, -68(%rbp)
	jmp	.LBB59_35
.LBB59_91:
	testl	%eax, %eax
	je	.LBB59_92
# BB#97:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -64(%rbp)
.LBB59_92:
	movl	-48(%rbp), %eax
	andl	-64(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	-44(%rbp), %eax
	orl	-60(%rbp), %eax
	movl	%eax, -68(%rbp)
	je	.LBB59_35
# BB#93:
	orl	%eax, -72(%rbp)
	movl	-48(%rbp), %eax
	movl	-44(%rbp), %ecx
	notl	%eax
	notl	%ecx
	andl	%eax, %ecx
	notl	%ecx
	andl	-68(%rbp), %ecx
	movl	-64(%rbp), %eax
	movl	-60(%rbp), %edx
	notl	%eax
	notl	%edx
	andl	%eax, %edx
	notl	%edx
	andl	%ecx, %edx
	movl	%edx, -68(%rbp)
	movl	-48(%rbp), %eax
	movl	-44(%rbp), %ecx
	notl	%eax
	notl	%ecx
	andl	%eax, %ecx
	notl	%ecx
	andl	-72(%rbp), %ecx
	movl	-64(%rbp), %eax
	movl	-60(%rbp), %edx
	notl	%eax
	notl	%edx
	andl	%eax, %edx
	notl	%edx
	andl	%ecx, %edx
	movl	%edx, -72(%rbp)
.LBB59_35:
	movl	-68(%rbp), %eax
	notl	%eax
	testl	-72(%rbp), %eax
	je	.LBB59_36
# BB#98:
	movl	$17825921, %ecx         # imm = 0x1100081
	callq	*__imp__iki_stmt_online(%rip)
	movq	720(%rsi), %rdi
	movq	__imp__iki_std_memset(%rip), %r14
	leaq	-80(%rbp), %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*%r14
	leaq	1080(%rsi), %rax
	movq	%rax, 32(%rsp)
	movl	$32, 40(%rsp)
	movl	$32, %edx
	movl	$10, %r9d
	movq	%rbx, %rcx
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_unsigned_minus(%rip)
	movq	%rax, %rdi
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*%r14
	movl	$1023, %eax             # imm = 0x3FF
	movl	(%rdi), %ecx
	andl	%eax, %ecx
	movl	%ecx, (%rbx)
	andl	4(%rdi), %eax
	movl	%eax, 4(%rbx)
	leaq	824(%rsi), %rcx
	leaq	2192(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$9, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rbx, %r8
	jmp	.LBB59_37
.LBB59_36:
	movl	$17825923, %ecx         # imm = 0x1100083
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	$1023, %eax             # imm = 0x3FF
	movl	ng0(%rip), %ecx
	andl	%eax, %ecx
	movl	%ecx, (%rdi)
	andl	ng0+4(%rip), %eax
	movl	%eax, 4(%rdi)
	leaq	824(%rsi), %rcx
	leaq	2232(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$9, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
.LBB59_37:
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
	movl	$17825926, %ecx         # imm = 0x1100086
	callq	*__imp__iki_stmt_online(%rip)
	movq	720(%rsi), %rdi
	leaq	-40(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, 4(%rdi)
	jne	.LBB59_99
# BB#38:
	cmpl	$0, 1092(%rsi)
	je	.LBB59_39
.LBB59_99:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -40(%rbp)
.LBB59_41:
	leaq	-48(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	-40(%rbp), %ecx
	testb	$1, %cl
	je	.LBB59_42
# BB#100:
	movl	$1, -48(%rbp)
	jmp	.LBB59_43
.LBB59_42:
	testl	%eax, %eax
	je	.LBB59_43
# BB#101:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -48(%rbp)
.LBB59_43:
	cmpl	$0, -48(%rbp)
	movb	$1, %al
	jne	.LBB59_45
# BB#44:
	cmpl	$0, -44(%rbp)
	setne	%al
.LBB59_45:
	testb	%al, %al
	je	.LBB59_46
# BB#102:
	movq	720(%rsi), %rdi
	leaq	-56(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, 4(%rdi)
	jne	.LBB59_109
# BB#103:
	cmpl	$0, 1100(%rsi)
	je	.LBB59_104
.LBB59_109:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -56(%rbp)
.LBB59_105:
	leaq	-64(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	-56(%rbp), %ecx
	testb	$1, %cl
	je	.LBB59_106
# BB#111:
	movl	$1, -64(%rbp)
	jmp	.LBB59_107
.LBB59_46:
	leaq	-72(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	movl	$8, %r8d
	callq	*__imp__iki_std_memcpy(%rip)
	andl	$1, -72(%rbp)
	andl	$1, -68(%rbp)
	jmp	.LBB59_47
.LBB59_106:
	testl	%eax, %eax
	je	.LBB59_107
# BB#112:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -64(%rbp)
.LBB59_107:
	movl	-48(%rbp), %eax
	andl	-64(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	-44(%rbp), %eax
	orl	-60(%rbp), %eax
	movl	%eax, -68(%rbp)
	je	.LBB59_47
# BB#108:
	orl	%eax, -72(%rbp)
	movl	-48(%rbp), %eax
	movl	-44(%rbp), %ecx
	notl	%eax
	notl	%ecx
	andl	%eax, %ecx
	notl	%ecx
	andl	-68(%rbp), %ecx
	movl	-64(%rbp), %eax
	movl	-60(%rbp), %edx
	notl	%eax
	notl	%edx
	andl	%eax, %edx
	notl	%edx
	andl	%ecx, %edx
	movl	%edx, -68(%rbp)
	movl	-48(%rbp), %eax
	movl	-44(%rbp), %ecx
	notl	%eax
	notl	%ecx
	andl	%eax, %ecx
	notl	%ecx
	andl	-72(%rbp), %ecx
	movl	-64(%rbp), %eax
	movl	-60(%rbp), %edx
	notl	%eax
	notl	%edx
	andl	%eax, %edx
	notl	%edx
	andl	%ecx, %edx
	movl	%edx, -72(%rbp)
.LBB59_47:
	leaq	-80(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	-72(%rbp), %ecx
	testb	$1, %cl
	je	.LBB59_48
# BB#113:
	movl	$1, -80(%rbp)
	jmp	.LBB59_49
.LBB59_48:
	testl	%eax, %eax
	je	.LBB59_49
# BB#114:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -80(%rbp)
.LBB59_49:
	cmpl	$0, -80(%rbp)
	movb	$1, %al
	jne	.LBB59_51
# BB#50:
	cmpl	$0, -76(%rbp)
	setne	%al
.LBB59_51:
	testb	%al, %al
	je	.LBB59_52
# BB#115:
	movq	664(%rsi), %rdi
	leaq	-88(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, 4(%rdi)
	jne	.LBB59_123
# BB#116:
	cmpl	$0, 1108(%rsi)
	je	.LBB59_117
.LBB59_123:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -88(%rbp)
.LBB59_119:
	leaq	-96(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	-84(%rbp), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	-88(%rbp), %ecx
	testb	$1, %cl
	je	.LBB59_120
# BB#124:
	movl	$1, -96(%rbp)
	jmp	.LBB59_121
.LBB59_52:
	leaq	-104(%rbp), %rcx
	leaq	-80(%rbp), %rdx
	movl	$8, %r8d
	callq	*__imp__iki_std_memcpy(%rip)
	andl	$1, -104(%rbp)
	andl	$1, -100(%rbp)
	jmp	.LBB59_53
.LBB59_120:
	testl	%eax, %eax
	je	.LBB59_121
# BB#125:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -96(%rbp)
.LBB59_121:
	movl	-80(%rbp), %eax
	andl	-96(%rbp), %eax
	movl	%eax, -104(%rbp)
	movl	-76(%rbp), %eax
	orl	-92(%rbp), %eax
	movl	%eax, -100(%rbp)
	je	.LBB59_53
# BB#122:
	orl	%eax, -104(%rbp)
	movl	-80(%rbp), %eax
	movl	-76(%rbp), %ecx
	notl	%eax
	notl	%ecx
	andl	%eax, %ecx
	notl	%ecx
	andl	-100(%rbp), %ecx
	movl	-96(%rbp), %eax
	movl	-92(%rbp), %edx
	notl	%eax
	notl	%edx
	andl	%eax, %edx
	notl	%edx
	andl	%ecx, %edx
	movl	%edx, -100(%rbp)
	movl	-80(%rbp), %eax
	movl	-76(%rbp), %ecx
	notl	%eax
	notl	%ecx
	andl	%eax, %ecx
	notl	%ecx
	andl	-104(%rbp), %ecx
	movl	-96(%rbp), %eax
	movl	-92(%rbp), %edx
	notl	%eax
	notl	%edx
	andl	%eax, %edx
	notl	%edx
	andl	%ecx, %edx
	movl	%edx, -104(%rbp)
.LBB59_53:
	leaq	-112(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	-100(%rbp), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	-104(%rbp), %ecx
	testb	$1, %cl
	je	.LBB59_54
# BB#126:
	movl	$1, -112(%rbp)
	jmp	.LBB59_55
.LBB59_54:
	testl	%eax, %eax
	je	.LBB59_55
# BB#127:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -112(%rbp)
.LBB59_55:
	cmpl	$0, -112(%rbp)
	movb	$1, %al
	jne	.LBB59_57
# BB#56:
	cmpl	$0, -108(%rbp)
	setne	%al
.LBB59_57:
	testb	%al, %al
	je	.LBB59_58
# BB#128:
	movq	664(%rsi), %rdi
	leaq	-120(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, 4(%rdi)
	jne	.LBB59_135
# BB#129:
	cmpl	$0, 1116(%rsi)
	je	.LBB59_130
.LBB59_135:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -120(%rbp)
.LBB59_131:
	leaq	-128(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	-116(%rbp), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	-120(%rbp), %ecx
	testb	$1, %cl
	je	.LBB59_132
# BB#137:
	movl	$1, -128(%rbp)
	jmp	.LBB59_133
.LBB59_58:
	leaq	-136(%rbp), %rcx
	leaq	-112(%rbp), %rdx
	movl	$8, %r8d
	callq	*__imp__iki_std_memcpy(%rip)
	andl	$1, -136(%rbp)
	andl	$1, -132(%rbp)
	jmp	.LBB59_59
.LBB59_132:
	testl	%eax, %eax
	je	.LBB59_133
# BB#138:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -128(%rbp)
.LBB59_133:
	movl	-112(%rbp), %eax
	andl	-128(%rbp), %eax
	movl	%eax, -136(%rbp)
	movl	-108(%rbp), %eax
	orl	-124(%rbp), %eax
	movl	%eax, -132(%rbp)
	je	.LBB59_59
# BB#134:
	orl	%eax, -136(%rbp)
	movl	-112(%rbp), %eax
	movl	-108(%rbp), %ecx
	notl	%eax
	notl	%ecx
	andl	%eax, %ecx
	notl	%ecx
	andl	-132(%rbp), %ecx
	movl	-128(%rbp), %eax
	movl	-124(%rbp), %edx
	notl	%eax
	notl	%edx
	andl	%eax, %edx
	notl	%edx
	andl	%ecx, %edx
	movl	%edx, -132(%rbp)
	movl	-112(%rbp), %eax
	movl	-108(%rbp), %ecx
	notl	%eax
	notl	%ecx
	andl	%eax, %ecx
	notl	%ecx
	andl	-136(%rbp), %ecx
	movl	-128(%rbp), %eax
	movl	-124(%rbp), %edx
	notl	%eax
	notl	%edx
	andl	%eax, %edx
	notl	%edx
	andl	%ecx, %edx
	movl	%edx, -136(%rbp)
.LBB59_59:
	movl	-132(%rbp), %eax
	notl	%eax
	testl	-136(%rbp), %eax
	je	.LBB59_60
# BB#139:
	movl	$17825928, %ecx         # imm = 0x1100088
	callq	*__imp__iki_stmt_online(%rip)
	leaq	320(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movl	4(%rax), %ecx
	notl	%ecx
	testl	(%rax), %ecx
	je	.LBB59_140
# BB#141:
	movl	$17825929, %ecx         # imm = 0x1100089
	callq	*__imp__iki_stmt_online(%rip)
	leaq	152(%rsi), %rcx
	movl	$16, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movl	$1, -160(%rbp)
	movl	$15, -156(%rbp)
	movl	$0, -152(%rbp)
	leaq	-160(%rbp), %rcx
	movq	%rcx, 80(%rsp)
	leaq	ng66(%rip), %rcx
	movq	%rcx, 56(%rsp)
	leaq	ng65(%rip), %rcx
	movq	%rcx, 32(%rsp)
	movl	$1, 112(%rsp)
	movl	$2, 104(%rsp)
	movl	$1, 96(%rsp)
	movq	$0, 88(%rsp)
	movl	$1, 72(%rsp)
	movl	$32, 64(%rsp)
	movl	$1, 48(%rsp)
	movl	$32, 40(%rsp)
	leaq	-144(%rbp), %rcx
	movl	$1, %edx
	movl	$8, %r8d
	movq	%rax, %r9
	callq	*__imp__iki_vlog_get_part_select_value(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movzbl	-144(%rbp), %eax
	movl	%eax, (%rdi)
	movzbl	-140(%rbp), %eax
	movl	%eax, 4(%rdi)
	leaq	488(%rsi), %rcx
	leaq	2272(%rsi), %rdx
	jmp	.LBB59_61
.LBB59_60:
	movl	$17825934, %ecx         # imm = 0x110008E
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movzbl	ng1(%rip), %eax
	movl	%eax, (%rdi)
	movzbl	ng1+4(%rip), %eax
	movl	%eax, 4(%rdi)
	leaq	488(%rsi), %rcx
	leaq	2352(%rsi), %rdx
	jmp	.LBB59_61
.LBB59_140:
	movl	$17825931, %ecx         # imm = 0x110008B
	callq	*__imp__iki_stmt_online(%rip)
	leaq	152(%rsi), %rcx
	movl	$16, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movl	$1, -160(%rbp)
	movl	$15, -156(%rbp)
	movl	$0, -152(%rbp)
	leaq	-160(%rbp), %rcx
	movq	%rcx, 80(%rsp)
	leaq	ng0(%rip), %rcx
	movq	%rcx, 56(%rsp)
	leaq	ng54(%rip), %rcx
	movq	%rcx, 32(%rsp)
	movl	$1, 112(%rsp)
	movl	$2, 104(%rsp)
	movl	$1, 96(%rsp)
	movq	$0, 88(%rsp)
	movl	$1, 72(%rsp)
	movl	$32, 64(%rsp)
	movl	$1, 48(%rsp)
	movl	$32, 40(%rsp)
	leaq	-40(%rbp), %rcx
	movl	$1, %edx
	movl	$8, %r8d
	movq	%rax, %r9
	callq	*__imp__iki_vlog_get_part_select_value(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movzbl	-40(%rbp), %eax
	movl	%eax, (%rdi)
	movzbl	-36(%rbp), %eax
	movl	%eax, 4(%rdi)
	leaq	488(%rsi), %rcx
	leaq	2312(%rsi), %rdx
.LBB59_61:
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
.LBB59_62:
	movl	$17825900, %ecx         # imm = 0x110006C
	callq	*__imp__iki_stmt_online(%rip)
	movb	$1, 1944(%rsi)
	leaq	.Ltmp210(%rip), %rax
	movq	%rax, 1864(%rsi)
	addq	$256, %rsp              # imm = 0x100
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%rbp
	ret
.LBB59_5:
	movl	(%rdi), %eax
	cmpl	1024(%rsi), %eax
	jae	.LBB59_6
# BB#64:
	movl	$1, -40(%rbp)
	jmp	.LBB59_6
.LBB59_10:
	movl	(%rdi), %eax
	cmpl	1032(%rsi), %eax
	jae	.LBB59_11
# BB#67:
	movl	$1, -40(%rbp)
	jmp	.LBB59_11
.LBB59_15:
	movl	(%rdi), %eax
	cmpl	1040(%rsi), %eax
	jb	.LBB59_17
# BB#16:
	movl	$1, -40(%rbp)
	jmp	.LBB59_17
.LBB59_27:
	movl	(%rdi), %eax
	cmpl	1064(%rsi), %eax
	jb	.LBB59_29
# BB#28:
	movl	$1, -40(%rbp)
	jmp	.LBB59_29
.LBB59_39:
	movl	(%rdi), %eax
	cmpl	1088(%rsi), %eax
	jb	.LBB59_41
# BB#40:
	movl	$1, -40(%rbp)
	jmp	.LBB59_41
.LBB59_74:
	movl	(%rdi), %eax
	cmpl	1048(%rsi), %eax
	jae	.LBB59_75
# BB#80:
	movl	$1, -56(%rbp)
	jmp	.LBB59_75
.LBB59_89:
	movl	(%rdi), %eax
	cmpl	1072(%rsi), %eax
	jae	.LBB59_90
# BB#95:
	movl	$1, -56(%rbp)
	jmp	.LBB59_90
.LBB59_104:
	movl	(%rdi), %eax
	cmpl	1096(%rsi), %eax
	jae	.LBB59_105
# BB#110:
	movl	$1, -56(%rbp)
	jmp	.LBB59_105
.LBB59_117:
	movl	(%rdi), %eax
	cmpl	1104(%rsi), %eax
	jb	.LBB59_119
# BB#118:
	movl	$1, -88(%rbp)
	jmp	.LBB59_119
.LBB59_130:
	movl	(%rdi), %eax
	cmpl	1112(%rsi), %eax
	jae	.LBB59_131
# BB#136:
	movl	$1, -120(%rbp)
	jmp	.LBB59_131

	.def	 _execute_143;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_143
	.align	16, 0x90
_execute_143:                           # @_execute_143
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	subq	$40, %rsp
	movq	%rdx, %rsi
	movl	$17825839, %ecx         # imm = 0x110002F
	callq	*__imp__iki_stmt_online(%rip)
	movq	552(%rsi), %rdx
	leaq	-16(%rbp), %rcx
	movl	$1, %r8d
	callq	*__imp__iki_vlog_get_bit_select_value_simple(%rip)
	leaq	2880(%rsi), %rcx
	movl	$8, %r8d
	movq	%rax, %rdx
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	600(%rsi), %rcx
	addq	$2856, %rsi             # imm = 0xB28
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%rsi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_signal_fast_no_reg_no_agg(%rip)
	addq	$40, %rsp
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_144;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_144
	.align	16, 0x90
_execute_144:                           # @_execute_144
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	pushq	%rdi
	subq	$64, %rsp
	movq	%rdx, %rsi
	movl	$15728720, %ecx         # imm = 0xF00050
	callq	*__imp__iki_stmt_online(%rip)
	movq	944(%rsi), %rdi
	leaq	-32(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	4(%rdi), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	(%rdi), %ecx
	testb	$1, %cl
	je	.LBB61_1
# BB#10:
	movl	$1, -32(%rbp)
	jmp	.LBB61_2
.LBB61_1:
	testl	%eax, %eax
	je	.LBB61_2
# BB#11:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -32(%rbp)
.LBB61_2:
	cmpl	$0, -32(%rbp)
	movb	$1, %al
	jne	.LBB61_4
# BB#3:
	cmpl	$0, -28(%rbp)
	setne	%al
.LBB61_4:
	testb	%al, %al
                                        # implicit-def: RAX
	je	.LBB61_5
# BB#12:
	movq	1000(%rsi), %rax
.LBB61_5:
	cmpl	$0, -28(%rbp)
	je	.LBB61_6
# BB#13:
	leaq	ng14(%rip), %rcx
	movq	%rcx, 32(%rsp)
	movl	$8, 40(%rsp)
	leaq	-24(%rbp), %rcx
	movl	$8, %edx
	movl	$8, %r9d
	movq	%rax, %r8
	callq	*__imp__iki_vlog_unsigned_bit_combine(%rip)
	jmp	.LBB61_9
.LBB61_6:
	movl	-32(%rbp), %ecx
	testl	%ecx, %ecx
	je	.LBB61_7
# BB#14:
	leaq	-24(%rbp), %rcx
	movl	$8, %r8d
	movq	%rax, %rdx
	jmp	.LBB61_8
.LBB61_7:
	leaq	ng14(%rip), %rdx
	leaq	-24(%rbp), %rcx
	movl	$8, %r8d
.LBB61_8:
	callq	*__imp__iki_std_memcpy(%rip)
.LBB61_9:
	leaq	2768(%rsi), %rcx
	leaq	-24(%rbp), %rdx
	movl	$8, %r8d
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	208(%rsi), %rcx
	addq	$2744, %rsi             # imm = 0xAB8
	xorl	%r8d, %r8d
	movl	$7, %r9d
	movq	%rsi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_signal_fast_no_reg_no_agg(%rip)
	addq	$64, %rsp
	popq	%rdi
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_51;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_51
	.align	16, 0x90
_execute_51:                            # @_execute_51
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$192, %rsp
	movq	%rdx, %rsi
	.align	16, 0x90
.LBB62_1:                               # =>This Inner Loop Header: Depth=1
	movl	$35, %edx
	movq	%rsi, %rcx
	callq	*__imp__iki_vlog_set_threadId_for_unrandom(%rip)
	movq	2048(%rsi), %rax
	testq	%rax, %rax
	je	.LBB62_20
# BB#2:                                 #   in Loop: Header=BB62_1 Depth=1
	jmpq	*%rax
.Ltmp220:                               # Block address taken
.LBB62_3:
	movb	$0, 2128(%rsi)
	movl	$15728724, %ecx         # imm = 0xF00054
	callq	*__imp__iki_stmt_online(%rip)
	leaq	264(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movl	4(%rax), %ecx
	notl	%ecx
	testl	(%rax), %ecx
	je	.LBB62_4
# BB#21:
	movq	__imp__iki_stmt_online(%rip), %r15
	movl	$15728726, %ecx         # imm = 0xF00056
	callq	*%r15
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	movq	__imp__iki_std_memset(%rip), %r14
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r14
	movl	ng1(%rip), %eax
	andl	$1, %eax
	movl	%eax, (%rdi)
	movl	ng1+4(%rip), %eax
	andl	$1, %eax
	movl	%eax, 4(%rdi)
	leaq	936(%rsi), %rcx
	leaq	2136(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$0, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
	movl	$15728729, %ecx         # imm = 0xF00059
	callq	*%r15
	leaq	152(%rsi), %rdi
	movl	$8, %edx
	movq	%rdi, %rcx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %rbx
	leaq	-56(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*%r14
	movl	(%rbx), %ecx
	movl	4(%rbx), %ebx
	xorl	ng70(%rip), %ecx
	movl	ng70+4(%rip), %edx
	movl	%ebx, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %ebx
	movl	%ebx, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB62_23
# BB#22:
	testl	%ebx, %ebx
	movl	$1, -56(%rbp)
	je	.LBB62_23
# BB#37:
	movl	$1, -52(%rbp)
.LBB62_23:
	movl	-52(%rbp), %eax
	notl	%eax
	testl	-56(%rbp), %eax
	je	.LBB62_24
# BB#38:
	movl	$15728731, %ecx         # imm = 0xF0005B
	callq	*%r15
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%ebx, %ebx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	ng1(%rip), %eax
	andl	$1, %eax
	movl	%eax, (%rdi)
	movl	ng1+4(%rip), %eax
	andl	$1, %eax
	movl	%eax, 4(%rdi)
	leaq	768(%rsi), %rcx
	leaq	2176(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$0, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
	movl	$15728732, %ecx         # imm = 0xF0005C
	callq	*%r15
	leaq	208(%rsi), %rcx
	movl	$8, %edx
	callq	*__imp__iki_vlog_signal_handle_value(%rip)
	movq	%rax, %rdi
	movl	$1, -96(%rbp)
	movl	$14, -92(%rbp)
	movl	$0, -88(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, 72(%rsp)
	leaq	ng0(%rip), %rax
	movq	%rax, 48(%rsp)
	movl	$1, 104(%rsp)
	movl	$2, 96(%rsp)
	movl	$1, 88(%rsp)
	movq	$0, 80(%rsp)
	movl	$1, 64(%rsp)
	movl	$32, 56(%rsp)
	movl	$1, 40(%rsp)
	movl	$32, 32(%rsp)
	leaq	ng54(%rip), %r9
	leaq	-56(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	leaq	-72(%rbp), %r8
	callq	*__imp__iki_vlog_convert_part_select(%rip)
	cmpl	$0, -52(%rbp)
	jne	.LBB62_42
# BB#39:
	cmpl	$0, -60(%rbp)
	je	.LBB62_41
# BB#40:
	xorl	%ebx, %ebx
	jmp	.LBB62_42
.LBB62_4:
	movl	$15728751, %ecx         # imm = 0xF0006F
	callq	*__imp__iki_stmt_online(%rip)
	leaq	152(%rsi), %rdi
	movl	$8, %edx
	movq	%rdi, %rcx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %rbx
	leaq	-56(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, 4(%rbx)
	jne	.LBB62_56
# BB#5:
	cmpl	$0, ng70+4(%rip)
	je	.LBB62_6
.LBB62_56:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -56(%rbp)
.LBB62_8:
	leaq	-64(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	-56(%rbp), %ecx
	testb	$1, %cl
	je	.LBB62_9
# BB#57:
	movl	$1, -64(%rbp)
	jmp	.LBB62_10
.LBB62_24:
	movl	$15728734, %ecx         # imm = 0xF0005E
	callq	*__imp__iki_stmt_online(%rip)
	movl	$8, %edx
	movq	%rdi, %rcx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %rbx
	leaq	-56(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, ng70+4(%rip)
	jne	.LBB62_45
# BB#25:
	cmpl	$0, ng5+4(%rip)
	je	.LBB62_26
.LBB62_45:
	movq	$-1, -56(%rbp)
.LBB62_27:
	leaq	-64(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rbx), %ecx
	movl	4(%rbx), %ebx
	xorl	-56(%rbp), %ecx
	movl	-52(%rbp), %edx
	movl	%ebx, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %ebx
	movl	%ebx, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB62_29
# BB#28:
	testl	%ebx, %ebx
	movl	$1, -64(%rbp)
	je	.LBB62_29
# BB#46:
	movl	$1, -60(%rbp)
.LBB62_29:
	movl	-60(%rbp), %eax
	notl	%eax
	testl	-64(%rbp), %eax
	je	.LBB62_30
# BB#47:
	movl	$15728736, %ecx         # imm = 0xF00060
	callq	*%r15
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%r12d, %r12d
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r14
	movl	ng1(%rip), %eax
	andl	$1, %eax
	movl	%eax, (%rdi)
	movl	ng1+4(%rip), %eax
	andl	$1, %eax
	movl	%eax, 4(%rdi)
	leaq	768(%rsi), %rcx
	leaq	2256(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$0, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
	movl	$15728737, %ecx         # imm = 0xF00061
	callq	*%r15
	leaq	208(%rsi), %rcx
	movl	$8, %edx
	callq	*__imp__iki_vlog_signal_handle_value(%rip)
	movq	%rax, %rdi
	leaq	-56(%rbp), %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*%r14
	movq	%rdi, 32(%rsp)
	movl	$8, 40(%rsp)
	leaq	ng71(%rip), %r8
	movq	__imp__iki_vlog_unsigned_minus(%rip), %r15
	movl	$32, %edx
	movl	$8, %r9d
	movq	%rbx, %rcx
	callq	*%r15
	movq	%rax, %rdi
	leaq	-64(%rbp), %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*%r14
	leaq	ng5(%rip), %rax
	movq	%rax, 32(%rsp)
	movl	$32, 40(%rsp)
	movl	$32, %edx
	movl	$32, %r9d
	movq	%rbx, %rcx
	movq	%rdi, %r8
	callq	*%r15
	movq	%rax, %rdi
	movl	$1, -96(%rbp)
	movl	$14, -92(%rbp)
	movl	$0, -88(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, 72(%rsp)
	leaq	ng66(%rip), %rax
	movq	%rax, 48(%rsp)
	movl	$1, 104(%rsp)
	movl	$2, 96(%rsp)
	movl	$1, 88(%rsp)
	movq	$0, 80(%rsp)
	movl	$1, 64(%rsp)
	movl	$32, 56(%rsp)
	movl	$1, 40(%rsp)
	movl	$32, 32(%rsp)
	leaq	ng72(%rip), %r9
	leaq	-72(%rbp), %rcx
	leaq	-104(%rbp), %rdx
	leaq	-112(%rbp), %r8
	callq	*__imp__iki_vlog_convert_part_select(%rip)
	cmpl	$0, -68(%rbp)
	jne	.LBB62_51
# BB#48:
	cmpl	$0, -100(%rbp)
	je	.LBB62_50
# BB#49:
	xorl	%r12d, %r12d
	jmp	.LBB62_51
.LBB62_9:
	testl	%eax, %eax
	je	.LBB62_10
# BB#58:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -64(%rbp)
.LBB62_10:
	cmpl	$0, -64(%rbp)
	movb	$1, %al
	jne	.LBB62_12
# BB#11:
	cmpl	$0, -60(%rbp)
	setne	%al
.LBB62_12:
	testb	%al, %al
	je	.LBB62_13
# BB#59:
	movl	$8, %edx
	movq	%rdi, %rcx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %rdi
	leaq	-72(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, ng70+4(%rip)
	jne	.LBB62_69
# BB#60:
	cmpl	$0, ng21+4(%rip)
	je	.LBB62_61
.LBB62_69:
	movq	$-1, -72(%rbp)
.LBB62_62:
	leaq	-104(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, 4(%rdi)
	jne	.LBB62_70
# BB#63:
	cmpl	$0, -68(%rbp)
	je	.LBB62_64
.LBB62_70:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -104(%rbp)
.LBB62_65:
	leaq	-112(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	-100(%rbp), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	-104(%rbp), %ecx
	testb	$1, %cl
	je	.LBB62_66
# BB#72:
	movl	$1, -112(%rbp)
	jmp	.LBB62_67
.LBB62_13:
	leaq	-120(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	movl	$8, %r8d
	callq	*__imp__iki_std_memcpy(%rip)
	andl	$1, -120(%rbp)
	andl	$1, -116(%rbp)
	jmp	.LBB62_14
.LBB62_30:
	movl	$15728739, %ecx         # imm = 0xF00063
	callq	*__imp__iki_stmt_online(%rip)
	movl	$8, %edx
	movq	%rdi, %rcx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %rdi
	leaq	-56(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, ng70+4(%rip)
	jne	.LBB62_53
# BB#31:
	cmpl	$0, ng38+4(%rip)
	je	.LBB62_32
.LBB62_53:
	movq	$-1, -56(%rbp)
.LBB62_33:
	leaq	-64(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %ecx
	movl	4(%rdi), %ebx
	xorl	-56(%rbp), %ecx
	movl	-52(%rbp), %edx
	movl	%ebx, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %ebx
	movl	%ebx, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB62_35
# BB#34:
	testl	%ebx, %ebx
	movl	$1, -64(%rbp)
	je	.LBB62_35
# BB#54:
	movl	$1, -60(%rbp)
.LBB62_35:
	movl	-60(%rbp), %eax
	notl	%eax
	testl	-64(%rbp), %eax
	je	.LBB62_36
# BB#55:
	movl	$15728741, %ecx         # imm = 0xF00065
	callq	*%r15
	movq	__imp__iki_malloc8(%rip), %rbx
	callq	*%rbx
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r14
	movl	ng2(%rip), %eax
	andl	$1, %eax
	movl	%eax, (%rdi)
	movl	ng2+4(%rip), %eax
	andl	$1, %eax
	movl	%eax, 4(%rdi)
	leaq	768(%rsi), %rcx
	leaq	2336(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$0, 32(%rsp)
	movq	__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip), %r12
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r12
	movl	$15728742, %ecx         # imm = 0xF00066
	callq	*%r15
	leaq	208(%rsi), %rcx
	movl	$8, %edx
	callq	*__imp__iki_vlog_signal_handle_value(%rip)
	leaq	-56(%rbp), %rcx
	xorl	%r8d, %r8d
	movq	%rax, %rdx
	callq	*__imp__iki_vlog_get_bit_select_value_simple(%rip)
	movq	%rax, %rdi
	callq	*%rbx
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*%r14
	movl	(%rdi), %eax
	andl	$1, %eax
	movl	%eax, (%rbx)
	movl	4(%rdi), %eax
	andl	$1, %eax
	movl	%eax, 4(%rbx)
	leaq	880(%rsi), %rcx
	leaq	2376(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$0, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rbx, %r8
	callq	*%r12
	jmp	.LBB62_19
.LBB62_66:
	testl	%eax, %eax
	je	.LBB62_67
# BB#73:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -112(%rbp)
.LBB62_67:
	movl	-64(%rbp), %eax
	andl	-112(%rbp), %eax
	movl	%eax, -120(%rbp)
	movl	-60(%rbp), %eax
	orl	-108(%rbp), %eax
	movl	%eax, -116(%rbp)
	je	.LBB62_14
# BB#68:
	orl	%eax, -120(%rbp)
	movl	-64(%rbp), %eax
	movl	-60(%rbp), %ecx
	notl	%eax
	notl	%ecx
	andl	%eax, %ecx
	notl	%ecx
	andl	-116(%rbp), %ecx
	movl	-112(%rbp), %eax
	movl	-108(%rbp), %edx
	notl	%eax
	notl	%edx
	andl	%eax, %edx
	notl	%edx
	andl	%ecx, %edx
	movl	%edx, -116(%rbp)
	movl	-64(%rbp), %eax
	movl	-60(%rbp), %ecx
	notl	%eax
	notl	%ecx
	andl	%eax, %ecx
	notl	%ecx
	andl	-120(%rbp), %ecx
	movl	-112(%rbp), %eax
	movl	-108(%rbp), %edx
	notl	%eax
	notl	%edx
	andl	%eax, %edx
	notl	%edx
	andl	%ecx, %edx
	movl	%edx, -120(%rbp)
.LBB62_14:
	movl	-116(%rbp), %eax
	notl	%eax
	testl	-120(%rbp), %eax
	je	.LBB62_15
# BB#74:
	movl	$15728753, %ecx         # imm = 0xF00071
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	ng2(%rip), %eax
	andl	$1, %eax
	movl	%eax, (%rdi)
	movl	ng2+4(%rip), %eax
	andl	$1, %eax
	movl	%eax, 4(%rdi)
	leaq	936(%rsi), %rcx
	leaq	2456(%rsi), %rdx
	jmp	.LBB62_16
.LBB62_15:
	movl	$15728757, %ecx         # imm = 0xF00075
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	ng1(%rip), %eax
	andl	$1, %eax
	movl	%eax, (%rdi)
	movl	ng1+4(%rip), %eax
	andl	$1, %eax
	movl	%eax, 4(%rdi)
	leaq	936(%rsi), %rcx
	leaq	2496(%rsi), %rdx
.LBB62_16:
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$0, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
	movl	$15728761, %ecx         # imm = 0xF00079
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	ng1(%rip), %eax
	andl	$1, %eax
	movl	%eax, (%rdi)
	movl	ng1+4(%rip), %eax
	andl	$1, %eax
	movl	%eax, 4(%rdi)
	leaq	768(%rsi), %rcx
	leaq	2536(%rsi), %rdx
.LBB62_17:
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$0, 32(%rsp)
	xorl	%r9d, %r9d
	jmp	.LBB62_18
.LBB62_41:
	cmpl	$0, -68(%rbp)
	sete	%bl
.LBB62_42:
	testb	%bl, %bl
	je	.LBB62_19
# BB#43:
	movl	-72(%rbp), %r9d
	movl	-56(%rbp), %eax
	subl	-64(%rbp), %eax
	incl	%eax
	movl	%eax, 32(%rsp)
	leaq	-104(%rbp), %rcx
	xorl	%edx, %edx
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_bit_copy(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movzbl	-104(%rbp), %eax
	movl	%eax, (%rdi)
	movzbl	-100(%rbp), %eax
	movl	%eax, 4(%rdi)
	leaq	824(%rsi), %rcx
	leaq	2216(%rsi), %rdx
	movl	-64(%rbp), %r9d
	movl	-56(%rbp), %eax
	jmp	.LBB62_44
.LBB62_6:
	movl	(%rbx), %eax
	cmpl	ng70(%rip), %eax
	jb	.LBB62_8
# BB#7:
	movl	$1, -56(%rbp)
	jmp	.LBB62_8
.LBB62_26:
	movl	ng70(%rip), %eax
	addl	ng5(%rip), %eax
	movl	%eax, -56(%rbp)
	movl	$0, -52(%rbp)
	jmp	.LBB62_27
.LBB62_36:
	movl	$15728746, %ecx         # imm = 0xF0006A
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	ng1(%rip), %eax
	andl	$1, %eax
	movl	%eax, (%rdi)
	movl	ng1+4(%rip), %eax
	andl	$1, %eax
	movl	%eax, 4(%rdi)
	leaq	768(%rsi), %rcx
	leaq	2416(%rsi), %rdx
	jmp	.LBB62_17
.LBB62_61:
	movl	ng70(%rip), %eax
	addl	ng21(%rip), %eax
	movl	%eax, -72(%rbp)
	movl	$0, -68(%rbp)
	jmp	.LBB62_62
.LBB62_64:
	movl	(%rdi), %eax
	cmpl	-72(%rbp), %eax
	jae	.LBB62_65
# BB#71:
	movl	$1, -104(%rbp)
	jmp	.LBB62_65
.LBB62_50:
	cmpl	$0, -108(%rbp)
	sete	%r12b
.LBB62_51:
	testb	%r12b, %r12b
	je	.LBB62_19
# BB#52:
	movl	-112(%rbp), %r9d
	movl	-72(%rbp), %eax
	subl	-104(%rbp), %eax
	incl	%eax
	movl	%eax, 32(%rsp)
	leaq	-120(%rbp), %rcx
	xorl	%edx, %edx
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_bit_copy(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	-120(%rbp), %eax
	andl	$127, %eax
	movl	%eax, (%rdi)
	movl	-116(%rbp), %eax
	andl	$127, %eax
	movl	%eax, 4(%rdi)
	leaq	824(%rsi), %rcx
	leaq	2296(%rsi), %rdx
	movl	-104(%rbp), %r9d
	movl	-72(%rbp), %eax
.LBB62_44:
	subl	%r9d, %eax
	movl	%eax, 32(%rsp)
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
.LBB62_18:
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
.LBB62_19:
	movl	$15728765, %ecx         # imm = 0xF0007D
	callq	*__imp__iki_stmt_online(%rip)
	movq	664(%rsi), %rdx
	leaq	-56(%rbp), %rcx
	movl	$8, %r8d
	callq	*__imp__iki_std_memcpy(%rip)
	movzbl	-56(%rbp), %eax
	movl	%eax, -56(%rbp)
	movzbl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movzbl	-56(%rbp), %eax
	movl	%eax, (%rdi)
	movzbl	-52(%rbp), %eax
	movl	%eax, 4(%rdi)
	leaq	992(%rsi), %rcx
	leaq	2576(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
.LBB62_20:
	movl	$15728723, %ecx         # imm = 0xF00053
	callq	*__imp__iki_stmt_online(%rip)
	movb	$1, 2128(%rsi)
	leaq	.Ltmp220(%rip), %rax
	movq	%rax, 2048(%rsi)
	addq	$192, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB62_32:
	movl	ng70(%rip), %eax
	addl	ng38(%rip), %eax
	movl	%eax, -56(%rbp)
	movl	$0, -52(%rbp)
	jmp	.LBB62_33

	.def	 _execute_145;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_145
	.align	16, 0x90
_execute_145:                           # @_execute_145
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	subq	$40, %rsp
	movq	%rdx, %rsi
	movl	$15728679, %ecx         # imm = 0xF00027
	callq	*__imp__iki_stmt_online(%rip)
	leaq	2936(%rsi), %rcx
	leaq	ng73(%rip), %rdx
	movl	$8, %r8d
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	488(%rsi), %rcx
	addq	$2912, %rsi             # imm = 0xB60
	xorl	%r8d, %r8d
	movl	$15, %r9d
	movq	%rsi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_signal_fast_no_reg_no_agg(%rip)
	addq	$40, %rsp
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_146;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_146
	.align	16, 0x90
_execute_146:                           # @_execute_146
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	subq	$40, %rsp
	movq	%rdx, %rsi
	leaq	1104(%rsi), %rcx
	movl	$15, %edx
	callq	*__imp__iki_vlog_signal_handle_value(%rip)
	leaq	3104(%rsi), %rcx
	movl	$8, %r8d
	movq	%rax, %rdx
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	1048(%rsi), %rcx
	addq	$3080, %rsi             # imm = 0xC08
	xorl	%r8d, %r8d
	movl	$14, %r9d
	movq	%rsi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_signal_fast(%rip)
	addq	$40, %rsp
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_147;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_147
	.align	16, 0x90
_execute_147:                           # @_execute_147
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	subq	$40, %rsp
	movq	%rdx, %rsi
	leaq	1216(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value(%rip)
	leaq	3272(%rsi), %rcx
	movl	$8, %r8d
	movq	%rax, %rdx
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	1160(%rsi), %rcx
	addq	$3248, %rsi             # imm = 0xCB0
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%rsi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_signal_fast(%rip)
	addq	$40, %rsp
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_148;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_148
	.align	16, 0x90
_execute_148:                           # @_execute_148
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	subq	$40, %rsp
	movq	%rdx, %rsi
	leaq	1272(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value(%rip)
	leaq	3440(%rsi), %rcx
	movl	$8, %r8d
	movq	%rax, %rdx
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	1328(%rsi), %rcx
	addq	$3416, %rsi             # imm = 0xD58
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%rsi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_signal_fast(%rip)
	addq	$40, %rsp
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_149;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_149
	.align	16, 0x90
_execute_149:                           # @_execute_149
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	subq	$40, %rsp
	movq	%rdx, %rsi
	leaq	1440(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value(%rip)
	leaq	3608(%rsi), %rcx
	movl	$8, %r8d
	movq	%rax, %rdx
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	1384(%rsi), %rcx
	addq	$3584, %rsi             # imm = 0xE00
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%rsi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_signal_fast(%rip)
	addq	$40, %rsp
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_150;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_150
	.align	16, 0x90
_execute_150:                           # @_execute_150
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	subq	$40, %rsp
	movq	%rdx, %rsi
	leaq	1496(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value(%rip)
	leaq	3776(%rsi), %rcx
	movl	$8, %r8d
	movq	%rax, %rdx
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	1552(%rsi), %rcx
	addq	$3752, %rsi             # imm = 0xEA8
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%rsi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_signal_fast(%rip)
	addq	$40, %rsp
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_151;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_151
	.align	16, 0x90
_execute_151:                           # @_execute_151
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	subq	$40, %rsp
	movq	%rdx, %rsi
	leaq	1608(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value(%rip)
	leaq	3944(%rsi), %rcx
	movl	$8, %r8d
	movq	%rax, %rdx
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	1664(%rsi), %rcx
	addq	$3920, %rsi             # imm = 0xF50
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%rsi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_signal_fast(%rip)
	addq	$40, %rsp
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_152;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_152
	.align	16, 0x90
_execute_152:                           # @_execute_152
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	subq	$40, %rsp
	movq	%rdx, %rsi
	leaq	1720(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value(%rip)
	leaq	4112(%rsi), %rcx
	movl	$8, %r8d
	movq	%rax, %rdx
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	1776(%rsi), %rcx
	addq	$4088, %rsi             # imm = 0xFF8
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%rsi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_signal_fast(%rip)
	addq	$40, %rsp
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_153;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_153
	.align	16, 0x90
_execute_153:                           # @_execute_153
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	subq	$40, %rsp
	movq	%rdx, %rsi
	leaq	1832(%rsi), %rcx
	movl	$8, %edx
	callq	*__imp__iki_vlog_signal_handle_value(%rip)
	leaq	4280(%rsi), %rcx
	movl	$8, %r8d
	movq	%rax, %rdx
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	1888(%rsi), %rcx
	addq	$4256, %rsi             # imm = 0x10A0
	xorl	%r8d, %r8d
	movl	$7, %r9d
	movq	%rsi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_signal_fast(%rip)
	addq	$40, %rsp
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_55;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_55
	.align	16, 0x90
_execute_55:                            # @_execute_55
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$192, %rsp
	movq	%rdx, %rsi
	.align	16, 0x90
.LBB72_1:                               # =>This Inner Loop Header: Depth=1
	movl	$36, %edx
	movq	%rsi, %rcx
	callq	*__imp__iki_vlog_set_threadId_for_unrandom(%rip)
	movq	304(%rsi), %rax
	testq	%rax, %rax
	je	.LBB72_17
# BB#2:                                 #   in Loop: Header=BB72_1 Depth=1
	jmpq	*%rax
.Ltmp251:                               # Block address taken
.LBB72_3:
	movb	$0, 384(%rsi)
	movq	__imp__iki_stmt_online(%rip), %rdi
	movl	$20971553, %ecx         # imm = 0x1400021
	callq	*%rdi
	leaq	96(%rsi), %r12
	leaq	936(%rsi), %r14
	movl	$15, 32(%rsp)
	leaq	ng1(%rip), %r8
	xorl	%r9d, %r9d
	movq	%r12, %rcx
	movq	%r14, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var(%rip)
	movl	$20971556, %ecx         # imm = 0x1400024
	callq	*%rdi
	movq	160(%rsi), %rdi
	leaq	-56(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, 4(%rdi)
	jne	.LBB72_18
# BB#4:
	cmpl	$0, ng74+4(%rip)
	je	.LBB72_5
.LBB72_18:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -56(%rbp)
.LBB72_6:
	movl	-52(%rbp), %eax
	notl	%eax
	testl	-56(%rbp), %eax
	je	.LBB72_7
# BB#20:
	movl	$20971557, %ecx         # imm = 0x1400025
	callq	*__imp__iki_stmt_online(%rip)
	movq	216(%rsi), %rdi
	leaq	-64(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, 4(%rdi)
	jne	.LBB72_35
# BB#21:
	cmpl	$0, ng75+4(%rip)
	je	.LBB72_22
.LBB72_35:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -64(%rbp)
.LBB72_23:
	movl	-60(%rbp), %eax
	notl	%eax
	testl	-64(%rbp), %eax
	je	.LBB72_24
# BB#37:
	movl	$20971558, %ecx         # imm = 0x1400026
	callq	*__imp__iki_stmt_online(%rip)
	movl	$1, -112(%rbp)
	movl	$15, -108(%rbp)
	movl	$0, -104(%rbp)
	leaq	-112(%rbp), %rbx
	movq	%rbx, 72(%rsp)
	leaq	ng76(%rip), %rax
	movq	%rax, 48(%rsp)
	movl	$1, 104(%rsp)
	movl	$2, 96(%rsp)
	movl	$1, 88(%rsp)
	movq	$0, 80(%rsp)
	movl	$1, 64(%rsp)
	movl	$32, 56(%rsp)
	movl	$1, 40(%rsp)
	movl	$32, 32(%rsp)
	leaq	ng65(%rip), %r9
	leaq	-72(%rbp), %rcx
	leaq	-80(%rbp), %rdx
	leaq	-88(%rbp), %r8
	callq	*__imp__iki_vlog_convert_part_select(%rip)
	cmpl	$0, -68(%rbp)
	je	.LBB72_39
# BB#38:
	xorl	%eax, %eax
	jmp	.LBB72_42
.LBB72_7:
	movl	$20971569, %ecx         # imm = 0x1400031
	callq	*__imp__iki_stmt_online(%rip)
	movq	160(%rsi), %rdi
	leaq	-56(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, 4(%rdi)
	jne	.LBB72_74
# BB#8:
	cmpl	$0, ng29+4(%rip)
	je	.LBB72_9
.LBB72_74:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -56(%rbp)
.LBB72_10:
	movl	-52(%rbp), %eax
	notl	%eax
	testl	-56(%rbp), %eax
	je	.LBB72_11
# BB#76:
	movl	$20971570, %ecx         # imm = 0x1400032
	callq	*__imp__iki_stmt_online(%rip)
	movq	216(%rsi), %rdi
	leaq	-64(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, 4(%rdi)
	jne	.LBB72_91
# BB#77:
	cmpl	$0, ng75+4(%rip)
	je	.LBB72_78
.LBB72_91:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -64(%rbp)
.LBB72_79:
	movl	-60(%rbp), %eax
	notl	%eax
	testl	-64(%rbp), %eax
	je	.LBB72_80
# BB#93:
	movl	$20971571, %ecx         # imm = 0x1400033
	callq	*__imp__iki_stmt_online(%rip)
	movl	$1, -112(%rbp)
	movl	$15, -108(%rbp)
	movl	$0, -104(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, 72(%rsp)
	leaq	ng76(%rip), %rax
	movq	%rax, 48(%rsp)
	movl	$1, 104(%rsp)
	movl	$2, 96(%rsp)
	movl	$1, 88(%rsp)
	movq	$0, 80(%rsp)
	movl	$1, 64(%rsp)
	movl	$32, 56(%rsp)
	movl	$1, 40(%rsp)
	movl	$32, 32(%rsp)
	leaq	ng65(%rip), %r9
	leaq	-72(%rbp), %rcx
	leaq	-80(%rbp), %rdx
	leaq	-88(%rbp), %r8
	callq	*__imp__iki_vlog_convert_part_select(%rip)
	cmpl	$0, -68(%rbp)
	je	.LBB72_95
# BB#94:
	xorl	%eax, %eax
	jmp	.LBB72_98
.LBB72_24:
	movl	$20971560, %ecx         # imm = 0x1400028
	callq	*__imp__iki_stmt_online(%rip)
	movq	216(%rsi), %rdi
	leaq	-56(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, 4(%rdi)
	jne	.LBB72_52
# BB#25:
	cmpl	$0, ng77+4(%rip)
	je	.LBB72_26
.LBB72_52:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -56(%rbp)
.LBB72_27:
	movl	-52(%rbp), %eax
	notl	%eax
	testl	-56(%rbp), %eax
	je	.LBB72_28
# BB#54:
	movl	$20971561, %ecx         # imm = 0x1400029
	callq	*__imp__iki_stmt_online(%rip)
	movl	$1, -112(%rbp)
	movl	$15, -108(%rbp)
	movl	$0, -104(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, 72(%rsp)
	leaq	ng76(%rip), %rax
	movq	%rax, 48(%rsp)
	movl	$1, 104(%rsp)
	movl	$2, 96(%rsp)
	movl	$1, 88(%rsp)
	movq	$0, 80(%rsp)
	movl	$1, 64(%rsp)
	movl	$32, 56(%rsp)
	movl	$1, 40(%rsp)
	movl	$32, 32(%rsp)
	leaq	ng65(%rip), %r9
	leaq	-64(%rbp), %rcx
	leaq	-72(%rbp), %rdx
	leaq	-80(%rbp), %r8
	callq	*__imp__iki_vlog_convert_part_select(%rip)
	cmpl	$0, -60(%rbp)
	je	.LBB72_56
# BB#55:
	xorl	%eax, %eax
	jmp	.LBB72_59
.LBB72_39:
	cmpl	$0, -76(%rbp)
	je	.LBB72_41
# BB#40:
	xorl	%eax, %eax
	jmp	.LBB72_42
.LBB72_5:
	movl	(%rdi), %eax
	cmpl	ng74(%rip), %eax
	jae	.LBB72_6
# BB#19:
	movl	$1, -56(%rbp)
	jmp	.LBB72_6
.LBB72_11:
	movl	$20971584, %ecx         # imm = 0x1400040
	callq	*__imp__iki_stmt_online(%rip)
	movq	160(%rsi), %rdi
	leaq	-56(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, 4(%rdi)
	jne	.LBB72_136
# BB#12:
	cmpl	$0, ng60+4(%rip)
	je	.LBB72_13
.LBB72_136:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -56(%rbp)
.LBB72_14:
	movl	-52(%rbp), %eax
	notl	%eax
	testl	-56(%rbp), %eax
	je	.LBB72_15
# BB#138:
	movl	$20971585, %ecx         # imm = 0x1400041
	callq	*__imp__iki_stmt_online(%rip)
	movq	216(%rsi), %rdi
	leaq	-64(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, 4(%rdi)
	jne	.LBB72_153
# BB#139:
	cmpl	$0, ng75+4(%rip)
	je	.LBB72_140
.LBB72_153:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -64(%rbp)
.LBB72_141:
	movl	-60(%rbp), %eax
	notl	%eax
	testl	-64(%rbp), %eax
	je	.LBB72_142
# BB#155:
	movl	$20971586, %ecx         # imm = 0x1400042
	callq	*__imp__iki_stmt_online(%rip)
	movl	$1, -112(%rbp)
	movl	$15, -108(%rbp)
	movl	$0, -104(%rbp)
	leaq	-112(%rbp), %r15
	movq	%r15, 72(%rsp)
	leaq	ng76(%rip), %rax
	movq	%rax, 48(%rsp)
	movl	$1, 104(%rsp)
	movl	$2, 96(%rsp)
	movl	$1, 88(%rsp)
	movq	$0, 80(%rsp)
	movl	$1, 64(%rsp)
	movl	$32, 56(%rsp)
	movl	$1, 40(%rsp)
	movl	$32, 32(%rsp)
	leaq	ng65(%rip), %r9
	leaq	-72(%rbp), %rcx
	leaq	-80(%rbp), %rdx
	leaq	-88(%rbp), %r8
	callq	*__imp__iki_vlog_convert_part_select(%rip)
	cmpl	$0, -68(%rbp)
	je	.LBB72_157
# BB#156:
	xorl	%eax, %eax
	jmp	.LBB72_160
.LBB72_22:
	movl	(%rdi), %eax
	cmpl	ng75(%rip), %eax
	jae	.LBB72_23
# BB#36:
	movl	$1, -64(%rbp)
	jmp	.LBB72_23
.LBB72_28:
	movl	$20971562, %ecx         # imm = 0x140002A
	callq	*__imp__iki_stmt_online(%rip)
	movq	216(%rsi), %rdi
	leaq	-56(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, 4(%rdi)
	jne	.LBB72_62
# BB#29:
	cmpl	$0, ng59+4(%rip)
	je	.LBB72_30
.LBB72_62:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -56(%rbp)
.LBB72_32:
	movl	-52(%rbp), %eax
	notl	%eax
	testl	-56(%rbp), %eax
	je	.LBB72_17
# BB#33:
	movl	$20971563, %ecx         # imm = 0x140002B
	callq	*__imp__iki_stmt_online(%rip)
	movl	$1, -112(%rbp)
	movl	$15, -108(%rbp)
	movl	$0, -104(%rbp)
	leaq	-112(%rbp), %r15
	movq	%r15, 72(%rsp)
	leaq	ng76(%rip), %rax
	movq	%rax, 48(%rsp)
	movl	$1, 104(%rsp)
	movl	$2, 96(%rsp)
	movl	$1, 88(%rsp)
	movq	$0, 80(%rsp)
	movl	$1, 64(%rsp)
	movl	$32, 56(%rsp)
	movl	$1, 40(%rsp)
	movl	$32, 32(%rsp)
	leaq	ng65(%rip), %r9
	leaq	-64(%rbp), %rcx
	leaq	-72(%rbp), %rdx
	leaq	-80(%rbp), %r8
	callq	*__imp__iki_vlog_convert_part_select(%rip)
	cmpl	$0, -60(%rbp)
	je	.LBB72_63
# BB#34:
	xorl	%eax, %eax
	jmp	.LBB72_66
.LBB72_80:
	movl	$20971572, %ecx         # imm = 0x1400034
	callq	*__imp__iki_stmt_online(%rip)
	movq	216(%rsi), %rdi
	leaq	-56(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, 4(%rdi)
	jne	.LBB72_100
# BB#81:
	cmpl	$0, ng77+4(%rip)
	je	.LBB72_82
.LBB72_100:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -56(%rbp)
.LBB72_83:
	movl	-52(%rbp), %eax
	notl	%eax
	testl	-56(%rbp), %eax
	je	.LBB72_84
# BB#102:
	movl	$20971573, %ecx         # imm = 0x1400035
	callq	*__imp__iki_stmt_online(%rip)
	movl	$1, -112(%rbp)
	movl	$15, -108(%rbp)
	movl	$0, -104(%rbp)
	leaq	-112(%rbp), %r15
	movq	%r15, 72(%rsp)
	leaq	ng76(%rip), %rax
	movq	%rax, 48(%rsp)
	movl	$1, 104(%rsp)
	movl	$2, 96(%rsp)
	movl	$1, 88(%rsp)
	movq	$0, 80(%rsp)
	movl	$1, 64(%rsp)
	movl	$32, 56(%rsp)
	movl	$1, 40(%rsp)
	movl	$32, 32(%rsp)
	leaq	ng65(%rip), %r9
	leaq	-64(%rbp), %rcx
	leaq	-72(%rbp), %rdx
	leaq	-80(%rbp), %r8
	callq	*__imp__iki_vlog_convert_part_select(%rip)
	cmpl	$0, -60(%rbp)
	je	.LBB72_104
# BB#103:
	xorl	%eax, %eax
	jmp	.LBB72_107
.LBB72_41:
	cmpl	$0, -84(%rbp)
	sete	%al
.LBB72_42:
	testb	%al, %al
	je	.LBB72_43
# BB#183:
	movl	-88(%rbp), %r9d
	movl	-72(%rbp), %eax
	subl	-80(%rbp), %eax
	incl	%eax
	movl	%eax, 32(%rsp)
	leaq	ng8(%rip), %r8
	leaq	-120(%rbp), %rdi
	xorl	%edx, %edx
	movq	%rdi, %rcx
	callq	*__imp__iki_vlog_bit_copy(%rip)
	movl	-80(%rbp), %r9d
	movl	-72(%rbp), %eax
	subl	%r9d, %eax
	movl	%eax, 32(%rsp)
	movq	%r12, %rcx
	movq	%r14, %rdx
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var(%rip)
.LBB72_43:
	movl	$20971559, %ecx         # imm = 0x1400027
	callq	*__imp__iki_stmt_online(%rip)
	movl	$1, -112(%rbp)
	movl	$15, -108(%rbp)
	movl	$0, -104(%rbp)
	movq	%rbx, 72(%rsp)
	leaq	ng64(%rip), %rax
	movq	%rax, 48(%rsp)
	movl	$1, 104(%rsp)
	movl	$2, 96(%rsp)
	movl	$1, 88(%rsp)
	movq	$0, 80(%rsp)
	movl	$1, 64(%rsp)
	movl	$32, 56(%rsp)
	movl	$1, 40(%rsp)
	movl	$32, 32(%rsp)
	leaq	ng54(%rip), %r9
	leaq	-56(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	leaq	-72(%rbp), %r8
	callq	*__imp__iki_vlog_convert_part_select(%rip)
	cmpl	$0, -52(%rbp)
	je	.LBB72_45
# BB#44:
	xorl	%eax, %eax
	jmp	.LBB72_48
.LBB72_45:
	cmpl	$0, -60(%rbp)
	je	.LBB72_47
# BB#46:
	xorl	%eax, %eax
	jmp	.LBB72_48
.LBB72_95:
	cmpl	$0, -76(%rbp)
	je	.LBB72_97
# BB#96:
	xorl	%eax, %eax
	jmp	.LBB72_98
.LBB72_56:
	cmpl	$0, -68(%rbp)
	je	.LBB72_58
# BB#57:
	xorl	%eax, %eax
	jmp	.LBB72_59
.LBB72_9:
	movl	(%rdi), %eax
	cmpl	ng29(%rip), %eax
	jae	.LBB72_10
# BB#75:
	movl	$1, -56(%rbp)
	jmp	.LBB72_10
.LBB72_15:
	movl	$20971598, %ecx         # imm = 0x140004E
	callq	*__imp__iki_stmt_online(%rip)
	movl	$15, 32(%rsp)
	leaq	ng1(%rip), %r8
	xorl	%r9d, %r9d
	movq	%r12, %rcx
	movq	%r14, %rdx
	jmp	.LBB72_16
.LBB72_78:
	movl	(%rdi), %eax
	cmpl	ng75(%rip), %eax
	jae	.LBB72_79
# BB#92:
	movl	$1, -64(%rbp)
	jmp	.LBB72_79
.LBB72_26:
	movl	(%rdi), %eax
	cmpl	ng77(%rip), %eax
	jae	.LBB72_27
# BB#53:
	movl	$1, -56(%rbp)
	jmp	.LBB72_27
.LBB72_142:
	movl	$20971588, %ecx         # imm = 0x1400044
	callq	*__imp__iki_stmt_online(%rip)
	movq	216(%rsi), %rdi
	leaq	-56(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, 4(%rdi)
	jne	.LBB72_165
# BB#143:
	cmpl	$0, ng77+4(%rip)
	je	.LBB72_144
.LBB72_165:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -56(%rbp)
.LBB72_145:
	movl	-52(%rbp), %eax
	notl	%eax
	testl	-56(%rbp), %eax
	je	.LBB72_146
# BB#167:
	movl	$20971589, %ecx         # imm = 0x1400045
	callq	*__imp__iki_stmt_online(%rip)
	movl	$1, -112(%rbp)
	movl	$15, -108(%rbp)
	movl	$0, -104(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, 72(%rsp)
	leaq	ng76(%rip), %rax
	movq	%rax, 48(%rsp)
	movl	$1, 104(%rsp)
	movl	$2, 96(%rsp)
	movl	$1, 88(%rsp)
	movq	$0, 80(%rsp)
	movl	$1, 64(%rsp)
	movl	$32, 56(%rsp)
	movl	$1, 40(%rsp)
	movl	$32, 32(%rsp)
	leaq	ng65(%rip), %r9
	leaq	-64(%rbp), %rcx
	leaq	-72(%rbp), %rdx
	leaq	-80(%rbp), %r8
	callq	*__imp__iki_vlog_convert_part_select(%rip)
	cmpl	$0, -60(%rbp)
	je	.LBB72_169
# BB#168:
	xorl	%eax, %eax
	jmp	.LBB72_172
.LBB72_84:
	movl	$20971578, %ecx         # imm = 0x140003A
	callq	*__imp__iki_stmt_online(%rip)
	movq	216(%rsi), %rdi
	leaq	-56(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, 4(%rdi)
	jne	.LBB72_130
# BB#85:
	cmpl	$0, ng59+4(%rip)
	je	.LBB72_86
.LBB72_130:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -56(%rbp)
.LBB72_88:
	movl	-52(%rbp), %eax
	notl	%eax
	testl	-56(%rbp), %eax
	je	.LBB72_17
# BB#89:
	movl	$20971579, %ecx         # imm = 0x140003B
	callq	*__imp__iki_stmt_online(%rip)
	movl	$1, -112(%rbp)
	movl	$15, -108(%rbp)
	movl	$0, -104(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, 72(%rsp)
	leaq	ng76(%rip), %rax
	movq	%rax, 48(%rsp)
	movl	$1, 104(%rsp)
	movl	$2, 96(%rsp)
	movl	$1, 88(%rsp)
	movq	$0, 80(%rsp)
	movl	$1, 64(%rsp)
	movl	$32, 56(%rsp)
	movl	$1, 40(%rsp)
	movl	$32, 32(%rsp)
	leaq	ng65(%rip), %r9
	leaq	-64(%rbp), %rcx
	leaq	-72(%rbp), %rdx
	leaq	-80(%rbp), %r8
	callq	*__imp__iki_vlog_convert_part_select(%rip)
	cmpl	$0, -60(%rbp)
	je	.LBB72_131
# BB#90:
	xorl	%eax, %eax
	jmp	.LBB72_134
.LBB72_157:
	cmpl	$0, -76(%rbp)
	je	.LBB72_159
# BB#158:
	xorl	%eax, %eax
	jmp	.LBB72_160
.LBB72_63:
	cmpl	$0, -68(%rbp)
	je	.LBB72_65
# BB#64:
	xorl	%eax, %eax
	jmp	.LBB72_66
.LBB72_104:
	cmpl	$0, -68(%rbp)
	je	.LBB72_106
# BB#105:
	xorl	%eax, %eax
	jmp	.LBB72_107
.LBB72_97:
	cmpl	$0, -84(%rbp)
	sete	%al
.LBB72_98:
	testb	%al, %al
	je	.LBB72_17
# BB#99:
	movl	-88(%rbp), %r9d
	movl	-72(%rbp), %eax
	subl	-80(%rbp), %eax
	incl	%eax
	movl	%eax, 32(%rsp)
	leaq	ng10(%rip), %r8
	leaq	-120(%rbp), %rdi
	xorl	%edx, %edx
	movq	%rdi, %rcx
	callq	*__imp__iki_vlog_bit_copy(%rip)
	movl	-80(%rbp), %r9d
	movl	-72(%rbp), %eax
	jmp	.LBB72_51
.LBB72_58:
	cmpl	$0, -76(%rbp)
	sete	%al
.LBB72_59:
	testb	%al, %al
	je	.LBB72_17
# BB#60:
	movl	-80(%rbp), %r9d
	movl	-64(%rbp), %eax
	subl	-72(%rbp), %eax
	incl	%eax
	movl	%eax, 32(%rsp)
	leaq	ng8(%rip), %r8
.LBB72_61:
	leaq	-88(%rbp), %rdi
	xorl	%edx, %edx
	movq	%rdi, %rcx
	callq	*__imp__iki_vlog_bit_copy(%rip)
	movl	-72(%rbp), %r9d
	movl	-64(%rbp), %eax
	jmp	.LBB72_51
.LBB72_13:
	movl	(%rdi), %eax
	cmpl	ng60(%rip), %eax
	jae	.LBB72_14
# BB#137:
	movl	$1, -56(%rbp)
	jmp	.LBB72_14
.LBB72_140:
	movl	(%rdi), %eax
	cmpl	ng75(%rip), %eax
	jae	.LBB72_141
# BB#154:
	movl	$1, -64(%rbp)
	jmp	.LBB72_141
.LBB72_30:
	movl	(%rdi), %eax
	cmpl	ng59(%rip), %eax
	ja	.LBB72_32
# BB#31:
	movl	$1, -56(%rbp)
	jmp	.LBB72_32
.LBB72_82:
	movl	(%rdi), %eax
	cmpl	ng77(%rip), %eax
	jae	.LBB72_83
# BB#101:
	movl	$1, -56(%rbp)
	jmp	.LBB72_83
.LBB72_146:
	movl	$20971590, %ecx         # imm = 0x1400046
	callq	*__imp__iki_stmt_online(%rip)
	movq	216(%rsi), %rdi
	leaq	-56(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, 4(%rdi)
	jne	.LBB72_174
# BB#147:
	cmpl	$0, ng59+4(%rip)
	je	.LBB72_148
.LBB72_174:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -56(%rbp)
.LBB72_150:
	movl	-52(%rbp), %eax
	notl	%eax
	testl	-56(%rbp), %eax
	je	.LBB72_17
# BB#151:
	movl	$20971591, %ecx         # imm = 0x1400047
	callq	*__imp__iki_stmt_online(%rip)
	movl	$1, -112(%rbp)
	movl	$15, -108(%rbp)
	movl	$0, -104(%rbp)
	leaq	-112(%rbp), %r15
	movq	%r15, 72(%rsp)
	leaq	ng76(%rip), %rax
	movq	%rax, 48(%rsp)
	movl	$1, 104(%rsp)
	movl	$2, 96(%rsp)
	movl	$1, 88(%rsp)
	movq	$0, 80(%rsp)
	movl	$1, 64(%rsp)
	movl	$32, 56(%rsp)
	movl	$1, 40(%rsp)
	movl	$32, 32(%rsp)
	leaq	ng65(%rip), %r9
	leaq	-64(%rbp), %rcx
	leaq	-72(%rbp), %rdx
	leaq	-80(%rbp), %r8
	callq	*__imp__iki_vlog_convert_part_select(%rip)
	cmpl	$0, -60(%rbp)
	je	.LBB72_175
# BB#152:
	xorl	%eax, %eax
	jmp	.LBB72_178
.LBB72_169:
	cmpl	$0, -68(%rbp)
	je	.LBB72_171
# BB#170:
	xorl	%eax, %eax
	jmp	.LBB72_172
.LBB72_131:
	cmpl	$0, -68(%rbp)
	je	.LBB72_133
# BB#132:
	xorl	%eax, %eax
	jmp	.LBB72_134
.LBB72_159:
	cmpl	$0, -84(%rbp)
	sete	%al
.LBB72_160:
	testb	%al, %al
	je	.LBB72_161
# BB#185:
	movl	-88(%rbp), %r9d
	movl	-72(%rbp), %eax
	subl	-80(%rbp), %eax
	incl	%eax
	movl	%eax, 32(%rsp)
	leaq	ng11(%rip), %r8
	leaq	-120(%rbp), %rdi
	xorl	%edx, %edx
	movq	%rdi, %rcx
	callq	*__imp__iki_vlog_bit_copy(%rip)
	movl	-80(%rbp), %r9d
	movl	-72(%rbp), %eax
	subl	%r9d, %eax
	movl	%eax, 32(%rsp)
	movq	%r12, %rcx
	movq	%r14, %rdx
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var(%rip)
.LBB72_161:
	movl	$20971587, %ecx         # imm = 0x1400043
	callq	*__imp__iki_stmt_online(%rip)
	movl	$1, -112(%rbp)
	movl	$15, -108(%rbp)
	movl	$0, -104(%rbp)
	movq	%r15, 72(%rsp)
	leaq	ng64(%rip), %rax
	movq	%rax, 48(%rsp)
	movl	$1, 104(%rsp)
	movl	$2, 96(%rsp)
	movl	$1, 88(%rsp)
	movq	$0, 80(%rsp)
	movl	$1, 64(%rsp)
	movl	$32, 56(%rsp)
	movl	$1, 40(%rsp)
	movl	$32, 32(%rsp)
	leaq	ng54(%rip), %r9
	leaq	-56(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	leaq	-72(%rbp), %r8
	callq	*__imp__iki_vlog_convert_part_select(%rip)
	cmpl	$0, -52(%rbp)
	je	.LBB72_163
# BB#162:
	xorl	%eax, %eax
	jmp	.LBB72_48
.LBB72_163:
	cmpl	$0, -60(%rbp)
	je	.LBB72_47
# BB#164:
	xorl	%eax, %eax
	jmp	.LBB72_48
.LBB72_47:
	cmpl	$0, -68(%rbp)
	sete	%al
.LBB72_48:
	testb	%al, %al
	je	.LBB72_17
# BB#49:
	movl	-72(%rbp), %r9d
	movl	-56(%rbp), %eax
	subl	-64(%rbp), %eax
	incl	%eax
	movl	%eax, 32(%rsp)
	leaq	ng10(%rip), %r8
.LBB72_50:
	leaq	-80(%rbp), %rdi
	xorl	%edx, %edx
	movq	%rdi, %rcx
	callq	*__imp__iki_vlog_bit_copy(%rip)
	movl	-64(%rbp), %r9d
	movl	-56(%rbp), %eax
.LBB72_51:
	subl	%r9d, %eax
	movl	%eax, 32(%rsp)
	movq	%r12, %rcx
	movq	%r14, %rdx
	movq	%rdi, %r8
.LBB72_16:
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var(%rip)
.LBB72_17:
	movl	$20971551, %ecx         # imm = 0x140001F
	callq	*__imp__iki_stmt_online(%rip)
	movb	$1, 384(%rsi)
	leaq	.Ltmp251(%rip), %rax
	movq	%rax, 304(%rsi)
	addq	$192, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB72_65:
	cmpl	$0, -76(%rbp)
	sete	%al
.LBB72_66:
	testb	%al, %al
	je	.LBB72_67
# BB#184:
	movl	-80(%rbp), %r9d
	movl	-64(%rbp), %eax
	subl	-72(%rbp), %eax
	incl	%eax
	movl	%eax, 32(%rsp)
	leaq	ng8(%rip), %r8
	leaq	-88(%rbp), %rdi
	xorl	%edx, %edx
	movq	%rdi, %rcx
	callq	*__imp__iki_vlog_bit_copy(%rip)
	movl	-72(%rbp), %r9d
	movl	-64(%rbp), %eax
	subl	%r9d, %eax
	movl	%eax, 32(%rsp)
	movq	%r12, %rcx
	movq	%r14, %rdx
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var(%rip)
.LBB72_67:
	movl	$20971564, %ecx         # imm = 0x140002C
	callq	*__imp__iki_stmt_online(%rip)
	movl	$1, -112(%rbp)
	movl	$15, -108(%rbp)
	movl	$0, -104(%rbp)
	movq	%r15, 72(%rsp)
	leaq	ng64(%rip), %rax
	movq	%rax, 48(%rsp)
	movl	$1, 104(%rsp)
	movl	$2, 96(%rsp)
	movl	$1, 88(%rsp)
	movq	$0, 80(%rsp)
	movl	$1, 64(%rsp)
	movl	$32, 56(%rsp)
	movl	$1, 40(%rsp)
	movl	$32, 32(%rsp)
	leaq	ng54(%rip), %r9
	leaq	-56(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	leaq	-72(%rbp), %r8
	callq	*__imp__iki_vlog_convert_part_select(%rip)
	cmpl	$0, -52(%rbp)
	je	.LBB72_69
# BB#68:
	xorl	%eax, %eax
	jmp	.LBB72_72
.LBB72_69:
	cmpl	$0, -60(%rbp)
	je	.LBB72_71
# BB#70:
	xorl	%eax, %eax
	jmp	.LBB72_72
.LBB72_106:
	cmpl	$0, -76(%rbp)
	sete	%al
.LBB72_107:
	testb	%al, %al
	je	.LBB72_108
# BB#127:
	movl	-80(%rbp), %r9d
	movl	-64(%rbp), %eax
	subl	-72(%rbp), %eax
	incl	%eax
	movl	%eax, 32(%rsp)
	leaq	ng2(%rip), %r8
	leaq	-88(%rbp), %rdi
	xorl	%edx, %edx
	movq	%rdi, %rcx
	callq	*__imp__iki_vlog_bit_copy(%rip)
	movl	-72(%rbp), %r9d
	movl	-64(%rbp), %eax
	subl	%r9d, %eax
	movl	%eax, 32(%rsp)
	movq	%r12, %rcx
	movq	%r14, %rdx
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var(%rip)
.LBB72_108:
	movl	$20971574, %ecx         # imm = 0x1400036
	callq	*__imp__iki_stmt_online(%rip)
	movl	$1, -112(%rbp)
	movl	$15, -108(%rbp)
	movl	$0, -104(%rbp)
	movq	%r15, 72(%rsp)
	leaq	ng66(%rip), %rax
	movq	%rax, 48(%rsp)
	movl	$1, 104(%rsp)
	movl	$2, 96(%rsp)
	movl	$1, 88(%rsp)
	movq	$0, 80(%rsp)
	movl	$1, 64(%rsp)
	movl	$32, 56(%rsp)
	movl	$1, 40(%rsp)
	movl	$32, 32(%rsp)
	leaq	ng79(%rip), %r9
	leaq	-56(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	leaq	-72(%rbp), %r8
	callq	*__imp__iki_vlog_convert_part_select(%rip)
	cmpl	$0, -52(%rbp)
	je	.LBB72_110
# BB#109:
	xorl	%eax, %eax
	jmp	.LBB72_113
.LBB72_110:
	cmpl	$0, -60(%rbp)
	je	.LBB72_112
# BB#111:
	xorl	%eax, %eax
	jmp	.LBB72_113
.LBB72_112:
	cmpl	$0, -68(%rbp)
	sete	%al
.LBB72_113:
	testb	%al, %al
	je	.LBB72_114
# BB#128:
	movl	-72(%rbp), %r9d
	movl	-56(%rbp), %eax
	subl	-64(%rbp), %eax
	incl	%eax
	movl	%eax, 32(%rsp)
	leaq	ng78(%rip), %r8
	leaq	-80(%rbp), %rdi
	xorl	%edx, %edx
	movq	%rdi, %rcx
	callq	*__imp__iki_vlog_bit_copy(%rip)
	movl	-64(%rbp), %r9d
	movl	-56(%rbp), %eax
	subl	%r9d, %eax
	movl	%eax, 32(%rsp)
	movq	%r12, %rcx
	movq	%r14, %rdx
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var(%rip)
.LBB72_114:
	movl	$20971575, %ecx         # imm = 0x1400037
	callq	*__imp__iki_stmt_online(%rip)
	movl	$1, -112(%rbp)
	movl	$15, -108(%rbp)
	movl	$0, -104(%rbp)
	movq	%r15, 72(%rsp)
	leaq	ng64(%rip), %rax
	movq	%rax, 48(%rsp)
	movl	$1, 104(%rsp)
	movl	$2, 96(%rsp)
	movl	$1, 88(%rsp)
	movq	$0, 80(%rsp)
	movl	$1, 64(%rsp)
	movl	$32, 56(%rsp)
	movl	$1, 40(%rsp)
	movl	$32, 32(%rsp)
	leaq	ng54(%rip), %r9
	leaq	-56(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	leaq	-72(%rbp), %r8
	callq	*__imp__iki_vlog_convert_part_select(%rip)
	cmpl	$0, -52(%rbp)
	je	.LBB72_116
# BB#115:
	xorl	%eax, %eax
	jmp	.LBB72_119
.LBB72_116:
	cmpl	$0, -60(%rbp)
	je	.LBB72_118
# BB#117:
	xorl	%eax, %eax
	jmp	.LBB72_119
.LBB72_118:
	cmpl	$0, -68(%rbp)
	sete	%al
.LBB72_119:
	testb	%al, %al
	je	.LBB72_120
# BB#129:
	movl	-72(%rbp), %r9d
	movl	-56(%rbp), %eax
	subl	-64(%rbp), %eax
	incl	%eax
	movl	%eax, 32(%rsp)
	leaq	ng10(%rip), %r8
	leaq	-80(%rbp), %rdi
	xorl	%edx, %edx
	movq	%rdi, %rcx
	callq	*__imp__iki_vlog_bit_copy(%rip)
	movl	-64(%rbp), %r9d
	movl	-56(%rbp), %eax
	subl	%r9d, %eax
	movl	%eax, 32(%rsp)
	movq	%r12, %rcx
	movq	%r14, %rdx
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var(%rip)
.LBB72_120:
	movl	$20971576, %ecx         # imm = 0x1400038
	callq	*__imp__iki_stmt_online(%rip)
	movl	$1, -112(%rbp)
	movl	$15, -108(%rbp)
	movl	$0, -104(%rbp)
	movq	%r15, 72(%rsp)
	leaq	ng0(%rip), %rax
	movq	%rax, 48(%rsp)
	movl	$1, 104(%rsp)
	movl	$2, 96(%rsp)
	movl	$1, 88(%rsp)
	movq	$0, 80(%rsp)
	movl	$1, 64(%rsp)
	movl	$32, 56(%rsp)
	movl	$1, 40(%rsp)
	movl	$32, 32(%rsp)
	leaq	ng21(%rip), %r9
	leaq	-56(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	leaq	-72(%rbp), %r8
	callq	*__imp__iki_vlog_convert_part_select(%rip)
	cmpl	$0, -52(%rbp)
	je	.LBB72_122
# BB#121:
	xorl	%eax, %eax
	jmp	.LBB72_125
.LBB72_122:
	cmpl	$0, -60(%rbp)
	je	.LBB72_124
# BB#123:
	xorl	%eax, %eax
	jmp	.LBB72_125
.LBB72_124:
	cmpl	$0, -68(%rbp)
	sete	%al
.LBB72_125:
	testb	%al, %al
	je	.LBB72_17
# BB#126:
	movl	-72(%rbp), %r9d
	movl	-56(%rbp), %eax
	subl	-64(%rbp), %eax
	incl	%eax
	movl	%eax, 32(%rsp)
	leaq	ng80(%rip), %r8
	jmp	.LBB72_50
.LBB72_144:
	movl	(%rdi), %eax
	cmpl	ng77(%rip), %eax
	jae	.LBB72_145
# BB#166:
	movl	$1, -56(%rbp)
	jmp	.LBB72_145
.LBB72_86:
	movl	(%rdi), %eax
	cmpl	ng59(%rip), %eax
	ja	.LBB72_88
# BB#87:
	movl	$1, -56(%rbp)
	jmp	.LBB72_88
.LBB72_175:
	cmpl	$0, -68(%rbp)
	je	.LBB72_177
# BB#176:
	xorl	%eax, %eax
	jmp	.LBB72_178
.LBB72_171:
	cmpl	$0, -76(%rbp)
	sete	%al
.LBB72_172:
	testb	%al, %al
	je	.LBB72_17
# BB#173:
	movl	-80(%rbp), %r9d
	movl	-64(%rbp), %eax
	subl	-72(%rbp), %eax
	incl	%eax
	movl	%eax, 32(%rsp)
	leaq	ng11(%rip), %r8
	jmp	.LBB72_61
.LBB72_133:
	cmpl	$0, -76(%rbp)
	sete	%al
.LBB72_134:
	testb	%al, %al
	je	.LBB72_17
# BB#135:
	movl	-80(%rbp), %r9d
	movl	-64(%rbp), %eax
	subl	-72(%rbp), %eax
	incl	%eax
	movl	%eax, 32(%rsp)
	leaq	ng9(%rip), %r8
	jmp	.LBB72_61
.LBB72_148:
	movl	(%rdi), %eax
	cmpl	ng59(%rip), %eax
	ja	.LBB72_150
# BB#149:
	movl	$1, -56(%rbp)
	jmp	.LBB72_150
.LBB72_177:
	cmpl	$0, -76(%rbp)
	sete	%al
.LBB72_178:
	testb	%al, %al
	je	.LBB72_179
# BB#186:
	movl	-80(%rbp), %r9d
	movl	-64(%rbp), %eax
	subl	-72(%rbp), %eax
	incl	%eax
	movl	%eax, 32(%rsp)
	leaq	ng11(%rip), %r8
	leaq	-88(%rbp), %rdi
	xorl	%edx, %edx
	movq	%rdi, %rcx
	callq	*__imp__iki_vlog_bit_copy(%rip)
	movl	-72(%rbp), %r9d
	movl	-64(%rbp), %eax
	subl	%r9d, %eax
	movl	%eax, 32(%rsp)
	movq	%r12, %rcx
	movq	%r14, %rdx
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var(%rip)
.LBB72_179:
	movl	$20971592, %ecx         # imm = 0x1400048
	callq	*__imp__iki_stmt_online(%rip)
	movl	$1, -112(%rbp)
	movl	$15, -108(%rbp)
	movl	$0, -104(%rbp)
	movq	%r15, 72(%rsp)
	leaq	ng64(%rip), %rax
	movq	%rax, 48(%rsp)
	movl	$1, 104(%rsp)
	movl	$2, 96(%rsp)
	movl	$1, 88(%rsp)
	movq	$0, 80(%rsp)
	movl	$1, 64(%rsp)
	movl	$32, 56(%rsp)
	movl	$1, 40(%rsp)
	movl	$32, 32(%rsp)
	leaq	ng54(%rip), %r9
	leaq	-56(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	leaq	-72(%rbp), %r8
	callq	*__imp__iki_vlog_convert_part_select(%rip)
	cmpl	$0, -52(%rbp)
	je	.LBB72_181
# BB#180:
	xorl	%eax, %eax
	jmp	.LBB72_72
.LBB72_181:
	cmpl	$0, -60(%rbp)
	je	.LBB72_71
# BB#182:
	xorl	%eax, %eax
	jmp	.LBB72_72
.LBB72_71:
	cmpl	$0, -68(%rbp)
	sete	%al
.LBB72_72:
	testb	%al, %al
	je	.LBB72_17
# BB#73:
	movl	-72(%rbp), %r9d
	movl	-56(%rbp), %eax
	subl	-64(%rbp), %eax
	incl	%eax
	movl	%eax, 32(%rsp)
	leaq	ng9(%rip), %r8
	jmp	.LBB72_50

	.def	 _execute_154;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_154
	.align	16, 0x90
_execute_154:                           # @_execute_154
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	pushq	%rdi
	subq	$160, %rsp
	movq	%rdx, %rsi
	movl	$20971548, %ecx         # imm = 0x140001C
	callq	*__imp__iki_stmt_online(%rip)
	leaq	40(%rsi), %rcx
	movl	$16, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movl	$1, -48(%rbp)
	movl	$15, -44(%rbp)
	movl	$0, -40(%rbp)
	leaq	-48(%rbp), %rcx
	movq	%rcx, 80(%rsp)
	leaq	ng0(%rip), %rcx
	movq	%rcx, 56(%rsp)
	leaq	ng54(%rip), %rcx
	movq	%rcx, 32(%rsp)
	movl	$1, 112(%rsp)
	movl	$2, 104(%rsp)
	movl	$1, 96(%rsp)
	movq	$0, 88(%rsp)
	movl	$1, 72(%rsp)
	movl	$32, 64(%rsp)
	movl	$1, 48(%rsp)
	movl	$32, 40(%rsp)
	leaq	-24(%rbp), %rdi
	movl	$1, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	movq	%rax, %r9
	callq	*__imp__iki_vlog_get_part_select_value(%rip)
	leaq	1120(%rsi), %rcx
	movl	$8, %r8d
	movq	%rdi, %rdx
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	152(%rsi), %rcx
	addq	$1096, %rsi             # imm = 0x448
	xorl	%r8d, %r8d
	movl	$7, %r9d
	movq	%rsi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_signal_fast_no_reg_no_agg(%rip)
	addq	$160, %rsp
	popq	%rdi
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_155;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_155
	.align	16, 0x90
_execute_155:                           # @_execute_155
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	pushq	%rdi
	subq	$160, %rsp
	movq	%rdx, %rsi
	movl	$20971549, %ecx         # imm = 0x140001D
	callq	*__imp__iki_stmt_online(%rip)
	leaq	40(%rsi), %rcx
	movl	$16, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movl	$1, -48(%rbp)
	movl	$15, -44(%rbp)
	movl	$0, -40(%rbp)
	leaq	-48(%rbp), %rcx
	movq	%rcx, 80(%rsp)
	leaq	ng66(%rip), %rcx
	movq	%rcx, 56(%rsp)
	leaq	ng65(%rip), %rcx
	movq	%rcx, 32(%rsp)
	movl	$1, 112(%rsp)
	movl	$2, 104(%rsp)
	movl	$1, 96(%rsp)
	movq	$0, 88(%rsp)
	movl	$1, 72(%rsp)
	movl	$32, 64(%rsp)
	movl	$1, 48(%rsp)
	movl	$32, 40(%rsp)
	leaq	-24(%rbp), %rdi
	movl	$1, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	movq	%rax, %r9
	callq	*__imp__iki_vlog_get_part_select_value(%rip)
	leaq	1288(%rsi), %rcx
	movl	$8, %r8d
	movq	%rdi, %rdx
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	208(%rsi), %rcx
	addq	$1264, %rsi             # imm = 0x4F0
	xorl	%r8d, %r8d
	movl	$7, %r9d
	movq	%rsi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_signal_fast_no_reg_no_agg(%rip)
	addq	$160, %rsp
	popq	%rdi
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_57;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_57
	.align	16, 0x90
_execute_57:                            # @_execute_57
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$72, %rsp
	movq	%rdx, %rsi
	.align	16, 0x90
.LBB75_1:                               # =>This Inner Loop Header: Depth=1
	movl	$37, %edx
	movq	%rsi, %rcx
	callq	*__imp__iki_vlog_set_threadId_for_unrandom(%rip)
	movq	504(%rsi), %rax
	testq	%rax, %rax
	je	.LBB75_5
# BB#2:                                 #   in Loop: Header=BB75_1 Depth=1
	jmpq	*%rax
.Ltmp261:                               # Block address taken
.LBB75_3:
	movb	$0, 584(%rsi)
	movl	$22020143, %ecx         # imm = 0x150002F
	callq	*__imp__iki_stmt_online(%rip)
	leaq	96(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movl	4(%rax), %ecx
	notl	%ecx
	testl	(%rax), %ecx
	je	.LBB75_4
# BB#6:
	movl	$22020144, %ecx         # imm = 0x1500030
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	$131071, %eax           # imm = 0x1FFFF
	movl	ng0(%rip), %ecx
	andl	%eax, %ecx
	movl	%ecx, (%rdi)
	andl	ng0+4(%rip), %eax
	movl	%eax, 4(%rdi)
	leaq	320(%rsi), %rcx
	leaq	592(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$16, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
	jmp	.LBB75_5
.LBB75_4:
	movl	$22020146, %ecx         # imm = 0x1500032
	callq	*__imp__iki_stmt_online(%rip)
	leaq	152(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movl	4(%rax), %ecx
	notl	%ecx
	testl	(%rax), %ecx
	je	.LBB75_5
# BB#7:
	movl	$22020147, %ecx         # imm = 0x1500033
	callq	*__imp__iki_stmt_online(%rip)
	movq	328(%rsi), %rdi
	leaq	-32(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %ecx
	movl	4(%rdi), %ebx
	xorl	448(%rsi), %ecx
	movl	452(%rsi), %edx
	movl	%ebx, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %ebx
	movl	%ebx, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB75_9
# BB#8:
	testl	%ebx, %ebx
	movl	$1, -32(%rbp)
	je	.LBB75_9
# BB#15:
	movl	$1, -28(%rbp)
.LBB75_9:
	leaq	320(%rsi), %rdi
	movl	-28(%rbp), %eax
	notl	%eax
	testl	-32(%rbp), %eax
	je	.LBB75_10
# BB#16:
	movl	$22020148, %ecx         # imm = 0x1500034
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	$131071, %eax           # imm = 0x1FFFF
	movl	ng0(%rip), %ecx
	andl	%eax, %ecx
	movl	%ecx, (%rbx)
	andl	ng0+4(%rip), %eax
	movl	%eax, 4(%rbx)
	leaq	632(%rsi), %rdx
	jmp	.LBB75_14
.LBB75_10:
	movl	$22020150, %ecx         # imm = 0x1500036
	callq	*__imp__iki_stmt_online(%rip)
	movq	8(%rdi), %rbx
	leaq	-32(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, 4(%rbx)
	jne	.LBB75_17
# BB#11:
	cmpl	$0, ng5+4(%rip)
	je	.LBB75_12
.LBB75_17:
	movq	$-1, -32(%rbp)
.LBB75_13:
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	$131071, %eax           # imm = 0x1FFFF
	movl	-32(%rbp), %ecx
	andl	%eax, %ecx
	movl	%ecx, (%rbx)
	andl	-28(%rbp), %eax
	movl	%eax, 4(%rbx)
	leaq	672(%rsi), %rdx
.LBB75_14:
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$16, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %rcx
	movq	%rbx, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
.LBB75_5:
	movl	$22020142, %ecx         # imm = 0x150002E
	callq	*__imp__iki_stmt_online(%rip)
	movb	$1, 584(%rsi)
	leaq	.Ltmp261(%rip), %rax
	movq	%rax, 504(%rsi)
	addq	$72, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%rbp
	ret
.LBB75_12:
	movl	(%rbx), %eax
	addl	ng5(%rip), %eax
	movl	%eax, -32(%rbp)
	movl	$0, -28(%rbp)
	jmp	.LBB75_13

	.def	 _execute_58;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_58
	.align	16, 0x90
_execute_58:                            # @_execute_58
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	pushq	%rdi
	subq	$96, %rsp
	movq	%rdx, %rsi
	.align	16, 0x90
.LBB76_1:                               # =>This Inner Loop Header: Depth=1
	movl	$38, %edx
	movq	%rsi, %rcx
	callq	*__imp__iki_vlog_set_threadId_for_unrandom(%rip)
	movq	752(%rsi), %rax
	testq	%rax, %rax
	je	.LBB76_13
# BB#2:                                 #   in Loop: Header=BB76_1 Depth=1
	jmpq	*%rax
.Ltmp265:                               # Block address taken
.LBB76_3:
	movb	$0, 832(%rsi)
	movl	$22020158, %ecx         # imm = 0x150003E
	callq	*__imp__iki_stmt_online(%rip)
	leaq	96(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movl	4(%rax), %ecx
	notl	%ecx
	testl	(%rax), %ecx
	je	.LBB76_4
# BB#14:
	movl	$22020159, %ecx         # imm = 0x150003F
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	ng0(%rip), %eax
	andl	$1, %eax
	movl	%eax, (%rdi)
	movl	ng0+4(%rip), %eax
	andl	$1, %eax
	movl	%eax, 4(%rdi)
	leaq	376(%rsi), %rcx
	leaq	840(%rsi), %rdx
	jmp	.LBB76_12
.LBB76_4:
	movl	$22020161, %ecx         # imm = 0x1500041
	callq	*__imp__iki_stmt_online(%rip)
	leaq	152(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %rdi
	leaq	-24(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	4(%rdi), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	(%rdi), %ecx
	testb	$1, %cl
	je	.LBB76_5
# BB#15:
	movl	$1, -24(%rbp)
	jmp	.LBB76_6
.LBB76_5:
	testl	%eax, %eax
	je	.LBB76_6
# BB#16:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -24(%rbp)
.LBB76_6:
	cmpl	$0, -24(%rbp)
	movb	$1, %al
	jne	.LBB76_8
# BB#7:
	cmpl	$0, -20(%rbp)
	setne	%al
.LBB76_8:
	testb	%al, %al
	je	.LBB76_9
# BB#17:
	movq	328(%rsi), %rdi
	leaq	-32(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %ecx
	movl	4(%rdi), %edi
	xorl	456(%rsi), %ecx
	movl	460(%rsi), %edx
	movl	%edi, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %edi
	movl	%edi, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB76_19
# BB#18:
	testl	%edi, %edi
	movl	$1, -32(%rbp)
	je	.LBB76_19
# BB#23:
	movl	$1, -28(%rbp)
.LBB76_19:
	leaq	-40(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	-32(%rbp), %ecx
	testb	$1, %cl
	je	.LBB76_20
# BB#24:
	movl	$1, -40(%rbp)
	jmp	.LBB76_21
.LBB76_9:
	leaq	-48(%rbp), %rcx
	leaq	-24(%rbp), %rdx
	movl	$8, %r8d
	callq	*__imp__iki_std_memcpy(%rip)
	andl	$1, -48(%rbp)
	andl	$1, -44(%rbp)
	jmp	.LBB76_10
.LBB76_20:
	testl	%eax, %eax
	je	.LBB76_21
# BB#25:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -40(%rbp)
.LBB76_21:
	movl	-24(%rbp), %eax
	andl	-40(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	-20(%rbp), %eax
	orl	-36(%rbp), %eax
	movl	%eax, -44(%rbp)
	je	.LBB76_10
# BB#22:
	orl	%eax, -48(%rbp)
	movl	-24(%rbp), %eax
	movl	-20(%rbp), %ecx
	notl	%eax
	notl	%ecx
	andl	%eax, %ecx
	notl	%ecx
	andl	-44(%rbp), %ecx
	movl	-40(%rbp), %eax
	movl	-36(%rbp), %edx
	notl	%eax
	notl	%edx
	andl	%eax, %edx
	notl	%edx
	andl	%ecx, %edx
	movl	%edx, -44(%rbp)
	movl	-24(%rbp), %eax
	movl	-20(%rbp), %ecx
	notl	%eax
	notl	%ecx
	andl	%eax, %ecx
	notl	%ecx
	andl	-48(%rbp), %ecx
	movl	-40(%rbp), %eax
	movl	-36(%rbp), %edx
	notl	%eax
	notl	%edx
	andl	%eax, %edx
	notl	%edx
	andl	%ecx, %edx
	movl	%edx, -48(%rbp)
.LBB76_10:
	movl	-44(%rbp), %eax
	notl	%eax
	testl	-48(%rbp), %eax
	je	.LBB76_11
# BB#26:
	movl	$22020162, %ecx         # imm = 0x1500042
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	ng5(%rip), %eax
	andl	$1, %eax
	movl	%eax, (%rdi)
	movl	ng5+4(%rip), %eax
	andl	$1, %eax
	movl	%eax, 4(%rdi)
	leaq	376(%rsi), %rcx
	leaq	880(%rsi), %rdx
	jmp	.LBB76_12
.LBB76_11:
	movl	$22020164, %ecx         # imm = 0x1500044
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	ng0(%rip), %eax
	andl	$1, %eax
	movl	%eax, (%rdi)
	movl	ng0+4(%rip), %eax
	andl	$1, %eax
	movl	%eax, 4(%rdi)
	leaq	376(%rsi), %rcx
	leaq	920(%rsi), %rdx
.LBB76_12:
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$0, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
.LBB76_13:
	movl	$22020157, %ecx         # imm = 0x150003D
	callq	*__imp__iki_stmt_online(%rip)
	movb	$1, 832(%rsi)
	leaq	.Ltmp265(%rip), %rax
	movq	%rax, 752(%rsi)
	addq	$96, %rsp
	popq	%rdi
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_60;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_60
	.align	16, 0x90
_execute_60:                            # @_execute_60
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$72, %rsp
	movq	%rdx, %rsi
	.align	16, 0x90
.LBB77_1:                               # =>This Inner Loop Header: Depth=1
	movl	$39, %edx
	movq	%rsi, %rcx
	callq	*__imp__iki_vlog_set_threadId_for_unrandom(%rip)
	movq	504(%rsi), %rax
	testq	%rax, %rax
	je	.LBB77_5
# BB#2:                                 #   in Loop: Header=BB77_1 Depth=1
	jmpq	*%rax
.Ltmp269:                               # Block address taken
.LBB77_3:
	movb	$0, 584(%rsi)
	movl	$22020143, %ecx         # imm = 0x150002F
	callq	*__imp__iki_stmt_online(%rip)
	leaq	96(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movl	4(%rax), %ecx
	notl	%ecx
	testl	(%rax), %ecx
	je	.LBB77_4
# BB#6:
	movl	$22020144, %ecx         # imm = 0x1500030
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	ng0(%rip), %eax
	andl	$3, %eax
	movl	%eax, (%rdi)
	movl	ng0+4(%rip), %eax
	andl	$3, %eax
	movl	%eax, 4(%rdi)
	leaq	320(%rsi), %rcx
	leaq	592(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$1, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
	jmp	.LBB77_5
.LBB77_4:
	movl	$22020146, %ecx         # imm = 0x1500032
	callq	*__imp__iki_stmt_online(%rip)
	leaq	152(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movl	4(%rax), %ecx
	notl	%ecx
	testl	(%rax), %ecx
	je	.LBB77_5
# BB#7:
	movl	$22020147, %ecx         # imm = 0x1500033
	callq	*__imp__iki_stmt_online(%rip)
	movq	328(%rsi), %rdi
	leaq	-32(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %ecx
	movl	4(%rdi), %ebx
	xorl	448(%rsi), %ecx
	movl	452(%rsi), %edx
	movl	%ebx, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %ebx
	movl	%ebx, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB77_9
# BB#8:
	testl	%ebx, %ebx
	movl	$1, -32(%rbp)
	je	.LBB77_9
# BB#15:
	movl	$1, -28(%rbp)
.LBB77_9:
	leaq	320(%rsi), %rdi
	movl	-28(%rbp), %eax
	notl	%eax
	testl	-32(%rbp), %eax
	je	.LBB77_10
# BB#16:
	movl	$22020148, %ecx         # imm = 0x1500034
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	ng0(%rip), %eax
	andl	$3, %eax
	movl	%eax, (%rbx)
	movl	ng0+4(%rip), %eax
	andl	$3, %eax
	movl	%eax, 4(%rbx)
	leaq	632(%rsi), %rdx
	jmp	.LBB77_14
.LBB77_10:
	movl	$22020150, %ecx         # imm = 0x1500036
	callq	*__imp__iki_stmt_online(%rip)
	movq	8(%rdi), %rbx
	leaq	-32(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, 4(%rbx)
	jne	.LBB77_17
# BB#11:
	cmpl	$0, ng5+4(%rip)
	je	.LBB77_12
.LBB77_17:
	movq	$-1, -32(%rbp)
.LBB77_13:
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	-32(%rbp), %eax
	andl	$3, %eax
	movl	%eax, (%rbx)
	movl	-28(%rbp), %eax
	andl	$3, %eax
	movl	%eax, 4(%rbx)
	leaq	672(%rsi), %rdx
.LBB77_14:
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$1, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %rcx
	movq	%rbx, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
.LBB77_5:
	movl	$22020142, %ecx         # imm = 0x150002E
	callq	*__imp__iki_stmt_online(%rip)
	movb	$1, 584(%rsi)
	leaq	.Ltmp269(%rip), %rax
	movq	%rax, 504(%rsi)
	addq	$72, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%rbp
	ret
.LBB77_12:
	movl	(%rbx), %eax
	addl	ng5(%rip), %eax
	movl	%eax, -32(%rbp)
	movl	$0, -28(%rbp)
	jmp	.LBB77_13

	.def	 _execute_61;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_61
	.align	16, 0x90
_execute_61:                            # @_execute_61
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	pushq	%rdi
	subq	$96, %rsp
	movq	%rdx, %rsi
	.align	16, 0x90
.LBB78_1:                               # =>This Inner Loop Header: Depth=1
	movl	$40, %edx
	movq	%rsi, %rcx
	callq	*__imp__iki_vlog_set_threadId_for_unrandom(%rip)
	movq	752(%rsi), %rax
	testq	%rax, %rax
	je	.LBB78_13
# BB#2:                                 #   in Loop: Header=BB78_1 Depth=1
	jmpq	*%rax
.Ltmp273:                               # Block address taken
.LBB78_3:
	movb	$0, 832(%rsi)
	movl	$22020158, %ecx         # imm = 0x150003E
	callq	*__imp__iki_stmt_online(%rip)
	leaq	96(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movl	4(%rax), %ecx
	notl	%ecx
	testl	(%rax), %ecx
	je	.LBB78_4
# BB#14:
	movl	$22020159, %ecx         # imm = 0x150003F
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	ng0(%rip), %eax
	andl	$1, %eax
	movl	%eax, (%rdi)
	movl	ng0+4(%rip), %eax
	andl	$1, %eax
	movl	%eax, 4(%rdi)
	leaq	376(%rsi), %rcx
	leaq	840(%rsi), %rdx
	jmp	.LBB78_12
.LBB78_4:
	movl	$22020161, %ecx         # imm = 0x1500041
	callq	*__imp__iki_stmt_online(%rip)
	leaq	152(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %rdi
	leaq	-24(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	4(%rdi), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	(%rdi), %ecx
	testb	$1, %cl
	je	.LBB78_5
# BB#15:
	movl	$1, -24(%rbp)
	jmp	.LBB78_6
.LBB78_5:
	testl	%eax, %eax
	je	.LBB78_6
# BB#16:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -24(%rbp)
.LBB78_6:
	cmpl	$0, -24(%rbp)
	movb	$1, %al
	jne	.LBB78_8
# BB#7:
	cmpl	$0, -20(%rbp)
	setne	%al
.LBB78_8:
	testb	%al, %al
	je	.LBB78_9
# BB#17:
	movq	328(%rsi), %rdi
	leaq	-32(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %ecx
	movl	4(%rdi), %edi
	xorl	456(%rsi), %ecx
	movl	460(%rsi), %edx
	movl	%edi, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %edi
	movl	%edi, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB78_19
# BB#18:
	testl	%edi, %edi
	movl	$1, -32(%rbp)
	je	.LBB78_19
# BB#23:
	movl	$1, -28(%rbp)
.LBB78_19:
	leaq	-40(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	-32(%rbp), %ecx
	testb	$1, %cl
	je	.LBB78_20
# BB#24:
	movl	$1, -40(%rbp)
	jmp	.LBB78_21
.LBB78_9:
	leaq	-48(%rbp), %rcx
	leaq	-24(%rbp), %rdx
	movl	$8, %r8d
	callq	*__imp__iki_std_memcpy(%rip)
	andl	$1, -48(%rbp)
	andl	$1, -44(%rbp)
	jmp	.LBB78_10
.LBB78_20:
	testl	%eax, %eax
	je	.LBB78_21
# BB#25:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -40(%rbp)
.LBB78_21:
	movl	-24(%rbp), %eax
	andl	-40(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	-20(%rbp), %eax
	orl	-36(%rbp), %eax
	movl	%eax, -44(%rbp)
	je	.LBB78_10
# BB#22:
	orl	%eax, -48(%rbp)
	movl	-24(%rbp), %eax
	movl	-20(%rbp), %ecx
	notl	%eax
	notl	%ecx
	andl	%eax, %ecx
	notl	%ecx
	andl	-44(%rbp), %ecx
	movl	-40(%rbp), %eax
	movl	-36(%rbp), %edx
	notl	%eax
	notl	%edx
	andl	%eax, %edx
	notl	%edx
	andl	%ecx, %edx
	movl	%edx, -44(%rbp)
	movl	-24(%rbp), %eax
	movl	-20(%rbp), %ecx
	notl	%eax
	notl	%ecx
	andl	%eax, %ecx
	notl	%ecx
	andl	-48(%rbp), %ecx
	movl	-40(%rbp), %eax
	movl	-36(%rbp), %edx
	notl	%eax
	notl	%edx
	andl	%eax, %edx
	notl	%edx
	andl	%ecx, %edx
	movl	%edx, -48(%rbp)
.LBB78_10:
	movl	-44(%rbp), %eax
	notl	%eax
	testl	-48(%rbp), %eax
	je	.LBB78_11
# BB#26:
	movl	$22020162, %ecx         # imm = 0x1500042
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	ng5(%rip), %eax
	andl	$1, %eax
	movl	%eax, (%rdi)
	movl	ng5+4(%rip), %eax
	andl	$1, %eax
	movl	%eax, 4(%rdi)
	leaq	376(%rsi), %rcx
	leaq	880(%rsi), %rdx
	jmp	.LBB78_12
.LBB78_11:
	movl	$22020164, %ecx         # imm = 0x1500044
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	ng0(%rip), %eax
	andl	$1, %eax
	movl	%eax, (%rdi)
	movl	ng0+4(%rip), %eax
	andl	$1, %eax
	movl	%eax, 4(%rdi)
	leaq	376(%rsi), %rcx
	leaq	920(%rsi), %rdx
.LBB78_12:
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$0, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
.LBB78_13:
	movl	$22020157, %ecx         # imm = 0x150003D
	callq	*__imp__iki_stmt_online(%rip)
	movb	$1, 832(%rsi)
	leaq	.Ltmp273(%rip), %rax
	movq	%rax, 752(%rsi)
	addq	$96, %rsp
	popq	%rdi
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_63;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_63
	.align	16, 0x90
_execute_63:                            # @_execute_63
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$72, %rsp
	movq	%rdx, %rsi
	.align	16, 0x90
.LBB79_1:                               # =>This Inner Loop Header: Depth=1
	movl	$41, %edx
	movq	%rsi, %rcx
	callq	*__imp__iki_vlog_set_threadId_for_unrandom(%rip)
	movq	416(%rsi), %rax
	testq	%rax, %rax
	je	.LBB79_9
# BB#2:                                 #   in Loop: Header=BB79_1 Depth=1
	jmpq	*%rax
.Ltmp277:                               # Block address taken
.LBB79_3:
	movb	$0, 496(%rsi)
	movl	$23068711, %ecx         # imm = 0x1600027
	callq	*__imp__iki_stmt_online(%rip)
	leaq	40(%rsi), %rcx
	movl	$2, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	leaq	-32(%rbp), %rdi
	movl	$8, %r8d
	movq	%rdi, %rcx
	movq	%rax, %rdx
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	ng1(%rip), %r8
	movl	$2, %edx
	movl	$2, %r9d
	movq	%rdi, %rcx
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB79_4
# BB#10:
	movl	$23068712, %ecx         # imm = 0x1600028
	callq	*__imp__iki_stmt_online(%rip)
	leaq	96(%rsi), %rcx
	movl	$5, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %rdi
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %eax
	andl	$31, %eax
	movl	%eax, (%rbx)
	movl	4(%rdi), %eax
	andl	$31, %eax
	movl	%eax, 4(%rbx)
	leaq	320(%rsi), %rcx
	leaq	504(%rsi), %rdx
	jmp	.LBB79_11
.LBB79_4:
	leaq	ng2(%rip), %r8
	leaq	-32(%rbp), %rcx
	movl	$2, %edx
	movl	$2, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB79_5
# BB#12:
	movl	$23068713, %ecx         # imm = 0x1600029
	callq	*__imp__iki_stmt_online(%rip)
	leaq	152(%rsi), %rcx
	movl	$5, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %rdi
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %eax
	andl	$31, %eax
	movl	%eax, (%rbx)
	movl	4(%rdi), %eax
	andl	$31, %eax
	movl	%eax, 4(%rbx)
	leaq	320(%rsi), %rcx
	leaq	544(%rsi), %rdx
	jmp	.LBB79_11
.LBB79_5:
	leaq	ng3(%rip), %r8
	leaq	-32(%rbp), %rcx
	movl	$2, %edx
	movl	$2, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB79_6
# BB#13:
	movl	$23068714, %ecx         # imm = 0x160002A
	callq	*__imp__iki_stmt_online(%rip)
	leaq	208(%rsi), %rcx
	movl	$5, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %rdi
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %eax
	andl	$31, %eax
	movl	%eax, (%rbx)
	movl	4(%rdi), %eax
	andl	$31, %eax
	movl	%eax, 4(%rbx)
	leaq	320(%rsi), %rcx
	leaq	584(%rsi), %rdx
	jmp	.LBB79_11
.LBB79_6:
	leaq	ng4(%rip), %r8
	leaq	-32(%rbp), %rcx
	movl	$2, %edx
	movl	$2, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB79_7
# BB#14:
	movl	$23068715, %ecx         # imm = 0x160002B
	callq	*__imp__iki_stmt_online(%rip)
	leaq	264(%rsi), %rcx
	movl	$5, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %rdi
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %eax
	andl	$31, %eax
	movl	%eax, (%rbx)
	movl	4(%rdi), %eax
	andl	$31, %eax
	movl	%eax, 4(%rbx)
	leaq	320(%rsi), %rcx
	leaq	624(%rsi), %rdx
.LBB79_11:
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$4, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rbx, %r8
.LBB79_8:
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
.LBB79_9:
	movl	$23068704, %ecx         # imm = 0x1600020
	callq	*__imp__iki_stmt_online(%rip)
	movb	$1, 496(%rsi)
	leaq	.Ltmp277(%rip), %rax
	movq	%rax, 416(%rsi)
	addq	$72, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%rbp
	ret
.LBB79_7:
	movl	$23068716, %ecx         # imm = 0x160002C
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	ng1(%rip), %eax
	andl	$31, %eax
	movl	%eax, (%rdi)
	movl	ng1+4(%rip), %eax
	andl	$31, %eax
	movl	%eax, 4(%rdi)
	leaq	320(%rsi), %rcx
	leaq	664(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$4, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	jmp	.LBB79_8

	.def	 _execute_65;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_65
	.align	16, 0x90
_execute_65:                            # @_execute_65
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	pushq	%rdi
	subq	$64, %rsp
	movq	%rdx, %rsi
	.align	16, 0x90
.LBB80_1:                               # =>This Inner Loop Header: Depth=1
	movl	$42, %edx
	movq	%rsi, %rcx
	callq	*__imp__iki_vlog_set_threadId_for_unrandom(%rip)
	movq	360(%rsi), %rax
	testq	%rax, %rax
	je	.LBB80_9
# BB#2:                                 #   in Loop: Header=BB80_1 Depth=1
	jmpq	*%rax
.Ltmp281:                               # Block address taken
.LBB80_3:
	movb	$0, 440(%rsi)
	movl	$24117281, %ecx         # imm = 0x1700021
	callq	*__imp__iki_stmt_online(%rip)
	leaq	40(%rsi), %rcx
	movl	$2, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	leaq	-24(%rbp), %rdi
	movl	$8, %r8d
	movq	%rdi, %rcx
	movq	%rax, %rdx
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	ng1(%rip), %r8
	movl	$2, %edx
	movl	$2, %r9d
	movq	%rdi, %rcx
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB80_4
# BB#10:
	movl	$24117282, %ecx         # imm = 0x1700022
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	ng80(%rip), %eax
	andl	$15, %eax
	movl	%eax, (%rdi)
	movl	ng80+4(%rip), %eax
	andl	$15, %eax
	movl	%eax, 4(%rdi)
	leaq	208(%rsi), %rcx
	leaq	448(%rsi), %rdx
	jmp	.LBB80_8
.LBB80_4:
	leaq	ng2(%rip), %r8
	leaq	-24(%rbp), %rcx
	movl	$2, %edx
	movl	$2, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB80_5
# BB#11:
	movl	$24117283, %ecx         # imm = 0x1700023
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	ng78(%rip), %eax
	andl	$15, %eax
	movl	%eax, (%rdi)
	movl	ng78+4(%rip), %eax
	andl	$15, %eax
	movl	%eax, 4(%rdi)
	leaq	208(%rsi), %rcx
	leaq	488(%rsi), %rdx
	jmp	.LBB80_8
.LBB80_5:
	leaq	ng3(%rip), %r8
	leaq	-24(%rbp), %rcx
	movl	$2, %edx
	movl	$2, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB80_6
# BB#12:
	movl	$24117284, %ecx         # imm = 0x1700024
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	ng13(%rip), %eax
	andl	$15, %eax
	movl	%eax, (%rdi)
	movl	ng13+4(%rip), %eax
	andl	$15, %eax
	movl	%eax, 4(%rdi)
	leaq	208(%rsi), %rcx
	leaq	528(%rsi), %rdx
	jmp	.LBB80_8
.LBB80_6:
	leaq	ng4(%rip), %r8
	leaq	-24(%rbp), %rcx
	movl	$2, %edx
	movl	$2, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB80_7
# BB#13:
	movl	$24117285, %ecx         # imm = 0x1700025
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	ng9(%rip), %eax
	andl	$15, %eax
	movl	%eax, (%rdi)
	movl	ng9+4(%rip), %eax
	andl	$15, %eax
	movl	%eax, 4(%rdi)
	leaq	208(%rsi), %rcx
	leaq	568(%rsi), %rdx
	jmp	.LBB80_8
.LBB80_7:
	movl	$24117286, %ecx         # imm = 0x1700026
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	ng81(%rip), %eax
	andl	$15, %eax
	movl	%eax, (%rdi)
	movl	ng81+4(%rip), %eax
	andl	$15, %eax
	movl	%eax, 4(%rdi)
	leaq	208(%rsi), %rcx
	leaq	608(%rsi), %rdx
.LBB80_8:
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$3, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
.LBB80_9:
	movl	$24117280, %ecx         # imm = 0x1700020
	callq	*__imp__iki_stmt_online(%rip)
	movb	$1, 440(%rsi)
	leaq	.Ltmp281(%rip), %rax
	movq	%rax, 360(%rsi)
	addq	$64, %rsp
	popq	%rdi
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_66;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_66
	.align	16, 0x90
_execute_66:                            # @_execute_66
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$184, %rsp
	movq	%rdx, %rsi
	.align	16, 0x90
.LBB81_1:                               # =>This Inner Loop Header: Depth=1
	movl	$43, %edx
	movq	%rsi, %rcx
	callq	*__imp__iki_vlog_set_threadId_for_unrandom(%rip)
	movq	688(%rsi), %rax
	testq	%rax, %rax
	je	.LBB81_26
# BB#2:                                 #   in Loop: Header=BB81_1 Depth=1
	jmpq	*%rax
.Ltmp285:                               # Block address taken
.LBB81_3:
	movb	$0, 768(%rsi)
	movl	$24117291, %ecx         # imm = 0x170002B
	callq	*__imp__iki_stmt_online(%rip)
	leaq	96(%rsi), %rcx
	movl	$4, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	leaq	-32(%rbp), %rbx
	movl	$8, %r8d
	movq	%rbx, %rcx
	movq	%rax, %rdx
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	ng0(%rip), %rdi
	movl	$4, %edx
	movl	$32, %r9d
	movq	%rbx, %rcx
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB81_4
# BB#27:
	movl	$24117292, %ecx         # imm = 0x170002C
	callq	*__imp__iki_stmt_online(%rip)
	movl	$1, -80(%rbp)
	movl	$7, -76(%rbp)
	movl	$0, -72(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, 72(%rsp)
	movq	%rdi, 48(%rsp)
	movl	$1, 104(%rsp)
	movl	$2, 96(%rsp)
	movl	$1, 88(%rsp)
	movq	$0, 80(%rsp)
	movl	$1, 64(%rsp)
	movl	$32, 56(%rsp)
	movl	$1, 40(%rsp)
	movl	$32, 32(%rsp)
	leaq	ng52(%rip), %r9
	leaq	-40(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	leaq	-56(%rbp), %r8
	callq	*__imp__iki_vlog_convert_part_select(%rip)
	cmpl	$0, -36(%rbp)
	je	.LBB81_29
# BB#28:
	xorl	%eax, %eax
	jmp	.LBB81_32
.LBB81_4:
	leaq	ng5(%rip), %r8
	leaq	-32(%rbp), %rcx
	movl	$4, %edx
	movl	$32, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB81_5
# BB#35:
	movl	$24117293, %ecx         # imm = 0x170002D
	callq	*__imp__iki_stmt_online(%rip)
	movl	$1, -80(%rbp)
	movl	$7, -76(%rbp)
	movl	$0, -72(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, 72(%rsp)
	movq	%rdi, 48(%rsp)
	movl	$1, 104(%rsp)
	movl	$2, 96(%rsp)
	movl	$1, 88(%rsp)
	movq	$0, 80(%rsp)
	movl	$1, 64(%rsp)
	movl	$32, 56(%rsp)
	movl	$1, 40(%rsp)
	movl	$32, 32(%rsp)
	leaq	ng52(%rip), %r9
	leaq	-40(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	leaq	-56(%rbp), %r8
	callq	*__imp__iki_vlog_convert_part_select(%rip)
	cmpl	$0, -36(%rbp)
	je	.LBB81_37
# BB#36:
	xorl	%eax, %eax
	jmp	.LBB81_40
.LBB81_5:
	leaq	ng38(%rip), %r8
	leaq	-32(%rbp), %rcx
	movl	$4, %edx
	movl	$32, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB81_6
# BB#42:
	movl	$24117294, %ecx         # imm = 0x170002E
	callq	*__imp__iki_stmt_online(%rip)
	movl	$1, -80(%rbp)
	movl	$7, -76(%rbp)
	movl	$0, -72(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, 72(%rsp)
	movq	%rdi, 48(%rsp)
	movl	$1, 104(%rsp)
	movl	$2, 96(%rsp)
	movl	$1, 88(%rsp)
	movq	$0, 80(%rsp)
	movl	$1, 64(%rsp)
	movl	$32, 56(%rsp)
	movl	$1, 40(%rsp)
	movl	$32, 32(%rsp)
	leaq	ng52(%rip), %r9
	leaq	-40(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	leaq	-56(%rbp), %r8
	callq	*__imp__iki_vlog_convert_part_select(%rip)
	cmpl	$0, -36(%rbp)
	je	.LBB81_44
# BB#43:
	xorl	%eax, %eax
	jmp	.LBB81_47
.LBB81_29:
	cmpl	$0, -44(%rbp)
	je	.LBB81_31
# BB#30:
	xorl	%eax, %eax
	jmp	.LBB81_32
.LBB81_6:
	leaq	ng21(%rip), %r8
	leaq	-32(%rbp), %rcx
	movl	$4, %edx
	movl	$32, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB81_7
# BB#49:
	movl	$24117295, %ecx         # imm = 0x170002F
	callq	*__imp__iki_stmt_online(%rip)
	movl	$1, -80(%rbp)
	movl	$7, -76(%rbp)
	movl	$0, -72(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, 72(%rsp)
	movq	%rdi, 48(%rsp)
	movl	$1, 104(%rsp)
	movl	$2, 96(%rsp)
	movl	$1, 88(%rsp)
	movq	$0, 80(%rsp)
	movl	$1, 64(%rsp)
	movl	$32, 56(%rsp)
	movl	$1, 40(%rsp)
	movl	$32, 32(%rsp)
	leaq	ng52(%rip), %r9
	leaq	-40(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	leaq	-56(%rbp), %r8
	callq	*__imp__iki_vlog_convert_part_select(%rip)
	cmpl	$0, -36(%rbp)
	je	.LBB81_51
# BB#50:
	xorl	%eax, %eax
	jmp	.LBB81_54
.LBB81_37:
	cmpl	$0, -44(%rbp)
	je	.LBB81_39
# BB#38:
	xorl	%eax, %eax
	jmp	.LBB81_40
.LBB81_31:
	cmpl	$0, -52(%rbp)
	sete	%al
.LBB81_32:
	testb	%al, %al
	je	.LBB81_25
# BB#33:
	movl	-56(%rbp), %r9d
	movl	-40(%rbp), %eax
	subl	-48(%rbp), %eax
	incl	%eax
	movl	%eax, 32(%rsp)
	leaq	ng28(%rip), %r8
	leaq	-88(%rbp), %rcx
	xorl	%edx, %edx
	callq	*__imp__iki_vlog_bit_copy(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	-88(%rbp), %eax
	andl	$127, %eax
	movl	%eax, (%rdi)
	movl	-84(%rbp), %eax
	andl	$127, %eax
	movl	%eax, 4(%rdi)
	leaq	264(%rsi), %rcx
	leaq	776(%rsi), %rdx
	jmp	.LBB81_34
.LBB81_7:
	leaq	ng64(%rip), %r8
	leaq	-32(%rbp), %rcx
	movl	$4, %edx
	movl	$32, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB81_8
# BB#56:
	movl	$24117297, %ecx         # imm = 0x1700031
	callq	*__imp__iki_stmt_online(%rip)
	movl	$1, -80(%rbp)
	movl	$7, -76(%rbp)
	movl	$0, -72(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, 72(%rsp)
	movq	%rdi, 48(%rsp)
	movl	$1, 104(%rsp)
	movl	$2, 96(%rsp)
	movl	$1, 88(%rsp)
	movq	$0, 80(%rsp)
	movl	$1, 64(%rsp)
	movl	$32, 56(%rsp)
	movl	$1, 40(%rsp)
	movl	$32, 32(%rsp)
	leaq	ng52(%rip), %r9
	leaq	-40(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	leaq	-56(%rbp), %r8
	callq	*__imp__iki_vlog_convert_part_select(%rip)
	cmpl	$0, -36(%rbp)
	je	.LBB81_58
# BB#57:
	xorl	%eax, %eax
	jmp	.LBB81_61
.LBB81_44:
	cmpl	$0, -44(%rbp)
	je	.LBB81_46
# BB#45:
	xorl	%eax, %eax
	jmp	.LBB81_47
.LBB81_39:
	cmpl	$0, -52(%rbp)
	sete	%al
.LBB81_40:
	testb	%al, %al
	je	.LBB81_25
# BB#41:
	movl	-56(%rbp), %r9d
	movl	-40(%rbp), %eax
	subl	-48(%rbp), %eax
	incl	%eax
	movl	%eax, 32(%rsp)
	leaq	ng60(%rip), %r8
	leaq	-88(%rbp), %rcx
	xorl	%edx, %edx
	callq	*__imp__iki_vlog_bit_copy(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	-88(%rbp), %eax
	andl	$127, %eax
	movl	%eax, (%rdi)
	movl	-84(%rbp), %eax
	andl	$127, %eax
	movl	%eax, 4(%rdi)
	leaq	264(%rsi), %rcx
	leaq	816(%rsi), %rdx
	jmp	.LBB81_34
.LBB81_8:
	leaq	ng84(%rip), %r8
	leaq	-32(%rbp), %rcx
	movl	$4, %edx
	movl	$32, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB81_9
# BB#63:
	movl	$24117298, %ecx         # imm = 0x1700032
	callq	*__imp__iki_stmt_online(%rip)
	movl	$1, -80(%rbp)
	movl	$7, -76(%rbp)
	movl	$0, -72(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, 72(%rsp)
	movq	%rdi, 48(%rsp)
	movl	$1, 104(%rsp)
	movl	$2, 96(%rsp)
	movl	$1, 88(%rsp)
	movq	$0, 80(%rsp)
	movl	$1, 64(%rsp)
	movl	$32, 56(%rsp)
	movl	$1, 40(%rsp)
	movl	$32, 32(%rsp)
	leaq	ng52(%rip), %r9
	leaq	-40(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	leaq	-56(%rbp), %r8
	callq	*__imp__iki_vlog_convert_part_select(%rip)
	cmpl	$0, -36(%rbp)
	je	.LBB81_65
# BB#64:
	xorl	%eax, %eax
	jmp	.LBB81_68
.LBB81_51:
	cmpl	$0, -44(%rbp)
	je	.LBB81_53
# BB#52:
	xorl	%eax, %eax
	jmp	.LBB81_54
.LBB81_46:
	cmpl	$0, -52(%rbp)
	sete	%al
.LBB81_47:
	testb	%al, %al
	je	.LBB81_25
# BB#48:
	movl	-56(%rbp), %r9d
	movl	-40(%rbp), %eax
	subl	-48(%rbp), %eax
	incl	%eax
	movl	%eax, 32(%rsp)
	leaq	ng82(%rip), %r8
	leaq	-88(%rbp), %rcx
	xorl	%edx, %edx
	callq	*__imp__iki_vlog_bit_copy(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	-88(%rbp), %eax
	andl	$127, %eax
	movl	%eax, (%rdi)
	movl	-84(%rbp), %eax
	andl	$127, %eax
	movl	%eax, 4(%rdi)
	leaq	264(%rsi), %rcx
	leaq	856(%rsi), %rdx
	jmp	.LBB81_34
.LBB81_9:
	leaq	ng52(%rip), %r8
	leaq	-32(%rbp), %rcx
	movl	$4, %edx
	movl	$32, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB81_10
# BB#70:
	movl	$24117299, %ecx         # imm = 0x1700033
	callq	*__imp__iki_stmt_online(%rip)
	movl	$1, -80(%rbp)
	movl	$7, -76(%rbp)
	movl	$0, -72(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, 72(%rsp)
	movq	%rdi, 48(%rsp)
	movl	$1, 104(%rsp)
	movl	$2, 96(%rsp)
	movl	$1, 88(%rsp)
	movq	$0, 80(%rsp)
	movl	$1, 64(%rsp)
	movl	$32, 56(%rsp)
	movl	$1, 40(%rsp)
	movl	$32, 32(%rsp)
	leaq	ng52(%rip), %r9
	leaq	-40(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	leaq	-56(%rbp), %r8
	callq	*__imp__iki_vlog_convert_part_select(%rip)
	cmpl	$0, -36(%rbp)
	je	.LBB81_72
# BB#71:
	xorl	%eax, %eax
	jmp	.LBB81_75
.LBB81_58:
	cmpl	$0, -44(%rbp)
	je	.LBB81_60
# BB#59:
	xorl	%eax, %eax
	jmp	.LBB81_61
.LBB81_53:
	cmpl	$0, -52(%rbp)
	sete	%al
.LBB81_54:
	testb	%al, %al
	je	.LBB81_25
# BB#55:
	movl	-56(%rbp), %r9d
	movl	-40(%rbp), %eax
	subl	-48(%rbp), %eax
	incl	%eax
	movl	%eax, 32(%rsp)
	leaq	ng26(%rip), %r8
	leaq	-88(%rbp), %rcx
	xorl	%edx, %edx
	callq	*__imp__iki_vlog_bit_copy(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	-88(%rbp), %eax
	andl	$127, %eax
	movl	%eax, (%rdi)
	movl	-84(%rbp), %eax
	andl	$127, %eax
	movl	%eax, 4(%rdi)
	leaq	264(%rsi), %rcx
	leaq	896(%rsi), %rdx
	jmp	.LBB81_34
.LBB81_10:
	leaq	ng54(%rip), %r8
	leaq	-32(%rbp), %rcx
	movl	$4, %edx
	movl	$32, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB81_11
# BB#77:
	movl	$24117300, %ecx         # imm = 0x1700034
	callq	*__imp__iki_stmt_online(%rip)
	movl	$1, -80(%rbp)
	movl	$7, -76(%rbp)
	movl	$0, -72(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, 72(%rsp)
	movq	%rdi, 48(%rsp)
	movl	$1, 104(%rsp)
	movl	$2, 96(%rsp)
	movl	$1, 88(%rsp)
	movq	$0, 80(%rsp)
	movl	$1, 64(%rsp)
	movl	$32, 56(%rsp)
	movl	$1, 40(%rsp)
	movl	$32, 32(%rsp)
	leaq	ng52(%rip), %r9
	leaq	-40(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	leaq	-56(%rbp), %r8
	callq	*__imp__iki_vlog_convert_part_select(%rip)
	cmpl	$0, -36(%rbp)
	je	.LBB81_79
# BB#78:
	xorl	%eax, %eax
	jmp	.LBB81_82
.LBB81_65:
	cmpl	$0, -44(%rbp)
	je	.LBB81_67
# BB#66:
	xorl	%eax, %eax
	jmp	.LBB81_68
.LBB81_60:
	cmpl	$0, -52(%rbp)
	sete	%al
.LBB81_61:
	testb	%al, %al
	je	.LBB81_25
# BB#62:
	movl	-56(%rbp), %r9d
	movl	-40(%rbp), %eax
	subl	-48(%rbp), %eax
	incl	%eax
	movl	%eax, 32(%rsp)
	leaq	ng83(%rip), %r8
	leaq	-88(%rbp), %rcx
	xorl	%edx, %edx
	callq	*__imp__iki_vlog_bit_copy(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	-88(%rbp), %eax
	andl	$127, %eax
	movl	%eax, (%rdi)
	movl	-84(%rbp), %eax
	andl	$127, %eax
	movl	%eax, 4(%rdi)
	leaq	264(%rsi), %rcx
	leaq	936(%rsi), %rdx
	jmp	.LBB81_34
.LBB81_11:
	leaq	ng66(%rip), %r8
	leaq	-32(%rbp), %rcx
	movl	$4, %edx
	movl	$32, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB81_12
# BB#84:
	movl	$24117302, %ecx         # imm = 0x1700036
	callq	*__imp__iki_stmt_online(%rip)
	movl	$1, -80(%rbp)
	movl	$7, -76(%rbp)
	movl	$0, -72(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, 72(%rsp)
	movq	%rdi, 48(%rsp)
	movl	$1, 104(%rsp)
	movl	$2, 96(%rsp)
	movl	$1, 88(%rsp)
	movq	$0, 80(%rsp)
	movl	$1, 64(%rsp)
	movl	$32, 56(%rsp)
	movl	$1, 40(%rsp)
	movl	$32, 32(%rsp)
	leaq	ng52(%rip), %r9
	leaq	-40(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	leaq	-56(%rbp), %r8
	callq	*__imp__iki_vlog_convert_part_select(%rip)
	cmpl	$0, -36(%rbp)
	je	.LBB81_86
# BB#85:
	xorl	%eax, %eax
	jmp	.LBB81_89
.LBB81_72:
	cmpl	$0, -44(%rbp)
	je	.LBB81_74
# BB#73:
	xorl	%eax, %eax
	jmp	.LBB81_75
.LBB81_67:
	cmpl	$0, -52(%rbp)
	sete	%al
.LBB81_68:
	testb	%al, %al
	je	.LBB81_25
# BB#69:
	movl	-56(%rbp), %r9d
	movl	-40(%rbp), %eax
	subl	-48(%rbp), %eax
	incl	%eax
	movl	%eax, 32(%rsp)
	leaq	ng35(%rip), %r8
	leaq	-88(%rbp), %rcx
	xorl	%edx, %edx
	callq	*__imp__iki_vlog_bit_copy(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	-88(%rbp), %eax
	andl	$127, %eax
	movl	%eax, (%rdi)
	movl	-84(%rbp), %eax
	andl	$127, %eax
	movl	%eax, 4(%rdi)
	leaq	264(%rsi), %rcx
	leaq	976(%rsi), %rdx
	jmp	.LBB81_34
.LBB81_12:
	leaq	ng69(%rip), %r8
	leaq	-32(%rbp), %rcx
	movl	$4, %edx
	movl	$32, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB81_13
# BB#91:
	movl	$24117303, %ecx         # imm = 0x1700037
	callq	*__imp__iki_stmt_online(%rip)
	movl	$1, -80(%rbp)
	movl	$7, -76(%rbp)
	movl	$0, -72(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, 72(%rsp)
	movq	%rdi, 48(%rsp)
	movl	$1, 104(%rsp)
	movl	$2, 96(%rsp)
	movl	$1, 88(%rsp)
	movq	$0, 80(%rsp)
	movl	$1, 64(%rsp)
	movl	$32, 56(%rsp)
	movl	$1, 40(%rsp)
	movl	$32, 32(%rsp)
	leaq	ng52(%rip), %r9
	leaq	-40(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	leaq	-56(%rbp), %r8
	callq	*__imp__iki_vlog_convert_part_select(%rip)
	cmpl	$0, -36(%rbp)
	je	.LBB81_93
# BB#92:
	xorl	%eax, %eax
	jmp	.LBB81_96
.LBB81_79:
	cmpl	$0, -44(%rbp)
	je	.LBB81_81
# BB#80:
	xorl	%eax, %eax
	jmp	.LBB81_82
.LBB81_74:
	cmpl	$0, -52(%rbp)
	sete	%al
.LBB81_75:
	testb	%al, %al
	je	.LBB81_25
# BB#76:
	movl	-56(%rbp), %r9d
	movl	-40(%rbp), %eax
	subl	-48(%rbp), %eax
	incl	%eax
	movl	%eax, 32(%rsp)
	leaq	ng4(%rip), %r8
	leaq	-88(%rbp), %rcx
	xorl	%edx, %edx
	callq	*__imp__iki_vlog_bit_copy(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	-88(%rbp), %eax
	andl	$127, %eax
	movl	%eax, (%rdi)
	movl	-84(%rbp), %eax
	andl	$127, %eax
	movl	%eax, 4(%rdi)
	leaq	264(%rsi), %rcx
	leaq	1016(%rsi), %rdx
	jmp	.LBB81_34
.LBB81_13:
	leaq	ng87(%rip), %r8
	leaq	-32(%rbp), %rcx
	movl	$4, %edx
	movl	$32, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB81_14
# BB#98:
	movl	$24117304, %ecx         # imm = 0x1700038
	callq	*__imp__iki_stmt_online(%rip)
	movl	$1, -80(%rbp)
	movl	$7, -76(%rbp)
	movl	$0, -72(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, 72(%rsp)
	movq	%rdi, 48(%rsp)
	movl	$1, 104(%rsp)
	movl	$2, 96(%rsp)
	movl	$1, 88(%rsp)
	movq	$0, 80(%rsp)
	movl	$1, 64(%rsp)
	movl	$32, 56(%rsp)
	movl	$1, 40(%rsp)
	movl	$32, 32(%rsp)
	leaq	ng52(%rip), %r9
	leaq	-40(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	leaq	-56(%rbp), %r8
	callq	*__imp__iki_vlog_convert_part_select(%rip)
	cmpl	$0, -36(%rbp)
	je	.LBB81_100
# BB#99:
	xorl	%eax, %eax
	jmp	.LBB81_103
.LBB81_86:
	cmpl	$0, -44(%rbp)
	je	.LBB81_88
# BB#87:
	xorl	%eax, %eax
	jmp	.LBB81_89
.LBB81_81:
	cmpl	$0, -52(%rbp)
	sete	%al
.LBB81_82:
	testb	%al, %al
	je	.LBB81_25
# BB#83:
	movl	-56(%rbp), %r9d
	movl	-40(%rbp), %eax
	subl	-48(%rbp), %eax
	incl	%eax
	movl	%eax, 32(%rsp)
	leaq	ng85(%rip), %r8
	leaq	-88(%rbp), %rcx
	xorl	%edx, %edx
	callq	*__imp__iki_vlog_bit_copy(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	-88(%rbp), %eax
	andl	$127, %eax
	movl	%eax, (%rdi)
	movl	-84(%rbp), %eax
	andl	$127, %eax
	movl	%eax, 4(%rdi)
	leaq	264(%rsi), %rcx
	leaq	1056(%rsi), %rdx
	jmp	.LBB81_34
.LBB81_14:
	leaq	ng79(%rip), %r8
	leaq	-32(%rbp), %rcx
	movl	$4, %edx
	movl	$32, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB81_15
# BB#106:
	movl	$24117305, %ecx         # imm = 0x1700039
	callq	*__imp__iki_stmt_online(%rip)
	movl	$1, -80(%rbp)
	movl	$7, -76(%rbp)
	movl	$0, -72(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, 72(%rsp)
	movq	%rdi, 48(%rsp)
	movl	$1, 104(%rsp)
	movl	$2, 96(%rsp)
	movl	$1, 88(%rsp)
	movq	$0, 80(%rsp)
	movl	$1, 64(%rsp)
	movl	$32, 56(%rsp)
	movl	$1, 40(%rsp)
	movl	$32, 32(%rsp)
	leaq	ng52(%rip), %r9
	leaq	-40(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	leaq	-56(%rbp), %r8
	callq	*__imp__iki_vlog_convert_part_select(%rip)
	cmpl	$0, -36(%rbp)
	je	.LBB81_108
# BB#107:
	xorl	%eax, %eax
	jmp	.LBB81_111
.LBB81_93:
	cmpl	$0, -44(%rbp)
	je	.LBB81_95
# BB#94:
	xorl	%eax, %eax
	jmp	.LBB81_96
.LBB81_100:
	cmpl	$0, -44(%rbp)
	je	.LBB81_102
# BB#101:
	xorl	%eax, %eax
	jmp	.LBB81_103
.LBB81_88:
	cmpl	$0, -52(%rbp)
	sete	%al
.LBB81_89:
	testb	%al, %al
	je	.LBB81_25
# BB#90:
	movl	-56(%rbp), %r9d
	movl	-40(%rbp), %eax
	subl	-48(%rbp), %eax
	incl	%eax
	movl	%eax, 32(%rsp)
	leaq	ng86(%rip), %r8
	leaq	-88(%rbp), %rcx
	xorl	%edx, %edx
	callq	*__imp__iki_vlog_bit_copy(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	-88(%rbp), %eax
	andl	$127, %eax
	movl	%eax, (%rdi)
	movl	-84(%rbp), %eax
	andl	$127, %eax
	movl	%eax, 4(%rdi)
	leaq	264(%rsi), %rcx
	leaq	1096(%rsi), %rdx
	jmp	.LBB81_34
.LBB81_15:
	leaq	ng76(%rip), %r8
	leaq	-32(%rbp), %rcx
	movl	$4, %edx
	movl	$32, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB81_16
# BB#113:
	movl	$24117307, %ecx         # imm = 0x170003B
	callq	*__imp__iki_stmt_online(%rip)
	movl	$1, -80(%rbp)
	movl	$7, -76(%rbp)
	movl	$0, -72(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, 72(%rsp)
	movq	%rdi, 48(%rsp)
	movl	$1, 104(%rsp)
	movl	$2, 96(%rsp)
	movl	$1, 88(%rsp)
	movq	$0, 80(%rsp)
	movl	$1, 64(%rsp)
	movl	$32, 56(%rsp)
	movl	$1, 40(%rsp)
	movl	$32, 32(%rsp)
	leaq	ng52(%rip), %rax
	leaq	-40(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	leaq	-56(%rbp), %rbx
	movq	%rbx, %r8
	movq	%rax, %r9
	callq	*__imp__iki_vlog_convert_part_select(%rip)
	cmpl	$0, -36(%rbp)
	je	.LBB81_115
# BB#114:
	xorl	%eax, %eax
	jmp	.LBB81_118
.LBB81_108:
	cmpl	$0, -44(%rbp)
	je	.LBB81_110
# BB#109:
	xorl	%eax, %eax
	jmp	.LBB81_111
.LBB81_95:
	cmpl	$0, -52(%rbp)
	sete	%al
.LBB81_96:
	testb	%al, %al
	je	.LBB81_25
# BB#97:
	movl	-56(%rbp), %r9d
	movl	-40(%rbp), %eax
	subl	-48(%rbp), %eax
	incl	%eax
	movl	%eax, 32(%rsp)
	leaq	ng80(%rip), %r8
	leaq	-88(%rbp), %rcx
	xorl	%edx, %edx
	callq	*__imp__iki_vlog_bit_copy(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	-88(%rbp), %eax
	andl	$127, %eax
	movl	%eax, (%rdi)
	movl	-84(%rbp), %eax
	andl	$127, %eax
	movl	%eax, 4(%rdi)
	leaq	264(%rsi), %rcx
	leaq	1136(%rsi), %rdx
.LBB81_34:
	movl	-48(%rbp), %r9d
	movl	-40(%rbp), %eax
	subl	%r9d, %eax
	movl	%eax, 32(%rsp)
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
.LBB81_25:
	movl	$24117314, %ecx         # imm = 0x1700042
	callq	*__imp__iki_stmt_online(%rip)
	leaq	152(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %rdi
	movq	__imp__iki_std_memset(%rip), %rbx
	leaq	-40(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*%rbx
	movl	4(%rdi), %eax
	movl	%eax, %ecx
	andl	$1, %ecx
	movl	%ecx, -36(%rbp)
	movl	(%rdi), %ecx
	notl	%ecx
	orl	%eax, %ecx
	andl	$1, %ecx
	movl	%ecx, -40(%rbp)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%rbx
	movl	-40(%rbp), %eax
	andl	$1, %eax
	movl	%eax, (%rdi)
	movl	-36(%rbp), %eax
	andl	$1, %eax
	movl	%eax, 4(%rdi)
	leaq	264(%rsi), %rcx
	leaq	1456(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$7, %r9d
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
.LBB81_26:
	movl	$24117290, %ecx         # imm = 0x170002A
	callq	*__imp__iki_stmt_online(%rip)
	movb	$1, 768(%rsi)
	leaq	.Ltmp285(%rip), %rax
	movq	%rax, 688(%rsi)
	addq	$184, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%rbp
	ret
.LBB81_102:
	cmpl	$0, -52(%rbp)
	sete	%al
.LBB81_103:
	testb	%al, %al
	je	.LBB81_25
# BB#104:
	movl	-56(%rbp), %eax
	movl	-40(%rbp), %ecx
	subl	-48(%rbp), %ecx
	incl	%ecx
	movl	%ecx, 32(%rsp)
	leaq	ng10(%rip), %rbx
	leaq	-88(%rbp), %rcx
	xorl	%edx, %edx
	movq	%rbx, %r8
	movl	%eax, %r9d
	callq	*__imp__iki_vlog_bit_copy(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	-88(%rbp), %eax
	andl	$127, %eax
	movl	%eax, (%rdi)
	movl	-84(%rbp), %eax
	andl	$127, %eax
	movl	%eax, 4(%rdi)
	leaq	264(%rsi), %rax
	leaq	1176(%rsi), %rdx
	jmp	.LBB81_105
.LBB81_16:
	leaq	ng89(%rip), %rax
	leaq	-32(%rbp), %rcx
	movl	$4, %edx
	movl	$32, %r9d
	movq	%rax, %r8
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB81_17
# BB#120:
	movl	$24117308, %ecx         # imm = 0x170003C
	callq	*__imp__iki_stmt_online(%rip)
	movl	$1, -80(%rbp)
	movl	$7, -76(%rbp)
	movl	$0, -72(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, 72(%rsp)
	movq	%rdi, 48(%rsp)
	movl	$1, 104(%rsp)
	movl	$2, 96(%rsp)
	movl	$1, 88(%rsp)
	movq	$0, 80(%rsp)
	movl	$1, 64(%rsp)
	movl	$32, 56(%rsp)
	movl	$1, 40(%rsp)
	movl	$32, 32(%rsp)
	leaq	ng52(%rip), %rax
	leaq	-40(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	leaq	-56(%rbp), %rbx
	movq	%rbx, %r8
	movq	%rax, %r9
	callq	*__imp__iki_vlog_convert_part_select(%rip)
	cmpl	$0, -36(%rbp)
	je	.LBB81_122
# BB#121:
	xorl	%eax, %eax
	jmp	.LBB81_125
.LBB81_115:
	cmpl	$0, -44(%rbp)
	je	.LBB81_117
# BB#116:
	xorl	%eax, %eax
	jmp	.LBB81_118
.LBB81_110:
	cmpl	$0, -52(%rbp)
	sete	%al
.LBB81_111:
	testb	%al, %al
	je	.LBB81_25
# BB#112:
	movl	-56(%rbp), %eax
	movl	-40(%rbp), %ecx
	subl	-48(%rbp), %ecx
	incl	%ecx
	movl	%ecx, 32(%rsp)
	leaq	ng4(%rip), %rbx
	leaq	-88(%rbp), %rcx
	xorl	%edx, %edx
	movq	%rbx, %r8
	movl	%eax, %r9d
	callq	*__imp__iki_vlog_bit_copy(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	-88(%rbp), %eax
	andl	$127, %eax
	movl	%eax, (%rdi)
	movl	-84(%rbp), %eax
	andl	$127, %eax
	movl	%eax, 4(%rdi)
	leaq	264(%rsi), %rax
	leaq	1216(%rsi), %rdx
	jmp	.LBB81_105
.LBB81_17:
	leaq	ng72(%rip), %rax
	leaq	-32(%rbp), %rcx
	movl	$4, %edx
	movl	$32, %r9d
	movq	%rax, %r8
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB81_18
# BB#127:
	movl	$24117309, %ecx         # imm = 0x170003D
	callq	*__imp__iki_stmt_online(%rip)
	movl	$1, -80(%rbp)
	movl	$7, -76(%rbp)
	movl	$0, -72(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, 72(%rsp)
	movq	%rdi, 48(%rsp)
	movl	$1, 104(%rsp)
	movl	$2, 96(%rsp)
	movl	$1, 88(%rsp)
	movq	$0, 80(%rsp)
	movl	$1, 64(%rsp)
	movl	$32, 56(%rsp)
	movl	$1, 40(%rsp)
	movl	$32, 32(%rsp)
	leaq	ng52(%rip), %rax
	leaq	-40(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	leaq	-56(%rbp), %rbx
	movq	%rbx, %r8
	movq	%rax, %r9
	callq	*__imp__iki_vlog_convert_part_select(%rip)
	cmpl	$0, -36(%rbp)
	je	.LBB81_129
# BB#128:
	xorl	%eax, %eax
	jmp	.LBB81_132
.LBB81_122:
	cmpl	$0, -44(%rbp)
	je	.LBB81_124
# BB#123:
	xorl	%eax, %eax
	jmp	.LBB81_125
.LBB81_117:
	cmpl	$0, -52(%rbp)
	sete	%al
.LBB81_118:
	testb	%al, %al
	je	.LBB81_25
# BB#119:
	movl	-56(%rbp), %eax
	movl	-40(%rbp), %ecx
	subl	-48(%rbp), %ecx
	incl	%ecx
	movl	%ecx, 32(%rsp)
	leaq	ng88(%rip), %rbx
	leaq	-88(%rbp), %rcx
	xorl	%edx, %edx
	movq	%rbx, %r8
	movl	%eax, %r9d
	callq	*__imp__iki_vlog_bit_copy(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	-88(%rbp), %eax
	andl	$127, %eax
	movl	%eax, (%rdi)
	movl	-84(%rbp), %eax
	andl	$127, %eax
	movl	%eax, 4(%rdi)
	leaq	264(%rsi), %rax
	leaq	1256(%rsi), %rdx
	jmp	.LBB81_105
.LBB81_18:
	leaq	ng65(%rip), %rax
	leaq	-32(%rbp), %rcx
	movl	$4, %edx
	movl	$32, %r9d
	movq	%rax, %r8
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB81_19
# BB#134:
	movl	$24117310, %ecx         # imm = 0x170003E
	callq	*__imp__iki_stmt_online(%rip)
	movl	$1, -80(%rbp)
	movl	$7, -76(%rbp)
	movl	$0, -72(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, 72(%rsp)
	movq	%rdi, 48(%rsp)
	movl	$1, 104(%rsp)
	movl	$2, 96(%rsp)
	movl	$1, 88(%rsp)
	movq	$0, 80(%rsp)
	movl	$1, 64(%rsp)
	movl	$32, 56(%rsp)
	movl	$1, 40(%rsp)
	movl	$32, 32(%rsp)
	leaq	ng52(%rip), %rax
	leaq	-40(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	leaq	-56(%rbp), %rbx
	movq	%rbx, %r8
	movq	%rax, %r9
	callq	*__imp__iki_vlog_convert_part_select(%rip)
	cmpl	$0, -36(%rbp)
	je	.LBB81_136
# BB#135:
	xorl	%eax, %eax
	jmp	.LBB81_139
.LBB81_129:
	cmpl	$0, -44(%rbp)
	je	.LBB81_131
# BB#130:
	xorl	%eax, %eax
	jmp	.LBB81_132
.LBB81_124:
	cmpl	$0, -52(%rbp)
	sete	%al
.LBB81_125:
	testb	%al, %al
	je	.LBB81_25
# BB#126:
	movl	-56(%rbp), %eax
	movl	-40(%rbp), %ecx
	subl	-48(%rbp), %ecx
	incl	%ecx
	movl	%ecx, 32(%rsp)
	leaq	ng25(%rip), %rbx
	leaq	-88(%rbp), %rcx
	xorl	%edx, %edx
	movq	%rbx, %r8
	movl	%eax, %r9d
	callq	*__imp__iki_vlog_bit_copy(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	-88(%rbp), %eax
	andl	$127, %eax
	movl	%eax, (%rdi)
	movl	-84(%rbp), %eax
	andl	$127, %eax
	movl	%eax, 4(%rdi)
	leaq	264(%rsi), %rax
	leaq	1296(%rsi), %rdx
	jmp	.LBB81_105
.LBB81_19:
	movl	$24117312, %ecx         # imm = 0x1700040
	callq	*__imp__iki_stmt_online(%rip)
	movl	$1, -80(%rbp)
	movl	$7, -76(%rbp)
	movl	$0, -72(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, 72(%rsp)
	movq	%rdi, 48(%rsp)
	movl	$1, 104(%rsp)
	movl	$2, 96(%rsp)
	movl	$1, 88(%rsp)
	movq	$0, 80(%rsp)
	movl	$1, 64(%rsp)
	movl	$32, 56(%rsp)
	movl	$1, 40(%rsp)
	movl	$32, 32(%rsp)
	leaq	ng52(%rip), %rax
	leaq	-40(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	leaq	-56(%rbp), %rbx
	movq	%rbx, %r8
	movq	%rax, %r9
	callq	*__imp__iki_vlog_convert_part_select(%rip)
	cmpl	$0, -36(%rbp)
	je	.LBB81_21
# BB#20:
	xorl	%eax, %eax
	jmp	.LBB81_24
.LBB81_136:
	cmpl	$0, -44(%rbp)
	je	.LBB81_138
# BB#137:
	xorl	%eax, %eax
	jmp	.LBB81_139
.LBB81_131:
	cmpl	$0, -52(%rbp)
	sete	%al
.LBB81_132:
	testb	%al, %al
	je	.LBB81_25
# BB#133:
	movl	-56(%rbp), %eax
	movl	-40(%rbp), %ecx
	subl	-48(%rbp), %ecx
	incl	%ecx
	movl	%ecx, 32(%rsp)
	leaq	ng8(%rip), %rbx
	leaq	-88(%rbp), %rcx
	xorl	%edx, %edx
	movq	%rbx, %r8
	movl	%eax, %r9d
	callq	*__imp__iki_vlog_bit_copy(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	-88(%rbp), %eax
	andl	$127, %eax
	movl	%eax, (%rdi)
	movl	-84(%rbp), %eax
	andl	$127, %eax
	movl	%eax, 4(%rdi)
	leaq	264(%rsi), %rax
	leaq	1336(%rsi), %rdx
	jmp	.LBB81_105
.LBB81_21:
	cmpl	$0, -44(%rbp)
	je	.LBB81_23
# BB#22:
	xorl	%eax, %eax
	jmp	.LBB81_24
.LBB81_138:
	cmpl	$0, -52(%rbp)
	sete	%al
.LBB81_139:
	testb	%al, %al
	je	.LBB81_25
# BB#140:
	movl	-56(%rbp), %eax
	movl	-40(%rbp), %ecx
	subl	-48(%rbp), %ecx
	incl	%ecx
	movl	%ecx, 32(%rsp)
	leaq	ng80(%rip), %rbx
	leaq	-88(%rbp), %rcx
	xorl	%edx, %edx
	movq	%rbx, %r8
	movl	%eax, %r9d
	callq	*__imp__iki_vlog_bit_copy(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	-88(%rbp), %eax
	andl	$127, %eax
	movl	%eax, (%rdi)
	movl	-84(%rbp), %eax
	andl	$127, %eax
	movl	%eax, 4(%rdi)
	leaq	264(%rsi), %rax
	leaq	1376(%rsi), %rdx
	jmp	.LBB81_105
.LBB81_23:
	cmpl	$0, -52(%rbp)
	sete	%al
.LBB81_24:
	testb	%al, %al
	je	.LBB81_25
# BB#141:
	movl	-56(%rbp), %eax
	movl	-40(%rbp), %ecx
	subl	-48(%rbp), %ecx
	incl	%ecx
	movl	%ecx, 32(%rsp)
	leaq	ng90(%rip), %rbx
	leaq	-88(%rbp), %rcx
	xorl	%edx, %edx
	movq	%rbx, %r8
	movl	%eax, %r9d
	callq	*__imp__iki_vlog_bit_copy(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	-88(%rbp), %eax
	andl	$127, %eax
	movl	%eax, (%rdi)
	movl	-84(%rbp), %eax
	andl	$127, %eax
	movl	%eax, 4(%rdi)
	leaq	264(%rsi), %rax
	leaq	1416(%rsi), %rdx
.LBB81_105:
	movl	-48(%rbp), %ebx
	movl	-40(%rbp), %ecx
	subl	%ebx, %ecx
	movl	%ecx, 32(%rsp)
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movq	%rax, %rcx
	movq	%rdi, %r8
	movl	%ebx, %r9d
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
	jmp	.LBB81_25

	.def	 _execute_163;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_163
	.align	16, 0x90
_execute_163:                           # @_execute_163
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	pushq	%rdi
	subq	$160, %rsp
	movq	%rdx, %rsi
	movq	440(%rsi), %r9
	movl	$1, -48(%rbp)
	movl	$15, -44(%rbp)
	movl	$0, -40(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, 80(%rsp)
	leaq	ng0(%rip), %rax
	movq	%rax, 56(%rsp)
	leaq	ng21(%rip), %rax
	movq	%rax, 32(%rsp)
	movl	$1, 112(%rsp)
	movl	$2, 104(%rsp)
	movl	$1, 96(%rsp)
	movq	$0, 88(%rsp)
	movl	$1, 72(%rsp)
	movl	$32, 64(%rsp)
	movl	$1, 48(%rsp)
	movl	$32, 40(%rsp)
	leaq	-32(%rbp), %rdi
	movl	$1, %edx
	movl	$4, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_vlog_get_part_select_value(%rip)
	movq	%rdi, 48(%rsp)
	leaq	ng1(%rip), %rax
	movq	%rax, 32(%rsp)
	movl	$4, 56(%rsp)
	movl	$1, 40(%rsp)
	leaq	-24(%rbp), %rdi
	movl	$5, %edx
	movl	$5, %r8d
	movl	$2, %r9d
	movq	%rdi, %rcx
	callq	*__imp__iki_vlog_concat(%rip)
	leaq	1984(%rsi), %rcx
	movl	$8, %r8d
	movq	%rdi, %rdx
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	656(%rsi), %rcx
	addq	$1960, %rsi             # imm = 0x7A8
	xorl	%r8d, %r8d
	movl	$4, %r9d
	movq	%rsi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_signal_fast_no_reg_no_agg(%rip)
	addq	$160, %rsp
	popq	%rdi
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_164;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_164
	.align	16, 0x90
_execute_164:                           # @_execute_164
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	pushq	%rdi
	subq	$160, %rsp
	movq	%rdx, %rsi
	movq	440(%rsi), %r9
	movl	$1, -48(%rbp)
	movl	$15, -44(%rbp)
	movl	$0, -40(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, 80(%rsp)
	leaq	ng64(%rip), %rax
	movq	%rax, 56(%rsp)
	leaq	ng54(%rip), %rax
	movq	%rax, 32(%rsp)
	movl	$1, 112(%rsp)
	movl	$2, 104(%rsp)
	movl	$1, 96(%rsp)
	movq	$0, 88(%rsp)
	movl	$1, 72(%rsp)
	movl	$32, 64(%rsp)
	movl	$1, 48(%rsp)
	movl	$32, 40(%rsp)
	leaq	-32(%rbp), %rdi
	movl	$1, %edx
	movl	$4, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_vlog_get_part_select_value(%rip)
	movq	%rdi, 48(%rsp)
	leaq	ng1(%rip), %rax
	movq	%rax, 32(%rsp)
	movl	$4, 56(%rsp)
	movl	$1, 40(%rsp)
	leaq	-24(%rbp), %rdi
	movl	$5, %edx
	movl	$5, %r8d
	movl	$2, %r9d
	movq	%rdi, %rcx
	callq	*__imp__iki_vlog_concat(%rip)
	leaq	2152(%rsi), %rcx
	movl	$8, %r8d
	movq	%rdi, %rdx
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	600(%rsi), %rcx
	addq	$2128, %rsi             # imm = 0x850
	xorl	%r8d, %r8d
	movl	$4, %r9d
	movq	%rsi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_signal_fast_no_reg_no_agg(%rip)
	addq	$160, %rsp
	popq	%rdi
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_165;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_165
	.align	16, 0x90
_execute_165:                           # @_execute_165
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	pushq	%rdi
	subq	$160, %rsp
	movq	%rdx, %rsi
	movq	440(%rsi), %r9
	movl	$1, -48(%rbp)
	movl	$15, -44(%rbp)
	movl	$0, -40(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, 80(%rsp)
	leaq	ng66(%rip), %rax
	movq	%rax, 56(%rsp)
	leaq	ng79(%rip), %rax
	movq	%rax, 32(%rsp)
	movl	$1, 112(%rsp)
	movl	$2, 104(%rsp)
	movl	$1, 96(%rsp)
	movq	$0, 88(%rsp)
	movl	$1, 72(%rsp)
	movl	$32, 64(%rsp)
	movl	$1, 48(%rsp)
	movl	$32, 40(%rsp)
	leaq	-32(%rbp), %rdi
	movl	$1, %edx
	movl	$4, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_vlog_get_part_select_value(%rip)
	movq	%rdi, 48(%rsp)
	leaq	ng2(%rip), %rax
	movq	%rax, 32(%rsp)
	movl	$4, 56(%rsp)
	movl	$1, 40(%rsp)
	leaq	-24(%rbp), %rdi
	movl	$5, %edx
	movl	$5, %r8d
	movl	$2, %r9d
	movq	%rdi, %rcx
	callq	*__imp__iki_vlog_concat(%rip)
	leaq	2320(%rsi), %rcx
	movl	$8, %r8d
	movq	%rdi, %rdx
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	544(%rsi), %rcx
	addq	$2296, %rsi             # imm = 0x8F8
	xorl	%r8d, %r8d
	movl	$4, %r9d
	movq	%rsi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_signal_fast_no_reg_no_agg(%rip)
	addq	$160, %rsp
	popq	%rdi
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_166;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_166
	.align	16, 0x90
_execute_166:                           # @_execute_166
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	pushq	%rdi
	subq	$160, %rsp
	movq	%rdx, %rsi
	movq	440(%rsi), %r9
	movl	$1, -48(%rbp)
	movl	$15, -44(%rbp)
	movl	$0, -40(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, 80(%rsp)
	leaq	ng76(%rip), %rax
	movq	%rax, 56(%rsp)
	leaq	ng65(%rip), %rax
	movq	%rax, 32(%rsp)
	movl	$1, 112(%rsp)
	movl	$2, 104(%rsp)
	movl	$1, 96(%rsp)
	movq	$0, 88(%rsp)
	movl	$1, 72(%rsp)
	movl	$32, 64(%rsp)
	movl	$1, 48(%rsp)
	movl	$32, 40(%rsp)
	leaq	-32(%rbp), %rdi
	movl	$1, %edx
	movl	$4, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_vlog_get_part_select_value(%rip)
	movq	%rdi, 48(%rsp)
	leaq	ng1(%rip), %rax
	movq	%rax, 32(%rsp)
	movl	$4, 56(%rsp)
	movl	$1, 40(%rsp)
	leaq	-24(%rbp), %rdi
	movl	$5, %edx
	movl	$5, %r8d
	movl	$2, %r9d
	movq	%rdi, %rcx
	callq	*__imp__iki_vlog_concat(%rip)
	leaq	2488(%rsi), %rcx
	movl	$8, %r8d
	movq	%rdi, %rdx
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	488(%rsi), %rcx
	addq	$2464, %rsi             # imm = 0x9A0
	xorl	%r8d, %r8d
	movl	$4, %r9d
	movq	%rsi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_signal_fast_no_reg_no_agg(%rip)
	addq	$160, %rsp
	popq	%rdi
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_167;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_167
	.align	16, 0x90
_execute_167:                           # @_execute_167
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	subq	$40, %rsp
	movq	%rdx, %rsi
	leaq	880(%rsi), %rcx
	movl	$16, %edx
	callq	*__imp__iki_vlog_signal_handle_value(%rip)
	leaq	2656(%rsi), %rcx
	movl	$8, %r8d
	movq	%rax, %rdx
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	936(%rsi), %rcx
	addq	$2632, %rsi             # imm = 0xA48
	xorl	%r8d, %r8d
	movl	$15, %r9d
	movq	%rsi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_signal_fast(%rip)
	addq	$40, %rsp
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_168;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_168
	.align	16, 0x90
_execute_168:                           # @_execute_168
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	subq	$40, %rsp
	movq	%rdx, %rsi
	leaq	992(%rsi), %rcx
	movl	$5, %edx
	callq	*__imp__iki_vlog_signal_handle_value(%rip)
	leaq	2824(%rsi), %rcx
	movl	$8, %r8d
	movq	%rax, %rdx
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	1048(%rsi), %rcx
	addq	$2800, %rsi             # imm = 0xAF0
	xorl	%r8d, %r8d
	movl	$4, %r9d
	movq	%rsi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_signal_fast(%rip)
	addq	$40, %rsp
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_169;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_169
	.align	16, 0x90
_execute_169:                           # @_execute_169
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	subq	$40, %rsp
	movq	%rdx, %rsi
	leaq	1104(%rsi), %rcx
	movl	$4, %edx
	callq	*__imp__iki_vlog_signal_handle_value(%rip)
	leaq	2992(%rsi), %rcx
	movl	$8, %r8d
	movq	%rax, %rdx
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	1160(%rsi), %rcx
	addq	$2968, %rsi             # imm = 0xB98
	xorl	%r8d, %r8d
	movl	$3, %r9d
	movq	%rsi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_signal_fast(%rip)
	addq	$40, %rsp
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_170;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_170
	.align	16, 0x90
_execute_170:                           # @_execute_170
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	subq	$40, %rsp
	movq	%rdx, %rsi
	leaq	1216(%rsi), %rcx
	movl	$8, %edx
	callq	*__imp__iki_vlog_signal_handle_value(%rip)
	leaq	3160(%rsi), %rcx
	movl	$8, %r8d
	movq	%rax, %rdx
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	1272(%rsi), %rcx
	addq	$3136, %rsi             # imm = 0xC40
	xorl	%r8d, %r8d
	movl	$7, %r9d
	movq	%rsi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_signal_fast(%rip)
	addq	$40, %rsp
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_67;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_67
	.align	16, 0x90
_execute_67:                            # @_execute_67
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$184, %rsp
	movq	%rdx, %rsi
	.align	16, 0x90
.LBB90_1:                               # =>This Inner Loop Header: Depth=1
	movl	$44, %edx
	movq	%rsi, %rcx
	callq	*__imp__iki_vlog_set_threadId_for_unrandom(%rip)
	movq	664(%rsi), %rax
	testq	%rax, %rax
	je	.LBB90_5
# BB#2:                                 #   in Loop: Header=BB90_1 Depth=1
	jmpq	*%rax
.Ltmp313:                               # Block address taken
.LBB90_3:
	movb	$0, 744(%rsi)
	movl	$18874418, %ecx         # imm = 0x1200032
	callq	*__imp__iki_stmt_online(%rip)
	leaq	96(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movl	4(%rax), %ecx
	notl	%ecx
	testl	(%rax), %ecx
	je	.LBB90_4
# BB#6:
	movl	$18874419, %ecx         # imm = 0x1200033
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movzwl	ng0(%rip), %eax
	movl	%eax, (%rdi)
	movzwl	ng0+4(%rip), %eax
	movl	%eax, 4(%rdi)
	leaq	432(%rsi), %rcx
	leaq	752(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$15, 32(%rsp)
	xorl	%r9d, %r9d
.LBB90_27:
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
.LBB90_5:
	movl	$18874417, %ecx         # imm = 0x1200031
	callq	*__imp__iki_stmt_online(%rip)
	movb	$1, 744(%rsi)
	leaq	.Ltmp313(%rip), %rax
	movq	%rax, 664(%rsi)
	addq	$184, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%rbp
	ret
.LBB90_4:
	movl	$18874420, %ecx         # imm = 0x1200034
	callq	*__imp__iki_stmt_online(%rip)
	leaq	264(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movl	4(%rax), %ecx
	notl	%ecx
	testl	(%rax), %ecx
	je	.LBB90_5
# BB#7:
	movl	$18874421, %ecx         # imm = 0x1200035
	callq	*__imp__iki_stmt_online(%rip)
	leaq	152(%rsi), %rdi
	movl	$8, %edx
	movq	%rdi, %rcx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %rbx
	leaq	-32(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rbx), %ecx
	movl	4(%rbx), %ebx
	xorl	ng91(%rip), %ecx
	movl	ng91+4(%rip), %edx
	movl	%ebx, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %ebx
	movl	%ebx, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB90_9
# BB#8:
	testl	%ebx, %ebx
	movl	$1, -32(%rbp)
	je	.LBB90_9
# BB#18:
	movl	$1, -28(%rbp)
.LBB90_9:
	movl	-28(%rbp), %eax
	notl	%eax
	testl	-32(%rbp), %eax
	je	.LBB90_10
# BB#19:
	movl	$18874422, %ecx         # imm = 0x1200036
	callq	*__imp__iki_stmt_online(%rip)
	leaq	208(%rsi), %rcx
	movl	$8, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %rdi
	movl	$1, -80(%rbp)
	movl	$15, -76(%rbp)
	movl	$0, -72(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, 72(%rsp)
	leaq	ng66(%rip), %rax
	movq	%rax, 48(%rsp)
	movl	$1, 104(%rsp)
	movl	$2, 96(%rsp)
	movl	$1, 88(%rsp)
	movq	$0, 80(%rsp)
	movl	$1, 64(%rsp)
	movl	$32, 56(%rsp)
	movl	$1, 40(%rsp)
	movl	$32, 32(%rsp)
	leaq	ng65(%rip), %r9
	leaq	-40(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	leaq	-56(%rbp), %r8
	callq	*__imp__iki_vlog_convert_part_select(%rip)
	cmpl	$0, -36(%rbp)
	je	.LBB90_21
# BB#20:
	xorl	%eax, %eax
	jmp	.LBB90_24
.LBB90_10:
	movl	$18874423, %ecx         # imm = 0x1200037
	callq	*__imp__iki_stmt_online(%rip)
	movl	$8, %edx
	movq	%rdi, %rcx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %rdi
	leaq	-32(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, ng91+4(%rip)
	jne	.LBB90_28
# BB#11:
	cmpl	$0, ng5+4(%rip)
	je	.LBB90_12
.LBB90_28:
	movq	$-1, -32(%rbp)
.LBB90_13:
	leaq	-40(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %ecx
	movl	4(%rdi), %ebx
	xorl	-32(%rbp), %ecx
	movl	-28(%rbp), %edx
	movl	%ebx, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %ebx
	movl	%ebx, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB90_15
# BB#14:
	testl	%ebx, %ebx
	movl	$1, -40(%rbp)
	je	.LBB90_15
# BB#29:
	movl	$1, -36(%rbp)
.LBB90_15:
	movl	-36(%rbp), %eax
	notl	%eax
	testl	-40(%rbp), %eax
	je	.LBB90_5
# BB#16:
	movl	$18874424, %ecx         # imm = 0x1200038
	callq	*__imp__iki_stmt_online(%rip)
	leaq	208(%rsi), %rcx
	movl	$8, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %rdi
	movl	$1, -80(%rbp)
	movl	$15, -76(%rbp)
	movl	$0, -72(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, 72(%rsp)
	leaq	ng0(%rip), %rax
	movq	%rax, 48(%rsp)
	movl	$1, 104(%rsp)
	movl	$2, 96(%rsp)
	movl	$1, 88(%rsp)
	movq	$0, 80(%rsp)
	movl	$1, 64(%rsp)
	movl	$32, 56(%rsp)
	movl	$1, 40(%rsp)
	movl	$32, 32(%rsp)
	leaq	ng54(%rip), %r9
	leaq	-48(%rbp), %rcx
	leaq	-56(%rbp), %rdx
	leaq	-88(%rbp), %r8
	callq	*__imp__iki_vlog_convert_part_select(%rip)
	cmpl	$0, -44(%rbp)
	je	.LBB90_30
# BB#17:
	xorl	%eax, %eax
	jmp	.LBB90_33
.LBB90_21:
	cmpl	$0, -44(%rbp)
	je	.LBB90_23
# BB#22:
	xorl	%eax, %eax
	jmp	.LBB90_24
.LBB90_30:
	cmpl	$0, -52(%rbp)
	je	.LBB90_32
# BB#31:
	xorl	%eax, %eax
	jmp	.LBB90_33
.LBB90_23:
	cmpl	$0, -52(%rbp)
	sete	%al
.LBB90_24:
	testb	%al, %al
	je	.LBB90_5
# BB#25:
	movl	-56(%rbp), %r9d
	movl	-40(%rbp), %eax
	subl	-48(%rbp), %eax
	incl	%eax
	movl	%eax, 32(%rsp)
	leaq	-88(%rbp), %rcx
	xorl	%edx, %edx
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_bit_copy(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movzbl	-88(%rbp), %eax
	movl	%eax, (%rdi)
	movzbl	-84(%rbp), %eax
	movl	%eax, 4(%rdi)
	leaq	432(%rsi), %rcx
	leaq	792(%rsi), %rdx
	movl	-48(%rbp), %r9d
	movl	-40(%rbp), %eax
	jmp	.LBB90_26
.LBB90_12:
	movl	ng91(%rip), %eax
	addl	ng5(%rip), %eax
	movl	%eax, -32(%rbp)
	movl	$0, -28(%rbp)
	jmp	.LBB90_13
.LBB90_32:
	cmpl	$0, -84(%rbp)
	sete	%al
.LBB90_33:
	testb	%al, %al
	je	.LBB90_5
# BB#34:
	movl	-88(%rbp), %r9d
	movl	-48(%rbp), %eax
	subl	-56(%rbp), %eax
	incl	%eax
	movl	%eax, 32(%rsp)
	leaq	-96(%rbp), %rcx
	xorl	%edx, %edx
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_bit_copy(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movzbl	-96(%rbp), %eax
	movl	%eax, (%rdi)
	movzbl	-92(%rbp), %eax
	movl	%eax, 4(%rdi)
	leaq	432(%rsi), %rcx
	leaq	832(%rsi), %rdx
	movl	-56(%rbp), %r9d
	movl	-48(%rbp), %eax
.LBB90_26:
	subl	%r9d, %eax
	movl	%eax, 32(%rsp)
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	jmp	.LBB90_27

	.def	 _execute_171;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_171
	.align	16, 0x90
_execute_171:                           # @_execute_171
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	subq	$40, %rsp
	movq	%rdx, %rsi
	leaq	544(%rsi), %rcx
	movl	$16, %edx
	callq	*__imp__iki_vlog_signal_handle_value(%rip)
	leaq	1024(%rsi), %rcx
	movl	$8, %r8d
	movq	%rax, %rdx
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	488(%rsi), %rcx
	addq	$1000, %rsi             # imm = 0x3E8
	xorl	%r8d, %r8d
	movl	$15, %r9d
	movq	%rsi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_signal_fast(%rip)
	addq	$40, %rsp
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_71;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_71
	.align	16, 0x90
_execute_71:                            # @_execute_71
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$104, %rsp
	movq	%rdx, %rsi
	.align	16, 0x90
.LBB92_1:                               # =>This Inner Loop Header: Depth=1
	movl	$45, %edx
	movq	%rsi, %rcx
	callq	*__imp__iki_vlog_set_threadId_for_unrandom(%rip)
	movq	1472(%rsi), %rax
	testq	%rax, %rax
	je	.LBB92_19
# BB#2:                                 #   in Loop: Header=BB92_1 Depth=1
	jmpq	*%rax
.Ltmp320:                               # Block address taken
.LBB92_3:
	movb	$0, 1552(%rsi)
	movl	$26214470, %ecx         # imm = 0x1900046
	callq	*__imp__iki_stmt_online(%rip)
	movq	384(%rsi), %rdi
	leaq	-64(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %ecx
	movl	4(%rdi), %ebx
	xorl	ng1(%rip), %ecx
	movl	ng1+4(%rip), %edx
	movl	%ebx, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %ebx
	movl	%ebx, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB92_5
# BB#4:
	testl	%ebx, %ebx
	movl	$1, -64(%rbp)
	je	.LBB92_5
# BB#20:
	movl	$1, -60(%rbp)
.LBB92_5:
	leaq	-72(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	-64(%rbp), %ecx
	testb	$1, %cl
	je	.LBB92_6
# BB#21:
	movl	$1, -72(%rbp)
	jmp	.LBB92_7
.LBB92_6:
	testl	%eax, %eax
	je	.LBB92_7
# BB#22:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -72(%rbp)
.LBB92_7:
	cmpl	$0, -72(%rbp)
	movb	$1, %al
	je	.LBB92_9
# BB#8:
	cmpl	$0, -68(%rbp)
	setne	%al
.LBB92_9:
	testb	%al, %al
	je	.LBB92_10
# BB#23:
	movq	384(%rsi), %rdi
	leaq	-80(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %ecx
	movl	4(%rdi), %ebx
	xorl	ng3(%rip), %ecx
	movl	ng3+4(%rip), %edx
	movl	%ebx, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %ebx
	movl	%ebx, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB92_25
# BB#24:
	testl	%ebx, %ebx
	movl	$1, -80(%rbp)
	je	.LBB92_25
# BB#29:
	movl	$1, -76(%rbp)
.LBB92_25:
	leaq	-88(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	-76(%rbp), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	-80(%rbp), %ecx
	testb	$1, %cl
	je	.LBB92_26
# BB#30:
	movl	$1, -88(%rbp)
	jmp	.LBB92_27
.LBB92_10:
	leaq	-96(%rbp), %rcx
	leaq	-72(%rbp), %rdx
	movl	$8, %r8d
	callq	*__imp__iki_std_memcpy(%rip)
	andl	$1, -96(%rbp)
	andl	$1, -92(%rbp)
	jmp	.LBB92_11
.LBB92_26:
	testl	%eax, %eax
	je	.LBB92_27
# BB#31:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -88(%rbp)
.LBB92_27:
	movl	-72(%rbp), %eax
	orl	-88(%rbp), %eax
	movl	%eax, -96(%rbp)
	movl	-68(%rbp), %eax
	orl	-84(%rbp), %eax
	movl	%eax, -92(%rbp)
	je	.LBB92_11
# BB#28:
	orl	%eax, -96(%rbp)
	movl	-68(%rbp), %eax
	notl	%eax
	andl	-72(%rbp), %eax
	notl	%eax
	andl	-92(%rbp), %eax
	movl	-84(%rbp), %ecx
	notl	%ecx
	andl	-88(%rbp), %ecx
	notl	%ecx
	andl	%eax, %ecx
	movl	%ecx, -92(%rbp)
.LBB92_11:
	movl	-92(%rbp), %eax
	notl	%eax
	testl	-96(%rbp), %eax
	je	.LBB92_12
# BB#32:
	movq	__imp__iki_stmt_online(%rip), %r14
	movl	$26214471, %ecx         # imm = 0x1900047
	callq	*%r14
	movq	__imp__iki_malloc8(%rip), %rbx
	callq	*%rbx
	movq	%rax, %rdi
	movq	__imp__iki_std_memset(%rip), %r15
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r15
	movzwl	ng0(%rip), %eax
	movl	%eax, (%rdi)
	movzwl	ng0+4(%rip), %eax
	movl	%eax, 4(%rdi)
	leaq	712(%rsi), %rcx
	leaq	1560(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$15, 32(%rsp)
	movq	__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip), %r12
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r12
	movl	$26214472, %ecx         # imm = 0x1900048
	callq	*%r14
	callq	*%rbx
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r15
	movl	ng0(%rip), %eax
	andl	$1, %eax
	movl	%eax, (%rdi)
	movl	ng0+4(%rip), %eax
	andl	$1, %eax
	movl	%eax, 4(%rdi)
	leaq	936(%rsi), %rcx
	leaq	1600(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$0, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r12
	jmp	.LBB92_19
.LBB92_12:
	movl	$26214474, %ecx         # imm = 0x190004A
	callq	*__imp__iki_stmt_online(%rip)
	movq	720(%rsi), %rdi
	leaq	-64(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %ecx
	movl	4(%rdi), %ebx
	xorl	1160(%rsi), %ecx
	movl	1164(%rsi), %edx
	movl	%ebx, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %ebx
	movl	%ebx, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB92_14
# BB#13:
	testl	%ebx, %ebx
	movl	$1, -64(%rbp)
	je	.LBB92_14
# BB#33:
	movl	$1, -60(%rbp)
.LBB92_14:
	leaq	712(%rsi), %r14
	movl	-60(%rbp), %eax
	notl	%eax
	testl	-64(%rbp), %eax
	je	.LBB92_15
# BB#34:
	movq	__imp__iki_stmt_online(%rip), %rdi
	movl	$26214475, %ecx         # imm = 0x190004B
	callq	*%rdi
	movq	%r14, -104(%rbp)        # 8-byte Spill
	movq	%rdi, %r14
	leaq	936(%rsi), %rbx
	movq	944(%rsi), %rdi
	movq	__imp__iki_std_memset(%rip), %r12
	leaq	-72(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*%r12
	movl	4(%rdi), %eax
	movl	%eax, %ecx
	andl	$1, %ecx
	movl	%ecx, -68(%rbp)
	movl	(%rdi), %ecx
	notl	%ecx
	orl	%eax, %ecx
	andl	$1, %ecx
	movl	%ecx, -72(%rbp)
	movq	__imp__iki_malloc8(%rip), %r13
	callq	*%r13
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r12
	movl	-72(%rbp), %eax
	andl	$1, %eax
	movl	%eax, (%rdi)
	movl	-68(%rbp), %eax
	andl	$1, %eax
	movl	%eax, 4(%rdi)
	leaq	1640(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$0, 32(%rsp)
	movq	__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip), %r15
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	movq	%rbx, %rcx
	callq	*%r15
	movl	$26214476, %ecx         # imm = 0x190004C
	callq	*%r14
	callq	*%r13
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r12
	movzwl	ng0(%rip), %eax
	movl	%eax, (%rdi)
	movzwl	ng0+4(%rip), %eax
	movl	%eax, 4(%rdi)
	leaq	1680(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$15, 32(%rsp)
	xorl	%r9d, %r9d
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	%rdi, %r8
	callq	*%r15
	jmp	.LBB92_19
.LBB92_15:
	movl	$26214478, %ecx         # imm = 0x190004E
	callq	*__imp__iki_stmt_online(%rip)
	movq	8(%r14), %rdi
	leaq	-64(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, 4(%rdi)
	jne	.LBB92_35
# BB#16:
	cmpl	$0, ng5+4(%rip)
	je	.LBB92_17
.LBB92_35:
	movq	$-1, -64(%rbp)
.LBB92_18:
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movzwl	-64(%rbp), %eax
	movl	%eax, (%rbx)
	movzwl	-60(%rbp), %eax
	movl	%eax, 4(%rbx)
	leaq	1720(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$15, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%r14, %rcx
	movq	%rbx, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
.LBB92_19:
	movl	$26214469, %ecx         # imm = 0x1900045
	callq	*__imp__iki_stmt_online(%rip)
	movb	$1, 1552(%rsi)
	leaq	.Ltmp320(%rip), %rax
	movq	%rax, 1472(%rsi)
	addq	$104, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB92_17:
	movl	(%rdi), %eax
	addl	ng5(%rip), %eax
	movl	%eax, -64(%rbp)
	movl	$0, -60(%rbp)
	jmp	.LBB92_18

	.def	 _execute_72;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_72
	.align	16, 0x90
_execute_72:                            # @_execute_72
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$104, %rsp
	movq	%rdx, %rsi
	.align	16, 0x90
.LBB93_1:                               # =>This Inner Loop Header: Depth=1
	movl	$46, %edx
	movq	%rsi, %rcx
	callq	*__imp__iki_vlog_set_threadId_for_unrandom(%rip)
	movq	1800(%rsi), %rax
	testq	%rax, %rax
	je	.LBB93_18
# BB#2:                                 #   in Loop: Header=BB93_1 Depth=1
	jmpq	*%rax
.Ltmp324:                               # Block address taken
.LBB93_3:
	movb	$0, 1880(%rsi)
	movl	$26214488, %ecx         # imm = 0x1900058
	callq	*__imp__iki_stmt_online(%rip)
	movq	384(%rsi), %rdi
	leaq	-64(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %ecx
	movl	4(%rdi), %ebx
	xorl	ng2(%rip), %ecx
	movl	ng2+4(%rip), %edx
	movl	%ebx, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %ebx
	movl	%ebx, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB93_5
# BB#4:
	testl	%ebx, %ebx
	movl	$1, -64(%rbp)
	je	.LBB93_5
# BB#19:
	movl	$1, -60(%rbp)
.LBB93_5:
	movl	-60(%rbp), %eax
	notl	%eax
	testl	-64(%rbp), %eax
	je	.LBB93_6
# BB#20:
	movq	__imp__iki_stmt_online(%rip), %rbx
	movl	$26214489, %ecx         # imm = 0x1900059
	callq	*%rbx
	movq	__imp__iki_malloc8(%rip), %r14
	callq	*%r14
	movq	%rax, %rdi
	movq	__imp__iki_std_memset(%rip), %r15
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r15
	movl	ng0(%rip), %eax
	andl	$15, %eax
	movl	%eax, (%rdi)
	movl	ng0+4(%rip), %eax
	andl	$15, %eax
	movl	%eax, 4(%rdi)
	leaq	544(%rsi), %rcx
	leaq	1888(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$3, 32(%rsp)
	movq	__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip), %r12
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r12
	movl	$26214490, %ecx         # imm = 0x190005A
	callq	*%rbx
	leaq	96(%rsi), %rcx
	movl	$4, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movq	%rax, %rdi
	callq	*%r14
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*%r15
	movl	(%rdi), %eax
	andl	$15, %eax
	movl	%eax, (%rbx)
	movl	4(%rdi), %eax
	andl	$15, %eax
	movl	%eax, 4(%rbx)
	leaq	488(%rsi), %rcx
	leaq	1928(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$3, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rbx, %r8
	callq	*%r12
	jmp	.LBB93_18
.LBB93_6:
	movl	$26214491, %ecx         # imm = 0x190005B
	callq	*__imp__iki_stmt_online(%rip)
	movq	384(%rsi), %rdi
	leaq	-64(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %ecx
	movl	4(%rdi), %ebx
	xorl	ng4(%rip), %ecx
	movl	ng4+4(%rip), %edx
	movl	%ebx, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %ebx
	movl	%ebx, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB93_8
# BB#7:
	testl	%ebx, %ebx
	movl	$1, -64(%rbp)
	je	.LBB93_8
# BB#21:
	movl	$1, -60(%rbp)
.LBB93_8:
	movl	-60(%rbp), %eax
	notl	%eax
	testl	-64(%rbp), %eax
	je	.LBB93_9
# BB#22:
	movl	$26214492, %ecx         # imm = 0x190005C
	callq	*__imp__iki_stmt_online(%rip)
	leaq	544(%rsi), %rdi
	movq	552(%rsi), %rbx
	leaq	-72(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, 4(%rbx)
	jne	.LBB93_26
# BB#23:
	cmpl	$0, ng5+4(%rip)
	je	.LBB93_24
.LBB93_26:
	movq	$-1, -72(%rbp)
.LBB93_25:
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	-72(%rbp), %eax
	andl	$15, %eax
	movl	%eax, (%rbx)
	movl	-68(%rbp), %eax
	andl	$15, %eax
	movl	%eax, 4(%rbx)
	leaq	1968(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$3, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %rcx
	movq	%rbx, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
	jmp	.LBB93_18
.LBB93_9:
	movl	$26214493, %ecx         # imm = 0x190005D
	callq	*__imp__iki_stmt_online(%rip)
	movq	384(%rsi), %rdi
	leaq	-64(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %ecx
	movl	4(%rdi), %ebx
	xorl	ng6(%rip), %ecx
	movl	ng6+4(%rip), %edx
	movl	%ebx, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %ebx
	movl	%ebx, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB93_11
# BB#10:
	testl	%ebx, %ebx
	movl	$1, -64(%rbp)
	je	.LBB93_11
# BB#27:
	movl	$1, -60(%rbp)
.LBB93_11:
	leaq	-72(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	-64(%rbp), %ecx
	testb	$1, %cl
	je	.LBB93_12
# BB#28:
	movl	$1, -72(%rbp)
	jmp	.LBB93_13
.LBB93_12:
	testl	%eax, %eax
	je	.LBB93_13
# BB#29:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -72(%rbp)
.LBB93_13:
	cmpl	$0, -72(%rbp)
	movb	$1, %al
	je	.LBB93_15
# BB#14:
	cmpl	$0, -68(%rbp)
	setne	%al
.LBB93_15:
	testb	%al, %al
	je	.LBB93_16
# BB#30:
	movq	384(%rsi), %rdi
	leaq	-80(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %ecx
	movl	4(%rdi), %ebx
	xorl	ng7(%rip), %ecx
	movl	ng7+4(%rip), %edx
	movl	%ebx, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %ebx
	movl	%ebx, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB93_32
# BB#31:
	testl	%ebx, %ebx
	movl	$1, -80(%rbp)
	je	.LBB93_32
# BB#36:
	movl	$1, -76(%rbp)
.LBB93_32:
	leaq	-88(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	-76(%rbp), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	-80(%rbp), %ecx
	testb	$1, %cl
	je	.LBB93_33
# BB#37:
	movl	$1, -88(%rbp)
	jmp	.LBB93_34
.LBB93_16:
	leaq	-96(%rbp), %rcx
	leaq	-72(%rbp), %rdx
	movl	$8, %r8d
	callq	*__imp__iki_std_memcpy(%rip)
	andl	$1, -96(%rbp)
	andl	$1, -92(%rbp)
	jmp	.LBB93_17
.LBB93_24:
	movl	(%rbx), %eax
	addl	ng5(%rip), %eax
	movl	%eax, -72(%rbp)
	movl	$0, -68(%rbp)
	jmp	.LBB93_25
.LBB93_33:
	testl	%eax, %eax
	je	.LBB93_34
# BB#38:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -88(%rbp)
.LBB93_34:
	movl	-72(%rbp), %eax
	orl	-88(%rbp), %eax
	movl	%eax, -96(%rbp)
	movl	-68(%rbp), %eax
	orl	-84(%rbp), %eax
	movl	%eax, -92(%rbp)
	je	.LBB93_17
# BB#35:
	orl	%eax, -96(%rbp)
	movl	-68(%rbp), %eax
	notl	%eax
	andl	-72(%rbp), %eax
	notl	%eax
	andl	-92(%rbp), %eax
	movl	-84(%rbp), %ecx
	notl	%ecx
	andl	-88(%rbp), %ecx
	notl	%ecx
	andl	%eax, %ecx
	movl	%ecx, -92(%rbp)
.LBB93_17:
	movl	-92(%rbp), %eax
	notl	%eax
	testl	-96(%rbp), %eax
	je	.LBB93_18
# BB#39:
	movl	$26214494, %ecx         # imm = 0x190005E
	callq	*__imp__iki_stmt_online(%rip)
	leaq	544(%rsi), %rdi
	movq	552(%rsi), %rbx
	leaq	-104(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, 4(%rbx)
	jne	.LBB93_43
# BB#40:
	cmpl	$0, ng5+4(%rip)
	je	.LBB93_41
.LBB93_43:
	movq	$-1, -104(%rbp)
.LBB93_42:
	movq	__imp__iki_malloc8(%rip), %r15
	callq	*%r15
	movq	%rax, %rbx
	movq	__imp__iki_std_memset(%rip), %r12
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*%r12
	movl	-104(%rbp), %eax
	andl	$15, %eax
	movl	%eax, (%rbx)
	movl	-100(%rbp), %eax
	andl	$15, %eax
	movl	%eax, 4(%rbx)
	leaq	2008(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$3, 32(%rsp)
	movq	__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip), %r13
	xorl	%r9d, %r9d
	movq	%rbx, %r8
	movq	%rdi, %rcx
	callq	*%r13
	movl	$26214495, %ecx         # imm = 0x190005F
	callq	*__imp__iki_stmt_online(%rip)
	leaq	488(%rsi), %r14
	movq	496(%rsi), %rbx
	leaq	-64(%rbp), %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r12
	leaq	ng5(%rip), %rax
	movq	%rax, 32(%rsp)
	movl	$32, 40(%rsp)
	movl	$4, %edx
	movl	$4, %r9d
	movq	%rdi, %rcx
	movq	%rbx, %r8
	callq	*__imp__iki_vlog_unsigned_lshift(%rip)
	movq	%rax, %rdi
	callq	*%r15
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*%r12
	movl	(%rdi), %eax
	andl	$15, %eax
	movl	%eax, (%rbx)
	movl	4(%rdi), %eax
	andl	$15, %eax
	movl	%eax, 4(%rbx)
	leaq	2048(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$3, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%r14, %rcx
	movq	%rbx, %r8
	callq	*%r13
.LBB93_18:
	movl	$26214487, %ecx         # imm = 0x1900057
	callq	*__imp__iki_stmt_online(%rip)
	movb	$1, 1880(%rsi)
	leaq	.Ltmp324(%rip), %rax
	movq	%rax, 1800(%rsi)
	addq	$104, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB93_41:
	movl	(%rbx), %eax
	addl	ng5(%rip), %eax
	movl	%eax, -104(%rbp)
	movl	$0, -100(%rbp)
	jmp	.LBB93_42

	.def	 _execute_73;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_73
	.align	16, 0x90
_execute_73:                            # @_execute_73
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$88, %rsp
	movq	%rdx, %rsi
	.align	16, 0x90
.LBB94_1:                               # =>This Inner Loop Header: Depth=1
	movl	$47, %edx
	movq	%rsi, %rcx
	callq	*__imp__iki_vlog_set_threadId_for_unrandom(%rip)
	movq	2128(%rsi), %rax
	testq	%rax, %rax
	je	.LBB94_17
# BB#2:                                 #   in Loop: Header=BB94_1 Depth=1
	jmpq	*%rax
.Ltmp328:                               # Block address taken
.LBB94_3:
	movb	$0, 2208(%rsi)
	movq	__imp__iki_stmt_online(%rip), %r14
	movl	$26214504, %ecx         # imm = 0x1900068
	callq	*%r14
	movq	440(%rsi), %rdi
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %eax
	andl	$15, %eax
	movl	%eax, (%rbx)
	movl	4(%rdi), %eax
	andl	$15, %eax
	movl	%eax, 4(%rbx)
	leaq	376(%rsi), %r15
	leaq	2216(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$3, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%r15, %rcx
	movq	%rbx, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
	movl	$26214507, %ecx         # imm = 0x190006B
	callq	*%r14
	leaq	152(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movl	4(%rax), %ecx
	notl	%ecx
	testl	(%rax), %ecx
	je	.LBB94_4
# BB#18:
	movl	$26214508, %ecx         # imm = 0x190006C
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	ng5(%rip), %eax
	andl	$1, %eax
	movl	%eax, (%rbx)
	movl	ng5+4(%rip), %eax
	andl	$1, %eax
	movl	%eax, 4(%rbx)
	leaq	992(%rsi), %rcx
	leaq	2256(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$0, 32(%rsp)
	xorl	%r9d, %r9d
	jmp	.LBB94_13
.LBB94_4:
	movl	$26214509, %ecx         # imm = 0x190006D
	callq	*__imp__iki_stmt_online(%rip)
	leaq	992(%rsi), %r14
	movq	1000(%rsi), %rdi
	leaq	-48(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	4(%rdi), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	(%rdi), %ecx
	testb	$1, %cl
	je	.LBB94_5
# BB#19:
	movl	$1, -48(%rbp)
	jmp	.LBB94_6
.LBB94_5:
	testl	%eax, %eax
	je	.LBB94_6
# BB#20:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -48(%rbp)
.LBB94_6:
	cmpl	$0, -48(%rbp)
	movb	$1, %al
	jne	.LBB94_8
# BB#7:
	cmpl	$0, -44(%rbp)
	setne	%al
.LBB94_8:
	testb	%al, %al
	je	.LBB94_9
# BB#21:
	movq	8(%r15), %rdi
	leaq	-56(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %ecx
	movl	4(%rdi), %ebx
	xorl	ng1(%rip), %ecx
	movl	ng1+4(%rip), %edx
	movl	%ebx, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %ebx
	movl	%ebx, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB94_23
# BB#22:
	testl	%ebx, %ebx
	movl	$1, -56(%rbp)
	je	.LBB94_23
# BB#27:
	movl	$1, -52(%rbp)
.LBB94_23:
	leaq	-64(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	-56(%rbp), %ecx
	testb	$1, %cl
	je	.LBB94_24
# BB#28:
	movl	$1, -64(%rbp)
	jmp	.LBB94_25
.LBB94_9:
	leaq	-72(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	movl	$8, %r8d
	callq	*__imp__iki_std_memcpy(%rip)
	andl	$1, -72(%rbp)
	andl	$1, -68(%rbp)
	jmp	.LBB94_10
.LBB94_24:
	testl	%eax, %eax
	je	.LBB94_25
# BB#29:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -64(%rbp)
.LBB94_25:
	movl	-48(%rbp), %eax
	andl	-64(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	-44(%rbp), %eax
	orl	-60(%rbp), %eax
	movl	%eax, -68(%rbp)
	je	.LBB94_10
# BB#26:
	orl	%eax, -72(%rbp)
	movl	-48(%rbp), %eax
	movl	-44(%rbp), %ecx
	notl	%eax
	notl	%ecx
	andl	%eax, %ecx
	notl	%ecx
	andl	-68(%rbp), %ecx
	movl	-64(%rbp), %eax
	movl	-60(%rbp), %edx
	notl	%eax
	notl	%edx
	andl	%eax, %edx
	notl	%edx
	andl	%ecx, %edx
	movl	%edx, -68(%rbp)
	movl	-48(%rbp), %eax
	movl	-44(%rbp), %ecx
	notl	%eax
	notl	%ecx
	andl	%eax, %ecx
	notl	%ecx
	andl	-72(%rbp), %ecx
	movl	-64(%rbp), %eax
	movl	-60(%rbp), %edx
	notl	%eax
	notl	%edx
	andl	%eax, %edx
	notl	%edx
	andl	%ecx, %edx
	movl	%edx, -72(%rbp)
.LBB94_10:
	movl	-68(%rbp), %eax
	notl	%eax
	testl	-72(%rbp), %eax
	je	.LBB94_11
# BB#30:
	movl	$26214510, %ecx         # imm = 0x190006E
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	ng5(%rip), %eax
	andl	$1, %eax
	movl	%eax, (%rbx)
	movl	ng5+4(%rip), %eax
	andl	$1, %eax
	movl	%eax, 4(%rbx)
	leaq	2296(%rsi), %rdx
	jmp	.LBB94_12
.LBB94_11:
	movl	$26214512, %ecx         # imm = 0x1900070
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	ng0(%rip), %eax
	andl	$1, %eax
	movl	%eax, (%rbx)
	movl	ng0+4(%rip), %eax
	andl	$1, %eax
	movl	%eax, 4(%rbx)
	leaq	2336(%rsi), %rdx
.LBB94_12:
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$0, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%r14, %rcx
.LBB94_13:
	movq	%rbx, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
	movl	$26214515, %ecx         # imm = 0x1900073
	callq	*__imp__iki_stmt_online(%rip)
	movq	888(%rsi), %rax
	movl	4(%rax), %ecx
	notl	%ecx
	testl	(%rax), %ecx
	je	.LBB94_14
# BB#31:
	movl	$26214516, %ecx         # imm = 0x1900074
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	$33554431, %eax         # imm = 0x1FFFFFF
	movl	ng0(%rip), %ecx
	andl	%eax, %ecx
	movl	%ecx, (%rdi)
	andl	ng0+4(%rip), %eax
	movl	%eax, 4(%rdi)
	leaq	768(%rsi), %rcx
	leaq	2376(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$24, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
	jmp	.LBB94_17
.LBB94_14:
	movl	$26214517, %ecx         # imm = 0x1900075
	callq	*__imp__iki_stmt_online(%rip)
	movq	8(%r15), %rdi
	leaq	-48(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %ecx
	movl	4(%rdi), %ebx
	xorl	ng1(%rip), %ecx
	movl	ng1+4(%rip), %edx
	movl	%ebx, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %ebx
	movl	%ebx, %ecx
	notl	%ecx
	testl	%ecx, %eax
	je	.LBB94_15
# BB#32:
	movl	$1, -48(%rbp)
	jmp	.LBB94_16
.LBB94_15:
	testl	%ebx, %ebx
	je	.LBB94_16
# BB#33:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -48(%rbp)
.LBB94_16:
	movl	-44(%rbp), %eax
	notl	%eax
	testl	-48(%rbp), %eax
	je	.LBB94_17
# BB#34:
	movl	$26214518, %ecx         # imm = 0x1900076
	callq	*__imp__iki_stmt_online(%rip)
	leaq	768(%rsi), %rdi
	movq	776(%rsi), %rbx
	leaq	-56(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, 4(%rbx)
	jne	.LBB94_38
# BB#35:
	cmpl	$0, ng5+4(%rip)
	je	.LBB94_36
.LBB94_38:
	movq	$-1, -56(%rbp)
.LBB94_37:
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	$33554431, %eax         # imm = 0x1FFFFFF
	movl	-56(%rbp), %ecx
	andl	%eax, %ecx
	movl	%ecx, (%rbx)
	andl	-52(%rbp), %eax
	movl	%eax, 4(%rbx)
	leaq	2416(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$24, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %rcx
	movq	%rbx, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
.LBB94_17:
	movl	$26214503, %ecx         # imm = 0x1900067
	callq	*__imp__iki_stmt_online(%rip)
	movb	$1, 2208(%rsi)
	leaq	.Ltmp328(%rip), %rax
	movq	%rax, 2128(%rsi)
	addq	$88, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB94_36:
	movl	(%rbx), %eax
	addl	ng5(%rip), %eax
	movl	%eax, -56(%rbp)
	movl	$0, -52(%rbp)
	jmp	.LBB94_37

	.def	 _execute_74;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_74
	.align	16, 0x90
_execute_74:                            # @_execute_74
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$104, %rsp
	movq	%rdx, %rsi
	leaq	2456(%rsi), %r15
	.align	16, 0x90
.LBB95_1:                               # =>This Inner Loop Header: Depth=1
	movl	$48, %edx
	movq	%rsi, %rcx
	callq	*__imp__iki_vlog_set_threadId_for_unrandom(%rip)
	movq	2496(%rsi), %rax
	testq	%rax, %rax
	je	.LBB95_24
# BB#2:                                 #   in Loop: Header=BB95_1 Depth=1
	jmpq	*%rax
.Ltmp332:                               # Block address taken
.LBB95_3:
	movb	$0, 2576(%rsi)
	movl	$26214525, %ecx         # imm = 0x190007D
	callq	*__imp__iki_stmt_online(%rip)
	movq	776(%rsi), %rdi
	movq	832(%rsi), %rbx
	leaq	-64(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %ecx
	movl	4(%rdi), %edi
	xorl	(%rbx), %ecx
	movl	4(%rbx), %edx
	movl	%edi, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %edi
	movl	%edi, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB95_5
# BB#4:
	testl	%edi, %edi
	movl	$1, -64(%rbp)
	je	.LBB95_5
# BB#12:
	movl	$1, -60(%rbp)
.LBB95_5:
	leaq	824(%rsi), %r14
	leaq	880(%rsi), %rcx
	leaq	2584(%rsi), %rdx
	leaq	-64(%rbp), %rdi
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var_setback0(%rip)
	movl	$26214527, %ecx         # imm = 0x190007F
	callq	*__imp__iki_stmt_online(%rip)
	movq	384(%rsi), %rdx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	ng1(%rip), %r8
	movl	$4, %edx
	movl	$4, %r9d
	movq	%rdi, %rcx
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB95_6
# BB#13:
	movq	__imp__iki_stmt_online(%rip), %r15
	movl	$26214530, %ecx         # imm = 0x1900082
	callq	*%r15
	movq	__imp__iki_malloc8(%rip), %rdi
	callq	*%rdi
	movq	%rax, %rbx
	movq	__imp__iki_std_memset(%rip), %r12
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*%r12
	movzbl	ng5(%rip), %eax
	movl	%eax, (%rbx)
	movzbl	ng5+4(%rip), %eax
	movl	%eax, 4(%rbx)
	leaq	656(%rsi), %rcx
	leaq	2616(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$7, 32(%rsp)
	movq	__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip), %r13
	xorl	%r9d, %r9d
	movq	%rbx, %r8
	callq	*%r13
	movl	$26214531, %ecx         # imm = 0x1900083
	callq	*%r15
	callq	*%rdi
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r12
	movl	$33554431, %eax         # imm = 0x1FFFFFF
	movl	ng0(%rip), %ecx
	andl	%eax, %ecx
	movl	%ecx, (%rdi)
	andl	ng0+4(%rip), %eax
	movl	%eax, 4(%rdi)
	leaq	2656(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$24, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%r14, %rcx
	movq	%rdi, %r8
	callq	*%r13
	movl	$26214532, %ecx         # imm = 0x1900084
	callq	*%r15
	movq	1000(%rsi), %rdi
	leaq	-80(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*%r12
	movl	4(%rdi), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	(%rdi), %ecx
	testb	$1, %cl
	je	.LBB95_14
# BB#54:
	movl	$1, -80(%rbp)
	jmp	.LBB95_15
.LBB95_6:
	movq	%r14, -104(%rbp)        # 8-byte Spill
	leaq	ng2(%rip), %r8
	leaq	-64(%rbp), %rcx
	movl	$4, %edx
	movl	$4, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB95_7
# BB#25:
	movq	__imp__iki_stmt_online(%rip), %rdi
	movl	$26214537, %ecx         # imm = 0x1900089
	callq	*%rdi
	movq	%rdi, %r14
	movq	__imp__iki_malloc8(%rip), %rdi
	callq	*%rdi
	movq	%rdi, %r12
	movq	%rax, %rdi
	movq	__imp__iki_std_memset(%rip), %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%rbx
	movq	%rbx, %r13
	movzbl	1240(%rsi), %eax
	movl	%eax, (%rdi)
	movzbl	1244(%rsi), %eax
	movl	%eax, 4(%rdi)
	leaq	656(%rsi), %rcx
	leaq	2728(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
	movl	$26214538, %ecx         # imm = 0x190008A
	callq	*%r14
	leaq	4128(%rsi), %rcx
	movl	$176, %edx
	callq	*__imp__iki_initialize_function_call(%rip)
	movq	%rax, %rdi
	leaq	4072(%rsi), %rcx
	leaq	3480(%rsi), %rdx
	leaq	1248(%rsi), %r8
	movl	$31, 32(%rsp)
	xorl	%r9d, %r9d
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var(%rip)
	leaq	_subprog_m_16d7fe86_5b037da0_1(%rip), %r8
	movq	%r15, %rcx
	movq	%rdi, %rdx
	movq	%rsi, %r9
	callq	*__imp__iki_vlog_invoke_function(%rip)
	leaq	4016(%rsi), %rcx
	movl	$25, %edx
	callq	*__imp__iki_vlog_signal_handle_value(%rip)
	movq	%rax, %rdi
	leaq	-72(%rbp), %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*%r13
	movl	$25, 32(%rsp)
	xorl	%edx, %edx
	xorl	%r9d, %r9d
	movq	%rbx, %rcx
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_bit_copy(%rip)
	movq	2536(%rsi), %rcx
	callq	*__imp__iki_vlog_delete_function_invocation(%rip)
	callq	*%r12
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*%r13
	movl	$33554431, %eax         # imm = 0x1FFFFFF
	movl	-72(%rbp), %ecx
	andl	%eax, %ecx
	movl	%ecx, (%rbx)
	andl	-68(%rbp), %eax
	movl	%eax, 4(%rbx)
	leaq	2768(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$24, 32(%rsp)
	xorl	%r9d, %r9d
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	%rbx, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
	movl	$26214539, %ecx         # imm = 0x190008B
	callq	*%r14
	movq	888(%rsi), %rdi
	leaq	-80(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*%r13
	movl	4(%rdi), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	(%rdi), %ecx
	testb	$1, %cl
	je	.LBB95_26
# BB#61:
	movl	$1, -80(%rbp)
	jmp	.LBB95_27
.LBB95_7:
	leaq	ng3(%rip), %r8
	leaq	-64(%rbp), %rcx
	movl	$4, %edx
	movl	$4, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB95_8
# BB#33:
	movq	__imp__iki_stmt_online(%rip), %rdi
	movl	$26214544, %ecx         # imm = 0x1900090
	callq	*%rdi
	movq	%rdi, %r13
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	movq	__imp__iki_std_memset(%rip), %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%rbx
	movq	%rbx, %r14
	movzbl	ng0(%rip), %eax
	movl	%eax, (%rdi)
	movzbl	ng0+4(%rip), %eax
	movl	%eax, 4(%rdi)
	leaq	656(%rsi), %rcx
	leaq	2872(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$7, 32(%rsp)
	movq	__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip), %rbx
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%rbx
	movq	%rbx, %r12
	movl	$26214545, %ecx         # imm = 0x1900091
	callq	*%r13
	leaq	4128(%rsi), %rcx
	movl	$176, %edx
	callq	*__imp__iki_initialize_function_call(%rip)
	movq	%rax, %rdi
	leaq	4072(%rsi), %rcx
	leaq	3480(%rsi), %rdx
	leaq	1272(%rsi), %r8
	movl	$31, 32(%rsp)
	xorl	%r9d, %r9d
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var(%rip)
	leaq	_subprog_m_16d7fe86_5b037da0_1(%rip), %r8
	movq	%r15, %rcx
	movq	%rdi, %rdx
	movq	%rsi, %r9
	callq	*__imp__iki_vlog_invoke_function(%rip)
	leaq	4016(%rsi), %rcx
	movl	$25, %edx
	callq	*__imp__iki_vlog_signal_handle_value(%rip)
	movq	%rax, %rdi
	leaq	-72(%rbp), %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*%r14
	movl	$25, 32(%rsp)
	xorl	%edx, %edx
	xorl	%r9d, %r9d
	movq	%rbx, %rcx
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_bit_copy(%rip)
	movq	2536(%rsi), %rcx
	callq	*__imp__iki_vlog_delete_function_invocation(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r14
	movl	$33554431, %eax         # imm = 0x1FFFFFF
	movl	-72(%rbp), %ecx
	andl	%eax, %ecx
	movl	%ecx, (%rdi)
	andl	-68(%rbp), %eax
	movl	%eax, 4(%rdi)
	leaq	2912(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$24, 32(%rsp)
	xorl	%r9d, %r9d
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	%rdi, %r8
	callq	*%r12
	movl	$26214546, %ecx         # imm = 0x1900092
	callq	*%r13
	movq	888(%rsi), %rax
	movl	4(%rax), %ecx
	notl	%ecx
	testl	(%rax), %ecx
	je	.LBB95_34
# BB#64:
	movl	$26214547, %ecx         # imm = 0x1900093
	callq	*__imp__iki_stmt_online(%rip)
	movq	552(%rsi), %rdi
	leaq	-72(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %ecx
	movl	4(%rdi), %ebx
	xorl	ng0(%rip), %ecx
	movl	ng0+4(%rip), %edx
	movl	%ebx, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %ebx
	movl	%ebx, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB95_66
# BB#65:
	testl	%ebx, %ebx
	movl	$1, -72(%rbp)
	je	.LBB95_66
# BB#71:
	movl	$1, -68(%rbp)
.LBB95_66:
	movl	-68(%rbp), %eax
	notl	%eax
	testl	-72(%rbp), %eax
	je	.LBB95_67
# BB#72:
	movl	$26214548, %ecx         # imm = 0x1900094
	callq	*__imp__iki_stmt_online(%rip)
	leaq	432(%rsi), %rcx
	leaq	3624(%rsi), %rdx
	movl	$3, 32(%rsp)
	leaq	ng4(%rip), %r8
	jmp	.LBB95_23
.LBB95_14:
	testl	%eax, %eax
	je	.LBB95_15
# BB#55:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -80(%rbp)
.LBB95_15:
	cmpl	$0, -80(%rbp)
	movb	$1, %al
	je	.LBB95_17
# BB#16:
	cmpl	$0, -76(%rbp)
	setne	%al
.LBB95_17:
	testb	%al, %al
	je	.LBB95_18
# BB#56:
	movq	384(%rsi), %rbx
.LBB95_18:
	cmpl	$0, -76(%rbp)
	je	.LBB95_19
# BB#57:
	movq	%rbx, 32(%rsp)
	movl	$4, 40(%rsp)
	leaq	ng2(%rip), %r8
	jmp	.LBB95_58
.LBB95_19:
	cmpl	$0, -80(%rbp)
	je	.LBB95_20
# BB#59:
	leaq	ng2(%rip), %rdx
	jmp	.LBB95_60
.LBB95_8:
	leaq	ng4(%rip), %r8
	leaq	-64(%rbp), %rcx
	movl	$4, %edx
	movl	$4, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB95_9
# BB#35:
	movq	__imp__iki_stmt_online(%rip), %rdi
	movl	$26214559, %ecx         # imm = 0x190009F
	callq	*%rdi
	movq	%rdi, %r13
	movq	__imp__iki_malloc8(%rip), %rdi
	callq	*%rdi
	movq	%rdi, %r14
	movq	%rax, %rdi
	movq	__imp__iki_std_memset(%rip), %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%rbx
	movq	%rbx, %r12
	movzbl	1320(%rsi), %eax
	movl	%eax, (%rdi)
	movzbl	1324(%rsi), %eax
	movl	%eax, 4(%rdi)
	leaq	656(%rsi), %rcx
	leaq	3112(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
	movl	$26214560, %ecx         # imm = 0x19000A0
	callq	*%r13
	leaq	4128(%rsi), %rcx
	movl	$176, %edx
	callq	*__imp__iki_initialize_function_call(%rip)
	movq	%rax, %rdi
	leaq	4072(%rsi), %rcx
	leaq	3480(%rsi), %rdx
	leaq	1328(%rsi), %r8
	movl	$31, 32(%rsp)
	xorl	%r9d, %r9d
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var(%rip)
	leaq	_subprog_m_16d7fe86_5b037da0_1(%rip), %r8
	movq	%r15, %rcx
	movq	%rdi, %rdx
	movq	%rsi, %r9
	callq	*__imp__iki_vlog_invoke_function(%rip)
	leaq	4016(%rsi), %rcx
	movl	$25, %edx
	callq	*__imp__iki_vlog_signal_handle_value(%rip)
	movq	%rax, %rdi
	leaq	-72(%rbp), %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*%r12
	movl	$25, 32(%rsp)
	xorl	%edx, %edx
	xorl	%r9d, %r9d
	movq	%rbx, %rcx
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_bit_copy(%rip)
	movq	2536(%rsi), %rcx
	callq	*__imp__iki_vlog_delete_function_invocation(%rip)
	callq	*%r14
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*%r12
	movl	$33554431, %eax         # imm = 0x1FFFFFF
	movl	-72(%rbp), %ecx
	andl	%eax, %ecx
	movl	%ecx, (%rbx)
	andl	-68(%rbp), %eax
	movl	%eax, 4(%rbx)
	leaq	3152(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$24, 32(%rsp)
	xorl	%r9d, %r9d
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	%rbx, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
	movl	$26214561, %ecx         # imm = 0x19000A1
	callq	*%r13
	movq	888(%rsi), %rdi
	leaq	-80(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*%r12
	movl	4(%rdi), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	(%rdi), %ecx
	testb	$1, %cl
	je	.LBB95_36
# BB#85:
	movl	$1, -80(%rbp)
	jmp	.LBB95_37
.LBB95_26:
	testl	%eax, %eax
	je	.LBB95_27
# BB#62:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -80(%rbp)
.LBB95_27:
	cmpl	$0, -80(%rbp)
	movb	$1, %al
	je	.LBB95_29
# BB#28:
	cmpl	$0, -76(%rbp)
	setne	%al
.LBB95_29:
	testb	%al, %al
	je	.LBB95_30
# BB#63:
	movq	384(%rsi), %rbx
	jmp	.LBB95_30
.LBB95_9:
	leaq	ng6(%rip), %r8
	leaq	-64(%rbp), %rcx
	movl	$4, %edx
	movl	$4, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB95_10
# BB#42:
	movq	__imp__iki_stmt_online(%rip), %rdi
	movl	$26214566, %ecx         # imm = 0x19000A6
	callq	*%rdi
	movq	%rdi, %r13
	movq	__imp__iki_malloc8(%rip), %rdi
	callq	*%rdi
	movq	%rdi, %r14
	movq	%rax, %rdi
	movq	__imp__iki_std_memset(%rip), %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%rbx
	movq	%rbx, %r12
	movzbl	1352(%rsi), %eax
	movl	%eax, (%rdi)
	movzbl	1356(%rsi), %eax
	movl	%eax, 4(%rdi)
	leaq	656(%rsi), %rcx
	leaq	3256(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
	movl	$26214567, %ecx         # imm = 0x19000A7
	callq	*%r13
	leaq	4128(%rsi), %rcx
	movl	$176, %edx
	callq	*__imp__iki_initialize_function_call(%rip)
	movq	%rax, %rdi
	leaq	4072(%rsi), %rcx
	leaq	3480(%rsi), %rdx
	leaq	1360(%rsi), %r8
	movl	$31, 32(%rsp)
	xorl	%r9d, %r9d
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var(%rip)
	leaq	_subprog_m_16d7fe86_5b037da0_1(%rip), %r8
	movq	%r15, %rcx
	movq	%rdi, %rdx
	movq	%rsi, %r9
	callq	*__imp__iki_vlog_invoke_function(%rip)
	leaq	4016(%rsi), %rcx
	movl	$25, %edx
	callq	*__imp__iki_vlog_signal_handle_value(%rip)
	movq	%rax, %rdi
	leaq	-72(%rbp), %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*%r12
	movl	$25, 32(%rsp)
	xorl	%edx, %edx
	xorl	%r9d, %r9d
	movq	%rbx, %rcx
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_bit_copy(%rip)
	movq	2536(%rsi), %rcx
	callq	*__imp__iki_vlog_delete_function_invocation(%rip)
	callq	*%r14
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*%r12
	movl	$33554431, %eax         # imm = 0x1FFFFFF
	movl	-72(%rbp), %ecx
	andl	%eax, %ecx
	movl	%ecx, (%rbx)
	andl	-68(%rbp), %eax
	movl	%eax, 4(%rbx)
	leaq	3296(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$24, 32(%rsp)
	xorl	%r9d, %r9d
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	%rbx, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
	movl	$26214568, %ecx         # imm = 0x19000A8
	callq	*%r13
	movq	888(%rsi), %rdi
	leaq	-80(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*%r12
	movl	4(%rdi), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	(%rdi), %ecx
	testb	$1, %cl
	je	.LBB95_43
# BB#87:
	movl	$1, -80(%rbp)
	jmp	.LBB95_44
.LBB95_34:
	movl	$26214554, %ecx         # imm = 0x190009A
	callq	*__imp__iki_stmt_online(%rip)
	movq	384(%rsi), %r8
	leaq	432(%rsi), %rcx
	leaq	3624(%rsi), %rdx
	movl	$3, 32(%rsp)
	jmp	.LBB95_23
.LBB95_10:
	leaq	ng7(%rip), %r8
	leaq	-64(%rbp), %rcx
	movl	$4, %edx
	movl	$4, %r9d
	callq	*__imp__iki_vlog_unsigned_case_compare(%rip)
	cmpl	$1, %eax
	jne	.LBB95_11
# BB#48:
	movq	__imp__iki_stmt_online(%rip), %rdi
	movl	$26214573, %ecx         # imm = 0x19000AD
	callq	*%rdi
	movq	%rdi, %r13
	movq	__imp__iki_malloc8(%rip), %rdi
	callq	*%rdi
	movq	%rdi, %r14
	movq	%rax, %rdi
	movq	__imp__iki_std_memset(%rip), %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%rbx
	movq	%rbx, %r12
	movzbl	1384(%rsi), %eax
	movl	%eax, (%rdi)
	movzbl	1388(%rsi), %eax
	movl	%eax, 4(%rdi)
	leaq	656(%rsi), %rcx
	leaq	3400(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$7, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
	movl	$26214574, %ecx         # imm = 0x19000AE
	callq	*%r13
	leaq	4128(%rsi), %rcx
	movl	$176, %edx
	callq	*__imp__iki_initialize_function_call(%rip)
	movq	%rax, %rdi
	leaq	4072(%rsi), %rcx
	leaq	3480(%rsi), %rdx
	leaq	1392(%rsi), %r8
	movl	$31, 32(%rsp)
	xorl	%r9d, %r9d
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var(%rip)
	leaq	_subprog_m_16d7fe86_5b037da0_1(%rip), %r8
	movq	%r15, %rcx
	movq	%rdi, %rdx
	movq	%rsi, %r9
	callq	*__imp__iki_vlog_invoke_function(%rip)
	leaq	4016(%rsi), %rcx
	movl	$25, %edx
	callq	*__imp__iki_vlog_signal_handle_value(%rip)
	movq	%rax, %rdi
	leaq	-72(%rbp), %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*%r12
	movl	$25, 32(%rsp)
	xorl	%edx, %edx
	xorl	%r9d, %r9d
	movq	%rbx, %rcx
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_bit_copy(%rip)
	movq	2536(%rsi), %rcx
	callq	*__imp__iki_vlog_delete_function_invocation(%rip)
	callq	*%r14
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*%r12
	movl	$33554431, %eax         # imm = 0x1FFFFFF
	movl	-72(%rbp), %ecx
	andl	%eax, %ecx
	movl	%ecx, (%rbx)
	andl	-68(%rbp), %eax
	movl	%eax, 4(%rbx)
	leaq	3440(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$24, 32(%rsp)
	xorl	%r9d, %r9d
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	%rbx, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
	movl	$26214575, %ecx         # imm = 0x19000AF
	callq	*%r13
	movq	888(%rsi), %rdi
	leaq	-80(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*%r12
	movl	4(%rdi), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	(%rdi), %ecx
	testb	$1, %cl
	je	.LBB95_49
# BB#89:
	movl	$1, -80(%rbp)
	jmp	.LBB95_50
.LBB95_67:
	movl	$26214549, %ecx         # imm = 0x1900095
	callq	*__imp__iki_stmt_online(%rip)
	movq	552(%rsi), %rdi
	leaq	-72(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, 4(%rdi)
	je	.LBB95_68
# BB#73:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -72(%rbp)
	jmp	.LBB95_69
.LBB95_36:
	testl	%eax, %eax
	je	.LBB95_37
# BB#86:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -80(%rbp)
.LBB95_37:
	cmpl	$0, -80(%rbp)
	movb	$1, %al
	je	.LBB95_39
# BB#38:
	cmpl	$0, -76(%rbp)
	setne	%al
.LBB95_39:
	testb	%al, %al
	je	.LBB95_30
# BB#40:
	movq	384(%rsi), %rbx
	jmp	.LBB95_30
.LBB95_11:
	movq	__imp__iki_stmt_online(%rip), %r15
	movl	$26214580, %ecx         # imm = 0x19000B4
	callq	*%r15
	movq	__imp__iki_malloc8(%rip), %rbx
	callq	*%rbx
	movq	%rax, %rdi
	movq	__imp__iki_std_memset(%rip), %r12
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r12
	movzbl	ng0(%rip), %eax
	movl	%eax, (%rdi)
	movzbl	ng0+4(%rip), %eax
	movl	%eax, 4(%rdi)
	leaq	656(%rsi), %rcx
	leaq	3544(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$7, 32(%rsp)
	movq	__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip), %r13
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r13
	movl	$26214581, %ecx         # imm = 0x19000B5
	callq	*%r15
	callq	*%rbx
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*%r12
	movl	$33554431, %eax         # imm = 0x1FFFFFF
	movl	ng0(%rip), %ecx
	andl	%eax, %ecx
	movl	%ecx, (%rdi)
	andl	ng0+4(%rip), %eax
	movl	%eax, 4(%rdi)
	leaq	3584(%rsi), %rdx
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$24, 32(%rsp)
	xorl	%r9d, %r9d
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	%rdi, %r8
	callq	*%r13
	movl	$26214582, %ecx         # imm = 0x19000B6
	callq	*%r15
	leaq	432(%rsi), %rcx
	leaq	3624(%rsi), %rdx
	movl	$3, 32(%rsp)
	leaq	ng2(%rip), %r8
	jmp	.LBB95_23
.LBB95_43:
	testl	%eax, %eax
	je	.LBB95_44
# BB#88:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -80(%rbp)
.LBB95_44:
	cmpl	$0, -80(%rbp)
	movb	$1, %al
	je	.LBB95_46
# BB#45:
	cmpl	$0, -76(%rbp)
	setne	%al
.LBB95_46:
	testb	%al, %al
	je	.LBB95_30
# BB#47:
	movq	384(%rsi), %rbx
	jmp	.LBB95_30
.LBB95_68:
	cmpl	$5, (%rdi)
	sbbl	%eax, %eax
	andl	$1, %eax
	movl	%eax, -72(%rbp)
.LBB95_69:
	movl	-68(%rbp), %eax
	notl	%eax
	testl	-72(%rbp), %eax
	je	.LBB95_70
# BB#74:
	movl	$26214550, %ecx         # imm = 0x1900096
	callq	*__imp__iki_stmt_online(%rip)
	movq	496(%rsi), %rdx
	leaq	-96(%rbp), %rcx
	movl	$3, %r8d
	callq	*__imp__iki_vlog_get_bit_select_value_simple(%rip)
	movq	%rax, %rdi
	leaq	-88(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	4(%rdi), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	(%rdi), %ecx
	testb	$1, %cl
	je	.LBB95_75
# BB#81:
	movl	$1, -88(%rbp)
	jmp	.LBB95_76
.LBB95_70:
	movl	$26214552, %ecx         # imm = 0x1900098
	callq	*__imp__iki_stmt_online(%rip)
	leaq	432(%rsi), %rcx
	leaq	3624(%rsi), %rdx
	movl	$3, 32(%rsp)
	leaq	ng1(%rip), %r8
	jmp	.LBB95_23
.LBB95_75:
	testl	%eax, %eax
	je	.LBB95_76
# BB#82:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -88(%rbp)
.LBB95_76:
	cmpl	$0, -84(%rbp)
	je	.LBB95_77
# BB#83:
	leaq	ng7(%rip), %rax
	movq	%rax, 32(%rsp)
	movl	$4, 40(%rsp)
	leaq	ng6(%rip), %r8
	leaq	-80(%rbp), %rcx
	movl	$4, %edx
	movl	$4, %r9d
	callq	*__imp__iki_vlog_unsigned_bit_combine(%rip)
	jmp	.LBB95_80
.LBB95_77:
	movl	-88(%rbp), %eax
	testl	%eax, %eax
	je	.LBB95_78
# BB#84:
	leaq	ng6(%rip), %rdx
	jmp	.LBB95_79
.LBB95_49:
	testl	%eax, %eax
	je	.LBB95_50
# BB#90:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -80(%rbp)
.LBB95_50:
	cmpl	$0, -80(%rbp)
	movb	$1, %al
	je	.LBB95_52
# BB#51:
	cmpl	$0, -76(%rbp)
	setne	%al
.LBB95_52:
	testb	%al, %al
	je	.LBB95_30
# BB#53:
	movq	384(%rsi), %rbx
.LBB95_30:
	cmpl	$0, -76(%rbp)
	je	.LBB95_31
# BB#41:
	movq	%rbx, 32(%rsp)
	movl	$4, 40(%rsp)
	leaq	ng3(%rip), %r8
.LBB95_58:
	leaq	-72(%rbp), %rcx
	movl	$4, %edx
	movl	$4, %r9d
	callq	*__imp__iki_vlog_unsigned_bit_combine(%rip)
	jmp	.LBB95_22
.LBB95_31:
	cmpl	$0, -80(%rbp)
	je	.LBB95_20
# BB#32:
	leaq	ng3(%rip), %rdx
.LBB95_60:
	leaq	-72(%rbp), %rcx
	movl	$8, %r8d
	jmp	.LBB95_21
.LBB95_20:
	leaq	-72(%rbp), %rcx
	movl	$8, %r8d
	movq	%rbx, %rdx
.LBB95_21:
	callq	*__imp__iki_std_memcpy(%rip)
.LBB95_22:
	leaq	432(%rsi), %rcx
	leaq	3624(%rsi), %rdx
	movl	$3, 32(%rsp)
	leaq	-72(%rbp), %r8
.LBB95_23:
	xorl	%r9d, %r9d
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var(%rip)
.LBB95_24:
	movl	$26214524, %ecx         # imm = 0x190007C
	callq	*__imp__iki_stmt_online(%rip)
	movb	$1, 2576(%rsi)
	leaq	.Ltmp332(%rip), %rax
	movq	%rax, 2496(%rsi)
	addq	$104, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB95_78:
	leaq	ng7(%rip), %rdx
.LBB95_79:
	leaq	-80(%rbp), %rcx
	movl	$8, %r8d
	callq	*__imp__iki_std_memcpy(%rip)
.LBB95_80:
	leaq	432(%rsi), %rcx
	leaq	3624(%rsi), %rdx
	movl	$3, 32(%rsp)
	leaq	-80(%rbp), %r8
	jmp	.LBB95_23

	.def	 _subprog_m_16d7fe86_5b037da0_1;
	.scl	2;
	.type	32;
	.endef
	.globl	_subprog_m_16d7fe86_5b037da0_1
	.align	16, 0x90
_subprog_m_16d7fe86_5b037da0_1:         # @_subprog_m_16d7fe86_5b037da0_1
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$72, %rsp
	movq	%rdx, %rsi
	movl	$26214461, %ecx         # imm = 0x190003D
	callq	*__imp__iki_stmt_online(%rip)
	leaq	4072(%rsi), %rcx
	movl	$32, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	leaq	-40(%rbp), %rcx
	movl	$2, %edx
	movl	$32, %r9d
	movq	%rax, %r8
	callq	*__imp__iki_vlog_const_signed_multiply(%rip)
	movq	%rax, %rdi
	leaq	-48(%rbp), %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*__imp__iki_std_memset(%rip)
	leaq	4296(%rsi), %rax
	movq	%rax, 32(%rsp)
	movl	$32, 40(%rsp)
	movl	$32, %edx
	movl	$32, %r9d
	movq	%rbx, %rcx
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_signed_multiply(%rip)
	leaq	-32(%rbp), %rcx
	movl	$1, %r8d
	movq	%rax, %rdx
	callq	*__imp__iki_vlog_const_signed_minus(%rip)
	leaq	4016(%rsi), %rcx
	addq	$3984, %rsi             # imm = 0xF90
	movl	$24, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rsi, %rdx
	movq	%rax, %r8
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var(%rip)
	addq	$72, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_75;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_75
	.align	16, 0x90
_execute_75:                            # @_execute_75
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	pushq	%rdi
	subq	$112, %rsp
	movq	%rdx, %rsi
	.align	16, 0x90
.LBB97_1:                               # =>This Inner Loop Header: Depth=1
	movl	$49, %edx
	movq	%rsi, %rcx
	callq	*__imp__iki_vlog_set_threadId_for_unrandom(%rip)
	movq	3696(%rsi), %rax
	testq	%rax, %rax
	je	.LBB97_21
# BB#2:                                 #   in Loop: Header=BB97_1 Depth=1
	jmpq	*%rax
.Ltmp339:                               # Block address taken
.LBB97_3:
	movb	$0, 3776(%rsi)
	movl	$26214594, %ecx         # imm = 0x19000C2
	callq	*__imp__iki_stmt_online(%rip)
	movq	384(%rsi), %rdi
	leaq	-40(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %ecx
	movl	4(%rdi), %edi
	xorl	ng3(%rip), %ecx
	movl	ng3+4(%rip), %edx
	movl	%edi, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %edi
	movl	%edi, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB97_5
# BB#4:
	testl	%edi, %edi
	movl	$1, -40(%rbp)
	je	.LBB97_5
# BB#22:
	movl	$1, -36(%rbp)
.LBB97_5:
	leaq	-48(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	-40(%rbp), %ecx
	testb	$1, %cl
	je	.LBB97_6
# BB#23:
	movl	$1, -48(%rbp)
	jmp	.LBB97_7
.LBB97_6:
	testl	%eax, %eax
	je	.LBB97_7
# BB#24:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -48(%rbp)
.LBB97_7:
	cmpl	$0, -48(%rbp)
	movb	$1, %al
	je	.LBB97_9
# BB#8:
	cmpl	$0, -44(%rbp)
	setne	%al
.LBB97_9:
	testb	%al, %al
	je	.LBB97_10
# BB#25:
	movq	384(%rsi), %rdi
	leaq	-56(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %ecx
	movl	4(%rdi), %edi
	xorl	ng1(%rip), %ecx
	movl	ng1+4(%rip), %edx
	movl	%edi, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %edi
	movl	%edi, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB97_27
# BB#26:
	testl	%edi, %edi
	movl	$1, -56(%rbp)
	je	.LBB97_27
# BB#31:
	movl	$1, -52(%rbp)
.LBB97_27:
	leaq	-64(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	-56(%rbp), %ecx
	testb	$1, %cl
	je	.LBB97_28
# BB#32:
	movl	$1, -64(%rbp)
	jmp	.LBB97_29
.LBB97_10:
	leaq	-72(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	movl	$8, %r8d
	callq	*__imp__iki_std_memcpy(%rip)
	andl	$1, -72(%rbp)
	andl	$1, -68(%rbp)
	jmp	.LBB97_11
.LBB97_28:
	testl	%eax, %eax
	je	.LBB97_29
# BB#33:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -64(%rbp)
.LBB97_29:
	movl	-48(%rbp), %eax
	orl	-64(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	-44(%rbp), %eax
	orl	-60(%rbp), %eax
	movl	%eax, -68(%rbp)
	je	.LBB97_11
# BB#30:
	orl	%eax, -72(%rbp)
	movl	-44(%rbp), %eax
	notl	%eax
	andl	-48(%rbp), %eax
	notl	%eax
	andl	-68(%rbp), %eax
	movl	-60(%rbp), %ecx
	notl	%ecx
	andl	-64(%rbp), %ecx
	notl	%ecx
	andl	%eax, %ecx
	movl	%ecx, -68(%rbp)
.LBB97_11:
	leaq	-32(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	-72(%rbp), %ecx
	testb	$1, %cl
	je	.LBB97_12
# BB#34:
	movl	$1, -32(%rbp)
	jmp	.LBB97_13
.LBB97_12:
	testl	%eax, %eax
	je	.LBB97_13
# BB#35:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -32(%rbp)
.LBB97_13:
	cmpl	$0, -32(%rbp)
	movb	$1, %al
	je	.LBB97_15
# BB#14:
	cmpl	$0, -28(%rbp)
	setne	%al
.LBB97_15:
	testb	%al, %al
	je	.LBB97_16
# BB#36:
	movq	944(%rsi), %rdx
	leaq	-80(%rbp), %rcx
	movl	$8, %r8d
	callq	*__imp__iki_std_memcpy(%rip)
.LBB97_16:
	cmpl	$0, -28(%rbp)
	je	.LBB97_17
# BB#37:
	leaq	-80(%rbp), %rax
	movq	%rax, 32(%rsp)
	movl	$32, 40(%rsp)
	leaq	ng0(%rip), %r8
	leaq	-24(%rbp), %rcx
	movl	$32, %edx
	movl	$32, %r9d
	callq	*__imp__iki_vlog_unsigned_bit_combine(%rip)
	jmp	.LBB97_20
.LBB97_17:
	cmpl	$0, -32(%rbp)
	je	.LBB97_18
# BB#38:
	leaq	ng0(%rip), %rdx
	leaq	-24(%rbp), %rcx
	jmp	.LBB97_19
.LBB97_18:
	leaq	-24(%rbp), %rcx
	leaq	-80(%rbp), %rdx
.LBB97_19:
	movl	$8, %r8d
	callq	*__imp__iki_std_memcpy(%rip)
.LBB97_20:
	leaq	320(%rsi), %rcx
	leaq	3784(%rsi), %rdx
	leaq	-24(%rbp), %r8
	xorl	%r9d, %r9d
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var_setback0(%rip)
.LBB97_21:
	movl	$26214593, %ecx         # imm = 0x19000C1
	callq	*__imp__iki_stmt_online(%rip)
	movb	$1, 3776(%rsi)
	leaq	.Ltmp339(%rip), %rax
	movq	%rax, 3696(%rsi)
	addq	$112, %rsp
	popq	%rdi
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_77;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_77
	.align	16, 0x90
_execute_77:                            # @_execute_77
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$72, %rsp
	movq	%rdx, %rsi
	.align	16, 0x90
.LBB98_1:                               # =>This Inner Loop Header: Depth=1
	movl	$50, %edx
	movq	%rsi, %rcx
	callq	*__imp__iki_vlog_set_threadId_for_unrandom(%rip)
	movq	384(%rsi), %rax
	testq	%rax, %rax
	je	.LBB98_11
# BB#2:                                 #   in Loop: Header=BB98_1 Depth=1
	jmpq	*%rax
.Ltmp343:                               # Block address taken
.LBB98_3:
	movb	$0, 464(%rsi)
	movl	$27263013, %ecx         # imm = 0x1A00025
	callq	*__imp__iki_stmt_online(%rip)
	movq	216(%rsi), %rdi
	leaq	-32(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %ecx
	movl	4(%rdi), %ebx
	xorl	328(%rsi), %ecx
	movl	332(%rsi), %edx
	movl	%ebx, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %ebx
	movl	%ebx, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB98_5
# BB#4:
	testl	%ebx, %ebx
	movl	$1, -32(%rbp)
	je	.LBB98_5
# BB#12:
	movl	$1, -28(%rbp)
.LBB98_5:
	leaq	208(%rsi), %rdi
	movl	-28(%rbp), %eax
	notl	%eax
	testl	-32(%rbp), %eax
	je	.LBB98_6
# BB#13:
	movl	$27263014, %ecx         # imm = 0x1A00026
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	$33554431, %eax         # imm = 0x1FFFFFF
	movl	ng0(%rip), %ecx
	andl	%eax, %ecx
	movl	%ecx, (%rbx)
	andl	ng0+4(%rip), %eax
	movl	%eax, 4(%rbx)
	leaq	472(%rsi), %rdx
	jmp	.LBB98_10
.LBB98_6:
	movl	$27263016, %ecx         # imm = 0x1A00028
	callq	*__imp__iki_stmt_online(%rip)
	movq	8(%rdi), %rbx
	leaq	-32(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	cmpl	$0, 4(%rbx)
	jne	.LBB98_14
# BB#7:
	cmpl	$0, ng5+4(%rip)
	je	.LBB98_8
.LBB98_14:
	movq	$-1, -32(%rbp)
.LBB98_9:
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rbx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rbx, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	$33554431, %eax         # imm = 0x1FFFFFF
	movl	-32(%rbp), %ecx
	andl	%eax, %ecx
	movl	%ecx, (%rbx)
	andl	-28(%rbp), %eax
	movl	%eax, 4(%rbx)
	leaq	512(%rsi), %rdx
.LBB98_10:
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$24, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %rcx
	movq	%rbx, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
.LBB98_11:
	movl	$27263011, %ecx         # imm = 0x1A00023
	callq	*__imp__iki_stmt_online(%rip)
	movb	$1, 464(%rsi)
	leaq	.Ltmp343(%rip), %rax
	movq	%rax, 384(%rsi)
	addq	$72, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%rbp
	ret
.LBB98_8:
	movl	(%rbx), %eax
	addl	ng5(%rip), %eax
	movl	%eax, -32(%rbp)
	movl	$0, -28(%rbp)
	jmp	.LBB98_9

	.def	 _execute_78;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_78
	.align	16, 0x90
_execute_78:                            # @_execute_78
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	pushq	%rdi
	subq	$64, %rsp
	movq	%rdx, %rsi
	.align	16, 0x90
.LBB99_1:                               # =>This Inner Loop Header: Depth=1
	movl	$51, %edx
	movq	%rsi, %rcx
	callq	*__imp__iki_vlog_set_threadId_for_unrandom(%rip)
	movq	592(%rsi), %rax
	testq	%rax, %rax
	je	.LBB99_8
# BB#2:                                 #   in Loop: Header=BB99_1 Depth=1
	jmpq	*%rax
.Ltmp347:                               # Block address taken
.LBB99_3:
	movb	$0, 672(%rsi)
	movl	$27263021, %ecx         # imm = 0x1A0002D
	callq	*__imp__iki_stmt_online(%rip)
	movq	216(%rsi), %rdi
	leaq	-24(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rdi), %ecx
	movl	4(%rdi), %edi
	xorl	336(%rsi), %ecx
	movl	340(%rsi), %edx
	movl	%edi, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %edi
	movl	%edi, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB99_5
# BB#4:
	testl	%edi, %edi
	movl	$1, -24(%rbp)
	je	.LBB99_5
# BB#9:
	movl	$1, -20(%rbp)
.LBB99_5:
	movl	-20(%rbp), %eax
	notl	%eax
	testl	-24(%rbp), %eax
	je	.LBB99_6
# BB#10:
	movl	$27263022, %ecx         # imm = 0x1A0002E
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	ng5(%rip), %eax
	andl	$1, %eax
	movl	%eax, (%rdi)
	movl	ng5+4(%rip), %eax
	andl	$1, %eax
	movl	%eax, 4(%rdi)
	leaq	264(%rsi), %rcx
	leaq	680(%rsi), %rdx
	jmp	.LBB99_7
.LBB99_6:
	movl	$27263024, %ecx         # imm = 0x1A00030
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	ng0(%rip), %eax
	andl	$1, %eax
	movl	%eax, (%rdi)
	movl	ng0+4(%rip), %eax
	andl	$1, %eax
	movl	%eax, 4(%rdi)
	leaq	264(%rsi), %rcx
	leaq	720(%rsi), %rdx
.LBB99_7:
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$0, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
.LBB99_8:
	movl	$27263019, %ecx         # imm = 0x1A0002B
	callq	*__imp__iki_stmt_online(%rip)
	movb	$1, 672(%rsi)
	leaq	.Ltmp347(%rip), %rax
	movq	%rax, 592(%rsi)
	addq	$64, %rsp
	popq	%rdi
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_79;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_79
	.align	16, 0x90
_execute_79:                            # @_execute_79
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	subq	$40, %rsp
	movq	%rdx, %rsi
	movl	$52, %edx
	movq	%rsi, %rcx
	callq	*__imp__iki_vlog_set_threadId_for_unrandom(%rip)
	movl	$27263032, %ecx         # imm = 0x1A00038
	callq	*__imp__iki_stmt_online(%rip)
	leaq	208(%rsi), %rcx
	addq	$880, %rsi              # imm = 0x370
	movl	$24, 32(%rsp)
	leaq	ng0(%rip), %r8
	xorl	%r9d, %r9d
	movq	%rsi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var(%rip)
	addq	$40, %rsp
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_80;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_80
	.align	16, 0x90
_execute_80:                            # @_execute_80
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$160, %rsp
	movq	%rdx, %rsi
	.align	16, 0x90
.LBB101_1:                              # =>This Inner Loop Header: Depth=1
	movl	$53, %edx
	movq	%rsi, %rcx
	callq	*__imp__iki_vlog_set_threadId_for_unrandom(%rip)
	movq	656(%rsi), %rax
	testq	%rax, %rax
	je	.LBB101_8
# BB#2:                                 #   in Loop: Header=BB101_1 Depth=1
	jmpq	*%rax
.Ltmp354:                               # Block address taken
.LBB101_3:
	movb	$0, 736(%rsi)
	movl	$25165877, %ecx         # imm = 0x1800035
	callq	*__imp__iki_stmt_online(%rip)
	leaq	96(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movl	4(%rax), %ecx
	notl	%ecx
	testl	(%rax), %ecx
	je	.LBB101_4
# BB#9:
	movl	$25165878, %ecx         # imm = 0x1800036
	callq	*__imp__iki_stmt_online(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	ng1(%rip), %eax
	andl	$15, %eax
	movl	%eax, (%rdi)
	movl	ng1+4(%rip), %eax
	andl	$15, %eax
	movl	%eax, 4(%rdi)
	leaq	432(%rsi), %rcx
	leaq	744(%rsi), %rdx
	jmp	.LBB101_10
.LBB101_4:
	movl	$25165879, %ecx         # imm = 0x1800037
	callq	*__imp__iki_stmt_online(%rip)
	leaq	264(%rsi), %rcx
	movq	__imp__iki_vlog_signal_handle_value_input(%rip), %rdi
	movl	$1, %edx
	callq	*%rdi
	movq	%rax, %r14
	leaq	152(%rsi), %rcx
	movl	$8, %edx
	callq	*%rdi
	movq	%rax, %rbx
	leaq	-40(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	(%rbx), %ecx
	movl	4(%rbx), %ebx
	xorl	ng93(%rip), %ecx
	movl	ng93+4(%rip), %edx
	movl	%ebx, %eax
	xorl	%edx, %eax
	orl	%ecx, %eax
	orl	%edx, %ebx
	movl	%ebx, %ecx
	notl	%ecx
	testl	%ecx, %eax
	jne	.LBB101_6
# BB#5:
	testl	%ebx, %ebx
	movl	$1, -40(%rbp)
	je	.LBB101_6
# BB#11:
	movl	$1, -36(%rbp)
.LBB101_6:
	movl	(%r14), %edi
	movl	4(%r14), %edx
	movl	-40(%rbp), %r8d
	movl	-36(%rbp), %ebx
	movl	%edi, %ecx
	andl	%r8d, %ecx
	movl	%edx, %eax
	orl	%ebx, %eax
	je	.LBB101_7
# BB#12:
	orl	%eax, %ecx
	notl	%edi
	notl	%edx
	andl	%edi, %edx
	notl	%edx
	andl	%edx, %eax
	notl	%r8d
	notl	%ebx
	andl	%r8d, %ebx
	notl	%ebx
	andl	%ebx, %eax
	andl	%ecx, %edx
	andl	%ebx, %edx
	movl	%edx, %ecx
.LBB101_7:
	notl	%eax
	testl	%eax, %ecx
	je	.LBB101_8
# BB#13:
	movl	$25165880, %ecx         # imm = 0x1800038
	callq	*__imp__iki_stmt_online(%rip)
	leaq	208(%rsi), %rcx
	movl	$8, %edx
	callq	*__imp__iki_vlog_signal_handle_value_input(%rip)
	movl	$1, -64(%rbp)
	movl	$7, -60(%rbp)
	movl	$0, -56(%rbp)
	leaq	-64(%rbp), %rcx
	movq	%rcx, 80(%rsp)
	leaq	ng0(%rip), %rcx
	movq	%rcx, 56(%rsp)
	leaq	ng21(%rip), %rcx
	movq	%rcx, 32(%rsp)
	movl	$1, 112(%rsp)
	movl	$2, 104(%rsp)
	movl	$1, 96(%rsp)
	movq	$0, 88(%rsp)
	movl	$1, 72(%rsp)
	movl	$32, 64(%rsp)
	movl	$1, 48(%rsp)
	movl	$32, 40(%rsp)
	leaq	-48(%rbp), %rcx
	movl	$1, %edx
	movl	$4, %r8d
	movq	%rax, %r9
	callq	*__imp__iki_vlog_get_part_select_value(%rip)
	callq	*__imp__iki_malloc8(%rip)
	movq	%rax, %rdi
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rdi, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	-48(%rbp), %eax
	andl	$15, %eax
	movl	%eax, (%rdi)
	movl	-44(%rbp), %eax
	andl	$15, %eax
	movl	%eax, 4(%rdi)
	leaq	432(%rsi), %rcx
	leaq	784(%rsi), %rdx
.LBB101_10:
	movq	$0, 48(%rsp)
	movl	$9, 40(%rsp)
	movl	$3, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_schedule_transaction_non_blocking_delay_signal(%rip)
.LBB101_8:
	movl	$25165876, %ecx         # imm = 0x1800034
	callq	*__imp__iki_stmt_online(%rip)
	movb	$1, 736(%rsi)
	leaq	.Ltmp354(%rip), %rax
	movq	%rax, 656(%rsi)
	addq	$160, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%rbp
	ret

	.def	 _execute_174;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_174
	.align	16, 0x90
_execute_174:                           # @_execute_174
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	subq	$40, %rsp
	movq	%rdx, %rsi
	leaq	544(%rsi), %rcx
	movl	$4, %edx
	callq	*__imp__iki_vlog_signal_handle_value(%rip)
	leaq	976(%rsi), %rcx
	movl	$8, %r8d
	movq	%rax, %rdx
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	488(%rsi), %rcx
	addq	$952, %rsi              # imm = 0x3B8
	xorl	%r8d, %r8d
	movl	$3, %r9d
	movq	%rsi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_signal_fast(%rip)
	addq	$40, %rsp
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_175;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_175
	.align	16, 0x90
_execute_175:                           # @_execute_175
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	subq	$40, %rsp
	movq	%rdx, %rsi
	leaq	1048(%rsi), %rcx
	movl	$8, %edx
	callq	*__imp__iki_vlog_signal_handle_value(%rip)
	leaq	1424(%rsi), %rcx
	movl	$8, %r8d
	movq	%rax, %rdx
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	1104(%rsi), %rcx
	addq	$1400, %rsi             # imm = 0x578
	xorl	%r8d, %r8d
	movl	$7, %r9d
	movq	%rsi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_signal_fast(%rip)
	addq	$40, %rsp
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_176;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_176
	.align	16, 0x90
_execute_176:                           # @_execute_176
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	subq	$40, %rsp
	movq	%rdx, %rsi
	leaq	1160(%rsi), %rcx
	movl	$16, %edx
	callq	*__imp__iki_vlog_signal_handle_value(%rip)
	leaq	1592(%rsi), %rcx
	movl	$8, %r8d
	movq	%rax, %rdx
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	1216(%rsi), %rcx
	addq	$1568, %rsi             # imm = 0x620
	xorl	%r8d, %r8d
	movl	$15, %r9d
	movq	%rsi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_signal_fast(%rip)
	addq	$40, %rsp
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_81;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_81
	.align	16, 0x90
_execute_81:                            # @_execute_81
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$40, %rsp
	movq	%rdx, %rdi
	leaq	1104(%rdi), %rsi
	.align	16, 0x90
.LBB105_1:                              # =>This Inner Loop Header: Depth=1
	movl	$54, %edx
	movq	%rdi, %rcx
	callq	*__imp__iki_vlog_set_threadId_for_unrandom(%rip)
	movq	1144(%rdi), %rax
	testq	%rax, %rax
	je	.LBB105_3
# BB#2:                                 #   in Loop: Header=BB105_1 Depth=1
	jmpq	*%rax
.Ltmp367:                               # Block address taken
.LBB105_5:
	movq	__imp__iki_stmt_online(%rip), %r14
	movl	$1048633, %ecx          # imm = 0x100039
	callq	*%r14
	movq	48(%rdi), %rbx
	leaq	-48(%rbp), %r15
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%r15, %rcx
	callq	*__imp__iki_std_memset(%rip)
	movl	4(%rbx), %eax
	movl	%eax, %ecx
	andl	$1, %ecx
	movl	%ecx, -44(%rbp)
	movl	(%rbx), %ecx
	notl	%ecx
	orl	%eax, %ecx
	andl	$1, %ecx
	movl	%ecx, -48(%rbp)
	leaq	40(%rdi), %rcx
	addq	$1256, %rdi             # imm = 0x4E8
	xorl	%r9d, %r9d
	movq	%rdi, %rdx
	movq	%r15, %r8
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var_setback0(%rip)
	movl	$1048633, %ecx          # imm = 0x100039
	callq	*%r14
	jmp	.LBB105_4
.LBB105_3:
	movq	__imp__iki_stmt_online(%rip), %rbx
	movl	$1048632, %ecx          # imm = 0x100038
	callq	*%rbx
	leaq	40(%rdi), %rcx
	addq	$1256, %rdi             # imm = 0x4E8
	leaq	ng0(%rip), %r8
	xorl	%r9d, %r9d
	movq	%rdi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var_setback0(%rip)
	movl	$1048633, %ecx          # imm = 0x100039
	callq	*%rbx
.LBB105_4:
	movl	$1048633, %ecx          # imm = 0x100039
	callq	*__imp__iki_stmt_online(%rip)
	leaq	.Ltmp367(%rip), %r9
	movl	$5000, %edx             # imm = 0x1388
	movq	%rsi, %rcx
	movq	%rsi, %r8
	callq	*__imp__iki_vlog_wait_and_set_next_state(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%r15
	popq	%rbp
	ret

	.def	 _execute_82;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_82
	.align	16, 0x90
_execute_82:                            # @_execute_82
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$40, %rsp
	movq	%rdx, %rdi
	leaq	1288(%rdi), %r14
	.align	16, 0x90
.LBB106_1:                              # =>This Inner Loop Header: Depth=1
	movl	$55, %edx
	movq	%rdi, %rcx
	callq	*__imp__iki_vlog_set_threadId_for_unrandom(%rip)
	movq	1328(%rdi), %rax
	testq	%rax, %rax
	je	.LBB106_3
# BB#2:                                 #   in Loop: Header=BB106_1 Depth=1
	jmpq	*%rax
.Ltmp371:                               # Block address taken
.LBB106_6:
	movq	__imp__iki_stmt_online(%rip), %rsi
	movl	$1048647, %ecx          # imm = 0x100047
	callq	*%rsi
	leaq	96(%rdi), %rcx
	addq	$1568, %rdi             # imm = 0x620
	leaq	ng0(%rip), %r8
	xorl	%r9d, %r9d
	movq	%rdi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var_setback0(%rip)
	movl	$1048648, %ecx          # imm = 0x100048
	callq	*%rsi
	leaq	.Ltmp372(%rip), %r9
	movl	$100000, %edx           # imm = 0x186A0
	jmp	.LBB106_4
.LBB106_3:
	movq	__imp__iki_stmt_online(%rip), %rsi
	movl	$1048639, %ecx          # imm = 0x10003F
	callq	*%rsi
	leaq	96(%rdi), %rcx
	leaq	1568(%rdi), %rdx
	leaq	ng5(%rip), %r8
	movq	__imp__iki_vlog_schedule_transaction_blocking_var_setback0(%rip), %r15
	xorl	%r9d, %r9d
	callq	*%r15
	movl	$1048640, %ecx          # imm = 0x100040
	callq	*%rsi
	leaq	264(%rdi), %rcx
	leaq	1440(%rdi), %rdx
	leaq	ng0(%rip), %rbx
	xorl	%r9d, %r9d
	movq	%rbx, %r8
	callq	*%r15
	movl	$1048641, %ecx          # imm = 0x100041
	callq	*%rsi
	leaq	320(%rdi), %rcx
	leaq	1472(%rdi), %rdx
	xorl	%r9d, %r9d
	movq	%rbx, %r8
	callq	*%r15
	movl	$1048642, %ecx          # imm = 0x100042
	callq	*%rsi
	leaq	376(%rdi), %rcx
	leaq	1504(%rdi), %rdx
	xorl	%r9d, %r9d
	movq	%rbx, %r8
	callq	*%r15
	movl	$1048643, %ecx          # imm = 0x100043
	callq	*%rsi
	leaq	432(%rdi), %rcx
	addq	$1536, %rdi             # imm = 0x600
	xorl	%r9d, %r9d
	movq	%rdi, %rdx
	movq	%rbx, %r8
	callq	*%r15
	movl	$1048644, %ecx          # imm = 0x100044
	callq	*%rsi
	leaq	.Ltmp371(%rip), %r9
	movl	$50000, %edx            # imm = 0xC350
.LBB106_4:
	movq	%r14, %rcx
	movq	%r14, %r8
	callq	*__imp__iki_vlog_wait_and_set_next_state(%rip)
.Ltmp372:                               # Block address taken
.LBB106_5:
	addq	$40, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%r15
	popq	%rbp
	ret

	.def	 _execute_177;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_177
	.align	16, 0x90
_execute_177:                           # @_execute_177
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	pushq	%rdi
	subq	$64, %rsp
	movq	%rdx, %rsi
	movl	$1048652, %ecx          # imm = 0x10004C
	callq	*__imp__iki_stmt_online(%rip)
	movq	384(%rsi), %rdi
	leaq	-32(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	4(%rdi), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	(%rdi), %ecx
	testb	$1, %cl
	je	.LBB107_1
# BB#10:
	movl	$1, -32(%rbp)
	jmp	.LBB107_2
.LBB107_1:
	testl	%eax, %eax
	je	.LBB107_2
# BB#11:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -32(%rbp)
.LBB107_2:
	cmpl	$0, -32(%rbp)
	movb	$1, %al
	jne	.LBB107_4
# BB#3:
	cmpl	$0, -28(%rbp)
	setne	%al
.LBB107_4:
	testb	%al, %al
                                        # implicit-def: RAX
	je	.LBB107_5
# BB#12:
	movq	272(%rsi), %rax
.LBB107_5:
	cmpl	$0, -28(%rbp)
	je	.LBB107_6
# BB#13:
	leaq	ng61(%rip), %rcx
	movq	%rcx, 32(%rsp)
	movl	$1, 40(%rsp)
	leaq	-24(%rbp), %rcx
	movl	$1, %edx
	movl	$1, %r9d
	movq	%rax, %r8
	callq	*__imp__iki_vlog_unsigned_bit_combine(%rip)
	jmp	.LBB107_9
.LBB107_6:
	movl	-32(%rbp), %ecx
	testl	%ecx, %ecx
	je	.LBB107_7
# BB#14:
	leaq	-24(%rbp), %rcx
	movl	$8, %r8d
	movq	%rax, %rdx
	jmp	.LBB107_8
.LBB107_7:
	leaq	ng61(%rip), %rdx
	leaq	-24(%rbp), %rcx
	movl	$8, %r8d
.LBB107_8:
	callq	*__imp__iki_std_memcpy(%rip)
.LBB107_9:
	leaq	2504(%rsi), %rcx
	leaq	-24(%rbp), %rdx
	movl	$8, %r8d
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	152(%rsi), %rcx
	addq	$2480, %rsi             # imm = 0x9B0
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%rsi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_signal_fast_no_reg_no_agg(%rip)
	addq	$64, %rsp
	popq	%rdi
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_178;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_178
	.align	16, 0x90
_execute_178:                           # @_execute_178
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	pushq	%rdi
	subq	$64, %rsp
	movq	%rdx, %rsi
	movl	$1048653, %ecx          # imm = 0x10004D
	callq	*__imp__iki_stmt_online(%rip)
	movq	440(%rsi), %rdi
	leaq	-32(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	*__imp__iki_std_memset(%rip)
	movl	4(%rdi), %eax
	movl	%eax, %ecx
	notl	%ecx
	andl	(%rdi), %ecx
	testb	$1, %cl
	je	.LBB108_1
# BB#10:
	movl	$1, -32(%rbp)
	jmp	.LBB108_2
.LBB108_1:
	testl	%eax, %eax
	je	.LBB108_2
# BB#11:
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, -32(%rbp)
.LBB108_2:
	cmpl	$0, -32(%rbp)
	movb	$1, %al
	jne	.LBB108_4
# BB#3:
	cmpl	$0, -28(%rbp)
	setne	%al
.LBB108_4:
	testb	%al, %al
                                        # implicit-def: RAX
	je	.LBB108_5
# BB#12:
	movq	328(%rsi), %rax
.LBB108_5:
	cmpl	$0, -28(%rbp)
	je	.LBB108_6
# BB#13:
	leaq	ng61(%rip), %rcx
	movq	%rcx, 32(%rsp)
	movl	$1, 40(%rsp)
	leaq	-24(%rbp), %rcx
	movl	$1, %edx
	movl	$1, %r9d
	movq	%rax, %r8
	callq	*__imp__iki_vlog_unsigned_bit_combine(%rip)
	jmp	.LBB108_9
.LBB108_6:
	movl	-32(%rbp), %ecx
	testl	%ecx, %ecx
	je	.LBB108_7
# BB#14:
	leaq	-24(%rbp), %rcx
	movl	$8, %r8d
	movq	%rax, %rdx
	jmp	.LBB108_8
.LBB108_7:
	leaq	ng61(%rip), %rdx
	leaq	-24(%rbp), %rcx
	movl	$8, %r8d
.LBB108_8:
	callq	*__imp__iki_std_memcpy(%rip)
.LBB108_9:
	leaq	2672(%rsi), %rcx
	leaq	-24(%rbp), %rdx
	movl	$8, %r8d
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	208(%rsi), %rcx
	addq	$2648, %rsi             # imm = 0xA58
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%rsi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_signal_fast_no_reg_no_agg(%rip)
	addq	$64, %rsp
	popq	%rdi
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_83;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_83
	.align	16, 0x90
_execute_83:                            # @_execute_83
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$56, %rsp
	movq	%rdx, %rdi
	leaq	1600(%rdi), %rsi
	.align	16, 0x90
.LBB109_1:                              # =>This Inner Loop Header: Depth=1
	movl	$56, %edx
	movq	%rdi, %rcx
	callq	*__imp__iki_vlog_set_threadId_for_unrandom(%rip)
	movq	1640(%rdi), %rax
	testq	%rax, %rax
	je	.LBB109_3
# BB#2:                                 #   in Loop: Header=BB109_1 Depth=1
	jmpq	*%rax
.Ltmp382:                               # Block address taken
.LBB109_5:
	movq	__imp__iki_stmt_online(%rip), %rbx
	movl	$1048659, %ecx          # imm = 0x100053
	callq	*%rbx
	movq	%rbx, %r15
	leaq	376(%rdi), %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	leaq	1784(%rdi), %r12
	leaq	ng5(%rip), %r8
	movq	__imp__iki_vlog_schedule_transaction_blocking_var_setback0(%rip), %rbx
	xorl	%r9d, %r9d
	movq	%r12, %rdx
	callq	*%rbx
	movl	$1048660, %ecx          # imm = 0x100054
	callq	*%r15
	movq	272(%rdi), %r13
	leaq	-64(%rbp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	movq	%rcx, %r14
	callq	*__imp__iki_std_memset(%rip)
	movl	4(%r13), %eax
	movl	%eax, %ecx
	andl	$1, %ecx
	movl	%ecx, -60(%rbp)
	movl	(%r13), %ecx
	notl	%ecx
	orl	%eax, %ecx
	andl	$1, %ecx
	movl	%ecx, -64(%rbp)
	leaq	264(%rdi), %rcx
	addq	$1752, %rdi             # imm = 0x6D8
	xorl	%r9d, %r9d
	movq	%rdi, %rdx
	movq	%r14, %r8
	callq	*%rbx
	movl	$1048661, %ecx          # imm = 0x100055
	callq	*%r15
	leaq	ng0(%rip), %r8
	xorl	%r9d, %r9d
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%r12, %rdx
	callq	*%rbx
	movl	$1048657, %ecx          # imm = 0x100051
	callq	*%r15
	jmp	.LBB109_4
.LBB109_3:
	movl	$1048657, %ecx          # imm = 0x100051
	callq	*__imp__iki_stmt_online(%rip)
.LBB109_4:
	movl	$1048658, %ecx          # imm = 0x100052
	callq	*__imp__iki_stmt_online(%rip)
	leaq	.Ltmp382(%rip), %r9
	movl	$40000, %edx            # imm = 0x9C40
	movq	%rsi, %rcx
	movq	%rsi, %r8
	callq	*__imp__iki_vlog_wait_and_set_next_state(%rip)
	addq	$56, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret

	.def	 _execute_84;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_84
	.align	16, 0x90
_execute_84:                            # @_execute_84
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$32, %rsp
	movq	%rdx, %rdi
	leaq	1816(%rdi), %rsi
	.align	16, 0x90
.LBB110_1:                              # =>This Inner Loop Header: Depth=1
	movl	$57, %edx
	movq	%rdi, %rcx
	callq	*__imp__iki_vlog_set_threadId_for_unrandom(%rip)
	movq	1856(%rdi), %rax
	testq	%rax, %rax
	je	.LBB110_3
# BB#2:                                 #   in Loop: Header=BB110_1 Depth=1
	jmpq	*%rax
.Ltmp386:                               # Block address taken
.LBB110_6:
	movq	__imp__iki_stmt_online(%rip), %rbx
	movl	$1048669, %ecx          # imm = 0x10005D
	callq	*%rbx
	leaq	432(%rdi), %rcx
	leaq	2320(%rdi), %rdx
	leaq	ng5(%rip), %r8
	movq	__imp__iki_vlog_schedule_transaction_blocking_var_setback0(%rip), %r14
	xorl	%r9d, %r9d
	callq	*%r14
	movl	$1048670, %ecx          # imm = 0x10005E
	callq	*%rbx
	leaq	320(%rdi), %rcx
	addq	$2288, %rdi             # imm = 0x8F0
	leaq	ng0(%rip), %r8
	xorl	%r9d, %r9d
	movq	%rdi, %rdx
	callq	*%r14
	movl	$1048671, %ecx          # imm = 0x10005F
	callq	*%rbx
	leaq	.Ltmp387(%rip), %r9
	movl	$80000, %edx            # imm = 0x13880
	jmp	.LBB110_4
.LBB110_3:
	movl	$1048667, %ecx          # imm = 0x10005B
	callq	*__imp__iki_stmt_online(%rip)
	leaq	.Ltmp386(%rip), %r9
	movl	$200000, %edx           # imm = 0x30D40
	jmp	.LBB110_4
.Ltmp387:                               # Block address taken
.LBB110_7:
	movq	__imp__iki_stmt_online(%rip), %rbx
	movl	$1048672, %ecx          # imm = 0x100060
	callq	*%rbx
	leaq	320(%rdi), %rcx
	addq	$2288, %rdi             # imm = 0x8F0
	leaq	ng0(%rip), %r8
	xorl	%r9d, %r9d
	movq	%rdi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var_setback0(%rip)
	movl	$1048673, %ecx          # imm = 0x100061
	callq	*%rbx
	leaq	.Ltmp388(%rip), %r9
	movl	$80000, %edx            # imm = 0x13880
	jmp	.LBB110_4
.Ltmp388:                               # Block address taken
.LBB110_9:
	movq	__imp__iki_stmt_online(%rip), %rbx
	movl	$1048674, %ecx          # imm = 0x100062
	callq	*%rbx
	leaq	320(%rdi), %rcx
	addq	$2288, %rdi             # imm = 0x8F0
	leaq	ng0(%rip), %r8
	xorl	%r9d, %r9d
	movq	%rdi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var_setback0(%rip)
	movl	$1048675, %ecx          # imm = 0x100063
	callq	*%rbx
	leaq	.Ltmp389(%rip), %r9
	movl	$80000, %edx            # imm = 0x13880
	jmp	.LBB110_4
.Ltmp389:                               # Block address taken
.LBB110_10:
	movq	__imp__iki_stmt_online(%rip), %rbx
	movl	$1048676, %ecx          # imm = 0x100064
	callq	*%rbx
	leaq	320(%rdi), %rcx
	addq	$2288, %rdi             # imm = 0x8F0
	leaq	ng5(%rip), %r8
	xorl	%r9d, %r9d
	movq	%rdi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var_setback0(%rip)
	movl	$1048677, %ecx          # imm = 0x100065
	callq	*%rbx
	leaq	.Ltmp390(%rip), %r9
	movl	$80000, %edx            # imm = 0x13880
	jmp	.LBB110_4
.Ltmp390:                               # Block address taken
.LBB110_11:
	movq	__imp__iki_stmt_online(%rip), %rbx
	movl	$1048678, %ecx          # imm = 0x100066
	callq	*%rbx
	leaq	320(%rdi), %rcx
	addq	$2288, %rdi             # imm = 0x8F0
	leaq	ng0(%rip), %r8
	xorl	%r9d, %r9d
	movq	%rdi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var_setback0(%rip)
	movl	$1048679, %ecx          # imm = 0x100067
	callq	*%rbx
	leaq	.Ltmp391(%rip), %r9
	movl	$80000, %edx            # imm = 0x13880
	jmp	.LBB110_4
.Ltmp391:                               # Block address taken
.LBB110_12:
	movq	__imp__iki_stmt_online(%rip), %rbx
	movl	$1048680, %ecx          # imm = 0x100068
	callq	*%rbx
	leaq	320(%rdi), %rcx
	addq	$2288, %rdi             # imm = 0x8F0
	leaq	ng0(%rip), %r8
	xorl	%r9d, %r9d
	movq	%rdi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var_setback0(%rip)
	movl	$1048681, %ecx          # imm = 0x100069
	callq	*%rbx
	leaq	.Ltmp392(%rip), %r9
	movl	$80000, %edx            # imm = 0x13880
	jmp	.LBB110_4
.Ltmp392:                               # Block address taken
.LBB110_13:
	movq	__imp__iki_stmt_online(%rip), %rbx
	movl	$1048682, %ecx          # imm = 0x10006A
	callq	*%rbx
	leaq	320(%rdi), %rcx
	addq	$2288, %rdi             # imm = 0x8F0
	leaq	ng0(%rip), %r8
	xorl	%r9d, %r9d
	movq	%rdi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var_setback0(%rip)
	movl	$1048683, %ecx          # imm = 0x10006B
	callq	*%rbx
	leaq	.Ltmp393(%rip), %r9
	movl	$80000, %edx            # imm = 0x13880
	jmp	.LBB110_4
.Ltmp393:                               # Block address taken
.LBB110_14:
	movq	__imp__iki_stmt_online(%rip), %rbx
	movl	$1048684, %ecx          # imm = 0x10006C
	callq	*%rbx
	leaq	320(%rdi), %rcx
	addq	$2288, %rdi             # imm = 0x8F0
	leaq	ng0(%rip), %r8
	xorl	%r9d, %r9d
	movq	%rdi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var_setback0(%rip)
	movl	$1048685, %ecx          # imm = 0x10006D
	callq	*%rbx
	leaq	.Ltmp394(%rip), %r9
	movl	$80000, %edx            # imm = 0x13880
	jmp	.LBB110_4
.Ltmp394:                               # Block address taken
.LBB110_15:
	movq	__imp__iki_stmt_online(%rip), %rbx
	movl	$1048686, %ecx          # imm = 0x10006E
	callq	*%rbx
	leaq	320(%rdi), %rcx
	addq	$2288, %rdi             # imm = 0x8F0
	leaq	ng0(%rip), %r8
	xorl	%r9d, %r9d
	movq	%rdi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var_setback0(%rip)
	movl	$1048687, %ecx          # imm = 0x10006F
	callq	*%rbx
	leaq	.Ltmp395(%rip), %r9
	movl	$80000, %edx            # imm = 0x13880
	jmp	.LBB110_4
.Ltmp395:                               # Block address taken
.LBB110_16:
	movq	__imp__iki_stmt_online(%rip), %rbx
	movl	$1048688, %ecx          # imm = 0x100070
	callq	*%rbx
	leaq	320(%rdi), %rcx
	addq	$2288, %rdi             # imm = 0x8F0
	leaq	ng5(%rip), %r8
	xorl	%r9d, %r9d
	movq	%rdi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var_setback0(%rip)
	movl	$1048689, %ecx          # imm = 0x100071
	callq	*%rbx
	leaq	.Ltmp396(%rip), %r9
	movl	$80000, %edx            # imm = 0x13880
	jmp	.LBB110_4
.Ltmp396:                               # Block address taken
.LBB110_17:
	movq	__imp__iki_stmt_online(%rip), %rbx
	movl	$1048690, %ecx          # imm = 0x100072
	callq	*%rbx
	leaq	320(%rdi), %rcx
	addq	$2288, %rdi             # imm = 0x8F0
	leaq	ng5(%rip), %r8
	xorl	%r9d, %r9d
	movq	%rdi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var_setback0(%rip)
	movl	$1048691, %ecx          # imm = 0x100073
	callq	*%rbx
	leaq	.Ltmp397(%rip), %r9
	movl	$80000, %edx            # imm = 0x13880
	jmp	.LBB110_4
.Ltmp397:                               # Block address taken
.LBB110_18:
	movq	__imp__iki_stmt_online(%rip), %rbx
	movl	$1048692, %ecx          # imm = 0x100074
	callq	*%rbx
	leaq	432(%rdi), %rcx
	addq	$2320, %rdi             # imm = 0x910
	leaq	ng0(%rip), %r8
	xorl	%r9d, %r9d
	movq	%rdi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var_setback0(%rip)
	movl	$1048693, %ecx          # imm = 0x100075
	callq	*%rbx
	leaq	.Ltmp398(%rip), %r9
	movl	$100000000, %edx        # imm = 0x5F5E100
.LBB110_4:
	movq	%rsi, %rcx
	movq	%rsi, %r8
	callq	*__imp__iki_vlog_wait_and_set_next_state(%rip)
.Ltmp398:                               # Block address taken
.LBB110_5:
	addq	$32, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%rbp
	ret

	.def	 _execute_179;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_179
	.align	16, 0x90
_execute_179:                           # @_execute_179
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	subq	$40, %rsp
	movq	%rdx, %rsi
	leaq	936(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value(%rip)
	leaq	2840(%rsi), %rcx
	movl	$8, %r8d
	movq	%rax, %rdx
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	880(%rsi), %rcx
	addq	$2816, %rsi             # imm = 0xB00
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%rsi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_signal_fast(%rip)
	addq	$40, %rsp
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_180;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_180
	.align	16, 0x90
_execute_180:                           # @_execute_180
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	subq	$40, %rsp
	movq	%rdx, %rsi
	leaq	1048(%rsi), %rcx
	movl	$1, %edx
	callq	*__imp__iki_vlog_signal_handle_value(%rip)
	leaq	3008(%rsi), %rcx
	movl	$8, %r8d
	movq	%rax, %rdx
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	992(%rsi), %rcx
	addq	$2984, %rsi             # imm = 0xBA8
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%rsi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_signal_fast(%rip)
	addq	$40, %rsp
	popq	%rsi
	popq	%rbp
	ret

	.def	 _transaction_224;
	.scl	2;
	.type	32;
	.endef
	.globl	_transaction_224
	.align	16, 0x90
_transaction_224:                       # @_transaction_224
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$56, %rsp
	movl	%r9d, %esi
	movq	%rdx, %r14
	movq	%rcx, %rbx
	movl	48(%rbp), %edi
	leaq	14864(%rbx), %r15
	cmpl	$0, 14880(%rbx)
	je	.LBB113_2
# BB#1:
	leaq	14728(%rbx), %rcx
	movl	%edi, %r9d
	subl	%esi, %r9d
	incl	%r9d
	movq	%r14, %rdx
	movl	%esi, %r8d
	callq	*__imp__iki_vlog_event_callback(%rip)
	movq	%rax, %r14
.LBB113_2:
	subl	%esi, %edi
	incl	%edi
	movq	%r15, %rcx
	movl	%esi, %edx
	movq	%r14, %r8
	movl	%edi, %r9d
	callq	*__imp__iki_vlog_memcmp_0(%rip)
	cmpl	$1, %eax
	je	.LBB113_4
# BB#3:
	leaq	14728(%rbx), %rcx
	movl	%edi, 32(%rsp)
	movq	$0, 40(%rsp)
	xorl	%r9d, %r9d
	movl	%esi, %edx
	movq	%r14, %r8
	callq	*__imp__iki_vlog_strengthcmp(%rip)
	testl	%eax, %eax
	je	.LBB113_5
.LBB113_4:
	movl	%edi, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%r15, %rcx
	movl	%esi, %edx
	movq	%r14, %r8
	callq	*__imp__iki_vlog_bit_copy(%rip)
	addq	$14728, %rbx            # imm = 0x3988
	movq	$0, 32(%rsp)
	movq	%rbx, %rcx
	movl	%esi, %edx
	movq	%r14, %r8
	movl	%edi, %r9d
	callq	*__imp__iki_vlog_strength_copy(%rip)
.LBB113_5:
	addq	$56, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%r15
	popq	%rbp
	ret

	.def	 _transaction_225;
	.scl	2;
	.type	32;
	.endef
	.globl	_transaction_225
	.align	16, 0x90
_transaction_225:                       # @_transaction_225
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$56, %rsp
	movl	%r9d, %esi
	movq	%rdx, %r14
	movq	%rcx, %rbx
	movl	48(%rbp), %edi
	leaq	15032(%rbx), %r15
	cmpl	$0, 15048(%rbx)
	je	.LBB114_2
# BB#1:
	leaq	14896(%rbx), %rcx
	movl	%edi, %r9d
	subl	%esi, %r9d
	incl	%r9d
	movq	%r14, %rdx
	movl	%esi, %r8d
	callq	*__imp__iki_vlog_event_callback(%rip)
	movq	%rax, %r14
.LBB114_2:
	subl	%esi, %edi
	incl	%edi
	movq	%r15, %rcx
	movl	%esi, %edx
	movq	%r14, %r8
	movl	%edi, %r9d
	callq	*__imp__iki_vlog_memcmp_0(%rip)
	cmpl	$1, %eax
	je	.LBB114_4
# BB#3:
	leaq	14896(%rbx), %rcx
	movl	%edi, 32(%rsp)
	movq	$0, 40(%rsp)
	xorl	%r9d, %r9d
	movl	%esi, %edx
	movq	%r14, %r8
	callq	*__imp__iki_vlog_strengthcmp(%rip)
	testl	%eax, %eax
	je	.LBB114_5
.LBB114_4:
	movl	%edi, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%r15, %rcx
	movl	%esi, %edx
	movq	%r14, %r8
	callq	*__imp__iki_vlog_bit_copy(%rip)
	addq	$14896, %rbx            # imm = 0x3A30
	movq	$0, 32(%rsp)
	movq	%rbx, %rcx
	movl	%esi, %edx
	movq	%r14, %r8
	movl	%edi, %r9d
	callq	*__imp__iki_vlog_strength_copy(%rip)
.LBB114_5:
	addq	$56, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%r15
	popq	%rbp
	ret

	.def	 _transaction_227;
	.scl	2;
	.type	32;
	.endef
	.globl	_transaction_227
	.align	16, 0x90
_transaction_227:                       # @_transaction_227
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$56, %rsp
	movl	%r9d, %esi
	movq	%rdx, %r14
	movq	%rcx, %rbx
	movl	48(%rbp), %edi
	leaq	15360(%rbx), %r15
	cmpl	$0, 15376(%rbx)
	je	.LBB115_2
# BB#1:
	leaq	15224(%rbx), %rcx
	movl	%edi, %r9d
	subl	%esi, %r9d
	incl	%r9d
	movq	%r14, %rdx
	movl	%esi, %r8d
	callq	*__imp__iki_vlog_event_callback(%rip)
	movq	%rax, %r14
.LBB115_2:
	subl	%esi, %edi
	incl	%edi
	movq	%r15, %rcx
	movl	%esi, %edx
	movq	%r14, %r8
	movl	%edi, %r9d
	callq	*__imp__iki_vlog_memcmp_0(%rip)
	cmpl	$1, %eax
	je	.LBB115_4
# BB#3:
	leaq	15224(%rbx), %rcx
	movl	%edi, 32(%rsp)
	movq	$0, 40(%rsp)
	xorl	%r9d, %r9d
	movl	%esi, %edx
	movq	%r14, %r8
	callq	*__imp__iki_vlog_strengthcmp(%rip)
	testl	%eax, %eax
	je	.LBB115_5
.LBB115_4:
	movl	%edi, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%r15, %rcx
	movl	%esi, %edx
	movq	%r14, %r8
	callq	*__imp__iki_vlog_bit_copy(%rip)
	addq	$15224, %rbx            # imm = 0x3B78
	movq	$0, 32(%rsp)
	movq	%rbx, %rcx
	movl	%esi, %edx
	movq	%r14, %r8
	movl	%edi, %r9d
	callq	*__imp__iki_vlog_strength_copy(%rip)
.LBB115_5:
	addq	$56, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%r15
	popq	%rbp
	ret

	.def	 _transaction_228;
	.scl	2;
	.type	32;
	.endef
	.globl	_transaction_228
	.align	16, 0x90
_transaction_228:                       # @_transaction_228
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$56, %rsp
	movl	%r9d, %esi
	movq	%rdx, %r14
	movq	%rcx, %rbx
	movl	48(%rbp), %edi
	leaq	15528(%rbx), %r15
	cmpl	$0, 15544(%rbx)
	je	.LBB116_2
# BB#1:
	leaq	15392(%rbx), %rcx
	movl	%edi, %r9d
	subl	%esi, %r9d
	incl	%r9d
	movq	%r14, %rdx
	movl	%esi, %r8d
	callq	*__imp__iki_vlog_event_callback(%rip)
	movq	%rax, %r14
.LBB116_2:
	subl	%esi, %edi
	incl	%edi
	movq	%r15, %rcx
	movl	%esi, %edx
	movq	%r14, %r8
	movl	%edi, %r9d
	callq	*__imp__iki_vlog_memcmp_0(%rip)
	cmpl	$1, %eax
	je	.LBB116_4
# BB#3:
	leaq	15392(%rbx), %rcx
	movl	%edi, 32(%rsp)
	movq	$0, 40(%rsp)
	xorl	%r9d, %r9d
	movl	%esi, %edx
	movq	%r14, %r8
	callq	*__imp__iki_vlog_strengthcmp(%rip)
	testl	%eax, %eax
	je	.LBB116_5
.LBB116_4:
	leaq	122648(%rbx), %rcx
	callq	*__imp__iki_schedule_process_priority(%rip)
	movl	%edi, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%r15, %rcx
	movl	%esi, %edx
	movq	%r14, %r8
	callq	*__imp__iki_vlog_bit_copy(%rip)
	addq	$15392, %rbx            # imm = 0x3C20
	movq	$0, 32(%rsp)
	movq	%rbx, %rcx
	movl	%esi, %edx
	movq	%r14, %r8
	movl	%edi, %r9d
	callq	*__imp__iki_vlog_strength_copy(%rip)
.LBB116_5:
	addq	$56, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%r15
	popq	%rbp
	ret

	.def	 _transaction_229;
	.scl	2;
	.type	32;
	.endef
	.globl	_transaction_229
	.align	16, 0x90
_transaction_229:                       # @_transaction_229
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$56, %rsp
	movl	%r9d, %esi
	movq	%rdx, %r14
	movq	%rcx, %rbx
	movl	48(%rbp), %edi
	leaq	15696(%rbx), %r15
	cmpl	$0, 15712(%rbx)
	je	.LBB117_2
# BB#1:
	leaq	15560(%rbx), %rcx
	movl	%edi, %r9d
	subl	%esi, %r9d
	incl	%r9d
	movq	%r14, %rdx
	movl	%esi, %r8d
	callq	*__imp__iki_vlog_event_callback(%rip)
	movq	%rax, %r14
.LBB117_2:
	subl	%esi, %edi
	incl	%edi
	movq	%r15, %rcx
	movl	%esi, %edx
	movq	%r14, %r8
	movl	%edi, %r9d
	callq	*__imp__iki_vlog_memcmp_0(%rip)
	cmpl	$1, %eax
	je	.LBB117_4
# BB#3:
	leaq	15560(%rbx), %rcx
	movl	%edi, 32(%rsp)
	movq	$0, 40(%rsp)
	xorl	%r9d, %r9d
	movl	%esi, %edx
	movq	%r14, %r8
	callq	*__imp__iki_vlog_strengthcmp(%rip)
	testl	%eax, %eax
	je	.LBB117_5
.LBB117_4:
	movl	%edi, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%r15, %rcx
	movl	%esi, %edx
	movq	%r14, %r8
	callq	*__imp__iki_vlog_bit_copy(%rip)
	addq	$15560, %rbx            # imm = 0x3CC8
	movq	$0, 32(%rsp)
	movq	%rbx, %rcx
	movl	%esi, %edx
	movq	%r14, %r8
	movl	%edi, %r9d
	callq	*__imp__iki_vlog_strength_copy(%rip)
.LBB117_5:
	addq	$56, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%r15
	popq	%rbp
	ret

	.def	 _execute_181;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_181
	.align	16, 0x90
_execute_181:                           # @_execute_181
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	ng2(%rip), %eax
	andl	$1, %eax
	movl	%eax, 2800(%rdx)
	movl	ng2+4(%rip), %eax
	andl	$1, %eax
	movl	%eax, 2804(%rdx)
	leaq	264(%rdx), %rcx
	addq	$2776, %rdx             # imm = 0xAD8
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	*__imp__iki_vlog_schedule_transaction_signal_fast(%rip)
	addq	$32, %rsp
	popq	%rbp
	ret

	.def	 _execute_182;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_182
	.align	16, 0x90
_execute_182:                           # @_execute_182
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	subq	$40, %rsp
	movq	%rdx, %rsi
	movl	$2097204, %ecx          # imm = 0x200034
	callq	*__imp__iki_stmt_online(%rip)
	movq	664(%rsi), %rdx
	leaq	2968(%rsi), %rcx
	movl	$8, %r8d
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	40(%rsi), %rcx
	addq	$2944, %rsi             # imm = 0xB80
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%rsi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_signal_fast_no_reg_no_agg(%rip)
	addq	$40, %rsp
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_183;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_183
	.align	16, 0x90
_execute_183:                           # @_execute_183
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	subq	$40, %rsp
	movq	%rdx, %rsi
	movl	$2097205, %ecx          # imm = 0x200035
	callq	*__imp__iki_stmt_online(%rip)
	movq	720(%rsi), %rdx
	leaq	3136(%rsi), %rcx
	movl	$8, %r8d
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	96(%rsi), %rcx
	addq	$3112, %rsi             # imm = 0xC28
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%rsi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_signal_fast_no_reg_no_agg(%rip)
	addq	$40, %rsp
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_184;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_184
	.align	16, 0x90
_execute_184:                           # @_execute_184
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	subq	$40, %rsp
	movq	%rdx, %rsi
	movl	$2097206, %ecx          # imm = 0x200036
	callq	*__imp__iki_stmt_online(%rip)
	movq	776(%rsi), %rdx
	leaq	3304(%rsi), %rcx
	movl	$8, %r8d
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	208(%rsi), %rcx
	addq	$3280, %rsi             # imm = 0xCD0
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%rsi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_signal_fast_no_reg_no_agg(%rip)
	addq	$40, %rsp
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_86;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_86
	.align	16, 0x90
_execute_86:                            # @_execute_86
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$40, %rsp
	movq	%rdx, %rsi
	leaq	1848(%rsi), %rdi
	.align	16, 0x90
.LBB122_1:                              # =>This Inner Loop Header: Depth=1
	movl	$58, %edx
	movq	%rsi, %rcx
	callq	*__imp__iki_vlog_set_threadId_for_unrandom(%rip)
	movq	1888(%rsi), %rax
	testq	%rax, %rax
	je	.LBB122_3
# BB#2:                                 #   in Loop: Header=BB122_1 Depth=1
	jmpq	*%rax
.Ltmp434:                               # Block address taken
.LBB122_5:
	movq	__imp__iki_stmt_online(%rip), %rbx
	movl	$2097212, %ecx          # imm = 0x20003C
	callq	*%rbx
	leaq	656(%rsi), %rcx
	leaq	2032(%rsi), %rdx
	leaq	ng1(%rip), %r14
	movq	__imp__iki_vlog_schedule_transaction_blocking_var_setback0(%rip), %rdi
	xorl	%r9d, %r9d
	movq	%r14, %r8
	callq	*%rdi
	movl	$2097213, %ecx          # imm = 0x20003D
	callq	*%rbx
	leaq	768(%rsi), %rcx
	addq	$2064, %rsi             # imm = 0x810
	xorl	%r9d, %r9d
	movq	%rsi, %rdx
	movq	%r14, %r8
	callq	*%rdi
	jmp	.LBB122_4
.LBB122_3:
	movq	__imp__iki_stmt_online(%rip), %rbx
	movl	$2097209, %ecx          # imm = 0x200039
	callq	*%rbx
	leaq	656(%rsi), %rcx
	leaq	2032(%rsi), %rdx
	leaq	ng2(%rip), %r14
	movq	__imp__iki_vlog_schedule_transaction_blocking_var_setback0(%rip), %r15
	xorl	%r9d, %r9d
	movq	%r14, %r8
	callq	*%r15
	movl	$2097210, %ecx          # imm = 0x20003A
	callq	*%rbx
	leaq	768(%rsi), %rcx
	addq	$2064, %rsi             # imm = 0x810
	xorl	%r9d, %r9d
	movq	%rsi, %rdx
	movq	%r14, %r8
	callq	*%r15
	movl	$2097211, %ecx          # imm = 0x20003B
	callq	*%rbx
	leaq	.Ltmp434(%rip), %r9
	movl	$100000, %edx           # imm = 0x186A0
	movq	%rdi, %rcx
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_wait_and_set_next_state(%rip)
.LBB122_4:
	addq	$40, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%r15
	popq	%rbp
	ret

	.def	 _execute_87;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_87
	.align	16, 0x90
_execute_87:                            # @_execute_87
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$40, %rsp
	movq	%rdx, %rsi
	leaq	2096(%rsi), %rdi
	.align	16, 0x90
.LBB123_1:                              # =>This Inner Loop Header: Depth=1
	movl	$59, %edx
	movq	%rsi, %rcx
	callq	*__imp__iki_vlog_set_threadId_for_unrandom(%rip)
	movq	2136(%rsi), %rax
	testq	%rax, %rax
	je	.LBB123_3
# BB#2:                                 #   in Loop: Header=BB123_1 Depth=1
	jmpq	*%rax
.Ltmp438:                               # Block address taken
.LBB123_5:
	movl	$2097219, %ecx          # imm = 0x200043
	callq	*__imp__iki_stmt_online(%rip)
	leaq	712(%rsi), %rcx
	addq	$2248, %rsi             # imm = 0x8C8
	leaq	ng1(%rip), %r8
	xorl	%r9d, %r9d
	movq	%rsi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var_setback0(%rip)
	jmp	.LBB123_4
.LBB123_3:
	movq	__imp__iki_stmt_online(%rip), %rbx
	movl	$2097217, %ecx          # imm = 0x200041
	callq	*%rbx
	leaq	712(%rsi), %rcx
	addq	$2248, %rsi             # imm = 0x8C8
	leaq	ng2(%rip), %r8
	xorl	%r9d, %r9d
	movq	%rsi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_blocking_var_setback0(%rip)
	movl	$2097218, %ecx          # imm = 0x200042
	callq	*%rbx
	leaq	.Ltmp438(%rip), %r9
	xorl	%edx, %edx
	movq	%rdi, %rcx
	movq	%rdi, %r8
	callq	*__imp__iki_vlog_wait_and_set_next_state(%rip)
.LBB123_4:
	addq	$40, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_185;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_185
	.align	16, 0x90
_execute_185:                           # @_execute_185
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rsi
	subq	$40, %rsp
	movq	%rdx, %rsi
	movl	$2097169, %ecx          # imm = 0x200011
	callq	*__imp__iki_stmt_online(%rip)
	movq	272(%rsi), %rdx
	leaq	3472(%rsi), %rcx
	movl	$8, %r8d
	callq	*__imp__iki_std_memcpy(%rip)
	leaq	320(%rsi), %rcx
	addq	$3448, %rsi             # imm = 0xD78
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%rsi, %rdx
	callq	*__imp__iki_vlog_schedule_transaction_signal_fast_no_reg_no_agg(%rip)
	addq	$40, %rsp
	popq	%rsi
	popq	%rbp
	ret

	.def	 _execute_88;
	.scl	2;
	.type	32;
	.endef
	.globl	_execute_88
	.align	16, 0x90
_execute_88:                            # @_execute_88
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$32, %rsp
	movq	%rdx, %rsi
	movl	$60, %edx
	movq	%rsi, %rcx
	callq	*__imp__iki_vlog_set_threadId_for_unrandom(%rip)
	movq	__imp__iki_stmt_online(%rip), %rbx
	movl	$2097194, %ecx          # imm = 0x20002A
	callq	*%rbx
	leaq	1384(%rsi), %rcx
	leaq	2400(%rsi), %rdx
	leaq	ng1(%rip), %rdi
	movq	__imp__iki_vlog_schedule_transaction_blocking_var_setback0(%rip), %r14
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r14
	movl	$2097195, %ecx          # imm = 0x20002B
	callq	*%rbx
	leaq	1440(%rsi), %rcx
	leaq	2432(%rsi), %rdx
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r14
	movl	$2097196, %ecx          # imm = 0x20002C
	callq	*%rbx
	leaq	1496(%rsi), %rcx
	leaq	2464(%rsi), %rdx
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r14
	movl	$2097197, %ecx          # imm = 0x20002D
	callq	*%rbx
	leaq	1552(%rsi), %rcx
	leaq	2496(%rsi), %rdx
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r14
	movl	$2097199, %ecx          # imm = 0x20002F
	callq	*%rbx
	leaq	1608(%rsi), %rcx
	leaq	2528(%rsi), %rdx
	leaq	ng61(%rip), %rdi
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r14
	movl	$2097200, %ecx          # imm = 0x200030
	callq	*%rbx
	leaq	1664(%rsi), %rcx
	leaq	2560(%rsi), %rdx
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r14
	movl	$2097201, %ecx          # imm = 0x200031
	callq	*%rbx
	leaq	1720(%rsi), %rcx
	leaq	2592(%rsi), %rdx
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	callq	*%r14
	movl	$2097202, %ecx          # imm = 0x200032
	callq	*%rbx
	leaq	1776(%rsi), %rcx
	addq	$2624, %rsi             # imm = 0xA40
	xorl	%r9d, %r9d
	movq	%rsi, %rdx
	movq	%rdi, %r8
	callq	*%r14
	addq	$32, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%rbp
	ret

	.lcomm	ng1,8,4                 # @ng1
	.data
	.align	4                       # @ng2
ng2:
	.long	1                       # 0x1
	.long	0                       # 0x0

	.align	4                       # @ng3
ng3:
	.long	2                       # 0x2
	.long	0                       # 0x0

	.align	4                       # @ng4
ng4:
	.long	3                       # 0x3
	.long	0                       # 0x0

	.align	4                       # @ng6
ng6:
	.long	4                       # 0x4
	.long	0                       # 0x0

	.align	4                       # @ng7
ng7:
	.long	5                       # 0x5
	.long	0                       # 0x0

	.align	4                       # @ng8
ng8:
	.long	6                       # 0x6
	.long	0                       # 0x0

	.align	4                       # @ng9
ng9:
	.long	7                       # 0x7
	.long	0                       # 0x0

	.align	4                       # @ng10
ng10:
	.long	8                       # 0x8
	.long	0                       # 0x0

	.align	4                       # @ng11
ng11:
	.long	9                       # 0x9
	.long	0                       # 0x0

	.align	4                       # @ng12
ng12:
	.long	10                      # 0xa
	.long	0                       # 0x0

	.align	4                       # @ng13
ng13:
	.long	11                      # 0xb
	.long	0                       # 0x0

	.lcomm	ng0,8,4                 # @ng0
	.align	4                       # @ng5
ng5:
	.long	1                       # 0x1
	.long	0                       # 0x0

	.align	4                       # @ng14
ng14:
	.long	0                       # 0x0
	.long	255                     # 0xff

	.align	4                       # @ng15
ng15:
	.long	255                     # 0xff
	.long	0                       # 0x0

	.align	4                       # @ng16
ng16:
	.long	240                     # 0xf0
	.long	0                       # 0x0

	.align	4                       # @ng17
ng17:
	.long	241                     # 0xf1
	.long	0                       # 0x0

	.align	4                       # @ng19
ng19:
	.long	242                     # 0xf2
	.long	0                       # 0x0

	.align	4                       # @ng20
ng20:
	.long	243                     # 0xf3
	.long	0                       # 0x0

	.align	4                       # @ng22
ng22:
	.long	16                      # 0x10
	.long	0                       # 0x0

	.align	4                       # @ng23
ng23:
	.long	17                      # 0x11
	.long	0                       # 0x0

	.align	4                       # @ng35
ng35:
	.long	18                      # 0x12
	.long	0                       # 0x0

	.align	4                       # @ng36
ng36:
	.long	19                      # 0x13
	.long	0                       # 0x0

	.align	4                       # @ng37
ng37:
	.long	20                      # 0x14
	.long	0                       # 0x0

	.align	4                       # @ng24
ng24:
	.long	32                      # 0x20
	.long	0                       # 0x0

	.align	4                       # @ng25
ng25:
	.long	33                      # 0x21
	.long	0                       # 0x0

	.align	4                       # @ng39
ng39:
	.long	34                      # 0x22
	.long	0                       # 0x0

	.align	4                       # @ng26
ng26:
	.long	48                      # 0x30
	.long	0                       # 0x0

	.align	4                       # @ng27
ng27:
	.long	49                      # 0x31
	.long	0                       # 0x0

	.align	4                       # @ng40
ng40:
	.long	50                      # 0x32
	.long	0                       # 0x0

	.align	4                       # @ng28
ng28:
	.long	64                      # 0x40
	.long	0                       # 0x0

	.align	4                       # @ng41
ng41:
	.long	65                      # 0x41
	.long	0                       # 0x0

	.align	4                       # @ng42
ng42:
	.long	66                      # 0x42
	.long	0                       # 0x0

	.align	4                       # @ng29
ng29:
	.long	80                      # 0x50
	.long	0                       # 0x0

	.align	4                       # @ng43
ng43:
	.long	81                      # 0x51
	.long	0                       # 0x0

	.align	4                       # @ng44
ng44:
	.long	82                      # 0x52
	.long	0                       # 0x0

	.align	4                       # @ng30
ng30:
	.long	96                      # 0x60
	.long	0                       # 0x0

	.align	4                       # @ng45
ng45:
	.long	97                      # 0x61
	.long	0                       # 0x0

	.align	4                       # @ng46
ng46:
	.long	98                      # 0x62
	.long	0                       # 0x0

	.align	4                       # @ng31
ng31:
	.long	112                     # 0x70
	.long	0                       # 0x0

	.align	4                       # @ng47
ng47:
	.long	113                     # 0x71
	.long	0                       # 0x0

	.align	4                       # @ng32
ng32:
	.long	128                     # 0x80
	.long	0                       # 0x0

	.align	4                       # @ng34
ng34:
	.long	129                     # 0x81
	.long	0                       # 0x0

	.align	4                       # @ng48
ng48:
	.long	130                     # 0x82
	.long	0                       # 0x0

	.align	4                       # @ng49
ng49:
	.long	131                     # 0x83
	.long	0                       # 0x0

	.align	4                       # @ng21
ng21:
	.long	3                       # 0x3
	.long	0                       # 0x0

	.align	4                       # @ng33
ng33:
	.long	12                      # 0xc
	.long	0                       # 0x0

	.align	4                       # @ng38
ng38:
	.long	2                       # 0x2
	.long	0                       # 0x0

	.align	4                       # @ng18
ng18:
	.long	254                     # 0xfe
	.long	0                       # 0x0

	.align	16                      # @ng50
ng50:
	.long	779384948               # 0x2e747874
	.long	0                       # 0x0
	.long	1229865292              # 0x494e414c
	.long	0                       # 0x0
	.long	1330470726              # 0x4f4d5f46
	.long	0                       # 0x0
	.long	1953705810              # 0x74732f52
	.long	0                       # 0x0
	.long	1836085106              # 0x6d706f72
	.long	0                       # 0x0
	.long	774778729               # 0x2e2e2f69
	.long	0                       # 0x0
	.long	3026479                 # 0x2e2e2f
	.long	0                       # 0x0

	.align	16                      # @ng51
ng51:
	.long	779384948               # 0x2e747874
	.long	0                       # 0x0
	.long	1599226189              # 0x5f52414d
	.long	0                       # 0x0
	.long	1147497839              # 0x44656d6f
	.long	0                       # 0x0
	.long	1702126943              # 0x6574655f
	.long	0                       # 0x0
	.long	1869443180              # 0x6f6d706c
	.long	0                       # 0x0
	.long	1953705795              # 0x74732f43
	.long	0                       # 0x0
	.long	1836085106              # 0x6d706f72
	.long	0                       # 0x0
	.long	774778729               # 0x2e2e2f69
	.long	0                       # 0x0
	.long	3026479                 # 0x2e2e2f
	.long	0                       # 0x0

	.align	4                       # @ng52
ng52:
	.long	6                       # 0x6
	.long	0                       # 0x0

	.align	4                       # @ng53
ng53:
	.long	99999                   # 0x1869f
	.long	0                       # 0x0

	.align	4                       # @ng54
ng54:
	.long	7                       # 0x7
	.long	0                       # 0x0

	.align	4                       # @ng55
ng55:
	.long	7000                    # 0x1b58
	.long	0                       # 0x0

	.align	4                       # @ng58
ng58:
	.long	244                     # 0xf4
	.long	0                       # 0x0

	.align	4                       # @ng56
ng56:
	.long	250                     # 0xfa
	.long	0                       # 0x0

	.align	4                       # @ng57
ng57:
	.long	170                     # 0xaa
	.long	0                       # 0x0

	.align	4                       # @ng59
ng59:
	.long	161                     # 0xa1
	.long	0                       # 0x0

	.align	4                       # @ng60
ng60:
	.long	121                     # 0x79
	.long	0                       # 0x0

	.align	4                       # @ng61
ng61:
	.long	0                       # 0x0
	.long	1                       # 0x1

	.align	4                       # @ng62
ng62:
	.long	160                     # 0xa0
	.long	0                       # 0x0

	.align	4                       # @ng63
ng63:
	.long	192                     # 0xc0
	.long	0                       # 0x0

	.align	4                       # @ng64
ng64:
	.long	4                       # 0x4
	.long	0                       # 0x0

	.align	4                       # @ng65
ng65:
	.long	15                      # 0xf
	.long	0                       # 0x0

	.align	4                       # @ng66
ng66:
	.long	8                       # 0x8
	.long	0                       # 0x0

	.align	4                       # @ng67
ng67:
	.long	799                     # 0x31f
	.long	0                       # 0x0

	.align	4                       # @ng68
ng68:
	.long	520                     # 0x208
	.long	0                       # 0x0

	.align	4                       # @ng69
ng69:
	.long	9                       # 0x9
	.long	0                       # 0x0

	.align	4                       # @ng70
ng70:
	.long	176                     # 0xb0
	.long	0                       # 0x0

	.align	4                       # @ng71
ng71:
	.long	120                     # 0x78
	.long	0                       # 0x0

	.align	4                       # @ng72
ng72:
	.long	14                      # 0xe
	.long	0                       # 0x0

	.align	4                       # @ng73
ng73:
	.long	65280                   # 0xff00
	.long	0                       # 0x0

	.align	4                       # @ng74
ng74:
	.long	40                      # 0x28
	.long	0                       # 0x0

	.align	4                       # @ng75
ng75:
	.long	53                      # 0x35
	.long	0                       # 0x0

	.align	4                       # @ng77
ng77:
	.long	107                     # 0x6b
	.long	0                       # 0x0

	.align	4                       # @ng76
ng76:
	.long	12                      # 0xc
	.long	0                       # 0x0

	.align	4                       # @ng79
ng79:
	.long	11                      # 0xb
	.long	0                       # 0x0

	.align	4                       # @ng78
ng78:
	.long	13                      # 0xd
	.long	0                       # 0x0

	.align	4                       # @ng80
ng80:
	.long	14                      # 0xe
	.long	0                       # 0x0

	.align	4                       # @ng81
ng81:
	.long	15                      # 0xf
	.long	0                       # 0x0

	.align	4                       # @ng84
ng84:
	.long	5                       # 0x5
	.long	0                       # 0x0

	.align	4                       # @ng87
ng87:
	.long	10                      # 0xa
	.long	0                       # 0x0

	.align	4                       # @ng89
ng89:
	.long	13                      # 0xd
	.long	0                       # 0x0

	.align	4                       # @ng82
ng82:
	.long	36                      # 0x24
	.long	0                       # 0x0

	.align	4                       # @ng83
ng83:
	.long	25                      # 0x19
	.long	0                       # 0x0

	.align	4                       # @ng85
ng85:
	.long	47                      # 0x2f
	.long	0                       # 0x0

	.align	4                       # @ng86
ng86:
	.long	71                      # 0x47
	.long	0                       # 0x0

	.align	4                       # @ng88
ng88:
	.long	70                      # 0x46
	.long	0                       # 0x0

	.align	4                       # @ng90
ng90:
	.long	127                     # 0x7f
	.long	0                       # 0x0

	.align	4                       # @ng91
ng91:
	.long	208                     # 0xd0
	.long	0                       # 0x0

	.align	4                       # @ng93
ng93:
	.long	144                     # 0x90
	.long	0                       # 0x0


