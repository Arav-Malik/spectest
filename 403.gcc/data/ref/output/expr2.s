	.file	"expr2.i"
	.data
	.align 8
	.type	placeholder_list,@object
	.size	placeholder_list,8
placeholder_list:
	.quad	0
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"expr.c"
.LC1:
	.string	"convert_move"
	.text
	.align 2
	.p2align 4,,15
.globl convert_move
	.type	convert_move,@function
convert_move:
.LFB1:
	pushq	%r15
.LCFI0:
	movq	%rdi, %r15
	pushq	%r14
.LCFI1:
	pushq	%r13
.LCFI2:
	pushq	%r12
.LCFI3:
	pushq	%rbp
.LCFI4:
	movq	%rsi, %rbp
	pushq	%rbx
.LCFI5:
	subq	$40, %rsp
.LCFI6:
	movl	%edx, 24(%rsp)
	.p2align 4,,7
.L98:
	movzbl	2(%r15), %ebx
	xorl	%edx, %edx
	movl	%ebx, 36(%rsp)
	movslq	%ebx,%r13
	movzbl	2(%rbp), %r14d
	cmpl	$2, mode_class(,%r13,4)
	sete	%dl
	xorl	%ecx, %ecx
	movslq	%r14d,%rax
	cmpl	$2, mode_class(,%rax,4)
	sete	%cl
	movl	%edx, 32(%rsp)
	xorl	%edx, %edx
	cmpl	$0, 24(%rsp)
	setne	%dl
	movl	%ecx, 28(%rsp)
	addl	$120, %edx
	movl	%edx, 20(%rsp)
	movzwl	(%r15), %eax
	cmpl	$71, %eax
	je	.L4
	cmpl	$66, %eax
	je	.L202
.L8:
	cmpl	$75, %eax
	je	.L12
	cmpl	$78, %eax
	je	.L12
.L7:
	movzwl	(%rbp), %eax
	cmpl	$71, %eax
	je	.L17
	cmpl	$66, %eax
	je	.L203
.L21:
	cmpl	$75, %eax
	je	.L25
	cmpl	$78, %eax
	je	.L25
.L20:
	movl	28(%rsp), %eax
	cmpl	%eax, 32(%rsp)
	jne	.L204
	movl	(%rbp), %eax
	andl	$268500991, %eax
	cmpl	$268435519, %eax
	je	.L205
.L31:
	movl	(%r15), %eax
	andl	$268500991, %eax
	cmpl	$268435519, %eax
	je	.L206
	cmpl	%r14d, 36(%rsp)
	je	.L39
	testl	%r14d, %r14d
	jne	.L33
	movl	(%rbp), %edx
	leal	-67(%rdx), %r12d
	cmpw	$1, %r12w
	jbe	.L39
	cmpw	$54, %dx
	je	.L39
	cmpw	$55, %dx
	je	.L39
	cmpw	$58, %dx
	je	.L39
	cmpw	$134, %dx
	je	.L39
	cmpw	$56, %dx
	je	.L39
	cmpw	$140, %dx
	je	.L39
.L33:
	movl	mode_class(,%r13,4), %ecx
	subl	$7, %ecx
	cmpl	$1, %ecx
	jbe	.L172
	movslq	%r14d,%rdx
	movl	mode_class(,%rdx,4), %eax
	movq	%rdx, %rbx
	subl	$7, %eax
	cmpl	$1, %eax
	jbe	.L36
	movl	28(%rsp), %eax
	cmpl	%eax, 32(%rsp)
	jne	.L208
	movl	32(%rsp), %ecx
	testl	%ecx, %ecx
	jne	.L209
	movzwl	mode_bitsize(%r13,%r13), %ecx
	cmpw	%cx, mode_bitsize(%rdx,%rdx)
	jae	.L173
	movl	target_flags(%rip), %eax
	testl	$33554432, %eax
	movl	%eax, %edx
	je	.L83
	cmpw	$64, %cx
.L182:
	ja	.L210
.L82:
	testl	$33554432, %eax
	je	.L120
	cmpw	$64, mode_bitsize(%rbx,%rbx)
.L185:
	jbe	.L119
	testl	$33554432, %eax
	je	.L122
	cmpw	$64, mode_bitsize(%r13,%r13)
.L186:
	ja	.L119
	movl	(%rbp), %eax
	andl	$134283263, %eax
	cmpl	$66, %eax
	je	.L211
.L125:
	movl	(%rbp), %eax
	cmpw	$61, %ax
	je	.L124
	cmpw	$63, %ax
	je	.L124
	movq	%rbp, %rsi
	movl	%r14d, %edi
	call	force_reg
	movq	%rax, %rbp
.L124:
	movl	word_mode(%rip), %edi
	movq	%rbp, %rsi
	call	gen_lowpart
	movl	$0, 24(%rsp)
	movq	%rax, %rbp
	jmp	.L98
	.p2align 6,,7
.L211:
	cmpb	$0, direct_load(%r13)
	je	.L125
	movq	8(%rbp), %rdi
	call	mode_dependent_address_p
	testl	%eax, %eax
	je	.L124
	jmp	.L125
.L119:
	cmpl	$8, 36(%rsp)
	je	.L212
	cmpl	$8, %r14d
	je	.L213
.L128:
	cmpl	$10, 36(%rsp)
	je	.L214
	cmpl	$10, %r14d
	je	.L215
.L133:
	cmpl	$11, 36(%rsp)
	je	.L216
	cmpl	$11, %r14d
	je	.L217
.L138:
	movslq	%r14d,%r12
	movzwl	mode_bitsize(%r13,%r13), %edx
	movzwl	mode_bitsize(%r12,%r12), %eax
	cmpw	%ax, %dx
	jb	.L218
	cmpw	%ax, %dx
	ja	.L219
	cmpl	$5, %r14d
	jne	.L159
	cmpl	$4, 36(%rsp)
	je	.L188
	cmpl	$3, 36(%rsp)
	je	.L188
	cmpl	$2, 36(%rsp)
	je	.L188
.L159:
	cmpl	$4, %r14d
	jne	.L161
	cmpl	$3, 36(%rsp)
	je	.L189
	cmpl	$2, 36(%rsp)
	je	.L189
.L161:
	cmpl	$3, %r14d
	jne	.L162
	cmpl	$2, 36(%rsp)
	je	.L220
.L162:
	cmpl	$6, %r14d
	jne	.L166
	cmpl	$5, 36(%rsp)
	je	.L178
	cmpl	$4, 36(%rsp)
	je	.L178
	cmpl	$3, 36(%rsp)
	je	.L178
	cmpl	$2, 36(%rsp)
	jne	.L166
.L178:
	movl	$6, %edi
.L179:
	movq	%rbp, %rsi
	call	force_reg
.L180:
	movq	%rax, %rbp
	jmp	.L98
.L166:
	movzwl	mode_bitsize(%r12,%r12), %eax
	cmpw	%ax, mode_bitsize(%r13,%r13)
	jae	.L167
	movl	36(%rsp), %edi
	movq	%rbp, %rsi
	call	gen_lowpart
	movl	36(%rsp), %edi
	movq	%rax, %rsi
	call	force_reg
.L201:
	movq	%rax, %rsi
.L191:
	movq	%r15, %rdi
.L194:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	jmp	emit_move_insn
.L167:
	movl	$.LC0, %edi
	movl	$1243, %esi
.L190:
	movl	$.LC1, %edx
	call	fancy_abort
.L220:
	movl	$3, %edi
	jmp	.L179
.L189:
	movl	$4, %edi
	jmp	.L179
.L188:
	movl	$5, %edi
	jmp	.L179
.L219:
	movl	36(%rsp), %edi
	movl	24(%rsp), %edx
	movl	%r14d, %esi
	call	can_extend_p
	cmpl	$1317, %eax
	movl	%eax, %ebx
	jne	.L221
	testl	%r14d, %r14d
	movl	%r14d, %ebx
	je	.L171
.L155:
	movl	36(%rsp), %edi
	movl	24(%rsp), %edx
	movl	%ebx, %esi
	call	can_extend_p
	cmpl	$1317, %eax
	je	.L222
.L154:
	movl	24(%rsp), %edx
	movl	%ebx, %edi
	movl	%r14d, %esi
	call	can_extend_p
	cmpl	$1317, %eax
	jne	.L176
	movslq	%ebx,%rdx
.L151:
	movzbl	mode_wider_mode(%rdx), %ebx
	testl	%ebx, %ebx
	jne	.L155
.L171:
	movzwl	mode_bitsize(%r12,%r12), %ecx
	movzwl	mode_bitsize(%r13,%r13), %ebx
	xorl	%esi, %esi
	subl	%ecx, %ebx
	movslq	%ebx,%rdi
	call	build_int_2_wide
	movq	%rbp, %rsi
	movl	%r14d, %edi
	movq	%rax, %r12
	call	force_reg
	movl	36(%rsp), %edi
	movq	%rax, %rsi
	call	gen_lowpart
	movl	24(%rsp), %r9d
	movq	%r15, %r8
	movl	36(%rsp), %esi
	movl	$82, %edi
	movq	%rax, %rdx
	movq	%r12, %rcx
	call	expand_shift
	movl	24(%rsp), %r9d
	movq	%r15, %r8
	movl	36(%rsp), %esi
	movl	$83, %edi
	movq	%rax, %rdx
	movq	%r12, %rcx
	call	expand_shift
	cmpq	%r15, %rax
	movq	%rax, %rsi
	jne	.L191
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L176:
	movl	24(%rsp), %edx
	movl	%ebx, %edi
	movq	%rbp, %rsi
	call	convert_to_mode
	jmp	.L180
	.p2align 6,,7
.L222:
	movslq	%ebx,%rdx
	movzbl	mode_size(%rdx), %r11d
	cmpb	%r11b, mode_size(%r13)
	jae	.L151
	jmp	.L154
.L221:
	movl	flag_force_mem(%rip), %eax
	testl	%eax, %eax
	jne	.L223
.L147:
	movl	%ebx, %edi
.L195:
	movq	%r15, %rsi
	movq	%rbp, %rdx
.L192:
	movl	20(%rsp), %ecx
.L193:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	jmp	emit_unop_insn
.L223:
	movq	%rbp, %rdi
	call	force_not_mem
	movq	%rax, %rbp
	jmp	.L147
.L218:
	movl	(%rbp), %eax
	andl	$134283263, %eax
	cmpl	$66, %eax
	je	.L224
.L143:
	movl	(%rbp), %eax
	cmpw	$61, %ax
	je	.L177
	cmpw	$63, %ax
	je	.L142
	movq	%rbp, %rsi
	movl	%r14d, %edi
	call	force_reg
	movq	%rax, %rbp
.L174:
	movl	(%rbp), %eax
.L142:
	cmpw	$61, %ax
	je	.L177
.L144:
	movl	36(%rsp), %edi
	movq	%rbp, %rsi
	call	gen_lowpart
	jmp	.L201
.L177:
	movl	8(%rbp), %edi
	cmpl	$52, %edi
	ja	.L144
	movl	36(%rsp), %esi
	call	ix86_hard_regno_mode_ok
	testl	%eax, %eax
	jne	.L144
	movq	%rbp, %rdi
	call	copy_to_reg
	movq	%rax, %rbp
	jmp	.L144
.L224:
	cmpb	$0, direct_load(%r13)
	je	.L143
	movq	8(%rbp), %rdi
	call	mode_dependent_address_p
	testl	%eax, %eax
	je	.L174
	jmp	.L143
	.p2align 6,,7
.L217:
	cmpl	$5, 36(%rsp)
	je	.L139
	movl	24(%rsp), %edx
	movq	%rbp, %rsi
	movl	$5, %edi
	movl	$5, %r14d
	call	convert_to_mode
	movq	%rax, %rbp
	jmp	.L138
.L139:
	movl	$.LC0, %edi
	movl	$1024, %esi
	jmp	.L190
	.p2align 6,,7
.L216:
	cmpl	$5, %r14d
	je	.L137
	movl	24(%rsp), %edx
	movl	$5, %edi
	movq	%rbp, %rsi
	call	convert_to_mode
.L137:
	movl	$.LC0, %edi
	movl	$1005, %esi
	jmp	.L190
	.p2align 6,,7
.L215:
	cmpl	$4, 36(%rsp)
	je	.L134
	movl	24(%rsp), %edx
	movq	%rbp, %rsi
	movl	$4, %edi
	movl	$4, %r14d
	call	convert_to_mode
	movq	%rax, %rbp
	jmp	.L133
.L134:
	movl	$.LC0, %edi
	movl	$989, %esi
	jmp	.L190
	.p2align 6,,7
.L214:
	cmpl	$4, %r14d
	je	.L132
	movl	24(%rsp), %edx
	movl	$4, %edi
	movq	%rbp, %rsi
	call	convert_to_mode
.L132:
	movl	$.LC0, %edi
	movl	$963, %esi
	jmp	.L190
	.p2align 6,,7
.L213:
	cmpl	$2, 36(%rsp)
	je	.L129
	movl	24(%rsp), %edx
	movq	%rbp, %rsi
	movl	$2, %edi
	movl	$2, %r14d
	call	convert_to_mode
	movq	%rax, %rbp
	jmp	.L128
.L129:
	movl	$.LC0, %edi
	movl	$947, %esi
	jmp	.L190
	.p2align 6,,7
.L212:
	cmpl	$2, %r14d
	je	.L127
	movl	24(%rsp), %edx
	movl	$2, %edi
	movq	%rbp, %rsi
	call	convert_to_mode
.L127:
	movl	$.LC0, %edi
	movl	$928, %esi
	jmp	.L190
	.p2align 6,,7
.L122:
	cmpw	$32, mode_bitsize(%r13,%r13)
	jmp	.L186
	.p2align 6,,7
.L120:
	cmpw	$32, mode_bitsize(%rbx,%rbx)
	jmp	.L185
.L210:
	testl	$33554432, %edx
	je	.L85
	movzbl	mode_size(%r13), %esi
	leal	7(%rsi), %ecx
.L86:
	andl	$33554432, %edx
	je	.L87
	cmpl	$-1, %ecx
	leal	7(%rcx), %edx
	cmovle	%edx, %ecx
	movl	%ecx, 16(%rsp)
	sarl	$3, 16(%rsp)
.L88:
	movl	36(%rsp), %edi
	movl	24(%rsp), %edx
	movl	%r14d, %esi
	call	can_extend_p
	cmpl	$1317, %eax
	movl	%eax, %r12d
	je	.L91
	movl	optimize(%rip), %eax
	testl	%eax, %eax
	jle	.L92
	cmpw	$63, (%rbp)
	je	.L225
.L92:
	movl	%r12d, %edi
	jmp	.L195
.L225:
	movq	%rbp, %rsi
	movl	%r14d, %edi
	call	force_reg
	movq	%rax, %rbp
	jmp	.L92
.L91:
	testb	$2, target_flags+3(%rip)
	je	.L95
	cmpw	$63, mode_bitsize(%rbx,%rbx)
.L183:
	ja	.L93
	movl	36(%rsp), %edi
	movl	word_mode(%rip), %esi
	movl	24(%rsp), %edx
	call	can_extend_p
	cmpl	$1317, %eax
	movl	%eax, %r12d
	je	.L93
	cmpw	$61, (%r15)
	je	.L226
.L97:
	movl	word_mode(%rip), %edi
	movq	%r15, %rsi
	call	gen_lowpart
	movl	24(%rsp), %edx
	movq	%rbp, %rsi
	movq	%rax, %rdi
	call	convert_move
	movl	word_mode(%rip), %edi
	movq	%r15, %rsi
	call	gen_lowpart
	movq	%r15, %rsi
	movl	%r12d, %edi
	movq	%rax, %rdx
	jmp	.L192
.L226:
	movl	$49, %edi
	xorl	%esi, %esi
	movq	%r15, %rdx
	call	gen_rtx_fmt_e
	movq	%rax, %rdi
	call	emit_insn
	jmp	.L97
	.p2align 6,,7
.L93:
	call	start_sequence
	movq	%r15, %rdi
	movq	%rbp, %rsi
	call	reg_overlap_mentioned_p
	testl	%eax, %eax
	jne	.L227
.L99:
	testb	$2, target_flags+3(%rip)
	je	.L101
	cmpw	$63, mode_bitsize(%rbx,%rbx)
.L184:
	ja	.L100
	movl	word_mode(%rip), %ebx
.L103:
	movl	24(%rsp), %edx
	movl	%ebx, %edi
	movq	%rbp, %rsi
	call	convert_to_mode
	movq	%r15, %rsi
	movl	%ebx, %edi
	movq	%rax, %r13
	call	gen_lowpart
	movq	%rax, %rdi
	movq	%r13, %rsi
	call	emit_move_insn
	movl	24(%rsp), %r9d
	testl	%r9d, %r9d
	je	.L106
	movq	const_int_rtx+512(%rip), %r13
	movslq	%ebx,%r12
.L105:
	testb	$2, target_flags+3(%rip)
	je	.L108
	movzbl	mode_size(%r12), %ebx
	sarl	$3, %ebx
.L109:
	cmpl	16(%rsp), %ebx
	jl	.L118
.L169:
	call	get_insns
	movq	%rax, %r13
	call	end_sequence
	movq	%rbp, %rdi
	call	copy_rtx
	movl	36(%rsp), %esi
	movl	20(%rsp), %edi
	movq	%rax, %rdx
	call	gen_rtx_fmt_e
	addq	$40, %rsp
	xorl	%ecx, %ecx
	popq	%rbx
	movq	%rbp, %rdx
	movq	%r13, %rdi
	movq	%r15, %rsi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	movq	%rax, %r8
	jmp	emit_no_conflict_block
.L118:
	movl	36(%rsp), %ecx
	movq	%r15, %rdi
	movl	%ebx, %esi
	movl	$1, %edx
	call	operand_subword
	testq	%rax, %rax
	movq	%rax, %rdi
	je	.L228
	cmpq	%rax, %r13
	je	.L114
	movq	%r13, %rsi
	call	emit_move_insn
.L114:
	incl	%ebx
	cmpl	16(%rsp), %ebx
	jl	.L118
	jmp	.L169
.L228:
	movl	$.LC0, %edi
	movl	$886, %esi
	jmp	.L190
	.p2align 6,,7
.L108:
	movzbl	mode_size(%r12), %ebx
	sarl	$2, %ebx
	jmp	.L109
.L106:
	movslq	%ebx,%r12
	xorl	%esi, %esi
	movzwl	mode_bitsize(%r12,%r12), %r10d
	decl	%r10d
	movslq	%r10d,%rdi
	call	size_int_wide
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	%r13, %rdx
	movq	%rax, %rcx
	movl	$83, %edi
	movl	%ebx, %esi
	call	expand_shift
	movl	$1, %edx
	movl	word_mode(%rip), %edi
	movq	%rax, %rsi
	call	convert_to_mode
	movq	%rax, %r13
	jmp	.L105
.L100:
	movl	%r14d, %ebx
	jmp	.L103
.L101:
	cmpw	$31, mode_bitsize(%rbx,%rbx)
	jmp	.L184
.L227:
	movq	%rbp, %rsi
	movl	%r14d, %edi
	call	force_reg
	movq	%rax, %rbp
	jmp	.L99
.L95:
	cmpw	$31, mode_bitsize(%rbx,%rbx)
	jmp	.L183
.L87:
	cmpl	$-1, %ecx
	leal	3(%rcx), %edi
	cmovle	%edi, %ecx
	movl	%ecx, 16(%rsp)
	sarl	$2, 16(%rsp)
	jmp	.L88
.L85:
	movzbl	mode_size(%r13), %r8d
	leal	3(%r8), %ecx
	jmp	.L86
	.p2align 6,,7
.L83:
	cmpw	$32, %cx
	jmp	.L182
	.p2align 6,,7
.L173:
	movl	target_flags(%rip), %eax
	jmp	.L82
.L209:
	movzwl	mode_bitsize(%r13,%r13), %eax
	cmpw	%ax, mode_bitsize(%rdx,%rdx)
	jb	.L229
.L42:
	movl	target_flags(%rip), %edx
	testl	$262145, %edx
	je	.L44
	cmpl	$16, %r14d
	je	.L230
.L44:
	movl	%edx, %r13d
	andl	$33554433, %r13d
	decl	%r13d
	je	.L231
.L45:
	movl	target_flags(%rip), %eax
	testl	$1, %eax
	je	.L46
	cmpl	$18, %r14d
	je	.L232
.L46:
	andl	$33554433, %edx
	decl	%edx
	je	.L233
.L47:
	andl	$1, %eax
	je	.L48
	cmpl	$18, %r14d
	je	.L234
.L48:
	xorl	%ebx, %ebx
	cmpl	$16, %r14d
	je	.L58
	cmpl	$16, %r14d
	ja	.L80
	cmpl	$15, %r14d
	je	.L50
.L49:
	testq	%rbx, %rbx
	je	.L235
	call	start_sequence
	movl	36(%rsp), %ecx
	movq	%rbx, %rdi
	movq	%rbp, %r9
	xorl	%esi, %esi
	movl	$1, %edx
	movl	$1, %r8d
	xorl	%eax, %eax
	movl	%r14d, (%rsp)
	call	emit_library_call_value
	movq	%rax, %r14
	call	get_insns
	movq	%rax, %r12
	call	end_sequence
	movl	36(%rsp), %esi
	movq	%rbp, %rdx
	movl	$124, %edi
	call	gen_rtx_fmt_e
	addq	$40, %rsp
	movq	%r14, %rdx
	popq	%rbx
	popq	%rbp
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%rax, %rcx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	jmp	emit_libcall_block
.L235:
	movl	$.LC0, %edi
	movl	$781, %esi
	jmp	.L190
	.p2align 6,,7
.L50:
	cmpl	$17, 36(%rsp)
	je	.L53
	cmpl	$17, 36(%rsp)
	ja	.L57
	cmpl	$16, 36(%rsp)
	jne	.L49
	movq	libfunc_table(%rip), %rbx
	jmp	.L49
	.p2align 6,,7
.L57:
	cmpl	$18, 36(%rsp)
	jne	.L49
	movq	libfunc_table+16(%rip), %rbx
	jmp	.L49
	.p2align 6,,7
.L53:
	movq	libfunc_table+8(%rip), %rbx
	jmp	.L49
	.p2align 6,,7
.L80:
	cmpl	$17, %r14d
	je	.L66
	cmpl	$18, %r14d
	jne	.L49
	cmpl	$15, 36(%rsp)
	je	.L74
	cmpl	$16, 36(%rsp)
	jne	.L49
	movq	libfunc_table+72(%rip), %rbx
	jmp	.L49
.L74:
	movq	libfunc_table+56(%rip), %rbx
	jmp	.L49
.L66:
	cmpl	$15, 36(%rsp)
	je	.L68
	cmpl	$16, 36(%rsp)
	jne	.L49
	movq	libfunc_table+64(%rip), %rbx
	jmp	.L49
.L68:
	movq	libfunc_table+48(%rip), %rbx
	jmp	.L49
	.p2align 6,,7
.L58:
	cmpl	$17, 36(%rsp)
	je	.L61
	cmpl	$17, 36(%rsp)
	ja	.L65
	cmpl	$15, 36(%rsp)
	jne	.L49
	movq	libfunc_table+40(%rip), %rbx
	jmp	.L49
.L65:
	cmpl	$18, 36(%rsp)
	jne	.L49
	movq	libfunc_table+32(%rip), %rbx
	jmp	.L49
.L61:
	movq	libfunc_table+24(%rip), %rbx
	jmp	.L49
.L234:
	cmpl	$16, 36(%rsp)
	jne	.L48
	movl	$922, %edi
.L200:
	movq	%r15, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	jmp	.L193
.L233:
	cmpl	$17, %r14d
	jne	.L47
	cmpl	$16, 36(%rsp)
	jne	.L47
	movl	$919, %edi
	jmp	.L200
	.p2align 6,,7
.L232:
	cmpl	$15, 36(%rsp)
	jne	.L46
	movl	$916, %edi
	jmp	.L200
	.p2align 6,,7
.L231:
	cmpl	$17, %r14d
	jne	.L45
	cmpl	$15, 36(%rsp)
	jne	.L45
	movl	$913, %edi
	jmp	.L200
	.p2align 6,,7
.L230:
	cmpl	$15, 36(%rsp)
	jne	.L44
	movl	$909, %edi
	jmp	.L200
	.p2align 6,,7
.L229:
	movl	36(%rsp), %edi
	xorl	%edx, %edx
	movl	%r14d, %esi
	call	can_extend_p
	cmpl	$1317, %eax
	movl	%eax, %edi
	je	.L42
	jmp	.L200
	.p2align 6,,7
.L208:
	movl	$.LC0, %edi
	movl	$539, %esi
	jmp	.L190
.L36:
	movzwl	mode_bitsize(%r13,%r13), %eax
	cmpw	%ax, mode_bitsize(%rdx,%rdx)
	jne	.L236
	cmpl	$1, %ecx
	ja	.L38
	movzbl	2(%rbp), %edx
	movl	36(%rsp), %edi
	movq	%rbp, %rsi
	xorl	%ecx, %ecx
	call	simplify_gen_subreg
	movq	%rax, %rbp
.L39:
	movq	%r15, %rdi
	movq	%rbp, %rsi
	jmp	.L194
.L38:
	movzbl	2(%r15), %edx
	movq	%r15, %rsi
	movl	%r14d, %edi
	xorl	%ecx, %ecx
	call	simplify_gen_subreg
	movq	%rax, %r15
	jmp	.L39
.L236:
	movl	$.LC0, %edi
	movl	$527, %esi
	jmp	.L190
	.p2align 6,,7
.L172:
	movslq	%r14d,%rdx
	jmp	.L36
.L206:
	movl	$.LC0, %edi
	movl	$515, %esi
	jmp	.L190
	.p2align 6,,7
.L205:
	movq	8(%rbp), %r10
	movzbl	mode_size(%r13), %edi
	movzbq	2(%r10), %r9
	cmpb	%dil, mode_size(%r9)
	jb	.L31
	movzbl	3(%rbp), %r11d
	shrb	$2, %r11b
	andl	$1, %r11d
	cmpl	24(%rsp), %r11d
	jne	.L31
	movl	36(%rsp), %edi
	movq	%rbp, %rsi
	call	gen_lowpart
	movl	36(%rsp), %r14d
	movq	%rax, %rbp
	jmp	.L31
.L204:
	movl	$.LC0, %edi
	movl	$502, %esi
	jmp	.L190
	.p2align 6,,7
.L25:
	movq	8(%rbp), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%rbp), %rdi
	movq	%rax, %r12
	call	protect_from_queue
	cmpq	8(%rbp), %r12
	movq	%rax, %rbx
	je	.L237
.L27:
	movq	%rbp, %rdi
	call	copy_rtx
	movq	%rax, %rbp
	movq	%r12, 8(%rax)
	movq	%rbx, 16(%rax)
	jmp	.L20
.L237:
	cmpq	16(%rbp), %rax
	jne	.L27
	jmp	.L20
	.p2align 6,,7
.L203:
	cmpb	$51, 2(%rbp)
	je	.L18
	movq	8(%rbp), %rbx
	cmpw	$71, (%rbx)
	je	.L238
.L18:
	cmpl	$66, %eax
	jne	.L21
	movq	8(%rbp), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%rbp), %rax
	movq	%rax, %rbx
	je	.L20
	movq	%rbp, %rdi
	call	copy_rtx
	movq	%rax, %rbp
	movq	%rbx, 8(%rax)
	jmp	.L20
.L238:
	movq	8(%rbx), %rsi
	movq	%rbp, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%rbx)
	movq	%rax, %r12
	je	.L19
	movzbl	2(%rbp), %edi
	call	gen_reg_rtx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbp
	call	gen_move_insn
	movq	16(%rbx), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L20
.L19:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%r12, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
	.p2align 4,,7
.L181:
	movq	%rax, %rbp
	jmp	.L20
	.p2align 6,,7
.L17:
	cmpq	$0, 16(%rbp)
	je	.L239
	movq	24(%rbp), %rax
	testq	%rax, %rax
	jne	.L181
	movq	8(%rbp), %r8
	movzbl	2(%r8), %edi
	call	gen_reg_rtx
	movq	8(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%rbp)
	call	gen_move_insn
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%rbp), %rbp
	jmp	.L20
.L239:
	movq	8(%rbp), %rdi
	call	copy_to_reg
	jmp	.L181
	.p2align 6,,7
.L12:
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r15), %rdi
	movq	%rax, %r12
	call	protect_from_queue
	cmpq	8(%r15), %r12
	movq	%rax, %rbx
	je	.L240
.L14:
	movq	%r15, %rdi
	call	copy_rtx
	movq	%rax, %r15
	movq	%r12, 8(%rax)
	movq	%rbx, 16(%rax)
	jmp	.L7
.L240:
	cmpq	16(%r15), %rax
	jne	.L14
	jmp	.L7
	.p2align 6,,7
.L202:
	jne	.L8
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%r15), %rax
	movq	%rax, %rbx
	je	.L7
	movq	%r15, %rdi
	call	copy_rtx
	movq	%rax, %r15
	movq	%rbx, 8(%rax)
	jmp	.L7
	.p2align 6,,7
.L4:
	cmpq	$0, 16(%r15)
	je	.L241
	movq	24(%r15), %rdi
	testq	%rdi, %rdi
	je	.L16
	movq	%rdi, %r15
	jmp	.L7
.L16:
	movq	8(%r15), %rsi
	movzbl	2(%rsi), %edi
	call	gen_reg_rtx
	movq	8(%r15), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r15)
	call	gen_move_insn
	movq	16(%r15), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r15), %r15
	jmp	.L7
.L241:
	movq	8(%r15), %rdi
	call	copy_to_reg
	movq	%rax, %r15
	jmp	.L7
.LFE1:
.Lfe1:
	.size	convert_move,.Lfe1-convert_move
	.align 2
	.p2align 4,,15
.globl convert_to_mode
	.type	convert_to_mode,@function
convert_to_mode:
.LFB2:
	movq	%rsi, %r8
	movl	%edx, %ecx
	xorl	%esi, %esi
	movq	%r8, %rdx
	jmp	convert_modes
.LFE2:
.Lfe2:
	.size	convert_to_mode,.Lfe2-convert_to_mode
	.align 2
	.p2align 4,,15
.globl convert_modes
	.type	convert_modes,@function
convert_modes:
.LFB3:
	pushq	%r13
.LCFI7:
	movl	%ecx, %r13d
	pushq	%r12
.LCFI8:
	movl	%edi, %r12d
	pushq	%rbp
.LCFI9:
	movq	%rdx, %rbp
	pushq	%rbx
.LCFI10:
	movl	%esi, %ebx
	subq	$8, %rsp
.LCFI11:
	movl	(%rdx), %eax
	andl	$268500991, %eax
	cmpl	$268435519, %eax
	je	.L258
.L244:
	movzbl	2(%rbp), %r8d
	testb	%r8b, %r8b
	movzbl	%r8b, %edi
	cmovne	%edi, %ebx
	cmpl	%ebx, %r12d
	je	.L243
	testl	%r13d, %r13d
	je	.L255
	movslq	%r12d,%r8
	cmpl	$1, mode_class(,%r8,4)
	je	.L259
.L257:
	movl	(%rbp), %edx
.L247:
	cmpw	$54, %dx
	je	.L260
.L251:
	cmpl	$1, mode_class(,%r8,4)
	je	.L261
.L249:
	movl	%r12d, %edi
	call	gen_reg_rtx
	movl	%r13d, %edx
	movq	%rbp, %rsi
	movq	%rax, %r12
	movq	%rax, %rdi
	call	convert_move
	movq	%r12, %rbp
.L243:
	addq	$8, %rsp
	movq	%rbp, %rax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 6,,7
.L261:
	movslq	%ebx,%rax
	cmpl	$1, mode_class(,%rax,4)
	jne	.L249
	cmpw	$55, %dx
	je	.L250
	movzbl	mode_size(%rax), %r9d
	cmpb	%r9b, mode_size(%r8)
	ja	.L249
	movl	(%rbp), %eax
	andl	$134283263, %eax
	cmpl	$66, %eax
	je	.L262
.L252:
	cmpw	$61, %dx
	jne	.L249
	.p2align 4,,7
.L250:
	cmpw	$54, %dx
	jne	.L253
	testl	%ebx, %ebx
	je	.L253
	movslq	%ebx,%rdx
	movzbl	mode_size(%rdx), %r10d
	cmpb	%r10b, mode_size(%r8)
	jbe	.L253
	movzwl	mode_bitsize(%rdx,%rdx), %edx
	movl	$1, %r11d
	movq	8(%rbp), %rdi
	movl	%edx, %ecx
	salq	%cl, %r11
	decq	%r11
	andq	%r11, %rdi
	testl	%r13d, %r13d
	jne	.L254
	leal	-1(%rdx), %ecx
	movq	%rdi, %rax
	sarq	%cl, %rax
	testl	$1, %eax 
	je	.L254
	movq	$-1, %r13
	movl	%edx, %ecx
	salq	%cl, %r13
	orq	%r13, %rdi
.L254:
	movl	%r12d, %esi
	call	trunc_int_for_mode
	addq	$8, %rsp
	xorl	%edi, %edi
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	movq	%rax, %rsi
	jmp	gen_rtx_CONST_INT
	.p2align 6,,7
.L253:
	addq	$8, %rsp
	movq	%rbp, %rsi
	movl	%r12d, %edi
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	jmp	gen_lowpart
.L262:
	cmpb	$0, direct_load(%r8)
	jne	.L250
	jmp	.L252
	.p2align 6,,7
.L260:
	cmpw	$64, mode_bitsize(%r8,%r8)
	jbe	.L250
	jmp	.L251
	.p2align 6,,7
.L259:
	cmpw	$128, mode_bitsize(%r8,%r8)
	jne	.L257
	movl	(%rbp), %edx
	cmpw	$54, %dx
	jne	.L251
	movq	8(%rbp), %rdi
	testq	%rdi, %rdi
	jns	.L247
	testl	%ebx, %ebx
	je	.L248
	movslq	%ebx,%rbp
	movzwl	mode_bitsize(%rbp,%rbp), %ecx
	cmpw	$63, %cx
	ja	.L248
	movl	$1, %ebx
	salq	%cl, %rbx
	decq	%rbx
	andq	%rbx, %rdi
.L248:
	addq	$8, %rsp
	movl	%r12d, %edx
	xorl	%esi, %esi
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	jmp	immed_double_const
	.p2align 6,,7
.L255:
	movslq	%r12d,%r8
	jmp	.L257
	.p2align 6,,7
.L258:
	movq	8(%rdx), %rdx
	movslq	%edi,%rax
	movzbl	mode_size(%rax), %ecx
	movzbq	2(%rdx), %rsi
	cmpb	%cl, mode_size(%rsi)
	jb	.L244
	movzbl	3(%rbp), %ecx
	shrb	$2, %cl
	andl	$1, %ecx
	cmpl	%r13d, %ecx
	jne	.L244
	movq	%rbp, %rsi
	call	gen_lowpart
	movq	%rax, %rbp
	jmp	.L244
.LFE3:
.Lfe3:
	.size	convert_modes,.Lfe3-convert_modes
	.section	.rodata.str1.1
.LC2:
	.string	"emit_move_insn"
	.text
	.align 2
	.p2align 4,,15
.globl emit_move_insn
	.type	emit_move_insn,@function
emit_move_insn:
.LFB4:
	pushq	%r14
.LCFI12:
	pushq	%r13
.LCFI13:
	pushq	%r12
.LCFI14:
	pushq	%rbp
.LCFI15:
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI16:
	movzwl	(%rdi), %eax
	movzbl	2(%rdi), %r14d
	movq	%rsi, %rbx
	cmpl	$71, %eax
	je	.L264
	cmpl	$66, %eax
	je	.L304
.L268:
	cmpl	$75, %eax
	je	.L272
	cmpl	$78, %eax
	je	.L272
.L267:
	movzwl	(%rbx), %eax
	cmpl	$71, %eax
	je	.L277
	cmpl	$66, %eax
	je	.L305
.L281:
	cmpl	$75, %eax
	je	.L285
	cmpl	$78, %eax
	je	.L285
.L280:
	cmpl	$51, %r14d
	je	.L291
	movzbl	2(%rbx), %edx
	movzbl	%dl, %ecx
	cmpl	%r14d, %ecx
	je	.L290
	testb	%dl, %dl
	jne	.L291
.L290:
	cmpw	$66, (%rbp)
	je	.L306
.L295:
	cmpw	$66, (%rbx)
	je	.L307
.L298:
	cmpl	$51, %r14d
	je	.L308
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	emit_move_insn_1
	xorl	%r11d, %r11d
	testq	%r11, %r11
	movq	%rax, %rbx
	je	.L301
	cmpw	$61, (%rbp)
	je	.L309
.L301:
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.p2align 6,,7
.L309:
	movq	%rax, %rdi
	movl	$4, %esi
	xorl	%edx, %edx
	call	set_unique_reg_note
	jmp	.L301
.L308:
	movl	$.LC0, %edi
	movl	$2796, %esi
.L303:
	movl	$.LC2, %edx
	call	fancy_abort
	.p2align 6,,7
.L307:
	movzbl	2(%rbx), %edi
	movq	8(%rbx), %rsi
	call	memory_address_p
	testl	%eax, %eax
	je	.L299
	movl	flag_force_addr(%rip), %r8d
	testl	%r8d, %r8d
	je	.L298
	movq	8(%rbx), %r10
	movzwl	(%r10), %edx
	leal	-67(%rdx), %r9d
	cmpw	$1, %r9w
	jbe	.L299
	cmpw	$54, %dx
	je	.L299
	cmpw	$58, %dx
	je	.L299
	cmpw	$55, %dx
	jne	.L298
.L299:
	movq	%rbx, %rdi
	call	validize_mem
	movq	%rax, %rbx
	jmp	.L298
	.p2align 6,,7
.L306:
	movzbl	2(%rbp), %edi
	movq	8(%rbp), %rsi
	call	memory_address_p
	testl	%eax, %eax
	je	.L310
.L297:
	movl	flag_force_addr(%rip), %eax
	testl	%eax, %eax
	je	.L295
	movq	8(%rbp), %rdi
	movzwl	(%rdi), %edx
	leal	-67(%rdx), %esi
	cmpw	$1, %si
	jbe	.L296
	cmpw	$54, %dx
	je	.L296
	cmpw	$58, %dx
	je	.L296
	cmpw	$55, %dx
	jne	.L295
.L296:
	movq	%rbp, %rdi
	call	validize_mem
	movq	%rax, %rbp
	jmp	.L295
.L310:
	movzbl	2(%rbp), %esi
	movq	%rbp, %rdi
	call	push_operand
	testl	%eax, %eax
	je	.L296
	jmp	.L297
.L291:
	movl	$.LC0, %edi
	movl	$2769, %esi
	jmp	.L303
	.p2align 6,,7
.L285:
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%rbx), %rdi
	movq	%rax, %r13
	call	protect_from_queue
	cmpq	8(%rbx), %r13
	movq	%rax, %r12
	je	.L311
.L287:
	movq	%rbx, %rdi
	call	copy_rtx
	movq	%rax, %rbx
	movq	%r13, 8(%rax)
	movq	%r12, 16(%rax)
	jmp	.L280
.L311:
	cmpq	16(%rbx), %rax
	jne	.L287
	jmp	.L280
	.p2align 6,,7
.L305:
	cmpb	$51, 2(%rbx)
	je	.L278
	movq	8(%rbx), %r12
	cmpw	$71, (%r12)
	je	.L312
.L278:
	cmpl	$66, %eax
	jne	.L281
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%rbx), %rax
	movq	%rax, %r12
	je	.L280
	movq	%rbx, %rdi
	call	copy_rtx
	movq	%rax, %rbx
	movq	%r12, 8(%rax)
	jmp	.L280
.L312:
	movq	8(%r12), %rsi
	movq	%rbx, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%r12)
	movq	%rax, %r13
	je	.L279
	movzbl	2(%rbx), %edi
	call	gen_reg_rtx
	movq	%r13, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L280
.L279:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%r13, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L302:
	movq	%rax, %rbx
	jmp	.L280
	.p2align 6,,7
.L277:
	cmpq	$0, 16(%rbx)
	je	.L313
	movq	24(%rbx), %rsi
	testq	%rsi, %rsi
	je	.L289
	movq	%rsi, %rbx
	jmp	.L280
.L289:
	movq	8(%rbx), %rdx
	movzbl	2(%rdx), %edi
	call	gen_reg_rtx
	movq	8(%rbx), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%rbx)
	call	gen_move_insn
	movq	16(%rbx), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%rbx), %rbx
	jmp	.L280
.L313:
	movq	8(%rbx), %rdi
	call	copy_to_reg
	jmp	.L302
	.p2align 6,,7
.L272:
	movq	8(%rbp), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%rbp), %rdi
	movq	%rax, %r13
	call	protect_from_queue
	cmpq	8(%rbp), %r13
	movq	%rax, %r12
	je	.L314
.L274:
	movq	%rbp, %rdi
	call	copy_rtx
	movq	%rax, %rbp
	movq	%r13, 8(%rax)
	movq	%r12, 16(%rax)
	jmp	.L267
.L314:
	cmpq	16(%rbp), %rax
	jne	.L274
	jmp	.L267
	.p2align 6,,7
.L304:
	jne	.L268
	movq	8(%rdi), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%rbp), %rax
	movq	%rax, %r12
	je	.L267
	movq	%rbp, %rdi
	call	copy_rtx
	movq	%rax, %rbp
	movq	%r12, 8(%rax)
	jmp	.L267
	.p2align 6,,7
.L264:
	cmpq	$0, 16(%rdi)
	je	.L315
	movq	24(%rdi), %rdi
	testq	%rdi, %rdi
	je	.L276
	movq	%rdi, %rbp
	jmp	.L267
.L276:
	movq	8(%rbp), %rdx
	movzbl	2(%rdx), %edi
	call	gen_reg_rtx
	movq	8(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%rbp)
	call	gen_move_insn
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%rbp), %rbp
	jmp	.L267
.L315:
	movq	8(%rdi), %rdi
	call	copy_to_reg
	movq	%rax, %rbp
	jmp	.L267
.LFE4:
.Lfe4:
	.size	emit_move_insn,.Lfe4-emit_move_insn
	.section	.rodata.str1.32,"aMS",@progbits,1
	.align 32
.LC4:
	.string	"function using short complex types cannot be inline"
	.section	.rodata.str1.1
.LC3:
	.string	"emit_move_insn_1"
	.text
	.align 2
	.p2align 4,,15
.globl emit_move_insn_1
	.type	emit_move_insn_1,@function
emit_move_insn_1:
.LFB5:
	pushq	%r15
.LCFI17:
	movq	%rdi, %r15
	pushq	%r14
.LCFI18:
	pushq	%r13
.LCFI19:
	pushq	%r12
.LCFI20:
	pushq	%rbp
.LCFI21:
	pushq	%rbx
.LCFI22:
	subq	$24, %rsp
.LCFI23:
	movq	%rsi, 8(%rsp)
	.p2align 4,,7
.L355:
	movzbl	2(%r15), %r14d
	movslq	%r14d,%rbp
	cmpl	$58, %r14d
	movl	mode_class(,%rbp,4), %r12d
	ja	.L413
	movq	%rbp, %rdx
	salq	$4, %rdx
	addq	optab_table+240(%rip), %rdx
	movl	8(%rdx), %eax
	cmpl	$1317, %eax
	jne	.L414
	leal	-5(%r12), %edx
	cmpl	$1, %edx
	ja	.L320
	movzbl	mode_unit_size(%rbp), %edi
	sall	$3, %edi
	cmpl	$5, %r12d
	setne	%al
	xorl	%edx, %edx
	movzbl	%al, %esi
	incl	%esi
	call	mode_for_size
	cmpl	$51, %eax
	movl	%eax, 20(%rsp)
	je	.L320
	movslq	%eax,%rbx
	movq	%rbx, %rsi
	salq	$4, %rsi
	addq	optab_table+240(%rip), %rsi
	cmpl	$1317, 8(%rsi)
	je	.L320
	movzbl	2(%r15), %esi
	movq	%r15, %rdi
	call	push_operand
	testl	%eax, %eax
	movl	%eax, %esi
	je	.L403
	movl	target_flags(%rip), %ecx
	testl	$33554432, %ecx
	movl	%ecx, %edi
	je	.L326
	movzbl	mode_size(%rbx), %edx
	leal	7(%rdx), %eax
	andl	$-8, %eax
.L405:
	cmpl	%edx, %eax
	jne	.L415
	testl	%esi, %esi
	jne	.L416
.L342:
	andl	$33554432, %ecx
	je	.L345
	cmpw	$127, mode_bitsize(%rbp,%rbp)
.L406:
	ja	.L344
	movl	reload_completed(%rip), %eax
	orl	reload_in_progress(%rip), %eax
	jne	.L344
	xorl	%r13d, %r13d
	cmpw	$61, (%r15)
	je	.L417
.L347:
	movq	8(%rsp), %rax
	xorl	%edx, %edx
	cmpw	$61, (%rax)
	je	.L418
.L348:
	testl	%r13d, %r13d
	jne	.L350
	testl	%edx, %edx
	je	.L344
.L350:
	cmpl	$6, %r12d
	movzwl	mode_bitsize(%rbp,%rbp), %edi
	movl	$1, %edx
	sete	%al
	movzbl	%al, %esi
	incl	%esi
	call	mode_for_size
	cmpl	$51, %eax
	movl	%eax, %r12d
	je	.L344
	movzbq	mode_size(%rbp), %rsi
	xorl	%edx, %edx
	movl	%eax, %edi
	call	assign_stack_temp
	movl	$1, %r8d
	movl	$1, %ecx
	movl	%r14d, %esi
	xorl	%edx, %edx
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	adjust_address_1
	testl	%r13d, %r13d
	movq	cfun(%rip), %rsi
	movq	%rax, %rbp
	movq	$.LC4, 136(%rsi)
	jne	.L419
	movq	8(%rsp), %rsi
	movl	%r12d, %edi
	xorl	%edx, %edx
	call	gen_rtx_SUBREG
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	emit_move_insn_1
	movq	%rbp, 8(%rsp)
	jmp	.L355
.L419:
	movq	%r15, %rsi
	movl	%r12d, %edi
	xorl	%edx, %edx
	call	gen_rtx_SUBREG
	movq	8(%rsp), %rsi
	movq	%rbp, %rdi
	movq	%rax, %r15
	call	emit_move_insn_1
	movq	%rbx, 8(%rsp)
	jmp	.L355
.L344:
	movl	20(%rsp), %edi
	movq	%r15, %rsi
	call	gen_realpart
	movq	8(%rsp), %rsi
	movl	20(%rsp), %edi
	movq	%rax, %r12
	call	gen_realpart
	movq	%r15, %rsi
	movl	20(%rsp), %edi
	movq	%rax, %rbp
	call	gen_imagpart
	movq	8(%rsp), %rsi
	movl	20(%rsp), %edi
	movq	%rax, %r14
	call	gen_imagpart
	cmpq	8(%rsp), %r15
	movq	%rax, %r13
	je	.L357
	movl	reload_in_progress(%rip), %eax
	testl	%eax, %eax
	jne	.L357
	movl	reload_completed(%rip), %r8d
	testl	%r8d, %r8d
	jne	.L357
	cmpw	$63, (%r12)
	je	.L358
	cmpw	$63, (%r14)
	je	.L358
.L357:
	salq	$4, %rbx
	movq	%rbp, %rsi
	movq	%r12, %rdi
	movq	%rbx, %r15
	xorl	%eax, %eax
	addq	optab_table+240(%rip), %r15
	movslq	8(%r15),%r11
	leaq	(%r11,%r11,4), %r10
	call	*insn_data+16(,%r10,8)
	movq	%rax, %rdi
	call	emit_insn
	movq	%r13, %rsi
	movq	%r14, %rdi
	addq	optab_table+240(%rip), %rbx
	movslq	8(%rbx),%r9
	leaq	(%r9,%r9,4), %rdx
.L407:
	xorl	%eax, %eax
	call	*insn_data+16(,%rdx,8)
	movq	%rax, %rdi
	call	emit_insn
.L341:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	jmp	get_last_insn
.L358:
	movl	$49, %edi
	xorl	%esi, %esi
	movq	%r15, %rdx
	call	gen_rtx_fmt_e
	movq	%rax, %rdi
	call	emit_insn
	jmp	.L357
	.p2align 6,,7
.L418:
	cmpl	$52, 8(%rax)
	movl	$1, %eax
	cmovbe	%eax, %edx
	jmp	.L348
	.p2align 6,,7
.L417:
	cmpl	$52, 8(%r15)
	movl	$1, %eax
	cmovbe	%eax, %r13d
	jmp	.L347
	.p2align 6,,7
.L345:
	cmpw	$63, mode_bitsize(%rbp,%rbp)
	jmp	.L406
.L416:
	movq	8(%r15), %rsi
	movl	20(%rsp), %edi
	salq	$4, %rbx
	call	gen_rtx_MEM
	movq	8(%rsp), %rsi
	movl	20(%rsp), %edi
	movq	%rax, %r13
	call	gen_imagpart
	movq	%rbx, %rdx
	addq	optab_table+240(%rip), %rdx
	movq	%rax, %rsi
	xorl	%eax, %eax
	movslq	8(%rdx),%rdi
	leaq	(%rdi,%rdi,4), %rbp
	movq	%r13, %rdi
	call	*insn_data+16(,%rbp,8)
	movq	%rax, %rdi
	call	emit_insn
	movq	8(%r15), %rsi
	movl	20(%rsp), %edi
	call	gen_rtx_MEM
	movq	8(%rsp), %rsi
	movl	20(%rsp), %edi
	movq	%rax, %r15
	call	gen_realpart
	movq	%r15, %rdi
	addq	optab_table+240(%rip), %rbx
	movq	%rax, %rsi
	movslq	8(%rbx),%rcx
	leaq	(%rcx,%rcx,4), %rdx
	jmp	.L407
.L415:
	andl	$33554432, %edi
	je	.L328
	movzbq	2(%r15), %rbp
	movzbl	mode_size(%rbp), %edi
	addl	$7, %edi
	movq	%rdi, %rsi
	andl	$504, %esi
.L329:
	xorl	%edi, %edi
	call	gen_rtx_CONST_INT
	movq	global_rtl+16(%rip), %rdx
	movq	optab_table+16(%rip), %rsi
	testb	$2, target_flags+3(%rip)
	movq	%rax, %rcx
	movl	$3, (%rsp)
	setne	%r10b
	xorl	%r9d, %r9d
	movq	%rdx, %r8
	movzbl	%r10b, %edi
	addl	$4, %edi
	call	expand_binop
	movq	global_rtl+16(%rip), %rdi
	cmpq	%rdi, %rax
	je	.L332
	movq	%rax, %rsi
	call	emit_move_insn
.L332:
	xorl	%edi, %edi
	xorl	%esi, %esi
	movzbq	mode_size(%rbx), %r13
	call	gen_rtx_CONST_INT
	movq	global_rtl+16(%rip), %rdx
	movl	$75, %edi
	testb	$2, target_flags+3(%rip)
	movq	%rax, %rcx
	setne	%bl
	movzbl	%bl, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_ee
	movl	20(%rsp), %esi
	movq	%r15, %rdi
	movq	%rax, %rdx
	call	change_address
	movq	8(%rsp), %rsi
	movl	20(%rsp), %edi
	movq	%rax, %r14
	call	gen_realpart
	movq	%r14, %rdi
	movq	%rax, %rsi
	call	emit_move_insn
	movq	%r13, %rsi
	xorl	%edi, %edi
	call	gen_rtx_CONST_INT
	movq	global_rtl+16(%rip), %rdx
	movl	$75, %edi
	testb	$2, target_flags+3(%rip)
	movq	%rax, %rcx
	setne	%r11b
	movzbl	%r11b, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_ee
	movl	20(%rsp), %esi
	movq	%r15, %rdi
	movq	%rax, %rdx
	call	change_address
	movq	8(%rsp), %rsi
	movl	20(%rsp), %edi
	movq	%rax, %r12
	call	gen_imagpart
	movq	%r12, %rdi
	movq	%rax, %rsi
	call	emit_move_insn
	jmp	.L341
.L328:
	movzbq	2(%r15), %r9
	movzbl	mode_size(%r9), %r8d
	incl	%r8d
	movq	%r8, %rsi
	andl	$510, %esi
	jmp	.L329
	.p2align 6,,7
.L326:
	movzbl	mode_size(%rbx), %edx
	leal	1(%rdx), %eax
	andl	$-2, %eax
	jmp	.L405
	.p2align 6,,7
.L403:
	movl	target_flags(%rip), %ecx
	jmp	.L342
.L320:
	testb	$2, target_flags+3(%rip)
	je	.L361
	cmpb	$8, mode_size(%rbp)
.L408:
	jbe	.L360
	movzbl	2(%r15), %esi
	movq	%r15, %rdi
	xorl	%ebx, %ebx
	call	push_operand
	testl	%eax, %eax
	je	.L363
	testb	$2, target_flags+3(%rip)
	je	.L364
	movzbq	2(%r15), %rcx
	movzbl	mode_size(%rcx), %r12d
	addl	$7, %r12d
	movq	%r12, %rsi
	andl	$504, %esi
.L365:
	xorl	%edi, %edi
	call	gen_rtx_CONST_INT
	movq	optab_table+16(%rip), %rsi
	movl	$3, (%rsp)
	testb	$2, target_flags+3(%rip)
	movq	%rax, %rcx
	setne	%dl
	xorl	%r9d, %r9d
	movzbl	%dl, %edi
	movq	global_rtl+16(%rip), %rdx
	addl	$4, %edi
	movq	%rdx, %r8
	call	expand_binop
	movq	global_rtl+16(%rip), %rdi
	cmpq	%rdi, %rax
	je	.L368
	movq	%rax, %rsi
	call	emit_move_insn
.L368:
	movq	8(%r15), %rsi
	movzwl	(%rsi), %eax
	cmpl	$99, %eax
	je	.L420
	cmpl	$98, %eax
	je	.L421
	movq	global_rtl+16(%rip), %rdx
.L374:
	movq	%r15, %rdi
	xorl	%esi, %esi
	call	change_address
	movq	%rax, %r15
.L363:
	movl	reload_in_progress(%rip), %eax
	testl	%eax, %eax
	je	.L382
	cmpw	$66, (%r15)
	je	.L422
.L381:
	testl	%eax, %eax
	je	.L382
	movq	8(%rsp), %rax
	cmpw	$66, (%rax)
	je	.L423
.L382:
	call	start_sequence
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	.p2align 4,,7
.L383:
	movl	target_flags(%rip), %ecx
	testl	$33554432, %ecx
	je	.L387
	movzbl	mode_size(%rbp), %edi
	leal	7(%rdi), %edx
.L388:
	andl	$33554432, %ecx
	je	.L389
	cmpl	$-1, %edx
	leal	7(%rdx), %r8d
	cmovle	%r8d, %edx
	sarl	$3, %edx
.L411:
	cmpl	%edx, %r12d
	jge	.L424
	movq	%r15, %rdi
	movl	%r12d, %esi
	movl	$1, %edx
	movl	%r14d, %ecx
	call	operand_subword
	movl	%r14d, %ecx
	movl	$1, %edx
	movq	8(%rsp), %rdi
	movl	%r12d, %esi
	movq	%rax, %rbx
	call	operand_subword
	testq	%rax, %rax
	movq	%rax, %rdx
	jne	.L395
	movq	8(%rsp), %r11
	movzwl	(%r11), %edx
	leal	-67(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L394
	cmpw	$54, %dx
	je	.L394
	cmpw	$55, %dx
	je	.L394
	cmpw	$58, %dx
	je	.L394
	cmpw	$134, %dx
	je	.L394
	cmpw	$56, %dx
	je	.L394
	cmpw	$140, %dx
	je	.L394
	movq	8(%rsp), %rdi
	movl	%r12d, %esi
	movl	%r14d, %edx
	call	operand_subword_force
	.p2align 4,,7
.L410:
	movq	%rax, %rdx
.L395:
	testq	%rbx, %rbx
	je	.L398
	testq	%rdx, %rdx
	je	.L398
	movl	%r13d, %ecx
	movq	%rbx, %rdi
	movq	%rdx, %rsi
	orl	$1, %ecx
	cmpw	$63, (%rbx)
	cmove	%ecx, %r13d
	incl	%r12d
	call	emit_move_insn
	movq	%rax, %rbx
	jmp	.L383
.L398:
	movl	$.LC0, %edi
	movl	$3077, %esi
	jmp	.L412
	.p2align 6,,7
.L394:
	movq	8(%rsp), %rsi
	movl	%r14d, %edi
	call	force_const_mem
	movl	%r14d, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	movl	%r12d, %esi
	movq	%rax, 8(%rsp)
	call	operand_subword
	jmp	.L410
.L424:
	call	gen_sequence
	movq	%rax, %rbp
	call	end_sequence
	cmpq	8(%rsp), %r15
	je	.L401
	movl	reload_in_progress(%rip), %r14d
	testl	%r14d, %r14d
	jne	.L401
	movl	reload_completed(%rip), %r12d
	testl	%r12d, %r12d
	jne	.L401
	testl	%r13d, %r13d
	jne	.L425
.L401:
	movq	%rbp, %rdi
	call	emit_insn
	addq	$24, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L425:
	movl	$49, %edi
	xorl	%esi, %esi
	movq	%r15, %rdx
	call	gen_rtx_fmt_e
	movq	%rax, %rdi
	call	emit_insn
	jmp	.L401
	.p2align 6,,7
.L389:
	cmpl	$-1, %edx
	leal	3(%rdx), %r9d
	cmovle	%r9d, %edx
	sarl	$2, %edx
	jmp	.L411
	.p2align 6,,7
.L387:
	movzbl	mode_size(%rbp), %esi
	leal	3(%rsi), %edx
	jmp	.L388
.L423:
	movq	%rax, %rdi
	addq	$8, %rdi
	call	find_replacement
	movq	%rax, %rsi
	movq	8(%rsp), %rax
	cmpq	8(%rax), %rsi
	je	.L382
	movq	%rax, %rdi
	call	replace_equiv_address_nv
	movq	%rax, 8(%rsp)
	jmp	.L382
.L422:
	leaq	8(%r15), %rdi
	call	find_replacement
	cmpq	8(%r15), %rax
	movq	%rax, %rsi
	je	.L404
	movq	%r15, %rdi
	call	replace_equiv_address_nv
	movq	%rax, %r15
.L404:
	movl	reload_in_progress(%rip), %eax
	jmp	.L381
.L421:
	movzbq	2(%r15), %r9
	movzbq	mode_size(%r9), %rsi
.L409:
	xorl	%edi, %edi
	call	gen_rtx_CONST_INT
	movq	global_rtl+16(%rip), %rdx
	movl	$75, %edi
	testb	$2, target_flags+3(%rip)
	movq	%rax, %rcx
	setne	%al
	movzbl	%al, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_ee
	movq	%rax, %rdx
	jmp	.L374
.L420:
	movzbq	2(%r15), %r8
	movzbq	mode_size(%r8), %rsi
	negq	%rsi
	jmp	.L409
.L364:
	movzbq	2(%r15), %rdi
	movzbl	mode_size(%rdi), %r13d
	incl	%r13d
	movq	%r13, %rsi
	andl	$510, %esi
	jmp	.L365
.L360:
	movl	$.LC0, %edi
	movl	$3101, %esi
.L412:
	movl	$.LC3, %edx
	call	fancy_abort
.L361:
	cmpb	$4, mode_size(%rbp)
	jmp	.L408
.L414:
	movslq	%eax,%rbx
	movq	%r15, %rdi
	movq	8(%rsp), %rsi
	leaq	(%rbx,%rbx,4), %rcx
	xorl	%eax, %eax
	call	*insn_data+16(,%rcx,8)
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	movq	%rax, %rdi
	jmp	emit_insn
.L413:
	movl	$.LC0, %edi
	movl	$2819, %esi
	jmp	.L412
.LFE5:
.Lfe5:
	.size	emit_move_insn_1,.Lfe5-emit_move_insn_1
	.local	fn.0
	.comm	fn.0,8,8
	.local	fn.1
	.comm	fn.1,8,8
	.section	.rodata.str1.1
.LC8:
	.string	"store_constructor"
.LC7:
	.string	"memset"
.LC6:
	.string	"store_by_pieces_1"
.LC5:
	.string	"move_by_pieces_ninsns"
.LC13:
	.string	"__setbits"
.LC11:
	.string	"memcpy"
.LC10:
	.string	"move_by_pieces"
.LC9:
	.string	"emit_block_move"
.LC12:
	.string	"emit_group_load"
	.text
	.align 2
	.p2align 4,,15
	.type	store_constructor,@function
store_constructor:
.LFB6:
	pushq	%rbp
.LCFI24:
	movq	%rsp, %rbp
.LCFI25:
	pushq	%r15
.LCFI26:
	pushq	%r14
.LCFI27:
	pushq	%r13
.LCFI28:
	pushq	%r12
.LCFI29:
	pushq	%rbx
.LCFI30:
	subq	$2664, %rsp
.LCFI31:
	movq	%rcx, -712(%rbp)
	movl	%edx, -1884(%rbp)
	movq	%rdi, -704(%rbp)
	movq	%rsi, -1744(%rbp)
	movq	8(%rdi), %rcx
	movq	%rcx, -720(%rbp)
	movzbl	16(%rcx), %edx
	leal	-20(%rdx), %ecx
	cmpb	$2, %cl
	ja	.L427
	leal	-21(%rdx), %ebx
	cmpb	$1, %bl
	ja	.L428
	movl	-1884(%rbp), %eax
	testl	%eax, %eax
	jne	.L740
	cmpq	$0, 40(%rdi)
	je	.L4772
.L428:
	movl	-1884(%rbp), %r12d
	testl	%r12d, %r12d
	jne	.L740
	movq	-1744(%rbp), %rsi
	cmpw	$61, (%rsi)
	je	.L4773
.L563:
	movl	-1884(%rbp), %r11d
	testl	%r11d, %r11d
	jne	.L740
	cmpq	$0, -712(%rbp)
	jle	.L562
	movq	-704(%rbp), %r15
	movq	40(%r15), %rdi
	call	list_length
	movq	-720(%rbp), %rdi
	movl	%eax, %r14d
	call	fields_length
	cmpl	%eax, %r14d
	je	.L4774
.L568:
	movq	-1744(%rbp), %rbx
	cmpw	$61, (%rbx)
	je	.L4775
.L606:
	movq	-1744(%rbp), %r11
	movq	-712(%rbp), %rsi
	xorl	%edi, %edi
	movq	%r11, -1712(%rbp)
	call	gen_rtx_CONST_INT
	movq	%rax, %r15
	movq	-1744(%rbp), %rax
	cmpw	$66, (%rax)
	je	.L4776
	movq	-1744(%rbp), %rbx
	movzbl	2(%rbx), %edi
	call	get_mode_alignment
.L4521:
	movl	%eax, -1700(%rbp)
.L608:
	movq	-1744(%rbp), %rbx
	movzbl	2(%rbx), %eax
	cmpb	$51, %al
	je	.L611
	cmpw	$54, (%r15)
	je	.L4777
.L611:
	movq	-1744(%rbp), %rsi
	movzwl	(%rsi), %eax
	cmpl	$71, %eax
	je	.L613
	cmpl	$66, %eax
	je	.L4778
.L617:
	cmpl	$75, %eax
	je	.L621
	cmpl	$78, %eax
	je	.L621
.L616:
	movzwl	(%r15), %eax
	cmpl	$71, %eax
	je	.L626
	cmpl	$66, %eax
	je	.L4779
.L630:
	cmpl	$75, %eax
	je	.L634
	cmpl	$78, %eax
	je	.L634
.L629:
	cmpw	$54, (%r15)
	je	.L4780
.L639:
	shrl	$3, -1700(%rbp)
	xorl	%edi, %edi
	mov	-1700(%rbp), %esi
	call	gen_rtx_CONST_INT
	movl	class_narrowest_mode+4(%rip), %ebx
	movq	%rax, -760(%rbp)
	testl	%ebx, %ebx
	je	.L4175
.L733:
	movslq	%ebx,%r12
	movl	clrstr_optab(,%r12,4), %edx
	cmpl	$1317, %edx
	je	.L720
	cmpw	$54, (%r15)
	je	.L4781
.L724:
	testb	$2, target_flags+3(%rip)
	je	.L725
	cmpw	$63, mode_bitsize(%r12,%r12)
.L4524:
	jbe	.L720
.L723:
	movslq	%edx,%r14
	leaq	(%r14,%r14,4), %rcx
	movq	insn_data+24(,%rcx,8), %r13
	movq	(%r13), %rax
	testq	%rax, %rax
	je	.L727
	movq	-1712(%rbp), %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L720
.L727:
	movq	48(%r13), %rax
	testq	%rax, %rax
	je	.L728
	xorl	%esi, %esi
	movq	-760(%rbp), %rdi
	call	*%rax
	testl	%eax, %eax
	je	.L720
.L728:
	call	get_last_insn
	movl	$1, %edx
	movq	%r15, %rsi
	movl	%ebx, %edi
	movq	%rax, -768(%rbp)
	call	convert_to_mode
	movq	%rax, %r8
	movq	24(%r13), %rax
	testq	%rax, %rax
	jne	.L4782
.L729:
	leaq	(%r14,%r14,4), %r13
	xorl	%eax, %eax
	movq	-1712(%rbp), %rdi
	movq	%r8, %rsi
	movq	-760(%rbp), %rdx
	call	*insn_data+16(,%r13,8)
	testq	%rax, %rax
	jne	.L4525
	movq	-768(%rbp), %rdi
	call	delete_insns_since
.L720:
	movzbl	mode_wider_mode(%r12), %ebx
	testl	%ebx, %ebx
	jne	.L733
.L4175:
	testb	$2, target_flags+3(%rip)
	movq	-1712(%rbp), %rax
	setne	%dl
	movq	8(%rax), %rsi
	movzbl	%dl, %edi
	addl	$4, %edi
	call	copy_to_mode_reg
	movq	%r15, %rsi
	movq	sizetype_tab(%rip), %r8
	movq	%rax, %r13
	movzbl	61(%r8), %r12d
	shrb	$1, %r12b
	movzbl	%r12b, %edi
.L4771:
	call	copy_to_mode_reg
	cmpq	$0, fn.0(%rip)
	movq	%rax, %r14
	je	.L4783
.L738:
	movq	global_trees+216(%rip), %rdi
	call	build_pointer_type
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	const_int_rtx+512(%rip), %rsi
	movq	integer_types+40(%rip), %rdi
	movq	%rax, %r15
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	%r14, %rsi
	movq	%rax, (%r15)
	movq	%rax, %r12
	movq	sizetype_tab(%rip), %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	fn.0(%rip), %r11
	movq	%rax, (%r12)
	movq	(%r15), %rcx
	movq	8(%r11), %rdi
	movq	(%rcx), %r14
	movq	$0, (%r14)
	call	build_pointer_type
	movq	fn.0(%rip), %rdx
	movl	$121, %edi
	movq	%rax, %rsi
	call	build1
	xorl	%r8d, %r8d
	movq	%r15, %rcx
	movq	fn.0(%rip), %rsi
	movq	%rax, %rdx
	movl	$53, %edi
	xorl	%eax, %eax
	movq	8(%rsi), %r10
	movq	8(%r10), %rsi
	call	build
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	orb	$1, 17(%rax)
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	expand_expr
	testb	$4, 3(%r13)
	jne	.L4784
.L731:
	movl	$1, -1884(%rbp)
.L562:
	movl	-1884(%rbp), %eax
	testl	%eax, %eax
	je	.L4785
.L740:
	movq	-704(%rbp), %r13
	movq	40(%r13), %r15
	testq	%r15, %r15
	je	.L426
	.p2align 4,,7
.L804:
	movq	24(%r15), %r12
	movq	32(%r15), %rsi
	movq	-1744(%rbp), %r13
	testq	%r12, %r12
	movq	%rsi, -776(%rbp)
	je	.L743
	movl	-1884(%rbp), %eax
	testl	%eax, %eax
	je	.L746
	movzbl	16(%rsi), %eax
	cmpl	$28, %eax
	je	.L757
	cmpl	$28, %eax
	ja	.L774
	cmpl	$26, %eax
	je	.L756
	cmpl	$26, %eax
	ja	.L754
	cmpl	$25, %eax
	je	.L753
.L772:
	xorl	%ebx, %ebx
.L752:
	testl	%ebx, %ebx
	jne	.L743
.L746:
	movq	40(%r12), %rdi
	movl	$1, %esi
	call	host_integerp
	testl	%eax, %eax
	jne	.L4786
	movq	$-1, -1728(%rbp)
.L776:
	movzbl	48(%r12), %esi
	testb	$16, 49(%r12)
	movl	$0, %eax
	cmove	%esi, %eax
	xorl	%esi, %esi
	movl	%eax, -1732(%rbp)
	movq	88(%r12), %rbx
	movq	%rbx, %rdi
	call	host_integerp
	testl	%eax, %eax
	je	.L778
	movq	%r12, %rdi
	call	bit_position
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	host_integerp
	testl	%eax, %eax
	jne	.L4787
.L778:
	movq	160(%r12), %rdi
	xorl	%esi, %esi
	call	tree_low_cst
	movq	%rax, %r14
.L779:
	testq	%rbx, %rbx
	jne	.L4788
.L780:
	testb	$16, 17(%r12)
	je	.L784
	cmpw	$66, (%r13)
	je	.L4789
.L785:
	orb	$4, 3(%r13)
.L784:
	movl	(%r13), %eax
	andl	$16842751, %eax
	cmpl	$66, %eax
	je	.L4790
.L786:
	movq	8(%r12), %rdi
	call	get_alias_set
	movq	-776(%rbp), %r12
	movl	%eax, %ebx
	cmpb	$46, 16(%r12)
	je	.L4791
.L787:
	movq	-720(%rbp), %r10
	movq	-1728(%rbp), %rsi
	movq	%r13, %rdi
	movl	-1732(%rbp), %ecx
	movq	-776(%rbp), %r8
	movq	%r14, %rdx
	xorl	%r9d, %r9d
	movl	$0, (%rsp)
	movl	%ebx, 16(%rsp)
	movq	%r10, 8(%rsp)
	call	store_field
.L743:
	movq	(%r15), %r15
	testq	%r15, %r15
	jne	.L804
.L426:
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
.L4791:
	testl	$7, %r14d 
	jne	.L787
	testq	%r14, %r14
	je	.L4446
	cmpw	$66, (%r13)
	jne	.L787
.L4507:
	movzbl	2(%r13), %eax
	cmpb	$51, %al
	je	.L796
	movzbl	%al, %edi
	call	get_mode_alignment
	xorl	%esi, %esi
	mov	%eax, %edi
	movq	%r14, %rax
	cqto
	idivq	%rdi
	testq	%rdx, %rdx
	je	.L795
.L796:
	movl	$51, %esi
.L795:
	cmpq	$-1, %r14
	leaq	7(%r14), %rdx
	movq	%r13, %rdi
	cmovle	%rdx, %r14
	movl	$1, %ecx
	movl	$1, %r8d
	sarq	$3, %r14
	movq	%r14, %rdx
	call	adjust_address_1
	movq	%rax, %r13
.L789:
	movl	(%r13), %eax
	andl	$16842751, %eax
	cmpl	$66, %eax
	je	.L4792
.L798:
	shrq	$3, -1728(%rbp)
	movq	-776(%rbp), %rdi
	movq	%r13, %rsi
	movl	-1884(%rbp), %edx
	movq	-1728(%rbp), %rcx
	call	store_constructor
	jmp	.L743
.L4792:
	movq	16(%r13), %rax
	testq	%rax, %rax
	je	.L798
	cmpq	$0, (%rax)
	je	.L798
	movq	%r13, %rdi
	call	copy_rtx
	movslq	%ebx,%rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	set_mem_alias_set
	jmp	.L798
	.p2align 6,,7
.L4446:
	cmpw	$66, (%r13)
	jne	.L789
	jmp	.L4507
.L4790:
	testb	$4, 52(%r12)
	je	.L786
	movq	%r13, %rdi
	call	copy_rtx
	movq	%rax, %r13
	orb	$1, 3(%rax)
	jmp	.L786
.L4789:
	movq	%r13, %rdi
	call	copy_rtx
	movq	%rax, %r13
	jmp	.L785
.L4788:
	movq	%rbx, %rdi
	call	contains_placeholder_p
	testl	%eax, %eax
	jne	.L4793
.L781:
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	call	expand_expr
	movq	-1744(%rbp), %rcx
	movq	%rax, %r13
	cmpw	$66, (%rcx)
	jne	.L4794
	movzbl	2(%rax), %r8d
	movl	ptr_mode(%rip), %edi
	cmpl	%edi, %r8d
	je	.L783
	movq	%rax, %rsi
	xorl	%edx, %edx
	call	convert_to_mode
	movq	%rax, %r13
.L783:
	movq	%rbx, %rdi
	call	highest_pow2_factor
	movq	%r13, %rsi
	movq	-1744(%rbp), %rdi
	movq	%rax, %rdx
	call	offset_address
	movq	%rax, %r13
	jmp	.L780
.L4794:
	movl	$.LC0, %edi
	movl	$4498, %esi
.L4654:
	movl	$.LC8, %edx
.L4655:
	call	fancy_abort
.L4793:
	movq	-704(%rbp), %r11
	movq	-1744(%rbp), %rsi
	movq	8(%r11), %rdi
	call	make_tree
	movq	%rbx, %rdx
	movq	sizetype_tab(%rip), %rsi
	movq	%rax, %rcx
	movl	$58, %edi
	xorl	%eax, %eax
	call	build
	movq	%rax, %rbx
	jmp	.L781
.L4787:
	movq	%r12, %rdi
	xorl	%ebx, %ebx
	call	int_bit_position
	movq	%rax, %r14
	jmp	.L779
.L4786:
	movq	40(%r12), %rdi
	movl	$1, %esi
	call	tree_low_cst
	movq	%rax, -1728(%rbp)
	jmp	.L776
.L753:
	movq	-776(%rbp), %rdi
	call	integer_zerop
.L4527:
	movl	%eax, %ebx
	jmp	.L752
.L754:
	movq	-776(%rbp), %rax
	xorl	%ebx, %ebx
	movq	32(%rax), %rdi
	call	is_zeros_p
	testl	%eax, %eax
	je	.L752
	movq	-776(%rbp), %rdx
	movq	40(%rdx), %rdi
	call	is_zeros_p
	testl	%eax, %eax
	je	.L752
.L4180:
	movl	$1, %ebx
	jmp	.L752
.L756:
	movq	-776(%rbp), %rsi
	movl	$dconst0, %edi
	movl	$24, %ecx
	cld
	addq	$32, %rsi
	repz
	cmpsb
.L4526:
	sete	%dil
	movzbl	%dil, %ebx
	jmp	.L752
.L774:
	cmpl	$46, %eax
	je	.L764
	cmpl	$46, %eax
	jb	.L772
	subl	$114, %eax
	cmpl	$3, %eax
	ja	.L772
	movq	-776(%rbp), %r8
	movq	32(%r8), %rdi
	call	is_zeros_p
	jmp	.L4527
.L764:
	movq	-776(%rbp), %rdx
	movq	8(%rdx), %rax
	testq	%rax, %rax
	je	.L765
	cmpb	$19, 16(%rax)
	je	.L4795
.L765:
	movq	-776(%rbp), %r10
	movq	40(%r10), %rbx
	testq	%rbx, %rbx
	je	.L4180
.L771:
	movq	32(%rbx), %rdi
	call	is_zeros_p
	testl	%eax, %eax
	je	.L772
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L771
	jmp	.L4180
.L4795:
	cmpq	$0, 40(%rdx)
	jmp	.L4526
	.p2align 6,,7
.L757:
	movq	-776(%rbp), %r9
	movq	32(%r9), %rbx
	testq	%rbx, %rbx
	je	.L4180
	.p2align 4,,7
.L763:
	movq	32(%rbx), %rdi
	call	is_zeros_p
	testl	%eax, %eax
	je	.L772
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L763
	jmp	.L4180
.L4785:
	movq	-1744(%rbp), %rdx
	movl	$49, %edi
	xorl	%esi, %esi
	call	gen_rtx_fmt_e
	movq	%rax, %rdi
	call	emit_insn
	jmp	.L740
.L4784:
	movl	$49, %edi
	xorl	%esi, %esi
	movq	%r13, %rdx
	call	gen_rtx_fmt_e
.L4525:
	movq	%rax, %rdi
	call	emit_insn
	jmp	.L731
.L4783:
	movl	$.LC7, %edi
	call	get_identifier
	movq	global_trees+216(%rip), %rdi
	movq	%rax, fn.0(%rip)
	call	build_pointer_type
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	build_function_type
	movq	fn.0(%rip), %rsi
	movl	$30, %edi
	movq	%rax, %rdx
	call	build_decl
	movl	$1, %esi
	movl	$fn.0, %edi
	movq	%rax, fn.0(%rip)
	call	ggc_add_tree_root
	movq	fn.0(%rip), %rbx
	xorl	%esi, %esi
	orb	$1, 49(%rbx)
	movq	fn.0(%rip), %rdi
	orb	$8, 18(%rdi)
	movq	fn.0(%rip), %r9
	orb	$64, 50(%r9)
	movq	fn.0(%rip), %r15
	orb	$2, 18(%r15)
	movq	fn.0(%rip), %rdi
	call	make_decl_rtl
	movq	fn.0(%rip), %rdi
	call	assemble_external
	jmp	.L738
.L4782:
	movq	%r8, %rdi
	movq	%r8, -2648(%rbp)
	movl	%ebx, %esi
	call	*%rax
	movq	-2648(%rbp), %r8
	testl	%eax, %eax
	jne	.L729
	movq	%r8, %rsi
	movl	%ebx, %edi
	call	copy_to_mode_reg
	movq	%rax, %r8
	jmp	.L729
	.p2align 6,,7
.L725:
	cmpw	$31, mode_bitsize(%r12,%r12)
	jmp	.L4524
.L4781:
	movq	mode_mask_array(,%r12,8), %r14
	shrq	$1, %r14
	cmpq	%r14, 8(%r15)
	jbe	.L723
	jmp	.L724
.L4780:
	movq	8(%r15), %r12
	xorl	%r13d, %r13d
	movl	$17, %esi
	movl	$128, %r14d
.L652:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L4164
.L649:
	movslq	%ecx,%r11
	movzbq	mode_size(%r11), %rbx
	cmpq	%rsi, %rbx
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r11), %ecx
	testl	%ecx, %ecx
	jne	.L649
.L4164:
	testl	%edi, %edi
	je	.L642
	movslq	%edi,%rbx
	movq	%rbx, %rcx
	salq	$4, %rcx
	addq	optab_table+240(%rip), %rcx
	cmpl	$1317, 8(%rcx)
	je	.L651
	call	get_mode_alignment
	cmpl	%eax, %r14d
	jb	.L651
	movzbq	mode_size(%rbx), %r8
	movq	%r12, %rax
	xorl	%edx, %edx
	divq	%r8
	addq	%rax, %r13
	movq	%rdx, %r12
.L651:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L652
.L642:
	testq	%r12, %r12
	jne	.L4757
	movl	optimize_size(%rip), %edx
	testl	%edx, %edx
	jne	.L655
	movq	ix86_cost(%rip), %r14
	mov	40(%r14), %r9d
	cmpq	%r9, %r13
	jae	.L639
.L656:
	movq	8(%r15), %r13
	movq	-1712(%rbp), %rsi
	xorl	%eax, %eax
	movq	$clear_by_pieces_1, -136(%rbp)
	movq	$0, -128(%rbp)
	testb	$2, target_flags+3(%rip)
	setne	%al
	xorl	%r14d, %r14d
	movq	%r13, -152(%rbp)
	movq	%rsi, -176(%rbp)
	leaq	-176(%rbp), %r13
	movq	8(%rsi), %r8
	leaq	16(%r13), %rcx
	xorl	%esi, %esi
	movq	$0, -144(%rbp)
	leaq	5(,%rax,4), %rbx
	movq	%r8, -168(%rbp)
	movzwl	(%r8), %edx
	leal	-96(%rdx), %r15d
	cmpw	$1, %r15w
	jbe	.L660
	cmpw	$99, %dx
	je	.L660
	cmpw	$98, %dx
	je	.L660
.L659:
	movl	%esi, (%rcx)
	movl	$0, 20(%r13)
	leaq	56(%r13), %rdx
	movzwl	(%r8), %eax
	xorl	%ecx, %ecx
	cmpw	$96, %ax
	je	.L662
	cmpw	$98, %ax
	je	.L662
.L661:
	movl	%ecx, (%rdx)
	movl	56(%r13), %r10d
	testl	%r10d, %r10d
	je	.L663
	movq	24(%r13), %r11
	movq	%r11, 32(%r13)
.L663:
	movl	16(%r13), %ecx
	testl	%ecx, %ecx
	jne	.L664
	movq	24(%r13), %r15
	movq	$0, -1720(%rbp)
	movl	$17, %esi
.L677:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L4167
.L674:
	movslq	%ecx,%r12
	movzbq	mode_size(%r12), %rdx
	cmpq	%rsi, %rdx
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r12), %ecx
	testl	%ecx, %ecx
	jne	.L674
.L4167:
	testl	%edi, %edi
	je	.L667
	movslq	%edi,%r12
	movq	%r12, %r9
	salq	$4, %r9
	addq	optab_table+240(%rip), %r9
	cmpl	$1317, 8(%r9)
	je	.L676
	movq	%r8, -2648(%rbp)
	call	get_mode_alignment
	movq	-2648(%rbp), %r8
	movl	$128, %edi
	cmpl	%eax, %edi
	jb	.L676
	movzbq	mode_size(%r12), %rsi
	movq	%r15, %rax
	xorl	%edx, %edx
	divq	%rsi
	addq	%rax, -1720(%rbp)
	movq	%rdx, %r15
.L676:
	movzbq	mode_size(%r12), %rsi
	cmpq	$1, %rsi
	ja	.L677
.L667:
	testq	%r15, %r15
	jne	.L4757
	cmpq	$2, -1720(%rbp)
	jbe	.L664
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L4169
.L685:
	movslq	%ecx,%r11
	movzbq	mode_size(%r11), %r12
	cmpq	%rbx, %r12
	cmovb	%ecx, %r14d
	movzbl	mode_wider_mode(%r11), %ecx
	testl	%ecx, %ecx
	jne	.L685
.L4169:
	movl	16(%r13), %eax
	testl	%eax, %eax
	jne	.L664
	movzwl	(%r8), %edx
	leal	-67(%rdx), %ecx
	cmpw	$1, %cx
	jbe	.L689
	cmpw	$54, %dx
	je	.L689
	cmpw	$55, %dx
	je	.L689
	cmpw	$58, %dx
	je	.L689
	cmpw	$134, %dx
	je	.L689
	cmpw	$56, %dx
	je	.L689
	cmpw	$140, %dx
	je	.L689
.L664:
	cmpq	$1, %rbx
	jbe	.L692
.L713:
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L4172
.L699:
	movslq	%ecx,%r8
	movzbq	mode_size(%r8), %rdx
	cmpq	%rbx, %rdx
	cmovb	%ecx, %r14d
	movzbl	mode_wider_mode(%r8), %ecx
	testl	%ecx, %ecx
	jne	.L699
.L4172:
	testl	%r14d, %r14d
	je	.L692
	movslq	%r14d,%r15
	movq	%r15, %r9
	salq	$4, %r9
	addq	optab_table+240(%rip), %r9
	movl	8(%r9), %ebx
	cmpl	$1317, %ebx
	je	.L701
	movl	%r14d, %edi
	call	get_mode_alignment
	movl	$128, %edi
	cmpl	%eax, %edi
	jb	.L701
	movslq	%ebx,%rsi
	movzbq	mode_size(%r15), %rdx
	leaq	(%rsi,%rsi,4), %r10
	cmpq	%rdx, 24(%r13)
	movq	insn_data+16(,%r10,8), %rbx
	movq	%rdx, %r12
	movq	%rbx, -752(%rbp)
	jb	.L701
	movl	56(%r13), %ecx
.L711:
	testl	%ecx, %ecx
	je	.L705
	subq	%rdx, 32(%r13)
.L705:
	movl	16(%r13), %eax
	testl	%eax, %eax
	je	.L706
	movq	(%r13), %rdi
	movq	8(%r13), %rdx
	movl	%r14d, %esi
	movq	32(%r13), %rcx
	movl	$1, %r8d
	call	adjust_automodify_address_1
.L4523:
	movl	%r14d, %edx
	movq	%rax, %rbx
	movq	48(%r13), %rdi
	movq	32(%r13), %rsi
	call	*40(%r13)
	movq	%rbx, %rdi
	movq	%rax, %rsi
	xorl	%eax, %eax
	call	*-752(%rbp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%r13), %eax
	testl	%eax, %eax
	movl	%eax, %ecx
	jne	.L710
	addq	%r12, 32(%r13)
.L710:
	movq	24(%r13), %r11
	movq	%r12, %rdx
	subq	%r12, %r11
	cmpq	%r12, %r11
	movq	%r11, 24(%r13)
	jae	.L711
.L701:
	movzbq	mode_size(%r15), %rbx
	cmpq	$1, %rbx
	ja	.L713
.L692:
	cmpq	$0, 24(%r13)
	je	.L731
.L4756:
	movl	$.LC0, %edi
	movl	$2524, %esi
	movl	$.LC6, %edx
	jmp	.L4655
	.p2align 6,,7
.L706:
	movq	(%r13), %rdi
	movq	32(%r13), %rdx
	movl	%r14d, %esi
	movl	$1, %ecx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L4523
.L689:
	movq	%r8, %rdi
	call	copy_addr_to_reg
	movq	%rax, 8(%r13)
	jmp	.L664
.L4757:
	movl	$.LC0, %edi
	movl	$1542, %esi
	movl	$.LC5, %edx
	jmp	.L4655
	.p2align 6,,7
.L662:
	movl	$1, %ecx
	jmp	.L661
.L660:
	movl	$1, %esi
	jmp	.L659
.L655:
	cmpq	$2, %r13
	ja	.L639
	jmp	.L656
.L634:
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r15), %rdi
	movq	%rax, %r12
	call	protect_from_queue
	cmpq	8(%r15), %r12
	movq	%rax, %rbx
	je	.L4796
.L636:
	movq	%r15, %rdi
	call	copy_rtx
	movq	%rax, %r15
	movq	%r12, 8(%rax)
	movq	%rbx, 16(%rax)
	jmp	.L629
.L4796:
	cmpq	16(%r15), %rax
	jne	.L636
	jmp	.L629
	.p2align 6,,7
.L4779:
	cmpb	$51, 2(%r15)
	je	.L627
	movq	8(%r15), %r12
	cmpw	$71, (%r12)
	je	.L4797
.L627:
	cmpl	$66, %eax
	jne	.L630
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%r15), %rax
	movq	%rax, %rbx
	je	.L629
	movq	%r15, %rdi
	call	copy_rtx
	movq	%rax, %r15
	movq	%rbx, 8(%rax)
	jmp	.L629
	.p2align 6,,7
.L4797:
	movq	8(%r12), %rsi
	movq	%r15, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%r12)
	movq	%rax, %rbx
	je	.L628
	movzbl	2(%r15), %edi
	call	gen_reg_rtx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, %r15
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L629
.L628:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L4522:
	movq	%rax, %r15
	jmp	.L629
.L626:
	cmpq	$0, 16(%r15)
	je	.L4798
	movq	24(%r15), %rax
	testq	%rax, %rax
	jne	.L4522
	movq	8(%r15), %r10
	movzbl	2(%r10), %edi
	call	gen_reg_rtx
	movq	8(%r15), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r15)
	call	gen_move_insn
	movq	16(%r15), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r15), %r15
	jmp	.L629
.L4798:
	movq	8(%r15), %rdi
	call	copy_to_reg
	jmp	.L4522
.L621:
	movq	-1744(%rbp), %r13
	xorl	%esi, %esi
	movq	8(%r13), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	-1744(%rbp), %rdx
	movq	%rax, %r12
	movq	16(%rdx), %rdi
	call	protect_from_queue
	movq	-1744(%rbp), %rsi
	movq	%rax, %rbx
	cmpq	8(%rsi), %r12
	je	.L4799
.L623:
	movq	-1744(%rbp), %rdi
	call	copy_rtx
	movq	%rax, -1712(%rbp)
	movq	%r12, 8(%rax)
	movq	-1712(%rbp), %r12
	movq	%rbx, 16(%r12)
	jmp	.L616
.L4799:
	cmpq	16(%rsi), %rax
	jne	.L623
	jmp	.L616
	.p2align 6,,7
.L4778:
	jne	.L617
	movq	8(%rsi), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, %rbx
	movq	-1744(%rbp), %rax
	cmpq	8(%rax), %rbx
	je	.L616
	movq	%rax, %rdi
	call	copy_rtx
	movq	%rax, -1712(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L616
	.p2align 6,,7
.L613:
	movq	-1744(%rbp), %rdx
	cmpq	$0, 16(%rdx)
	je	.L4800
	movq	-1744(%rbp), %rax
	movq	24(%rax), %r8
	testq	%r8, %r8
	movq	%r8, -1712(%rbp)
	jne	.L616
	movq	-1744(%rbp), %r14
	movq	8(%r14), %rsi
	movzbl	2(%rsi), %edi
	call	gen_reg_rtx
	movq	8(%r14), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r14), %r9
	movq	%r9, -1712(%rbp)
	jmp	.L616
.L4800:
	movq	8(%rdx), %rdi
	call	copy_to_reg
	movq	%rax, -1712(%rbp)
	jmp	.L616
.L4777:
	movzbl	%al, %edx 
	movzbl	mode_size(%rdx), %edi
	cmpl	8(%r15), %edi
	jne	.L611
.L4758:
	movq	%rbx, %rdi
	movq	const_tiny_rtx(,%rdx,8), %rsi
.L4657:
	call	emit_move_insn
	jmp	.L731
.L4776:
	movq	16(%rax), %rax
	movl	$8, -1700(%rbp)
	testq	%rax, %rax
	je	.L608
	movl	32(%rax), %eax
	jmp	.L4521
.L4775:
	movzbq	2(%rbx), %rcx
	movzbq	mode_size(%rcx), %r10
	cmpq	-712(%rbp), %r10
	jne	.L562
	jmp	.L606
.L4774:
	movq	-704(%rbp), %rsi
	movzbl	16(%rsi), %eax
	cmpb	$46, %al
	je	.L4801
	movzbl	%al, %eax
	cmpl	$28, %eax
	je	.L588
	cmpl	$28, %eax
	ja	.L605
	cmpl	$26, %eax
	je	.L587
	cmpl	$26, %eax
	ja	.L585
	cmpl	$25, %eax
	je	.L584
.L603:
	xorl	%ebx, %ebx
.L583:
	movl	%ebx, %eax
.L571:
	testl	%eax, %eax
	je	.L562
	jmp	.L568
.L584:
	movq	-704(%rbp), %rdi
	call	integer_zerop
.L4519:
	movl	%eax, %ebx
	jmp	.L583
	.p2align 6,,7
.L585:
	movq	-704(%rbp), %rax
	xorl	%ebx, %ebx
	movq	32(%rax), %rdi
	call	is_zeros_p
	testl	%eax, %eax
	je	.L583
	movq	-704(%rbp), %r12
	movq	40(%r12), %rdi
	call	is_zeros_p
	testl	%eax, %eax
	je	.L583
.L4161:
	movl	$1, %ebx
	jmp	.L583
.L587:
	movq	-704(%rbp), %rsi
	movl	$dconst0, %edi
	movl	$24, %ecx
	cld
	addq	$32, %rsi
	repz
	cmpsb
.L4518:
	sete	%sil
	movzbl	%sil, %ebx
	jmp	.L583
.L605:
	cmpl	$46, %eax
	je	.L595
	cmpl	$46, %eax
	jb	.L603
	subl	$114, %eax
	cmpl	$3, %eax
	ja	.L603
	movq	-704(%rbp), %r13
	movq	32(%r13), %rdi
	call	is_zeros_p
	jmp	.L4519
	.p2align 6,,7
.L595:
	movq	-704(%rbp), %rdx
	movq	8(%rdx), %rax
	testq	%rax, %rax
	je	.L596
	cmpb	$19, 16(%rax)
	je	.L4802
.L596:
	movq	-704(%rbp), %r9
	movq	40(%r9), %rbx
	testq	%rbx, %rbx
	je	.L4161
.L602:
	movq	32(%rbx), %rdi
	call	is_zeros_p
	testl	%eax, %eax
	je	.L603
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L602
	jmp	.L4161
.L4802:
	cmpq	$0, 40(%rdx)
	jmp	.L4518
	.p2align 6,,7
.L588:
	movq	-704(%rbp), %r8
	movq	32(%r8), %rbx
	testq	%rbx, %rbx
	je	.L4161
.L594:
	movq	32(%rbx), %rdi
	call	is_zeros_p
	testl	%eax, %eax
	je	.L603
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L594
	jmp	.L4161
	.p2align 6,,7
.L4801:
	movq	8(%rsi), %rax
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	movq	40(%rsi), %rbx
	testq	%rax, %rax
	je	.L570
	cmpb	$19, 16(%rax)
	je	.L4803
.L570:
	testq	%rbx, %rbx
	jne	.L577
.L4157:
	leal	0(,%r12,4), %edx
	leal	(%r13,%r13,2), %ebx
	cmpl	%ebx, %edx
	setge	%al
.L4520:
	movzbl	%al, %eax
	jmp	.L571
.L577:
	movq	32(%rbx), %rdi
	call	mostly_zeros_p
	movq	(%rbx), %rbx
	leal	1(%r12), %edi
	testl	%eax, %eax
	cmovne	%edi, %r12d
	incl	%r13d
	testq	%rbx, %rbx
	jne	.L577
	jmp	.L4157
.L4803:
	testq	%rbx, %rbx
	sete	%al
	jmp	.L4520
	.p2align 6,,7
.L4773:
	movq	-704(%rbp), %r8
	testb	$4, 18(%r8)
	je	.L563
	testb	$2, target_flags+3(%rip)
	je	.L564
	movzbl	2(%rsi), %edx
	movzbl	%dl, %esi 
	cmpb	$8, mode_size(%rsi)
.L4517:
	ja	.L563
	movzbl	%dl, %ecx 
	movq	-1744(%rbp), %rdi
	movq	const_tiny_rtx(,%rcx,8), %rsi
	jmp	.L4657
.L564:
	movq	-1744(%rbp), %r10
	movzbl	2(%r10), %edx
	movzbl	%dl, %r9d 
	cmpb	$4, mode_size(%r9)
	jmp	.L4517
.L4772:
	movq	%rsi, -1680(%rbp)
	call	expr_size
	movq	-1744(%rbp), %rdx
	movq	%rax, -1688(%rbp)
	cmpw	$66, (%rdx)
	je	.L4804
	movq	-1744(%rbp), %rdx
	movzbl	2(%rdx), %edi
	call	get_mode_alignment
	movl	%eax, %r15d
.L430:
	movq	-1744(%rbp), %rbx
	movzbl	2(%rbx), %eax
	cmpb	$51, %al
	je	.L433
	movq	-1688(%rbp), %rsi
	cmpw	$54, (%rsi)
	je	.L4805
.L433:
	movq	-1744(%rbp), %rdx
	movzwl	(%rdx), %eax
	cmpl	$71, %eax
	je	.L435
	cmpl	$66, %eax
	je	.L4806
.L439:
	cmpl	$75, %eax
	je	.L443
	cmpl	$78, %eax
	je	.L443
.L438:
	movq	-1688(%rbp), %rdx
	movzwl	(%rdx), %eax
	cmpl	$71, %eax
	je	.L448
	cmpl	$66, %eax
	je	.L4807
.L452:
	cmpl	$75, %eax
	je	.L456
	cmpl	$78, %eax
	je	.L456
.L451:
	movq	-1688(%rbp), %rax
	cmpw	$54, (%rax)
	je	.L4808
.L461:
	shrl	$3, %r15d
	xorl	%edi, %edi
	mov	%r15d, %esi
	call	gen_rtx_CONST_INT
	movl	class_narrowest_mode+4(%rip), %ebx
	movq	%rax, -736(%rbp)
	testl	%ebx, %ebx
	je	.L4155
.L555:
	movslq	%ebx,%r12
	movl	clrstr_optab(,%r12,4), %edx
	cmpl	$1317, %edx
	je	.L542
	movq	-1688(%rbp), %rcx
	cmpw	$54, (%rcx)
	je	.L4809
.L546:
	testb	$2, target_flags+3(%rip)
	je	.L547
	cmpw	$63, mode_bitsize(%r12,%r12)
.L4515:
	jbe	.L542
.L545:
	movslq	%edx,%r14
	leaq	(%r14,%r14,4), %r15
	movq	insn_data+24(,%r15,8), %r13
	movq	(%r13), %rax
	testq	%rax, %rax
	je	.L549
	movq	-1680(%rbp), %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L542
.L549:
	movq	48(%r13), %rax
	testq	%rax, %rax
	je	.L550
	xorl	%esi, %esi
	movq	-736(%rbp), %rdi
	call	*%rax
	testl	%eax, %eax
	je	.L542
.L550:
	call	get_last_insn
	movl	$1, %edx
	movq	-1688(%rbp), %rsi
	movl	%ebx, %edi
	movq	%rax, -744(%rbp)
	call	convert_to_mode
	movq	%rax, %r15
	movq	24(%r13), %rax
	testq	%rax, %rax
	jne	.L4810
.L551:
	leaq	(%r14,%r14,4), %r13
	xorl	%eax, %eax
	movq	-1680(%rbp), %rdi
	movq	%r15, %rsi
	movq	-736(%rbp), %rdx
	call	*insn_data+16(,%r13,8)
	testq	%rax, %rax
	jne	.L4525
	movq	-744(%rbp), %rdi
	call	delete_insns_since
.L542:
	movzbl	mode_wider_mode(%r12), %ebx
	testl	%ebx, %ebx
	jne	.L555
.L4155:
	testb	$2, target_flags+3(%rip)
	movq	-1680(%rbp), %rax
	setne	%dl
	movq	8(%rax), %rsi
	movzbl	%dl, %edi
	addl	$4, %edi
	call	copy_to_mode_reg
	movq	-1688(%rbp), %rsi
	movq	sizetype_tab(%rip), %rdi
	movq	%rax, %r13
	movzbl	61(%rdi), %ebx
	shrb	$1, %bl
	movzbl	%bl, %edi
	jmp	.L4771
.L4810:
	movq	%r15, %rdi
	movl	%ebx, %esi
	call	*%rax
	testl	%eax, %eax
	jne	.L551
	movq	%r15, %rsi
	movl	%ebx, %edi
	call	copy_to_mode_reg
	movq	%rax, %r15
	jmp	.L551
	.p2align 6,,7
.L547:
	cmpw	$31, mode_bitsize(%r12,%r12)
	jmp	.L4515
.L4809:
	movq	mode_mask_array(,%r12,8), %r14
	shrq	$1, %r14
	cmpq	%r14, 8(%rcx)
	jbe	.L545
	jmp	.L546
.L4808:
	movq	8(%rax), %r12
	xorl	%r13d, %r13d
	movl	$17, %esi
	movl	$128, %r14d
.L474:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L4144
.L471:
	movslq	%ecx,%r9
	movzbq	mode_size(%r9), %r10
	cmpq	%rsi, %r10
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r9), %ecx
	testl	%ecx, %ecx
	jne	.L471
.L4144:
	testl	%edi, %edi
	je	.L464
	movslq	%edi,%rbx
	movq	%rbx, %r11
	salq	$4, %r11
	addq	optab_table+240(%rip), %r11
	cmpl	$1317, 8(%r11)
	je	.L473
	call	get_mode_alignment
	cmpl	%eax, %r14d
	jb	.L473
	movzbq	mode_size(%rbx), %rsi
	movq	%r12, %rax
	xorl	%edx, %edx
	divq	%rsi
	addq	%rax, %r13
	movq	%rdx, %r12
.L473:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L474
.L464:
	testq	%r12, %r12
	jne	.L4757
	movl	optimize_size(%rip), %r14d
	testl	%r14d, %r14d
	jne	.L477
	movq	ix86_cost(%rip), %rdx
	mov	40(%rdx), %ebx
	cmpq	%rbx, %r13
	jae	.L461
.L478:
	movq	-1688(%rbp), %r12
	movq	-1680(%rbp), %rax
	testb	$2, target_flags+3(%rip)
	setne	%cl
	xorl	%esi, %esi
	xorl	%r14d, %r14d
	movq	8(%r12), %r13
	movq	%rax, -112(%rbp)
	movq	$0, -64(%rbp)
	movq	$clear_by_pieces_1, -72(%rbp)
	movq	%r13, -88(%rbp)
	movzbl	%cl, %r9d 
	movq	8(%rax), %r8
	movq	$0, -80(%rbp)
	leaq	-112(%rbp), %r13
	leaq	5(,%r9,4), %r12
	leaq	16(%r13), %rcx
	movq	%r8, -104(%rbp)
	movzwl	(%r8), %edx
	leal	-96(%rdx), %r15d
	cmpw	$1, %r15w
	jbe	.L482
	cmpw	$99, %dx
	je	.L482
	cmpw	$98, %dx
	je	.L482
.L481:
	movl	%esi, (%rcx)
	movl	$0, 20(%r13)
	leaq	56(%r13), %rdx
	movzwl	(%r8), %eax
	xorl	%ecx, %ecx
	cmpw	$96, %ax
	je	.L484
	cmpw	$98, %ax
	je	.L484
.L483:
	movl	%ecx, (%rdx)
	movl	56(%r13), %r10d
	testl	%r10d, %r10d
	je	.L485
	movq	24(%r13), %r11
	movq	%r11, 32(%r13)
.L485:
	movl	16(%r13), %edi
	testl	%edi, %edi
	jne	.L486
	movq	24(%r13), %r15
	movq	$0, -1696(%rbp)
	movl	$17, %esi
.L499:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L4147
.L496:
	movslq	%ecx,%rbx
	movzbq	mode_size(%rbx), %rdx
	cmpq	%rsi, %rdx
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%rbx), %ecx
	testl	%ecx, %ecx
	jne	.L496
.L4147:
	testl	%edi, %edi
	je	.L489
	movslq	%edi,%rbx
	movq	%rbx, %rsi
	salq	$4, %rsi
	addq	optab_table+240(%rip), %rsi
	cmpl	$1317, 8(%rsi)
	je	.L498
	movq	%r8, -2648(%rbp)
	call	get_mode_alignment
	movl	$128, %r8d
	cmpl	%eax, %r8d
	movq	-2648(%rbp), %r8
	jb	.L498
	movzbq	mode_size(%rbx), %rcx
	movq	%r15, %rax
	xorl	%edx, %edx
	divq	%rcx
	addq	%rax, -1696(%rbp)
	movq	%rdx, %r15
.L498:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L499
.L489:
	testq	%r15, %r15
	jne	.L4757
	cmpq	$2, -1696(%rbp)
	jbe	.L486
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L4149
.L507:
	movslq	%ecx,%r10
	movzbq	mode_size(%r10), %r11
	cmpq	%r12, %r11
	cmovb	%ecx, %r14d
	movzbl	mode_wider_mode(%r10), %ecx
	testl	%ecx, %ecx
	jne	.L507
.L4149:
	movl	16(%r13), %eax
	testl	%eax, %eax
	jne	.L486
	movzwl	(%r8), %edx
	leal	-67(%rdx), %edi
	cmpw	$1, %di
	jbe	.L511
	cmpw	$54, %dx
	je	.L511
	cmpw	$55, %dx
	je	.L511
	cmpw	$58, %dx
	je	.L511
	cmpw	$134, %dx
	je	.L511
	cmpw	$56, %dx
	je	.L511
	cmpw	$140, %dx
	je	.L511
.L486:
	cmpq	$1, %r12
	jbe	.L692
.L535:
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L4152
.L521:
	movslq	%ecx,%rbx
	movzbq	mode_size(%rbx), %rdx
	cmpq	%r12, %rdx
	cmovb	%ecx, %r14d
	movzbl	mode_wider_mode(%rbx), %ecx
	testl	%ecx, %ecx
	jne	.L521
.L4152:
	testl	%r14d, %r14d
	je	.L692
	movslq	%r14d,%r15
	movq	%r15, %r12
	salq	$4, %r12
	addq	optab_table+240(%rip), %r12
	movl	8(%r12), %ebx
	cmpl	$1317, %ebx
	je	.L523
	movl	%r14d, %edi
	call	get_mode_alignment
	movl	$128, %esi
	cmpl	%eax, %esi
	jb	.L523
	movzbq	mode_size(%r15), %rdx
	movslq	%ebx,%rcx
	leaq	(%rcx,%rcx,4), %r9
	cmpq	%rdx, 24(%r13)
	movq	insn_data+16(,%r9,8), %r8
	movq	%rdx, %r12
	movq	%r8, -728(%rbp)
	jb	.L523
	movl	56(%r13), %ecx
.L533:
	testl	%ecx, %ecx
	je	.L527
	subq	%rdx, 32(%r13)
.L527:
	movl	16(%r13), %r10d
	testl	%r10d, %r10d
	je	.L528
	movq	(%r13), %rdi
	movq	8(%r13), %rdx
	movl	%r14d, %esi
	movq	32(%r13), %rcx
	movl	$1, %r8d
	call	adjust_automodify_address_1
.L4514:
	movl	%r14d, %edx
	movq	%rax, %rbx
	movq	48(%r13), %rdi
	movq	32(%r13), %rsi
	call	*40(%r13)
	movq	%rbx, %rdi
	movq	%rax, %rsi
	xorl	%eax, %eax
	call	*-728(%rbp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%r13), %eax
	testl	%eax, %eax
	movl	%eax, %ecx
	jne	.L532
	addq	%r12, 32(%r13)
.L532:
	movq	24(%r13), %r11
	movq	%r12, %rdx
	subq	%r12, %r11
	cmpq	%r12, %r11
	movq	%r11, 24(%r13)
	jae	.L533
.L523:
	movzbq	mode_size(%r15), %r12
	cmpq	$1, %r12
	ja	.L535
	jmp	.L692
.L528:
	movq	(%r13), %rdi
	movq	32(%r13), %rdx
	movl	%r14d, %esi
	movl	$1, %ecx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L4514
.L511:
	movq	%r8, %rdi
	call	copy_addr_to_reg
	movq	%rax, 8(%r13)
	jmp	.L486
.L484:
	movl	$1, %ecx
	jmp	.L483
.L482:
	movl	$1, %esi
	jmp	.L481
.L477:
	cmpq	$2, %r13
	ja	.L461
	jmp	.L478
.L456:
	movq	-1688(%rbp), %rdx
	xorl	%esi, %esi
	movq	8(%rdx), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	-1688(%rbp), %rbx
	movq	%rax, %r12
	movq	16(%rbx), %rdi
	call	protect_from_queue
	movq	-1688(%rbp), %rcx
	movq	%rax, %rbx
	cmpq	8(%rcx), %r12
	je	.L4811
.L458:
	movq	-1688(%rbp), %rdi
	call	copy_rtx
	movq	%rax, -1688(%rbp)
	movq	%r12, 8(%rax)
	movq	-1688(%rbp), %rax
	movq	%rbx, 16(%rax)
	jmp	.L451
.L4811:
	cmpq	16(%rcx), %rax
	jne	.L458
	jmp	.L451
.L4807:
	cmpb	$51, 2(%rdx)
	je	.L449
	movq	8(%rdx), %r12
	cmpw	$71, (%r12)
	je	.L4812
.L449:
	cmpl	$66, %eax
	jne	.L452
	movq	-1688(%rbp), %rcx
	xorl	%esi, %esi
	movq	8(%rcx), %rdi
	call	protect_from_queue
	movq	-1688(%rbp), %rsi
	movq	%rax, %rbx
	cmpq	8(%rsi), %rax
	je	.L451
	movq	%rsi, %rdi
	call	copy_rtx
	movq	%rax, -1688(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L451
.L4812:
	movq	8(%r12), %rsi
	movq	%rdx, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%r12)
	movq	%rax, %rbx
	je	.L450
	movq	-1688(%rbp), %r14
	movzbl	2(%r14), %edi
	call	gen_reg_rtx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, -1688(%rbp)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L451
.L450:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L4513:
	movq	%rax, -1688(%rbp)
	jmp	.L451
.L448:
	movq	-1688(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.L4813
	movq	-1688(%rbp), %rdi
	movq	24(%rdi), %rax
	testq	%rax, %rax
	jne	.L4513
	movq	-1688(%rbp), %r8
	movq	8(%r8), %rsi
	movzbl	2(%rsi), %edi
	call	gen_reg_rtx
	movq	-1688(%rbp), %r12
	movq	%rax, %rdi
	movq	8(%r12), %rsi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %r13
	movq	%r13, -1688(%rbp)
	jmp	.L451
.L4813:
	movq	8(%rax), %rdi
	call	copy_to_reg
	jmp	.L4513
.L443:
	movq	-1744(%rbp), %r13
	xorl	%esi, %esi
	movq	8(%r13), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, %r12
	call	protect_from_queue
	movq	-1744(%rbp), %rsi
	movq	%rax, %rbx
	cmpq	8(%rsi), %r12
	je	.L4814
.L445:
	movq	-1744(%rbp), %rdi
	call	copy_rtx
	movq	%rax, -1680(%rbp)
	movq	%r12, 8(%rax)
	movq	-1680(%rbp), %rsi
	movq	%rbx, 16(%rsi)
	jmp	.L438
.L4814:
	cmpq	16(%rsi), %rax
	jne	.L445
	jmp	.L438
.L4806:
	jne	.L439
	movq	8(%rdx), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	-1744(%rbp), %rcx
	movq	%rax, %rbx
	cmpq	8(%rcx), %rax
	je	.L438
	movq	%rcx, %rdi
	call	copy_rtx
	movq	%rax, -1680(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L438
.L435:
	movq	-1744(%rbp), %rdx
	cmpq	$0, 16(%rdx)
	je	.L4815
	movq	-1744(%rbp), %r9
	movq	24(%r9), %r8
	testq	%r8, %r8
	movq	%r8, -1680(%rbp)
	jne	.L438
	movq	-1744(%rbp), %r12
	movq	8(%r12), %r11
	movzbl	2(%r11), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %r10
	movq	%r10, -1680(%rbp)
	jmp	.L438
.L4815:
	movq	8(%rdx), %rdi
	call	copy_to_reg
	movq	%rax, -1680(%rbp)
	jmp	.L438
.L4805:
	movzbl	%al, %edx 
	movzbl	mode_size(%rdx), %edi
	cmpl	8(%rsi), %edi
	jne	.L433
	jmp	.L4758
	.p2align 6,,7
.L4804:
	movq	16(%rdx), %rax
	movl	$8, %r15d
	testq	%rax, %rax
	je	.L430
	movl	32(%rax), %r15d
	jmp	.L430
	.p2align 6,,7
.L427:
	cmpb	$18, %dl
	je	.L807
	cmpb	$9, %dl
	je	.L807
	cmpb	$19, %dl
	jne	.L3825
	movq	-704(%rbp), %r15
	movq	-720(%rbp), %rdi
	movq	40(%r15), %r12
	movq	%r12, -1792(%rbp)
	call	int_size_in_bytes
	cmpq	$0, -1792(%rbp)
	movq	%rax, %r12
	movq	-720(%rbp), %rax
	movq	24(%rax), %rbx
	jne	.L3826
	cmpq	$0, -712(%rbp)
	jle	.L3826
	movl	-1884(%rbp), %r13d
	testl	%r13d, %r13d
	jne	.L426
	movq	-712(%rbp), %rsi
	xorl	%edi, %edi
	call	gen_rtx_CONST_INT
	movq	%rax, -1752(%rbp)
	movq	-1744(%rbp), %rax
	cmpw	$66, (%rax)
	je	.L4816
	movq	-1744(%rbp), %r9
	movzbl	2(%r9), %edi
	call	get_mode_alignment
	movl	%eax, %r15d
.L3829:
	movq	-1744(%rbp), %rbx
	movzbl	2(%rbx), %eax
	cmpb	$51, %al
	je	.L3832
	movq	-1752(%rbp), %rsi
	cmpw	$54, (%rsi)
	je	.L4817
.L3832:
	movq	-1744(%rbp), %rdx
	movzwl	(%rdx), %eax
	cmpl	$71, %eax
	je	.L3834
	cmpl	$66, %eax
	je	.L4818
.L3838:
	cmpl	$75, %eax
	je	.L3842
	cmpl	$78, %eax
	je	.L3842
.L3837:
	movq	-1752(%rbp), %rdx
	movzwl	(%rdx), %eax
	cmpl	$71, %eax
	je	.L3847
	cmpl	$66, %eax
	je	.L4819
.L3851:
	cmpl	$75, %eax
	je	.L3855
	cmpl	$78, %eax
	je	.L3855
.L3850:
	movq	-1752(%rbp), %rax
	cmpw	$54, (%rax)
	je	.L4820
.L3860:
	shrl	$3, %r15d
	xorl	%edi, %edi
	mov	%r15d, %esi
	call	gen_rtx_CONST_INT
	movl	class_narrowest_mode+4(%rip), %ebx
	movq	%rax, -1536(%rbp)
	testl	%ebx, %ebx
	je	.L4429
.L3954:
	movslq	%ebx,%r12
	movl	clrstr_optab(,%r12,4), %edx
	cmpl	$1317, %edx
	je	.L3941
	movq	-1752(%rbp), %rcx
	cmpw	$54, (%rcx)
	je	.L4821
.L3945:
	testb	$2, target_flags+3(%rip)
	je	.L3946
	cmpw	$63, mode_bitsize(%r12,%r12)
.L4647:
	jbe	.L3941
.L3944:
	movslq	%edx,%r14
	leaq	(%r14,%r14,4), %r15
	movq	insn_data+24(,%r15,8), %r13
	movq	(%r13), %rax
	testq	%rax, %rax
	je	.L3948
	movq	-1744(%rbp), %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L3941
.L3948:
	movq	48(%r13), %rax
	testq	%rax, %rax
	je	.L3949
	xorl	%esi, %esi
	movq	-1536(%rbp), %rdi
	call	*%rax
	testl	%eax, %eax
	je	.L3941
.L3949:
	call	get_last_insn
	movl	$1, %edx
	movq	-1752(%rbp), %rsi
	movl	%ebx, %edi
	movq	%rax, -1544(%rbp)
	call	convert_to_mode
	movq	%rax, %r15
	movq	24(%r13), %rax
	testq	%rax, %rax
	jne	.L4822
.L3950:
	leaq	(%r14,%r14,4), %r13
	xorl	%eax, %eax
	movq	-1744(%rbp), %rdi
	movq	%r15, %rsi
	movq	-1536(%rbp), %rdx
	call	*insn_data+16(,%r13,8)
	testq	%rax, %rax
	jne	.L4505
	movq	-1544(%rbp), %rdi
	call	delete_insns_since
.L3941:
	movzbl	mode_wider_mode(%r12), %ebx
	testl	%ebx, %ebx
	jne	.L3954
.L4429:
	testb	$2, target_flags+3(%rip)
	movq	-1744(%rbp), %rax
	setne	%r9b
	movq	8(%rax), %rsi
	movzbl	%r9b, %edi
	addl	$4, %edi
	call	copy_to_mode_reg
	movq	-1752(%rbp), %rsi
	movq	sizetype_tab(%rip), %rbx
	movq	%rax, %r13
	movzbl	61(%rbx), %ecx
	shrb	$1, %cl
	movzbl	%cl, %edi
	call	copy_to_mode_reg
	cmpq	$0, fn.0(%rip)
	movq	%rax, %r14
	je	.L4823
.L3959:
	movq	global_trees+216(%rip), %rdi
	call	build_pointer_type
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	const_int_rtx+512(%rip), %rsi
	movq	integer_types+40(%rip), %rdi
	movq	%rax, %r15
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	%r14, %rsi
	movq	%rax, (%r15)
	movq	%rax, %r12
	movq	sizetype_tab(%rip), %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	fn.0(%rip), %rsi
	movq	%rax, (%r12)
	movq	(%r15), %rcx
	movq	8(%rsi), %rdi
	movq	(%rcx), %r14
	movq	$0, (%r14)
	call	build_pointer_type
	movq	fn.0(%rip), %rdx
	movl	$121, %edi
	movq	%rax, %rsi
	call	build1
	xorl	%r8d, %r8d
	movq	%r15, %rcx
	movq	fn.0(%rip), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	movq	8(%rdi), %r11
	movl	$53, %edi
	movq	8(%r11), %rsi
	call	build
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	orb	$1, 17(%rax)
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	expand_expr
	testb	$4, 3(%r13)
	je	.L426
	movl	$49, %edi
	xorl	%esi, %esi
	movq	%r13, %rdx
	call	gen_rtx_fmt_e
.L4505:
	movq	%rax, %rdi
	call	emit_insn
	jmp	.L426
.L4823:
	movl	$.LC7, %edi
	call	get_identifier
	movq	global_trees+216(%rip), %rdi
	movq	%rax, fn.0(%rip)
	call	build_pointer_type
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	build_function_type
	movq	fn.0(%rip), %rsi
	movl	$30, %edi
	movq	%rax, %rdx
	call	build_decl
	movl	$1, %esi
	movl	$fn.0, %edi
	movq	%rax, fn.0(%rip)
	call	ggc_add_tree_root
	movq	fn.0(%rip), %r10
	xorl	%esi, %esi
	orb	$1, 49(%r10)
	movq	fn.0(%rip), %rdx
	orb	$8, 18(%rdx)
	movq	fn.0(%rip), %r8
	orb	$64, 50(%r8)
	movq	fn.0(%rip), %r12
	orb	$2, 18(%r12)
	movq	fn.0(%rip), %rdi
	call	make_decl_rtl
	movq	fn.0(%rip), %rdi
	call	assemble_external
	jmp	.L3959
.L4822:
	movq	%r15, %rdi
	movl	%ebx, %esi
	call	*%rax
	testl	%eax, %eax
	jne	.L3950
	movq	%r15, %rsi
	movl	%ebx, %edi
	call	copy_to_mode_reg
	movq	%rax, %r15
	jmp	.L3950
	.p2align 6,,7
.L3946:
	cmpw	$31, mode_bitsize(%r12,%r12)
	jmp	.L4647
.L4821:
	movq	mode_mask_array(,%r12,8), %r14
	shrq	$1, %r14
	cmpq	%r14, 8(%rcx)
	jbe	.L3944
	jmp	.L3945
.L4820:
	movq	8(%rax), %r12
	xorl	%r13d, %r13d
	movl	$17, %esi
	movl	$128, %r14d
.L3873:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L4418
.L3870:
	movslq	%ecx,%r11
	movzbq	mode_size(%r11), %r8
	cmpq	%rsi, %r8
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r11), %ecx
	testl	%ecx, %ecx
	jne	.L3870
.L4418:
	testl	%edi, %edi
	je	.L3863
	movslq	%edi,%rbx
	movq	%rbx, %rdx
	salq	$4, %rdx
	addq	optab_table+240(%rip), %rdx
	cmpl	$1317, 8(%rdx)
	je	.L3872
	call	get_mode_alignment
	cmpl	%eax, %r14d
	jb	.L3872
	movzbq	mode_size(%rbx), %rsi
	movq	%r12, %rax
	xorl	%edx, %edx
	divq	%rsi
	addq	%rax, %r13
	movq	%rdx, %r12
.L3872:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L3873
.L3863:
	testq	%r12, %r12
	jne	.L4757
	movl	optimize_size(%rip), %eax
	testl	%eax, %eax
	jne	.L3876
	movq	ix86_cost(%rip), %r9
	mov	40(%r9), %ebx
	cmpq	%rbx, %r13
	jae	.L3860
.L3877:
	movq	-1752(%rbp), %rdi
	movq	-1744(%rbp), %r10
	testb	$2, target_flags+3(%rip)
	setne	%dl
	xorl	%esi, %esi
	movq	8(%rdi), %r13
	movq	%r10, -464(%rbp)
	movq	$0, -416(%rbp)
	movq	$clear_by_pieces_1, -424(%rbp)
	movq	%r13, -440(%rbp)
	movzbl	%dl, %r14d 
	movq	8(%r10), %r8
	movq	$0, -432(%rbp)
	leaq	-464(%rbp), %r13
	leaq	5(,%r14,4), %r12
	xorl	%r14d, %r14d
	leaq	16(%r13), %rcx
	movq	%r8, -456(%rbp)
	movzwl	(%r8), %edx
	leal	-96(%rdx), %r15d
	cmpw	$1, %r15w
	jbe	.L3881
	cmpw	$99, %dx
	je	.L3881
	cmpw	$98, %dx
	je	.L3881
.L3880:
	movl	%esi, (%rcx)
	movl	$0, 20(%r13)
	leaq	56(%r13), %rdx
	movzwl	(%r8), %eax
	xorl	%ecx, %ecx
	cmpw	$96, %ax
	je	.L3883
	cmpw	$98, %ax
	je	.L3883
.L3882:
	movl	%ecx, (%rdx)
	movl	56(%r13), %ecx
	testl	%ecx, %ecx
	je	.L3884
	movq	24(%r13), %r11
	movq	%r11, 32(%r13)
.L3884:
	movl	16(%r13), %esi
	testl	%esi, %esi
	jne	.L3885
	movq	24(%r13), %r15
	movq	$0, -1760(%rbp)
	movl	$17, %esi
.L3898:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L4421
.L3895:
	movslq	%ecx,%rbx
	movzbq	mode_size(%rbx), %r9
	cmpq	%rsi, %r9
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%rbx), %ecx
	testl	%ecx, %ecx
	jne	.L3895
.L4421:
	testl	%edi, %edi
	je	.L3888
	movslq	%edi,%rbx
	movq	%rbx, %rdx
	salq	$4, %rdx
	addq	optab_table+240(%rip), %rdx
	cmpl	$1317, 8(%rdx)
	je	.L3897
	movq	%r8, -2648(%rbp)
	call	get_mode_alignment
	movl	$128, %r8d
	cmpl	%eax, %r8d
	movq	-2648(%rbp), %r8
	jb	.L3897
	movzbq	mode_size(%rbx), %rdi
	movq	%r15, %rax
	xorl	%edx, %edx
	divq	%rdi
	addq	%rax, -1760(%rbp)
	movq	%rdx, %r15
.L3897:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L3898
.L3888:
	testq	%r15, %r15
	jne	.L4757
	cmpq	$2, -1760(%rbp)
	jbe	.L3885
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L4423
.L3906:
	movslq	%ecx,%r11
	movzbq	mode_size(%r11), %rsi
	cmpq	%r12, %rsi
	cmovb	%ecx, %r14d
	movzbl	mode_wider_mode(%r11), %ecx
	testl	%ecx, %ecx
	jne	.L3906
.L4423:
	movl	16(%r13), %eax
	testl	%eax, %eax
	jne	.L3885
	movzwl	(%r8), %edx
	leal	-67(%rdx), %ecx
	cmpw	$1, %cx
	jbe	.L3910
	cmpw	$54, %dx
	je	.L3910
	cmpw	$55, %dx
	je	.L3910
	cmpw	$58, %dx
	je	.L3910
	cmpw	$134, %dx
	je	.L3910
	cmpw	$56, %dx
	je	.L3910
	cmpw	$140, %dx
	je	.L3910
.L3885:
	cmpq	$1, %r12
	jbe	.L3913
.L3934:
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L4426
.L3920:
	movslq	%ecx,%rbx
	movzbq	mode_size(%rbx), %r9
	cmpq	%r12, %r9
	cmovb	%ecx, %r14d
	movzbl	mode_wider_mode(%rbx), %ecx
	testl	%ecx, %ecx
	jne	.L3920
.L4426:
	testl	%r14d, %r14d
	je	.L3913
	movslq	%r14d,%r15
	movq	%r15, %r12
	salq	$4, %r12
	addq	optab_table+240(%rip), %r12
	movl	8(%r12), %ebx
	cmpl	$1317, %ebx
	je	.L3922
	movl	%r14d, %edi
	call	get_mode_alignment
	movl	$128, %r8d
	cmpl	%eax, %r8d
	jb	.L3922
	movslq	%ebx,%rdi
	leaq	(%rdi,%rdi,4), %r10
	movq	insn_data+16(,%r10,8), %rdx
	movq	%rdx, -1528(%rbp)
	movzbq	mode_size(%r15), %rdx
	cmpq	%rdx, 24(%r13)
	movq	%rdx, %r12
	jb	.L3922
	movl	56(%r13), %ecx
.L3932:
	testl	%ecx, %ecx
	je	.L3926
	subq	%rdx, 32(%r13)
.L3926:
	movl	16(%r13), %r11d
	testl	%r11d, %r11d
	je	.L3927
	movq	(%r13), %rdi
	movq	8(%r13), %rdx
	movl	%r14d, %esi
	movq	32(%r13), %rcx
	movl	$1, %r8d
	call	adjust_automodify_address_1
.L4646:
	movl	%r14d, %edx
	movq	%rax, %rbx
	movq	48(%r13), %rdi
	movq	32(%r13), %rsi
	call	*40(%r13)
	movq	%rbx, %rdi
	movq	%rax, %rsi
	xorl	%eax, %eax
	call	*-1528(%rbp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%r13), %eax
	testl	%eax, %eax
	movl	%eax, %ecx
	jne	.L3931
	addq	%r12, 32(%r13)
.L3931:
	movq	24(%r13), %rsi
	movq	%r12, %rdx
	subq	%r12, %rsi
	cmpq	%r12, %rsi
	movq	%rsi, 24(%r13)
	jae	.L3932
.L3922:
	movzbq	mode_size(%r15), %r12
	cmpq	$1, %r12
	ja	.L3934
.L3913:
	cmpq	$0, 24(%r13)
	je	.L426
	jmp	.L4756
	.p2align 6,,7
.L3927:
	movq	(%r13), %rdi
	movq	32(%r13), %rdx
	movl	%r14d, %esi
	movl	$1, %ecx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L4646
.L3910:
	movq	%r8, %rdi
	call	copy_addr_to_reg
	movq	%rax, 8(%r13)
	jmp	.L3885
.L3883:
	movl	$1, %ecx
	jmp	.L3882
.L3881:
	movl	$1, %esi
	jmp	.L3880
.L3876:
	cmpq	$2, %r13
	ja	.L3860
	jmp	.L3877
.L3855:
	movq	-1752(%rbp), %r13
	xorl	%esi, %esi
	movq	8(%r13), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	-1752(%rbp), %rbx
	movq	%rax, %r12
	movq	16(%rbx), %rdi
	call	protect_from_queue
	movq	-1752(%rbp), %rcx
	movq	%rax, %rbx
	cmpq	8(%rcx), %r12
	je	.L4824
.L3857:
	movq	-1752(%rbp), %rdi
	call	copy_rtx
	movq	%rax, -1752(%rbp)
	movq	%r12, 8(%rax)
	movq	-1752(%rbp), %rax
	movq	%rbx, 16(%rax)
	jmp	.L3850
.L4824:
	cmpq	16(%rcx), %rax
	jne	.L3857
	jmp	.L3850
.L4819:
	cmpb	$51, 2(%rdx)
	je	.L3848
	movq	8(%rdx), %r12
	cmpw	$71, (%r12)
	je	.L4825
.L3848:
	cmpl	$66, %eax
	jne	.L3851
	movq	-1752(%rbp), %rsi
	movq	8(%rsi), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	-1752(%rbp), %rsi
	movq	%rax, %rbx
	cmpq	8(%rsi), %rax
	je	.L3850
	movq	%rsi, %rdi
	call	copy_rtx
	movq	%rax, -1752(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L3850
.L4825:
	movq	8(%r12), %rsi
	movq	%rdx, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%r12)
	movq	%rax, %rbx
	je	.L3849
	movq	-1752(%rbp), %rdx
	movzbl	2(%rdx), %edi
	call	gen_reg_rtx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, -1752(%rbp)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L3850
.L3849:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L4645:
	movq	%rax, -1752(%rbp)
	jmp	.L3850
.L3847:
	movq	-1752(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.L4826
	movq	-1752(%rbp), %rcx
	movq	24(%rcx), %rax
	testq	%rax, %rax
	jne	.L4645
	movq	-1752(%rbp), %rdi
	movq	8(%rdi), %r10
	movzbl	2(%r10), %edi
	call	gen_reg_rtx
	movq	-1752(%rbp), %r14
	movq	%rax, %rdi
	movq	8(%r14), %rsi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r14), %r9
	movq	%r9, -1752(%rbp)
	jmp	.L3850
.L4826:
	movq	8(%rax), %rdi
	call	copy_to_reg
	jmp	.L4645
.L3842:
	movq	-1744(%rbp), %r14
	xorl	%esi, %esi
	movq	8(%r14), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r14), %rdi
	movq	%rax, %r12
	call	protect_from_queue
	movq	-1744(%rbp), %rsi
	movq	%rax, %rbx
	cmpq	8(%rsi), %r12
	je	.L4827
.L3844:
	movq	-1744(%rbp), %rdi
	call	copy_rtx
	movq	%rax, -1744(%rbp)
	movq	%r12, 8(%rax)
	movq	-1744(%rbp), %r10
	movq	%rbx, 16(%r10)
	jmp	.L3837
.L4827:
	cmpq	16(%rsi), %rax
	jne	.L3844
	jmp	.L3837
.L4818:
	jne	.L3838
	movq	8(%rdx), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	-1744(%rbp), %rcx
	movq	%rax, %rbx
	cmpq	8(%rcx), %rax
	je	.L3837
	movq	%rcx, %rdi
	call	copy_rtx
	movq	%rax, -1744(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L3837
	.p2align 6,,7
.L3834:
	movq	-1744(%rbp), %rdx
	cmpq	$0, 16(%rdx)
	je	.L4828
	movq	-1744(%rbp), %r11
	movq	24(%r11), %rsi
	testq	%rsi, %rsi
	je	.L4829
.L4644:
	movq	%rsi, -1744(%rbp)
	jmp	.L3837
.L4829:
	movq	-1744(%rbp), %r12
	movq	8(%r12), %r8
	movzbl	2(%r8), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %rsi
	jmp	.L4644
.L4828:
	movq	8(%rdx), %rdi
	call	copy_to_reg
	movq	%rax, -1744(%rbp)
	jmp	.L3837
.L4817:
	movzbl	%al, %edx 
	movzbl	mode_size(%rdx), %edi
	cmpl	8(%rsi), %edi
	jne	.L3832
	movq	const_tiny_rtx(,%rdx,8), %rsi
	movq	%rbx, %rdi
	call	emit_move_insn
	jmp	.L426
	.p2align 6,,7
.L4816:
	movq	16(%rax), %rax
	movl	$8, %r15d
	testq	%rax, %rax
	je	.L3829
	movl	32(%rax), %r15d
	jmp	.L3829
	.p2align 6,,7
.L3826:
	movq	sizetype_tab(%rip), %rdi
	movq	104(%rbx), %rsi
	call	convert
	movq	sizetype_tab(%rip), %rdi
	movq	%rax, -1512(%rbp)
	movq	112(%rbx), %rsi
	call	convert
	movq	-1512(%rbp), %rsi
	movq	%rax, %rdi
	call	size_diffop
	movl	$1, %esi
	movl	$1, %edi
	movq	%rax, %r15
	call	size_int_wide
	movl	$59, %edi
	movq	%r15, %rsi
	movq	%rax, %rdx
	call	size_binop
	movl	$1, %esi
	movq	%rax, %rdi
	movq	%rax, -1520(%rbp)
	call	tree_low_cst
	movq	-1744(%rbp), %r13
	movq	%rax, %r15
	cmpb	$51, 2(%r13)
	je	.L4830
.L3962:
	movq	-704(%rbp), %r10
	movl	$1, %esi
	movl	$1, %edx
	xorl	%r13d, %r13d
	xorl	%ebx, %ebx
	xorl	%r12d, %r12d
	movq	8(%r10), %r8
	movl	64(%r8), %r14d
	movl	%r14d, %edi
	call	mode_for_size
	movl	%r15d, %edx
	movq	-704(%rbp), %rdi
	leaq	15(%r15), %r9
	movl	%eax, -1548(%rbp)
	movl	$0, -1784(%rbp)
	andq	$-16, %r9
	subq	%r9, %rsp
	leaq	48(%rsp), %rax
	movq	%rax, %rsi
	movq	%rax, -1560(%rbp)
	call	get_set_constructor_bits
	xorl	%edx, %edx
	movq	%rax, -1792(%rbp)
	.p2align 4,,7
.L3965:
	movq	-1560(%rbp), %r11
	cmpb	$0, (%rdx,%r11)
	je	.L3968
	movl	$1, %eax
	movl	%ebx, %ecx
	sall	%cl, %eax
	cltq
	orq	%rax, %r13
.L3968:
	incl	%ebx
	incl	%r12d
	cmpl	%r14d, %ebx
	jae	.L3972
	mov	%r12d, %edx
	cmpq	%r15, %rdx
	jne	.L3965
.L3972:
	testq	%r13, %r13
	jne	.L3974
	movl	-1884(%rbp), %edx
	testl	%edx, %edx
	jne	.L3973
.L3974:
	xorl	%edi, %edi
	movq	%r13, %rsi
	call	gen_rtx_CONST_INT
	movq	-1744(%rbp), %rsi
	movq	%rax, %rbx
	cmpw	$66, (%rsi)
	je	.L4831
	movl	-1784(%rbp), %ecx
	movq	-1744(%rbp), %rdi
	testl	%ecx, %ecx
	jne	.L4832
.L3976:
	movq	%rbx, %rsi
	call	emit_move_insn
.L3973:
	mov	%r12d, %edi
	cmpq	%r15, %rdi
	movq	%rdi, %rdx
	je	.L3980
	movl	%r14d, %esi
	xorl	%r13d, %r13d
	xorl	%ebx, %ebx
	shrl	$3, %esi
	addl	%esi, -1784(%rbp)
	jmp	.L3965
.L3980:
	cmpq	$0, -1792(%rbp)
	je	.L426
.L4140:
	movq	-1792(%rbp), %r13
	movq	-1520(%rbp), %rdi
	xorl	%esi, %esi
	movl	$66, %edx
	movl	$2, %ecx
	movq	24(%r13), %rbx
	movq	32(%r13), %r12
	call	expand_expr
	movq	%rax, -1592(%rbp)
	testq	%rbx, %rbx
	je	.L4833
.L4123:
	movq	sizetype_tab(%rip), %rdi
	movq	%rbx, %rsi
	call	convert
	movq	%r12, %rsi
	movq	sizetype_tab(%rip), %rdi
	movq	%rax, %rbx
	call	convert
	movq	-1512(%rbp), %rdi
	movq	%rax, %r12
	call	integer_zerop
	testl	%eax, %eax
	je	.L4834
.L4124:
	xorl	%esi, %esi
	movq	%rbx, %rdi
	movl	$66, %edx
	movl	$2, %ecx
	call	expand_expr
	movl	$2, %ecx
	movl	$66, %edx
	xorl	%esi, %esi
	movq	%r12, %rdi
	movq	%rax, -1600(%rbp)
	call	expand_expr
	movq	-1744(%rbp), %rcx
	movq	%rax, %r15
	movzwl	(%rcx), %eax
	cmpw	$61, %ax
	je	.L4835
	cmpw	$66, %ax
	movq	-1744(%rbp), %r14
	jne	.L4836
.L4126:
	cmpb	$25, 16(%rbx)
	je	.L4837
.L4129:
	testb	$2, target_flags+3(%rip)
	movl	$.LC13, %edx
	setne	%dil
	movzbl	%dil, %esi
	movl	$68, %edi
	addl	$4, %esi
	call	gen_rtx_fmt_s
	movq	sizetype_tab(%rip), %r11
	movq	-1592(%rbp), %rcx
	testb	$2, target_flags+3(%rip)
	movq	%rax, %rdi
	movq	-1600(%rbp), %rax
	setne	%bl
	movq	%rcx, (%rsp)
	movl	$4, %ecx
	movzbl	61(%r11), %r10d
	movq	%rax, 16(%rsp)
	xorl	%eax, %eax
	movzbl	%bl, %r9d
	shrb	$1, %r10b
	addl	$4, %r9d
	movzbl	%r10b, %r8d
	movl	%r8d, 8(%rsp)
	movzbl	61(%r11), %esi
	movq	%r15, 32(%rsp)
	shrb	$1, %sil
	movzbl	%sil, %edx
	xorl	%esi, %esi
	movl	%edx, 24(%rsp)
	xorl	%edx, %edx
	movzbl	61(%r11), %r13d
	shrb	$1, %r13b
	movzbl	%r13b, %r12d
	movl	%r12d, 40(%rsp)
	movq	8(%r14), %r8
	call	emit_library_call
.L4134:
	movq	-1744(%rbp), %rax
	cmpw	$61, (%rax)
	je	.L4838
.L4121:
	movq	-1792(%rbp), %r15
	movq	(%r15), %r14
	testq	%r14, %r14
	movq	%r14, -1792(%rbp)
	jne	.L4140
	jmp	.L426
.L4838:
	movq	%rax, %rdi
	movq	%r14, %rsi
	call	emit_move_insn
	jmp	.L4121
.L4837:
	cmpb	$25, 16(%r12)
	jne	.L4129
	movq	32(%rbx), %r13
	testl	$7, %r13d 
	jne	.L4129
	movq	32(%r12), %r12
	incq	%r12
	testl	$7, %r12d 
	jne	.L4129
	cmpq	$-1, %r13
	movq	8(%r14), %rdi
	leaq	7(%r13), %rsi
	cmovg	%r13, %rsi
	sarq	$3, %rsi
	call	plus_constant_wide
	movq	%r12, %rsi
	subq	%r13, %rsi
	movq	%rax, %r15
	cmpq	$-1, %rsi
	leaq	7(%rsi), %r9
	cmovle	%r9, %rsi
	xorl	%edi, %edi
	sarq	$3, %rsi
	call	gen_rtx_CONST_INT
	movq	sizetype_tab(%rip), %rsi
	movq	integer_types+40(%rip), %r10
	movq	const_int_rtx+504(%rip), %rcx
	testb	$2, target_flags+3(%rip)
	setne	%bl
	movq	%rcx, (%rsp)
	movl	$3, %ecx
	movzbl	61(%r10), %r8d
	movq	%rax, 16(%rsp)
	xorl	%eax, %eax
	movzbl	%bl, %r9d
	addl	$4, %r9d
	shrb	$1, %r8b
	movzbl	%r8b, %edi
	movq	%r15, %r8
	movl	%edi, 8(%rsp)
	movq	libfunc_table+128(%rip), %rdi
	movzbl	61(%rsi), %edx
	xorl	%esi, %esi
	shrb	$1, %dl
	movzbl	%dl, %r11d
	xorl	%edx, %edx
	movl	%r11d, 24(%rsp)
	call	emit_library_call
	jmp	.L4134
.L4836:
	movl	$.LC0, %edi
	movl	$4975, %esi
	jmp	.L4654
	.p2align 6,,7
.L4835:
	movzbl	2(%rcx), %edi
	xorl	%esi, %esi
	call	type_for_mode
	movl	$1, %esi
	movq	%rax, %rdi
	call	build_qualified_type
	movl	$1, %ecx
	movl	$1, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	assign_temp
	movq	-1744(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	emit_move_insn
	jmp	.L4126
.L4834:
	movq	-1512(%rbp), %rdx
	movq	%rbx, %rsi
	movl	$60, %edi
	call	size_binop
	movq	-1512(%rbp), %rdx
	movq	%r12, %rsi
	movl	$60, %edi
	movq	%rax, %rbx
	call	size_binop
	movq	%rax, %r12
	jmp	.L4124
.L4833:
	movq	%r12, %rdi
	call	save_expr
	movq	%rax, %r12
	movq	%rax, %rbx
	jmp	.L4123
.L4832:
	movl	$.LC0, %edi
	movl	$4905, %esi
	jmp	.L4654
	.p2align 6,,7
.L4831:
	mov	-1784(%rbp), %edx
	movq	%rsi, %rdi
	movl	$1, %ecx
	movl	-1548(%rbp), %esi
	movl	$1, %r8d
	call	adjust_address_1
	movq	%rax, %rdi
	jmp	.L3976
.L4830:
	testb	$2, target_flags+3(%rip)
	je	.L3963
	cmpq	$128, %rax
.L4648:
	jbe	.L3962
	cmpq	$32, %r12
	ja	.L3961
	movq	-1792(%rbp), %rbx
	cmpq	$0, (%rbx)
	jne	.L3962
.L3961:
	movl	-1884(%rbp), %r14d
	testl	%r14d, %r14d
	jne	.L3980
	movq	-1792(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.L3983
	cmpq	$0, 24(%rax)
	jne	.L3984
	cmpq	$1, %r15
.L4649:
	je	.L3980
.L3983:
	movq	-1744(%rbp), %r15
	movq	-704(%rbp), %rdi
	movq	%r15, -1768(%rbp)
	call	expr_size
	movq	-1744(%rbp), %rdx
	movq	%rax, %r12
	cmpw	$66, (%rdx)
	je	.L4839
	movq	-1744(%rbp), %r8
	movzbl	2(%r8), %edi
	call	get_mode_alignment
	movl	%eax, %r15d
.L3987:
	movq	-1744(%rbp), %rbx
	movzbl	2(%rbx), %eax
	cmpb	$51, %al
	je	.L3990
	cmpw	$54, (%r12)
	je	.L4840
.L3990:
	movq	-1744(%rbp), %rsi
	movzwl	(%rsi), %eax
	cmpl	$71, %eax
	je	.L3992
	cmpl	$66, %eax
	je	.L4841
.L3996:
	cmpl	$75, %eax
	je	.L4000
	cmpl	$78, %eax
	je	.L4000
.L3995:
	movzwl	(%r12), %eax
	cmpl	$71, %eax
	je	.L4005
	cmpl	$66, %eax
	je	.L4842
.L4009:
	cmpl	$75, %eax
	je	.L4013
	cmpl	$78, %eax
	je	.L4013
.L4008:
	cmpw	$54, (%r12)
	je	.L4843
.L4018:
	shrl	$3, %r15d
	xorl	%edi, %edi
	mov	%r15d, %esi
	call	gen_rtx_CONST_INT
	movl	class_narrowest_mode+4(%rip), %ebx
	movq	%rax, -1568(%rbp)
	testl	%ebx, %ebx
	je	.L4443
.L4112:
	movslq	%ebx,%r14
	movl	clrstr_optab(,%r14,4), %edx
	cmpl	$1317, %edx
	je	.L4099
	cmpw	$54, (%r12)
	je	.L4844
.L4103:
	testb	$2, target_flags+3(%rip)
	je	.L4104
	cmpw	$63, mode_bitsize(%r14,%r14)
.L4652:
	jbe	.L4099
.L4102:
	movslq	%edx,%rax
	leaq	(%rax,%rax,4), %r10
	movq	%rax, -1576(%rbp)
	movq	insn_data+24(,%r10,8), %r15
	movq	(%r15), %rax
	testq	%rax, %rax
	je	.L4106
	movq	-1768(%rbp), %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L4099
.L4106:
	movq	48(%r15), %rax
	testq	%rax, %rax
	je	.L4107
	xorl	%esi, %esi
	movq	-1568(%rbp), %rdi
	call	*%rax
	testl	%eax, %eax
	je	.L4099
.L4107:
	call	get_last_insn
	movl	$1, %edx
	movq	%r12, %rsi
	movl	%ebx, %edi
	movq	%rax, -1584(%rbp)
	call	convert_to_mode
	movq	%rax, %r13
	movq	24(%r15), %rax
	testq	%rax, %rax
	jne	.L4845
.L4108:
	movq	-1576(%rbp), %rcx
	movq	-1768(%rbp), %rdi
	xorl	%eax, %eax
	movq	%r13, %rsi
	movq	-1568(%rbp), %rdx
	leaq	(%rcx,%rcx,4), %r15
	call	*insn_data+16(,%r15,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L4653
	movq	-1584(%rbp), %rdi
	call	delete_insns_since
.L4099:
	movzbl	mode_wider_mode(%r14), %ebx
	testl	%ebx, %ebx
	jne	.L4112
.L4443:
	testb	$2, target_flags+3(%rip)
	movq	-1768(%rbp), %r11
	setne	%dl
	movq	8(%r11), %rsi
	movzbl	%dl, %edi
	addl	$4, %edi
	call	copy_to_mode_reg
	movq	%r12, %rsi
	movq	sizetype_tab(%rip), %rbx
	movq	%rax, %r13
	movzbl	61(%rbx), %r14d
	shrb	$1, %r14b
	movzbl	%r14b, %edi
	call	copy_to_mode_reg
	cmpq	$0, fn.0(%rip)
	movq	%rax, %r14
	je	.L4846
.L4117:
	movq	global_trees+216(%rip), %rdi
	call	build_pointer_type
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	const_int_rtx+512(%rip), %rsi
	movq	integer_types+40(%rip), %rdi
	movq	%rax, %r15
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	%r14, %rsi
	movq	%rax, (%r15)
	movq	%rax, %r12
	movq	sizetype_tab(%rip), %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	fn.0(%rip), %rcx
	movq	%rax, (%r12)
	movq	(%r15), %rbx
	movq	8(%rcx), %rdi
	movq	(%rbx), %r14
	movq	$0, (%r14)
	call	build_pointer_type
	movq	fn.0(%rip), %rdx
	movl	$121, %edi
	movq	%rax, %rsi
	call	build1
	movq	%r15, %rcx
	movl	$53, %edi
	movq	fn.0(%rip), %r10
	movq	%rax, %rdx
	xorl	%eax, %eax
	movq	8(%r10), %r8
	movq	8(%r8), %rsi
	xorl	%r8d, %r8d
	call	build
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	orb	$1, 17(%rax)
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	expand_expr
	testb	$4, 3(%r13)
	je	.L3980
	movl	$49, %edi
	xorl	%esi, %esi
	movq	%r13, %rdx
	call	gen_rtx_fmt_e
	movq	%rax, %rdi
.L4653:
	call	emit_insn
	jmp	.L3980
.L4846:
	movl	$.LC7, %edi
	call	get_identifier
	movq	global_trees+216(%rip), %rdi
	movq	%rax, fn.0(%rip)
	call	build_pointer_type
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	build_function_type
	movq	fn.0(%rip), %rsi
	movl	$30, %edi
	movq	%rax, %rdx
	call	build_decl
	movl	$1, %esi
	movl	$fn.0, %edi
	movq	%rax, fn.0(%rip)
	call	ggc_add_tree_root
	movq	fn.0(%rip), %r9
	orb	$1, 49(%r9)
	movq	fn.0(%rip), %rdi
	orb	$8, 18(%rdi)
	movq	fn.0(%rip), %rsi
	orb	$64, 50(%rsi)
	xorl	%esi, %esi
	movq	fn.0(%rip), %r12
	orb	$2, 18(%r12)
	movq	fn.0(%rip), %rdi
	call	make_decl_rtl
	movq	fn.0(%rip), %rdi
	call	assemble_external
	jmp	.L4117
.L4845:
	movq	%r13, %rdi
	movl	%ebx, %esi
	call	*%rax
	testl	%eax, %eax
	jne	.L4108
	movq	%r13, %rsi
	movl	%ebx, %edi
	call	copy_to_mode_reg
	movq	%rax, %r13
	jmp	.L4108
	.p2align 6,,7
.L4104:
	cmpw	$31, mode_bitsize(%r14,%r14)
	jmp	.L4652
.L4844:
	movq	mode_mask_array(,%r14,8), %r8
	shrq	$1, %r8
	cmpq	%r8, 8(%r12)
	jbe	.L4102
	jmp	.L4103
.L4843:
	movq	8(%r12), %r13
	xorl	%r14d, %r14d
	movl	$17, %esi
.L4031:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L4432
.L4028:
	movslq	%ecx,%r8
	movzbq	mode_size(%r8), %r10
	cmpq	%rsi, %r10
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r8), %ecx
	testl	%ecx, %ecx
	jne	.L4028
.L4432:
	testl	%edi, %edi
	je	.L4021
	movslq	%edi,%rbx
	movq	%rbx, %r11
	salq	$4, %r11
	addq	optab_table+240(%rip), %r11
	cmpl	$1317, 8(%r11)
	je	.L4030
	call	get_mode_alignment
	movl	$128, %ecx
	cmpl	%eax, %ecx
	jb	.L4030
	movzbq	mode_size(%rbx), %rsi
	movq	%r13, %rax
	xorl	%edx, %edx
	divq	%rsi
	addq	%rax, %r14
	movq	%rdx, %r13
.L4030:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L4031
.L4021:
	testq	%r13, %r13
	jne	.L4757
	movl	optimize_size(%rip), %eax
	testl	%eax, %eax
	jne	.L4034
	movq	ix86_cost(%rip), %r9
	mov	40(%r9), %edx
	cmpq	%rdx, %r14
	jae	.L4018
.L4035:
	movq	8(%r12), %r15
	movq	-1768(%rbp), %r14
	leaq	-688(%rbp), %r12
	movq	$clear_by_pieces_1, -648(%rbp)
	movq	$0, -640(%rbp)
	testb	$2, target_flags+3(%rip)
	setne	%cl
	xorl	%esi, %esi
	movq	%r14, -688(%rbp)
	movq	%r15, -664(%rbp)
	movq	8(%r14), %r15
	movq	$0, -656(%rbp)
	movl	$0, -1780(%rbp)
	movq	%r15, -680(%rbp)
	movzbl	%cl, %r8d 
	movzwl	(%r15), %edx
	leaq	5(,%r8,4), %r14
	leaq	16(%r12), %rcx
	leal	-96(%rdx), %ebx
	cmpw	$1, %bx
	jbe	.L4039
	cmpw	$99, %dx
	je	.L4039
	cmpw	$98, %dx
	je	.L4039
.L4038:
	movl	%esi, (%rcx)
	movl	$0, 20(%r12)
	leaq	56(%r12), %rdx
	movzwl	(%r15), %eax
	xorl	%ecx, %ecx
	cmpw	$96, %ax
	je	.L4041
	cmpw	$98, %ax
	je	.L4041
.L4040:
	movl	%ecx, (%rdx)
	movl	56(%r12), %eax
	testl	%eax, %eax
	je	.L4042
	movq	24(%r12), %r10
	movq	%r10, 32(%r12)
.L4042:
	movl	16(%r12), %eax
	testl	%eax, %eax
	jne	.L4043
	movq	24(%r12), %r13
	movq	$0, -1776(%rbp)
	movl	$17, %esi
.L4056:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L4435
.L4053:
	movslq	%ecx,%r11
	movzbq	mode_size(%r11), %rdx
	cmpq	%rsi, %rdx
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r11), %ecx
	testl	%ecx, %ecx
	jne	.L4053
.L4435:
	testl	%edi, %edi
	je	.L4046
	movslq	%edi,%rbx
	movq	%rbx, %rsi
	salq	$4, %rsi
	addq	optab_table+240(%rip), %rsi
	cmpl	$1317, 8(%rsi)
	je	.L4055
	call	get_mode_alignment
	movl	$128, %edi
	cmpl	%eax, %edi
	jb	.L4055
	movzbq	mode_size(%rbx), %r8
	movq	%r13, %rax
	xorl	%edx, %edx
	divq	%r8
	addq	%rax, -1776(%rbp)
	movq	%rdx, %r13
.L4055:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L4056
.L4046:
	testq	%r13, %r13
	jne	.L4757
	cmpq	$2, -1776(%rbp)
	jbe	.L4043
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L4437
.L4064:
	movslq	%ecx,%rbx
	movzbq	mode_size(%rbx), %r10
	cmpq	%r14, %r10
	cmovae	-1780(%rbp), %ecx
	movl	%ecx, -1780(%rbp)
	movzbl	mode_wider_mode(%rbx), %ecx
	testl	%ecx, %ecx
	jne	.L4064
.L4437:
	movl	16(%r12), %eax
	testl	%eax, %eax
	jne	.L4043
	movzwl	(%r15), %edx
	leal	-67(%rdx), %ecx
	cmpw	$1, %cx
	jbe	.L4068
	cmpw	$54, %dx
	je	.L4068
	cmpw	$55, %dx
	je	.L4068
	cmpw	$58, %dx
	je	.L4068
	cmpw	$134, %dx
	je	.L4068
	cmpw	$56, %dx
	je	.L4068
	cmpw	$140, %dx
	je	.L4068
.L4043:
	cmpq	$1, %r14
	jbe	.L4071
.L4092:
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L4440
.L4078:
	movslq	%ecx,%r15
	movzbq	mode_size(%r15), %r11
	cmpq	%r14, %r11
	cmovae	-1780(%rbp), %ecx
	movl	%ecx, -1780(%rbp)
	movzbl	mode_wider_mode(%r15), %ecx
	testl	%ecx, %ecx
	jne	.L4078
.L4440:
	movl	-1780(%rbp), %eax
	testl	%eax, %eax
	je	.L4071
	movslq	-1780(%rbp),%r14
	movq	%r14, %rdx
	salq	$4, %rdx
	addq	optab_table+240(%rip), %rdx
	movl	8(%rdx), %ebx
	cmpl	$1317, %ebx
	je	.L4080
	movl	-1780(%rbp), %edi
	call	get_mode_alignment
	movl	$128, %esi
	cmpl	%eax, %esi
	jb	.L4080
	movzbq	mode_size(%r14), %rdx
	movslq	%ebx,%r13
	cmpq	%rdx, 24(%r12)
	leaq	(%r13,%r13,4), %rdi
	movq	insn_data+16(,%rdi,8), %r15
	movq	%rdx, %r13
	jb	.L4080
	movl	56(%r12), %ecx
.L4090:
	testl	%ecx, %ecx
	je	.L4084
	subq	%rdx, 32(%r12)
.L4084:
	movl	16(%r12), %eax
	testl	%eax, %eax
	je	.L4085
	movq	(%r12), %rdi
	movl	-1780(%rbp), %esi
	movl	$1, %r8d
	movq	8(%r12), %rdx
	movq	32(%r12), %rcx
	call	adjust_automodify_address_1
.L4651:
	movl	-1780(%rbp), %edx
	movq	%rax, %rbx
	movq	48(%r12), %rdi
	movq	32(%r12), %rsi
	call	*40(%r12)
	movq	%rbx, %rdi
	movq	%rax, %rsi
	xorl	%eax, %eax
	call	*%r15
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%r12), %eax
	testl	%eax, %eax
	movl	%eax, %ecx
	jne	.L4089
	addq	%r13, 32(%r12)
.L4089:
	movq	24(%r12), %r9
	movq	%r13, %rdx
	subq	%r13, %r9
	cmpq	%r13, %r9
	movq	%r9, 24(%r12)
	jae	.L4090
.L4080:
	movzbq	mode_size(%r14), %r14
	cmpq	$1, %r14
	ja	.L4092
.L4071:
	cmpq	$0, 24(%r12)
	je	.L3980
	jmp	.L4756
	.p2align 6,,7
.L4085:
	movq	(%r12), %rdi
	movl	-1780(%rbp), %esi
	movl	$1, %ecx
	movq	32(%r12), %rdx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L4651
.L4068:
	movq	%r15, %rdi
	call	copy_addr_to_reg
	movq	%rax, 8(%r12)
	jmp	.L4043
	.p2align 6,,7
.L4041:
	movl	$1, %ecx
	jmp	.L4040
.L4039:
	movl	$1, %esi
	jmp	.L4038
.L4034:
	cmpq	$2, %r14
	ja	.L4018
	jmp	.L4035
.L4013:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r12), %rdi
	movq	%rax, %r13
	call	protect_from_queue
	cmpq	8(%r12), %r13
	movq	%rax, %rbx
	je	.L4847
.L4015:
	movq	%r12, %rdi
	call	copy_rtx
	movq	%rax, %r12
	movq	%r13, 8(%rax)
	movq	%rbx, 16(%rax)
	jmp	.L4008
.L4847:
	cmpq	16(%r12), %rax
	jne	.L4015
	jmp	.L4008
	.p2align 6,,7
.L4842:
	cmpb	$51, 2(%r12)
	je	.L4006
	movq	8(%r12), %r13
	cmpw	$71, (%r13)
	je	.L4848
.L4006:
	cmpl	$66, %eax
	jne	.L4009
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%r12), %rax
	movq	%rax, %rbx
	je	.L4008
	movq	%r12, %rdi
	call	copy_rtx
	movq	%rax, %r12
	movq	%rbx, 8(%rax)
	jmp	.L4008
.L4848:
	movq	8(%r13), %rsi
	movq	%r12, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%r13)
	movq	%rax, %rbx
	je	.L4007
	movzbl	2(%r12), %edi
	call	gen_reg_rtx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, %r12
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L4008
.L4007:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L4650:
	movq	%rax, %r12
	jmp	.L4008
.L4005:
	cmpq	$0, 16(%r12)
	je	.L4849
	movq	24(%r12), %rax
	testq	%rax, %rax
	jne	.L4650
	movq	8(%r12), %rbx
	movzbl	2(%rbx), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %r12
	jmp	.L4008
	.p2align 6,,7
.L4849:
	movq	8(%r12), %rdi
	call	copy_to_reg
	jmp	.L4650
.L4000:
	movq	-1744(%rbp), %rcx
	xorl	%esi, %esi
	movq	8(%rcx), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	-1744(%rbp), %r11
	movq	%rax, %r13
	movq	16(%r11), %rdi
	call	protect_from_queue
	movq	-1744(%rbp), %rsi
	movq	%rax, %rbx
	cmpq	8(%rsi), %r13
	je	.L4850
.L4002:
	movq	-1744(%rbp), %rdi
	call	copy_rtx
	movq	%rax, -1768(%rbp)
	movq	%r13, 8(%rax)
	movq	-1768(%rbp), %rdx
	movq	%rbx, 16(%rdx)
	jmp	.L3995
.L4850:
	cmpq	16(%rsi), %rax
	jne	.L4002
	jmp	.L3995
	.p2align 6,,7
.L4841:
	jne	.L3996
	movq	8(%rsi), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, %rbx
	movq	-1744(%rbp), %rax
	cmpq	8(%rax), %rbx
	je	.L3995
	movq	%rax, %rdi
	call	copy_rtx
	movq	%rax, -1768(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L3995
	.p2align 6,,7
.L3992:
	movq	-1744(%rbp), %rdx
	cmpq	$0, 16(%rdx)
	je	.L4851
	movq	-1744(%rbp), %rsi
	movq	24(%rsi), %rdi
	testq	%rdi, %rdi
	movq	%rdi, -1768(%rbp)
	jne	.L3995
	movq	-1744(%rbp), %r14
	movq	8(%r14), %r9
	movzbl	2(%r9), %edi
	call	gen_reg_rtx
	movq	8(%r14), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r14), %r13
	movq	%r13, -1768(%rbp)
	jmp	.L3995
	.p2align 6,,7
.L4851:
	movq	8(%rdx), %rdi
	call	copy_to_reg
	movq	%rax, -1768(%rbp)
	jmp	.L3995
.L4840:
	movzbl	%al, %edx 
	movzbl	mode_size(%rdx), %r10d
	cmpl	8(%r12), %r10d
	jne	.L3990
	movq	const_tiny_rtx(,%rdx,8), %rsi
	movq	%rbx, %rdi
	call	emit_move_insn
	jmp	.L3980
	.p2align 6,,7
.L4839:
	movq	16(%rdx), %rax
	movl	$8, %r15d
	testq	%rax, %rax
	je	.L3987
	movl	32(%rax), %r15d
	jmp	.L3987
.L3984:
	movq	-1792(%rbp), %r12
	xorl	%esi, %esi
	movq	32(%r12), %rdi
	call	host_integerp
	testl	%eax, %eax
	je	.L3983
	movq	-1792(%rbp), %r13
	xorl	%esi, %esi
	movq	24(%r13), %rdi
	call	host_integerp
	testl	%eax, %eax
	je	.L3983
	movq	-1792(%rbp), %rax
	xorl	%esi, %esi
	movq	32(%rax), %rdi
	call	tree_low_cst
	xorl	%esi, %esi
	movq	-1792(%rbp), %rbx
	movq	%rax, %r14
	movq	24(%rbx), %rdi
	call	tree_low_cst
	subq	%rax, %r14
	leaq	1(%r14), %r9
	cmpq	%r15, %r9
	jmp	.L4649
	.p2align 6,,7
.L3963:
	cmpq	$64, %rax
	jmp	.L4648
.L3825:
	movl	$.LC0, %edi
	movl	$5009, %esi
	jmp	.L4654
	.p2align 6,,7
.L807:
	movq	-720(%rbp), %rbx
	movq	-720(%rbp), %r14
	cmpb	$9, %dl
	movq	24(%rbx), %rcx
	movq	%rcx, -1800(%rbp)
	movq	8(%r14), %r15
	movq	$0, -1816(%rbp)
	movq	$0, -1824(%rbp)
	movq	%r15, -784(%rbp)
	je	.L4852
.L808:
	movq	-1800(%rbp), %rsi
	movl	$0, -1804(%rbp)
	movq	104(%rsi), %rdi
	testq	%rdi, %rdi
	je	.L809
	cmpq	$0, 112(%rsi)
	jne	.L4853
.L809:
	movl	-1804(%rbp), %eax
	testl	%eax, %eax
	jne	.L4854
.L810:
	movl	-1884(%rbp), %eax
	testl	%eax, %eax
	jne	.L863
	movq	-1744(%rbp), %r12
	cmpw	$61, (%r12)
	je	.L4855
.L811:
	xorl	%r10d, %r10d
	movq	-704(%rbp), %rdx
	movq	$0, -1848(%rbp)
	cmpl	$0, -1804(%rbp)
	movq	$0, -1840(%rbp)
	sete	%r10b
	movl	%r10d, -1852(%rbp)
	movq	40(%rdx), %rdi
	testq	%rdi, %rdi
	movq	%rdi, -1832(%rbp)
	je	.L815
	movl	-1852(%rbp), %r14d
	testl	%r14d, %r14d
	jne	.L4445
.L861:
	movq	-1832(%rbp), %r15
	movq	24(%r15), %rax
	testq	%rax, %rax
	je	.L819
	cmpb	$113, 16(%rax)
	je	.L4856
.L819:
	movl	$1, %ebx
.L822:
	movq	-1832(%rbp), %rsi
	addq	%rbx, -1848(%rbp)
	movq	32(%rsi), %r13
	movzbl	16(%r13), %eax
	cmpb	$46, %al
	je	.L4857
	movzbl	%al, %eax
	cmpl	$28, %eax
	je	.L843
	cmpl	$28, %eax
	ja	.L860
	cmpl	$26, %eax
	je	.L842
	cmpl	$26, %eax
	ja	.L840
	cmpl	$25, %eax
	je	.L839
.L858:
	xorl	%r12d, %r12d
.L838:
	movl	%r12d, %edx
.L826:
	movq	-1840(%rbp), %r9
	movq	-1832(%rbp), %r12
	addq	%rbx, %r9
	testl	%edx, %edx
	cmove	-1840(%rbp), %r9
	movq	%r9, -1840(%rbp)
	movq	(%r12), %rax
	testq	%rax, %rax
	movq	%rax, -1832(%rbp)
	je	.L815
	movl	-1852(%rbp), %ebx
	testl	%ebx, %ebx
	je	.L861
.L4445:
	cmpq	$0, -712(%rbp)
	jle	.L864
	movl	-1884(%rbp), %r11d
	testl	%r11d, %r11d
	jne	.L865
	movq	-1744(%rbp), %rbx
	cmpw	$61, (%rbx)
	je	.L4858
	movq	-1744(%rbp), %r8
	movq	-712(%rbp), %rsi
	xorl	%edi, %edi
	movq	%r8, -1864(%rbp)
	call	gen_rtx_CONST_INT
	movq	%rax, -1872(%rbp)
	movq	-1744(%rbp), %rax
	cmpw	$66, (%rax)
	je	.L4859
	movq	-1744(%rbp), %rax
	movzbl	2(%rax), %edi
	call	get_mode_alignment
	movl	%eax, %r15d
.L869:
	movq	-1744(%rbp), %rbx
	movzbl	2(%rbx), %eax
	cmpb	$51, %al
	je	.L872
	movq	-1872(%rbp), %rsi
	cmpw	$54, (%rsi)
	je	.L4860
.L872:
	movq	-1744(%rbp), %rdx
	movzwl	(%rdx), %eax
	cmpl	$71, %eax
	je	.L874
	cmpl	$66, %eax
	je	.L4861
.L878:
	cmpl	$75, %eax
	je	.L882
	cmpl	$78, %eax
	je	.L882
.L877:
	movq	-1872(%rbp), %rdx
	movzwl	(%rdx), %eax
	cmpl	$71, %eax
	je	.L887
	cmpl	$66, %eax
	je	.L4862
.L891:
	cmpl	$75, %eax
	je	.L895
	cmpl	$78, %eax
	je	.L895
.L890:
	movq	-1872(%rbp), %rax
	cmpw	$54, (%rax)
	je	.L4863
.L900:
	shrl	$3, %r15d
	xorl	%edi, %edi
	mov	%r15d, %esi
	call	gen_rtx_CONST_INT
	movl	class_narrowest_mode+4(%rip), %ebx
	movq	%rax, -800(%rbp)
	testl	%ebx, %ebx
	je	.L4201
.L994:
	movslq	%ebx,%r12
	movl	clrstr_optab(,%r12,4), %edx
	cmpl	$1317, %edx
	je	.L981
	movq	-1872(%rbp), %rcx
	cmpw	$54, (%rcx)
	je	.L4864
.L985:
	testb	$2, target_flags+3(%rip)
	je	.L986
	cmpw	$63, mode_bitsize(%r12,%r12)
.L4533:
	jbe	.L981
.L984:
	movslq	%edx,%r14
	leaq	(%r14,%r14,4), %r15
	movq	insn_data+24(,%r15,8), %r13
	movq	(%r13), %rax
	testq	%rax, %rax
	je	.L988
	movq	-1864(%rbp), %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L981
.L988:
	movq	48(%r13), %rax
	testq	%rax, %rax
	je	.L989
	xorl	%esi, %esi
	movq	-800(%rbp), %rdi
	call	*%rax
	testl	%eax, %eax
	je	.L981
.L989:
	call	get_last_insn
	movl	$1, %edx
	movq	-1872(%rbp), %rsi
	movl	%ebx, %edi
	movq	%rax, -808(%rbp)
	call	convert_to_mode
	movq	%rax, %r15
	movq	24(%r13), %rax
	testq	%rax, %rax
	jne	.L4865
.L990:
	leaq	(%r14,%r14,4), %r13
	xorl	%eax, %eax
	movq	-1864(%rbp), %rdi
	movq	%r15, %rsi
	movq	-800(%rbp), %rdx
	call	*insn_data+16(,%r13,8)
	testq	%rax, %rax
	jne	.L4534
	movq	-808(%rbp), %rdi
	call	delete_insns_since
.L981:
	movzbl	mode_wider_mode(%r12), %ebx
	testl	%ebx, %ebx
	jne	.L994
.L4201:
	testb	$2, target_flags+3(%rip)
	movq	-1864(%rbp), %rax
	setne	%bl
	movq	8(%rax), %rsi
	movzbl	%bl, %edi
	addl	$4, %edi
	call	copy_to_mode_reg
	movq	-1872(%rbp), %rsi
	movq	sizetype_tab(%rip), %r9
	movq	%rax, %r13
	movzbl	61(%r9), %edx
	shrb	$1, %dl
	movzbl	%dl, %edi
	call	copy_to_mode_reg
	cmpq	$0, fn.0(%rip)
	movq	%rax, %r14
	je	.L4866
.L999:
	movq	global_trees+216(%rip), %rdi
	call	build_pointer_type
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	const_int_rtx+512(%rip), %rsi
	movq	integer_types+40(%rip), %rdi
	movq	%rax, %r15
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	%r14, %rsi
	movq	%rax, (%r15)
	movq	%rax, %r12
	movq	sizetype_tab(%rip), %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	fn.0(%rip), %r11
	movq	%rax, (%r12)
	movq	(%r15), %rdx
	movq	8(%r11), %rdi
	movq	(%rdx), %r14
	movq	$0, (%r14)
	call	build_pointer_type
	movq	fn.0(%rip), %rdx
	movl	$121, %edi
	movq	%rax, %rsi
	call	build1
	xorl	%r8d, %r8d
	movq	%r15, %rcx
	movq	fn.0(%rip), %rsi
	movq	%rax, %rdx
	movl	$53, %edi
	xorl	%eax, %eax
	movq	8(%rsi), %r10
	movq	8(%r10), %rsi
	call	build
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	orb	$1, 17(%rax)
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	expand_expr
	testb	$4, 3(%r13)
	jne	.L4867
.L865:
	movl	$1, -1884(%rbp)
.L1001:
	movq	-704(%rbp), %rbx
	movq	40(%rbx), %r9
	movl	$0, -1888(%rbp)
	testq	%r9, %r9
	movq	%r9, -1896(%rbp)
	je	.L426
	.p2align 4,,7
.L3823:
	movl	-1884(%rbp), %eax
	movq	-1896(%rbp), %rcx
	testl	%eax, %eax
	movq	32(%rcx), %r15
	movq	24(%rcx), %r12
	je	.L1007
	movzbl	16(%r15), %eax
	cmpl	$28, %eax
	je	.L1018
	cmpl	$28, %eax
	ja	.L1035
	cmpl	$26, %eax
	je	.L1017
	cmpl	$26, %eax
	ja	.L1015
	cmpl	$25, %eax
	je	.L1014
.L1033:
	xorl	%ebx, %ebx
.L1013:
	testl	%ebx, %ebx
	jne	.L1005
.L1007:
	movq	-784(%rbp), %rcx
	movzbl	61(%rcx), %r10d
	movzbl	17(%rcx), %esi
	shrb	$1, %r10b
	shrb	$5, %sil
	movzbl	%r10b, %edi
	andl	$1, %esi
	cmpl	$51, %edi
	movl	%esi, -692(%rbp)
	movl	%edi, -812(%rbp)
	je	.L4868
	movslq	-812(%rbp),%r14
	movzwq	mode_bitsize(%r14,%r14), %rax
.L4538:
	movq	%rax, -1904(%rbp)
.L1039:
	testq	%r12, %r12
	je	.L2894
	cmpb	$113, 16(%r12)
	je	.L4869
	xorl	%esi, %esi
	movq	%r12, %rdi
	call	host_integerp
	testl	%eax, %eax
	je	.L2893
.L2894:
	movq	-784(%rbp), %rsi
	movq	32(%rsi), %rdi
	movl	$1, %esi
	call	host_integerp
	testl	%eax, %eax
	jne	.L2892
.L2893:
	testq	%r12, %r12
	je	.L4870
.L2895:
	cmpq	$0, -1824(%rbp)
	jne	.L4871
.L2896:
	movq	-784(%rbp), %r11
	movq	sizetype_tab+8(%rip), %rdi
	movq	40(%r11), %rsi
	call	convert
	movq	%r12, %rsi
	movl	$61, %edi
	movq	%rax, %rdx
	call	size_binop
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %r12
	movq	%rax, %rdi
	call	expand_expr
	movq	%r12, %rdi
	xorl	%r12d, %r12d
	movq	%rax, %r14
	call	highest_pow2_factor
	movq	-1744(%rbp), %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	call	offset_address
	movl	$1, %r8d
	movl	$1, %ecx
	movl	-812(%rbp), %esi
	xorl	%edx, %edx
	movq	%rax, %rdi
	call	adjust_address_1
	movl	$0, -2428(%rbp)
	movq	%rax, %r13
	movzbl	16(%r15), %eax
	cmpb	$47, %al
	je	.L4872
	cmpb	$51, %al
	je	.L4873
.L2907:
	movzwl	(%r13), %eax
	subl	$66, %eax
	cmpl	$12, %eax
	ja	.L2955
	mov	%eax, %edx
	jmp	*.L2956(,%rdx,8)
	.section	.rodata
	.align 8
	.align 4
.L2956:
	.quad	.L2949
	.quad	.L2955
	.quad	.L2955
	.quad	.L2955
	.quad	.L2955
	.quad	.L2954
	.quad	.L2955
	.quad	.L2955
	.quad	.L2955
	.quad	.L2952
	.quad	.L2952
	.quad	.L2955
	.quad	.L2952
	.text
.L2949:
	movq	8(%r13), %rdi
	call	queued_subexp_p
	movl	%eax, %ebx
.L2948:
	testl	%ebx, %ebx
	je	.L2945
	movzbl	2(%r13), %eax
	cmpb	$51, %al
	je	.L2957
	testb	%al, %al
	jne	.L4874
.L2957:
	movzbl	2(%r13), %edx
	movq	%r15, %rdi
	xorl	%esi, %esi
.L4609:
	xorl	%ecx, %ecx
	call	expand_expr
	testb	$8, 3(%r13)
	movq	%rax, -2640(%rbp)
	jne	.L4476
	xorl	%eax, %eax
	testl	%eax, %eax
	je	.L4471
	movl	$1, -2428(%rbp)
.L4471:
	movq	-2640(%rbp), %rsi
	movzwl	(%rsi), %edx
.L2906:
	leal	-67(%rdx), %ebx
	cmpw	$1, %bx
	jbe	.L2984
	cmpw	$54, %dx
	je	.L2984
	cmpw	$55, %dx
	je	.L2984
	cmpw	$58, %dx
	je	.L2984
	cmpw	$134, %dx
	je	.L2984
	cmpw	$56, %dx
	je	.L2984
	cmpw	$140, %dx
	je	.L2984
.L2983:
	movq	-2640(%rbp), %rdi
	movq	%r13, %rsi
	call	rtx_equal_p
	testl	%eax, %eax
	je	.L2986
	cmpq	%r13, -2640(%rbp)
	je	.L2985
	movq	-2640(%rbp), %rdi
	call	side_effects_p
	testl	%eax, %eax
	je	.L4875
.L2986:
	movzbl	16(%r15), %eax
	testb	%al, %al
	je	.L2985
	testl	%r12d, %r12d
	jne	.L2985
	movzbl	%al, %r12d 
	cmpb	$100, tree_code_type(%r12)
	je	.L4876
.L2987:
	movzwl	(%r13), %eax
	cmpl	$71, %eax
	je	.L2992
	cmpl	$66, %eax
	je	.L4877
.L2996:
	cmpl	$75, %eax
	je	.L3000
	cmpl	$78, %eax
	je	.L3000
.L2995:
	movq	-2640(%rbp), %rcx
	movzbl	2(%rcx), %eax
	movzbl	2(%r13), %ecx
	cmpb	%cl, %al
	je	.L3005
	testb	%al, %al
	je	.L3005
	movq	8(%r15), %r14
	movl	-2428(%rbp), %eax
	movzbl	17(%r14), %r15d
	shrb	$5, %r15b
	movl	%r15d, %edx
	andl	$1, %edx
	testl	%eax, %eax
	je	.L3006
	movq	-2640(%rbp), %rsi
	movzbl	%cl, %edi
	call	convert_to_mode
	movq	%r13, %rdi
	movq	%rax, %rsi
	movq	%rax, -2640(%rbp)
.L4642:
	call	emit_move_insn
.L2985:
	xorl	%r12d, %r12d
	testl	%r12d, %r12d
	je	.L1005
	movl	-2428(%rbp), %eax
	testl	%eax, %eax
	je	.L3798
	movq	-2640(%rbp), %r15
	cmpw	$66, (%r15)
	je	.L3798
	.p2align 4,,7
.L1005:
	movq	-1896(%rbp), %rsi
	movq	(%rsi), %rbx
	incl	-1888(%rbp)
	testq	%rbx, %rbx
	movq	%rbx, -1896(%rbp)
	jne	.L3823
	jmp	.L426
.L3798:
	cmpb	$51, 2(%r13)
	je	.L1005
	cmpw	$61, (%r13)
	je	.L4878
.L3801:
	movq	%r13, %rdi
	call	copy_to_reg
	jmp	.L1005
.L4878:
	cmpl	$52, 8(%r13)
	jbe	.L1005
	jmp	.L3801
.L3006:
	movq	-2640(%rbp), %rsi
	movq	%r13, %rdi
	call	convert_move
	jmp	.L2985
.L3005:
	cmpb	$51, %al
	je	.L4879
.L3009:
	cmpw	$39, (%r13)
	je	.L4880
	cmpb	$51, %al
	je	.L4881
	movq	%r13, %rdi
	movq	-2640(%rbp), %rsi
	jmp	.L4642
.L4881:
	movq	-2640(%rbp), %rdi
	movq	%r13, -2600(%rbp)
	movq	%rdi, -2608(%rbp)
	movq	%r15, %rdi
	call	expr_size
	movl	$8, %edx
	movq	16(%r13), %rcx
	movq	%rax, %r14
	testq	%rcx, %rcx
	je	.L3600
	movl	32(%rcx), %edx
.L3600:
	movq	-2640(%rbp), %r15
	movq	16(%r15), %rax
	testq	%rax, %rax
	je	.L3601
	cmpl	32(%rax), %edx
	jb	.L3602
.L3597:
	testq	%rax, %rax
	movl	$8, -2588(%rbp)
	je	.L3598
	movl	32(%rax), %eax
	movl	%eax, -2588(%rbp)
.L3598:
	cmpb	$51, 2(%r13)
	jne	.L4766
	movq	-2640(%rbp), %rsi
	cmpb	$51, 2(%rsi)
	jne	.L4765
	movzwl	(%r13), %eax
	cmpl	$71, %eax
	je	.L3609
	cmpl	$66, %eax
	je	.L4882
.L3613:
	cmpl	$75, %eax
	je	.L3617
	cmpl	$78, %eax
	je	.L3617
.L3612:
	movq	-2640(%rbp), %rbx
	movzwl	(%rbx), %eax
	cmpl	$71, %eax
	je	.L3622
	cmpl	$66, %eax
	je	.L4883
.L3626:
	cmpl	$75, %eax
	je	.L3630
	cmpl	$78, %eax
	je	.L3630
.L3625:
	movzwl	(%r14), %eax
	cmpl	$71, %eax
	je	.L3635
	cmpl	$66, %eax
	je	.L4884
.L3639:
	cmpl	$75, %eax
	je	.L3643
	cmpl	$78, %eax
	je	.L3643
.L3638:
	movq	-2600(%rbp), %rbx
	cmpw	$66, (%rbx)
	jne	.L4764
	movq	-2608(%rbp), %r9
	cmpw	$66, (%r9)
	jne	.L4763
	testq	%r14, %r14
	je	.L4762
	cmpw	$54, (%r14)
	je	.L4885
.L3651:
	shrl	$3, -2588(%rbp)
	xorl	%edi, %edi
	mov	-2588(%rbp), %esi
	call	gen_rtx_CONST_INT
	movl	class_narrowest_mode+4(%rip), %ebx
	movl	$1, volatile_ok(%rip)
	movq	%rax, -1480(%rbp)
	testl	%ebx, %ebx
	je	.L4415
.L3784:
	movslq	%ebx,%r15
	movl	movstr_optab(,%r15,4), %edx
	cmpl	$1317, %edx
	je	.L3770
	cmpw	$54, (%r14)
	je	.L4886
.L3774:
	testb	$2, target_flags+3(%rip)
	je	.L3775
	cmpw	$63, mode_bitsize(%r15,%r15)
.L4640:
	jbe	.L3770
.L3773:
	movslq	%edx,%r9
	leaq	(%r9,%r9,4), %rcx
	movq	%r9, -1488(%rbp)
	movq	insn_data+24(,%rcx,8), %rsi
	movq	(%rsi), %rax
	movq	%rsi, -1496(%rbp)
	testq	%rax, %rax
	je	.L3777
	movq	-2600(%rbp), %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L3770
.L3777:
	movq	-1496(%rbp), %rdi
	movq	24(%rdi), %rax
	testq	%rax, %rax
	jne	.L4887
.L3778:
	movq	-1496(%rbp), %r10
	movq	72(%r10), %rax
	testq	%rax, %rax
	je	.L3779
	xorl	%esi, %esi
	movq	-1480(%rbp), %rdi
	call	*%rax
	testl	%eax, %eax
	je	.L3770
.L3779:
	call	get_last_insn
	movl	$1, %edx
	movq	%r14, %rsi
	movl	%ebx, %edi
	movq	%rax, -1504(%rbp)
	call	convert_to_mode
	movq	-1496(%rbp), %r11
	movq	%rax, %r12
	movq	48(%r11), %rax
	testq	%rax, %rax
	jne	.L4888
.L3780:
	movq	-1488(%rbp), %r8
	movq	-2600(%rbp), %rdi
	xorl	%eax, %eax
	movq	-2608(%rbp), %rsi
	movq	%r12, %rdx
	movq	-1480(%rbp), %rcx
	leaq	(%r8,%r8,4), %rbx
	call	*insn_data+16(,%rbx,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L4504
	movq	-1504(%rbp), %rdi
	call	delete_insns_since
.L3770:
	movzbl	mode_wider_mode(%r15), %ebx
	testl	%ebx, %ebx
	jne	.L3784
.L4415:
	testb	$2, target_flags+3(%rip)
	movq	-2600(%rbp), %r15
	movl	$0, volatile_ok(%rip)
	setne	%cl
	movq	8(%r15), %rsi
	movzbl	%cl, %edi
	addl	$4, %edi
	call	copy_to_mode_reg
	testb	$2, target_flags+3(%rip)
	setne	%sil
	movq	%rax, %r15
	movq	-2608(%rbp), %rax
	movzbl	%sil, %edi
	movq	8(%rax), %rsi
	addl	$4, %edi
	call	copy_to_mode_reg
	movq	%r14, %rsi
	movq	sizetype_tab(%rip), %rdx
	movq	%rax, %rbx
	movzbl	61(%rdx), %r12d
	shrb	$1, %r12b
	movzbl	%r12b, %edi
	call	copy_to_mode_reg
	cmpq	$0, fn.1(%rip)
	movq	%rax, %r14
	je	.L4889
.L3793:
	movq	global_trees+216(%rip), %rdi
	call	build_pointer_type
	movq	%r15, %rsi
	movq	%rax, %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	global_trees+216(%rip), %rdi
	movq	%rax, %r12
	call	build_pointer_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	%r14, %rsi
	movq	%rax, (%r12)
	movq	%rax, %rbx
	movq	sizetype_tab(%rip), %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	fn.1(%rip), %r8
	movq	%rax, (%rbx)
	movq	(%r12), %rsi
	movq	8(%r8), %rdi
	movq	(%rsi), %rdx
	movq	$0, (%rdx)
	call	build_pointer_type
	movq	fn.1(%rip), %rdx
	movl	$121, %edi
	movq	%rax, %rsi
	call	build1
	xorl	%r8d, %r8d
	movq	%r12, %rcx
	movq	fn.1(%rip), %rbx
	movq	%rax, %rdx
	movl	$53, %edi
	xorl	%eax, %eax
	movq	8(%rbx), %r14
	movq	8(%r14), %rsi
	call	build
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	orb	$1, 17(%rax)
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	expand_expr
	testb	$4, 3(%r15)
	je	.L2985
	movl	$49, %edi
	xorl	%esi, %esi
	movq	%r15, %rdx
.L4641:
	call	gen_rtx_fmt_e
	movq	%rax, %rdi
	call	emit_insn
	jmp	.L2985
.L4889:
	movl	$.LC11, %edi
	call	get_identifier
	movq	global_trees+216(%rip), %rdi
	movq	%rax, fn.1(%rip)
	call	build_pointer_type
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	build_function_type
	movq	fn.1(%rip), %rsi
	movl	$30, %edi
	movq	%rax, %rdx
	call	build_decl
	movl	$1, %esi
	movl	$fn.1, %edi
	movq	%rax, fn.1(%rip)
	call	ggc_add_tree_root
	movq	fn.1(%rip), %r11
	xorl	%esi, %esi
	orb	$1, 49(%r11)
	movq	fn.1(%rip), %r10
	orb	$8, 18(%r10)
	movq	fn.1(%rip), %rdi
	orb	$64, 50(%rdi)
	movq	fn.1(%rip), %r9
	orb	$2, 18(%r9)
	movq	fn.1(%rip), %rdi
	call	make_decl_rtl
	movq	fn.1(%rip), %rdi
	call	assemble_external
	jmp	.L3793
.L4504:
	call	emit_insn
	movl	$0, volatile_ok(%rip)
	jmp	.L2985
	.p2align 6,,7
.L4888:
	movq	%r12, %rdi
	movl	%ebx, %esi
	call	*%rax
	testl	%eax, %eax
	jne	.L3780
	movq	%r12, %rsi
	movl	%ebx, %edi
	call	copy_to_mode_reg
	movq	%rax, %r12
	jmp	.L3780
.L4887:
	movq	-2608(%rbp), %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L3770
	jmp	.L3778
.L3775:
	cmpw	$31, mode_bitsize(%r15,%r15)
	jmp	.L4640
.L4886:
	movq	mode_mask_array(,%r15,8), %r12
	shrq	$1, %r12
	cmpq	%r12, 8(%r14)
	jbe	.L3773
	jmp	.L3774
.L4885:
	movq	8(%r14), %r12
	xorl	%r15d, %r15d
	movl	$17, %esi
.L3664:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L4404
.L3661:
	movslq	%ecx,%r8
	movzbq	mode_size(%r8), %r10
	cmpq	%rsi, %r10
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r8), %ecx
	testl	%ecx, %ecx
	jne	.L3661
.L4404:
	testl	%edi, %edi
	je	.L3654
	movslq	%edi,%rbx
	movq	%rbx, %r11
	salq	$4, %r11
	addq	optab_table+240(%rip), %r11
	cmpl	$1317, 8(%r11)
	je	.L3663
	call	get_mode_alignment
	movl	$128, %edi
	cmpl	%eax, %edi
	jb	.L3663
	movzbq	mode_size(%rbx), %rsi
	movq	%r12, %rax
	xorl	%edx, %edx
	divq	%rsi
	addq	%rax, %r15
	movq	%rdx, %r12
.L3663:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L3664
.L3654:
	testq	%r12, %r12
	jne	.L4757
	movl	optimize_size(%rip), %eax
	testl	%eax, %eax
	jne	.L3667
	movq	ix86_cost(%rip), %rbx
	mov	40(%rbx), %edx
	cmpq	%rdx, %r15
	jae	.L3651
.L3668:
	movq	-2608(%rbp), %rsi
	movq	-2600(%rbp), %rdi
	movq	8(%r14), %r12
	movq	-2600(%rbp), %r11
	testb	$2, target_flags+3(%rip)
	movq	8(%rsi), %r8
	setne	%r14b
	movq	$0, -488(%rbp)
	movl	$0, -2620(%rbp)
	movq	%r8, -512(%rbp)
	movq	8(%rdi), %r10
	movq	%r11, -544(%rbp)
	movzbl	%r14b, %ecx
	leal	5(,%rcx,4), %r14d
	xorl	%ecx, %ecx
	movzwl	(%r10), %edx
	movq	%r10, -2616(%rbp)
	leal	-96(%rdx), %r15d
	cmpw	$1, %r15w
	jbe	.L3673
	cmpw	$99, %dx
	je	.L3673
	cmpw	$98, %dx
	je	.L3673
.L3672:
	movq	-2616(%rbp), %rbx
	movl	%ecx, -528(%rbp)
	xorl	%edx, %edx
	movzwl	(%rbx), %eax
	cmpw	$96, %ax
	je	.L3675
	cmpw	$98, %ax
	je	.L3675
.L3674:
	movl	%edx, -480(%rbp)
	movq	-2608(%rbp), %rax
	xorl	%ecx, %ecx
	movq	-2616(%rbp), %rdx
	movq	%rax, -520(%rbp)
	movq	%rdx, -536(%rbp)
	movzwl	(%r8), %edx
	leal	-96(%rdx), %r15d
	cmpw	$1, %r15w
	jbe	.L3678
	cmpw	$99, %dx
	je	.L3678
	cmpw	$98, %dx
	je	.L3678
.L3677:
	movl	-480(%rbp), %r9d
	movl	%ecx, -504(%rbp)
	movl	$0, -500(%rbp)
	movl	$0, -524(%rbp)
	testl	%r9d, %r9d
	je	.L3679
	movq	%r12, -488(%rbp)
.L3679:
	movl	-504(%rbp), %r10d
	movq	%r12, -496(%rbp)
	testl	%r10d, %r10d
	je	.L3681
	movl	-528(%rbp), %r11d
	testl	%r11d, %r11d
	jne	.L3680
.L3681:
	xorl	%r15d, %r15d
	movl	$17, %esi
.L3694:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L4407
.L3691:
	movslq	%ecx,%rbx
	movzbq	mode_size(%rbx), %rdx
	cmpq	%rsi, %rdx
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%rbx), %ecx
	testl	%ecx, %ecx
	jne	.L3691
.L4407:
	testl	%edi, %edi
	je	.L3684
	movslq	%edi,%rbx
	movq	%rbx, %rcx
	salq	$4, %rcx
	addq	optab_table+240(%rip), %rcx
	cmpl	$1317, 8(%rcx)
	je	.L3693
	movq	%r8, -2648(%rbp)
	call	get_mode_alignment
	movl	$128, %r8d
	cmpl	%eax, %r8d
	movq	-2648(%rbp), %r8
	jb	.L3693
	movzbq	mode_size(%rbx), %rsi
	movq	%r12, %rax
	xorl	%edx, %edx
	divq	%rsi
	addq	%rax, %r15
	movq	%rdx, %r12
.L3693:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L3694
.L3684:
	testq	%r12, %r12
	jne	.L4757
	cmpq	$2, %r15
	jbe	.L3680
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L4409
.L3702:
	movslq	%ecx,%r15
	movzbl	mode_size(%r15), %r9d
	cmpl	%r14d, %r9d
	cmovae	-2620(%rbp), %ecx
	movl	%ecx, -2620(%rbp)
	movzbl	mode_wider_mode(%r15), %ecx
	testl	%ecx, %ecx
	jne	.L3702
.L4409:
	movl	-504(%rbp), %eax
	testl	%eax, %eax
	jne	.L3708
	movzwl	(%r8), %edx
	leal	-67(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L3706
	cmpw	$54, %dx
	je	.L3706
	cmpw	$55, %dx
	je	.L3706
	cmpw	$58, %dx
	je	.L3706
	cmpw	$134, %dx
	je	.L3706
	cmpw	$56, %dx
	je	.L3706
	cmpw	$140, %dx
	je	.L3706
.L3708:
	movl	-528(%rbp), %eax
	testl	%eax, %eax
	jne	.L3680
	movq	-2616(%rbp), %rbx
	movzwl	(%rbx), %edx
	leal	-67(%rdx), %r11d
	cmpw	$1, %r11w
	jbe	.L3710
	cmpw	$54, %dx
	je	.L3710
	cmpw	$55, %dx
	je	.L3710
	cmpw	$58, %dx
	je	.L3710
	cmpw	$134, %dx
	je	.L3710
	cmpw	$56, %dx
	je	.L3710
	cmpw	$140, %dx
	je	.L3710
.L3680:
	cmpl	$1, %r14d
	jbe	.L3713
.L3764:
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L4412
.L3720:
	movslq	%ecx,%r8
	movzbl	mode_size(%r8), %edx
	cmpl	%r14d, %edx
	cmovae	-2620(%rbp), %ecx
	movl	%ecx, -2620(%rbp)
	movzbl	mode_wider_mode(%r8), %ecx
	testl	%ecx, %ecx
	jne	.L3720
.L4412:
	movl	-2620(%rbp), %eax
	testl	%eax, %eax
	je	.L3713
	movslq	-2620(%rbp),%r15
	movq	%r15, %r14
	salq	$4, %r14
	addq	optab_table+240(%rip), %r14
	movl	8(%r14), %ebx
	cmpl	$1317, %ebx
	je	.L3722
	movl	-2620(%rbp), %edi
	call	get_mode_alignment
	movl	$128, %ecx
	cmpl	%eax, %ecx
	jb	.L3722
	movzbq	mode_size(%r15), %rdx
	movslq	%ebx,%rsi
	movq	$0, -2632(%rbp)
	leaq	(%rsi,%rsi,4), %rdi
	cmpq	%rdx, -496(%rbp)
	movq	insn_data+16(,%rdi,8), %r12
	movq	%rdx, -1672(%rbp)
	movq	%r12, -1472(%rbp)
	leaq	-544(%rbp), %r12
	jb	.L3722
	movl	-480(%rbp), %ecx
.L3762:
	testl	%ecx, %ecx
	je	.L3726
	subq	%rdx, 56(%r12)
.L3726:
	movq	(%r12), %rdi
	testq	%rdi, %rdi
	je	.L3727
	movl	16(%r12), %eax
	testl	%eax, %eax
	je	.L3728
	movl	-2620(%rbp), %esi
	movq	8(%r12), %rdx
	movl	$1, %r8d
	movq	56(%r12), %rcx
	call	adjust_automodify_address_1
.L4636:
	movq	%rax, -2632(%rbp)
.L3727:
	movl	40(%r12), %eax
	testl	%eax, %eax
	je	.L3730
	movq	24(%r12), %rdi
	movl	-2620(%rbp), %esi
	movl	$1, %r8d
	movq	32(%r12), %rdx
	movq	56(%r12), %rcx
	call	adjust_automodify_address_1
.L4637:
	cmpq	$0, (%r12)
	movq	%rax, %r14
	jne	.L4890
	movl	target_flags(%rip), %esi
	testl	$33554432, %esi
	je	.L3736
	movzbl	mode_size(%r15), %r9d
	leal	7(%r9), %edx
	andl	$-8, %edx
.L3737:
	movq	cfun(%rip), %rbx
	andl	$33554432, %esi
	movq	16(%rbx), %r11
	leaq	8(%r11), %rdi
	movl	8(%r11), %ecx
	je	.L3738
	movzbl	mode_size(%r15), %eax
	addl	$7, %eax
	andl	$-8, %eax
.L4638:
	movq	%r15, %r8
	leal	(%rax,%rcx), %esi
	salq	$4, %r8
	movl	%esi, (%rdi)
	addq	optab_table+384(%rip), %r8
	movl	8(%r8), %eax
	cmpl	$1317, %eax
	je	.L3740
	movslq	%eax,%rbx
	leaq	(%rbx,%rbx,4), %rcx
	movq	insn_data+24(,%rcx,8), %rdx
	movq	(%rdx), %rax
	testq	%rax, %rax
	je	.L3741
	movq	%r14, %rdi
	movl	-2620(%rbp), %esi
	call	*%rax
	testl	%eax, %eax
	je	.L4891
.L3741:
	leaq	(%rbx,%rbx,4), %r9
	movq	%r14, %rdi
	xorl	%eax, %eax
	call	*insn_data+16(,%r9,8)
.L4639:
	movq	%rax, %rdi
	call	emit_insn
.L3760:
	movl	64(%r12), %eax
	testl	%eax, %eax
	movl	%eax, %ecx
	jne	.L3761
	movq	-1672(%rbp), %r14
	addq	%r14, 56(%r12)
.L3761:
	movq	48(%r12), %rbx
	movq	-1672(%rbp), %rdx
	subq	-1672(%rbp), %rbx
	cmpq	%rdx, %rbx
	movq	%rbx, 48(%r12)
	jae	.L3762
.L3722:
	movzbl	mode_size(%r15), %r14d
	cmpl	$1, %r14d
	ja	.L3764
.L3713:
	cmpq	$0, -496(%rbp)
.L4767:
	je	.L2985
.L4742:
	movl	$.LC0, %edi
	movl	$1503, %esi
	movl	$.LC10, %edx
	jmp	.L4655
	.p2align 6,,7
.L4891:
	movl	-2620(%rbp), %edi
	movq	%r14, %rsi
	call	force_reg
	movq	%rax, %r14
	jmp	.L3741
.L3740:
	movzbl	mode_size(%r15), %edi
	cmpl	%edx, %edi
	je	.L4892
	mov	%edx, %esi
	xorl	%edi, %edi
	negq	%rsi
	call	gen_rtx_CONST_INT
	movq	global_rtl+16(%rip), %rdx
	movl	$75, %edi
	testb	$2, target_flags+3(%rip)
	movq	%rax, %rcx
	setne	%r11b
	movzbl	%r11b, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_ee
	movq	global_rtl+16(%rip), %rdx
	movl	$100, %edi
	testb	$2, target_flags+3(%rip)
	movq	%rax, %rcx
	setne	%r10b
	movzbl	%r10b, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_ee
.L3748:
	movl	-2620(%rbp), %edi
	movq	%rax, %rsi
	call	gen_rtx_MEM
	xorl	%r8d, %r8d
	testq	%r8, %r8
	movq	%rax, %rbx
	je	.L3757
	movq	%rax, %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	call	set_mem_attributes
	movl	flag_optimize_sibling_calls(%rip), %eax
	testl	%eax, %eax
	jne	.L4893
.L3757:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	call	emit_move_insn
	jmp	.L3760
.L4893:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	call	set_mem_alias_set
	jmp	.L3757
	.p2align 6,,7
.L4892:
	testb	$2, target_flags+3(%rip)
	movq	global_rtl+16(%rip), %rdx
	movl	$96, %edi
	setne	%al
	movzbl	%al, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_e
	jmp	.L3748
.L3738:
	movzbl	mode_size(%r15), %eax
	incl	%eax
	andl	$-2, %eax
	jmp	.L4638
.L3736:
	movzbl	mode_size(%r15), %r10d
	leal	1(%r10), %edx
	andl	$-2, %edx
	jmp	.L3737
.L4890:
	movq	%rax, %rsi
	movq	-2632(%rbp), %rdi
	xorl	%eax, %eax
	call	*-1472(%rbp)
	jmp	.L4639
.L3730:
	movq	24(%r12), %rdi
	movl	-2620(%rbp), %esi
	movl	$1, %ecx
	movq	56(%r12), %rdx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L4637
.L3728:
	movl	-2620(%rbp), %esi
	movq	56(%r12), %rdx
	movl	$1, %ecx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L4636
.L3710:
	movq	-2616(%rbp), %rdi
	call	copy_addr_to_reg
	movq	%rax, -536(%rbp)
	jmp	.L3680
.L3706:
	movq	%r8, %rdi
	call	copy_addr_to_reg
	movq	%rax, -512(%rbp)
	jmp	.L3708
	.p2align 6,,7
.L3678:
	movl	$1, %ecx
	jmp	.L3677
.L3675:
	movl	$1, %edx
	jmp	.L3674
.L3673:
	movl	$1, %ecx
	jmp	.L3672
.L3667:
	cmpq	$2, %r15
	ja	.L3651
	jmp	.L3668
.L4762:
	movl	$.LC0, %edi
	movl	$1648, %esi
.L4751:
	movl	$.LC9, %edx
	jmp	.L4655
.L4763:
	movl	$.LC0, %edi
	movl	$1646, %esi
	jmp	.L4751
.L4764:
	movl	$.LC0, %edi
	movl	$1644, %esi
	jmp	.L4751
	.p2align 6,,7
.L3643:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r14), %rdi
	movq	%rax, %r12
	call	protect_from_queue
	cmpq	8(%r14), %r12
	movq	%rax, %rbx
	je	.L4894
.L3645:
	movq	%r14, %rdi
	call	copy_rtx
	movq	%rax, %r14
	movq	%r12, 8(%rax)
	movq	%rbx, 16(%rax)
	jmp	.L3638
.L4894:
	cmpq	16(%r14), %rax
	jne	.L3645
	jmp	.L3638
	.p2align 6,,7
.L4884:
	cmpb	$51, 2(%r14)
	je	.L3636
	movq	8(%r14), %r12
	cmpw	$71, (%r12)
	je	.L4895
.L3636:
	cmpl	$66, %eax
	jne	.L3639
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%r14), %rax
	movq	%rax, %rbx
	je	.L3638
	movq	%r14, %rdi
	call	copy_rtx
	movq	%rax, %r14
	movq	%rbx, 8(%rax)
	jmp	.L3638
.L4895:
	movq	8(%r12), %rsi
	movq	%r14, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%r12)
	movq	%rax, %rbx
	je	.L3637
	movzbl	2(%r14), %edi
	call	gen_reg_rtx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L3638
.L3637:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L4635:
	movq	%rax, %r14
	jmp	.L3638
.L3635:
	cmpq	$0, 16(%r14)
	je	.L4896
	movq	24(%r14), %rax
	testq	%rax, %rax
	jne	.L4635
	movq	8(%r14), %rdx
	movzbl	2(%rdx), %edi
	call	gen_reg_rtx
	movq	8(%r14), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r14), %r14
	jmp	.L3638
	.p2align 6,,7
.L4896:
	movq	8(%r14), %rdi
	call	copy_to_reg
	jmp	.L4635
.L3630:
	movq	-2640(%rbp), %rax
	xorl	%esi, %esi
	movq	8(%rax), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	-2640(%rbp), %r10
	movq	%rax, %r12
	movq	16(%r10), %rdi
	call	protect_from_queue
	movq	-2640(%rbp), %rsi
	movq	%rax, %rbx
	cmpq	8(%rsi), %r12
	je	.L4897
.L3632:
	movq	-2640(%rbp), %rdi
	call	copy_rtx
	movq	%rax, -2608(%rbp)
	movq	%r12, 8(%rax)
	movq	-2608(%rbp), %rdi
	movq	%rbx, 16(%rdi)
	jmp	.L3625
.L4897:
	cmpq	16(%rsi), %rax
	jne	.L3632
	jmp	.L3625
	.p2align 6,,7
.L4883:
	cmpb	$51, 2(%rbx)
	je	.L3623
	movq	8(%rbx), %r12
	cmpw	$71, (%r12)
	je	.L4898
.L3623:
	cmpl	$66, %eax
	jne	.L3626
	movq	-2640(%rbp), %r12
	xorl	%esi, %esi
	movq	8(%r12), %rdi
	call	protect_from_queue
	movq	-2640(%rbp), %rdx
	movq	%rax, %rbx
	cmpq	8(%rdx), %rax
	je	.L3625
	movq	%rdx, %rdi
	call	copy_rtx
	movq	%rax, -2608(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L3625
.L4898:
	movq	8(%r12), %rsi
	movq	%rbx, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%r12)
	movq	%rax, %rbx
	je	.L3624
	movq	-2640(%rbp), %r8
	movzbl	2(%r8), %edi
	call	gen_reg_rtx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, -2608(%rbp)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L3625
.L3624:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L4634:
	movq	%rax, -2608(%rbp)
	jmp	.L3625
.L3622:
	movq	-2640(%rbp), %rdx
	cmpq	$0, 16(%rdx)
	je	.L4899
	movq	-2640(%rbp), %r11
	movq	24(%r11), %r15
	testq	%r15, %r15
	movq	%r15, -2608(%rbp)
	jne	.L3625
	movq	-2640(%rbp), %r12
	movq	8(%r12), %rsi
	movzbl	2(%rsi), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %rcx
	movq	%rcx, -2608(%rbp)
	jmp	.L3625
	.p2align 6,,7
.L4899:
	movq	8(%rdx), %rdi
	call	copy_to_reg
	jmp	.L4634
.L3617:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, %r12
	call	protect_from_queue
	cmpq	8(%r13), %r12
	movq	%rax, %rbx
	je	.L4900
.L3619:
	movq	%r13, %rdi
	call	copy_rtx
	movq	%rax, -2600(%rbp)
	movq	%r12, 8(%rax)
	movq	-2600(%rbp), %rcx
	movq	%rbx, 16(%rcx)
	jmp	.L3612
.L4900:
	cmpq	16(%r13), %rax
	jne	.L3619
	jmp	.L3612
	.p2align 6,,7
.L4882:
	jne	.L3613
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%r13), %rax
	movq	%rax, %rbx
	je	.L3612
	movq	%r13, %rdi
	call	copy_rtx
	movq	%rax, -2600(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L3612
	.p2align 6,,7
.L3609:
	testq	%rcx, %rcx
	je	.L4901
	movq	24(%r13), %rdx
	testq	%rdx, %rdx
	movq	%rdx, -2600(%rbp)
	jne	.L3612
	movq	8(%r13), %r9
	movzbl	2(%r9), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %rbx
	movq	%rbx, -2600(%rbp)
	jmp	.L3612
	.p2align 6,,7
.L4901:
	movq	8(%r13), %rdi
	call	copy_to_reg
	movq	%rax, -2600(%rbp)
	jmp	.L3612
.L4765:
	movl	$.LC0, %edi
	movl	$1637, %esi
	jmp	.L4751
.L4766:
	movl	$.LC0, %edi
	movl	$1634, %esi
	jmp	.L4751
	.p2align 6,,7
.L3602:
	testq	%rcx, %rcx
	movl	$8, -2588(%rbp)
	je	.L3598
	movl	32(%rcx), %r11d
	movl	%r11d, -2588(%rbp)
	jmp	.L3598
.L3601:
	cmpl	$7, %edx
	ja	.L3597
	jmp	.L3602
.L4880:
	movq	8(%r15), %rdi
	call	int_size_in_bytes
	cmpw	$39, (%r13)
	movl	%eax, -1436(%rbp)
	jne	.L4761
	movq	8(%r13), %rcx
	movq	8(%rcx), %r15
	movl	(%rcx), %r14d
	cmpq	$0, 8(%r15)
	movslq	%r14d,%rbx
	sete	%r8b
	leaq	15(,%rbx,8), %r9
	andq	$-16, %r9
	subq	%r9, %rsp
	leaq	48(%rsp), %r11
	movzbl	%r8b, %r12d
	movq	%r11, -1448(%rbp)
	movl	%r12d, -2584(%rbp)
	movl	-2584(%rbp), %eax
	cmpl	%r14d, %eax
	movl	%eax, -2576(%rbp)
	jge	.L4398
.L3581:
	movslq	-2576(%rbp),%r11
	movq	8(%rcx,%r11,8), %r10
	movq	%r11, -1456(%rbp)
	movl	-1436(%rbp), %ecx
	movq	8(%r10), %rsi
	movq	16(%r10), %rdx
	testl	%ecx, %ecx
	movzbl	2(%rsi), %r14d
	movq	8(%rdx), %r15
	movslq	%r14d,%rdi
	movzbl	mode_size(%rdi), %ebx
	movq	%rdi, -1464(%rbp)
	movl	%ebx, -2580(%rbp)
	js	.L3554
	movslq	-1436(%rbp),%r9
	mov	%ebx, %r12d
	leaq	(%r12,%r15), %rbx
	cmpq	%r9, %rbx
	jle	.L3554
	movl	-1436(%rbp), %eax
	subl	%r15d, %eax
	movl	%eax, -2580(%rbp)
	je	.L4760
.L3554:
	movq	-2640(%rbp), %r12
	movzwl	(%r12), %edx
	cmpw	$66, %dx
	je	.L4511
	leal	-67(%rdx), %r8d
	cmpw	$1, %r8w
	jbe	.L3558
	cmpw	$54, %dx
	je	.L3558
	cmpw	$55, %dx
	je	.L3558
	cmpw	$58, %dx
	je	.L3558
	cmpw	$134, %dx
	je	.L3558
	cmpw	$56, %dx
	je	.L3558
	cmpw	$140, %dx
	je	.L3558
.L3557:
	movq	-2640(%rbp), %rcx
	movl	%r14d, %edi
	movzbl	2(%rcx), %eax
	testb	%al, %al
	je	.L4632
	movzbl	%al, %edi
.L4632:
	call	gen_reg_rtx
	movq	-2640(%rbp), %rsi
	movq	%rax, %r12
	movq	%rax, %rdi
	call	emit_move_insn
	movzwl	(%r12), %edx
.L3556:
	cmpw	$66, %dx
	je	.L4511
.L3561:
	cmpw	$65, %dx
	je	.L4902
	leal	-67(%rdx), %esi
	cmpw	$1, %si
	jbe	.L3578
	cmpw	$54, %dx
	je	.L3578
	cmpw	$55, %dx
	je	.L3578
	cmpw	$58, %dx
	je	.L3578
	cmpw	$134, %dx
	je	.L3578
	cmpw	$56, %dx
	je	.L3578
	cmpw	$140, %dx
	je	.L3578
	cmpw	$61, %dx
	je	.L4903
.L3577:
	movslq	-1436(%rbp),%r9
	movl	-2580(%rbp), %r8d
	leaq	0(,%r15,8), %rdx
	movq	%r12, %rdi
	movl	$1, %ecx
	movl	%r14d, (%rsp)
	sall	$3, %r8d
	mov	%r8d, %esi
	movq	%r9, 8(%rsp)
	xorl	%r8d, %r8d
	movl	%r14d, %r9d
	call	extract_bit_field
.L4633:
	movq	-1456(%rbp), %r12
	movq	-1448(%rbp), %rdi
	movq	%rax, (%rdi,%r12,8)
.L3552:
	incl	-2576(%rbp)
	movq	8(%r13), %rcx
	movl	-2576(%rbp), %eax
	cmpl	(%rcx), %eax
	jl	.L3581
.L4398:
	movq	cfun(%rip), %r15
	movq	16(%r15), %r10
	movq	40(%r10), %rbx
	testq	%rbx, %rbx
	je	.L4400
.L3587:
	movq	32(%rbx), %rdi
	cmpw	$24, (%rdi)
	je	.L4904
	call	emit_insn
	movq	%rax, 16(%rbx)
.L3586:
	movq	cfun(%rip), %rdx
	movq	40(%rbx), %r11
	movq	16(%rdx), %r14
	testq	%r11, %r11
	movq	%r11, %rbx
	movq	%r11, 40(%r14)
	jne	.L3587
	movq	8(%r13), %rcx
.L4400:
	movl	-2584(%rbp), %ebx
	cmpl	(%rcx), %ebx
	jge	.L2985
.L3593:
	movslq	-2584(%rbp),%r10
	movq	-1448(%rbp), %r12
	salq	$3, %r10
	movq	8(%r10,%rcx), %rax
	movq	(%r12,%r10), %rsi
	movq	8(%rax), %rdi
	call	emit_move_insn
	incl	-2584(%rbp)
	movq	8(%r13), %r8
	movl	-2584(%rbp), %r9d
	cmpl	(%r8), %r9d
	movq	%r8, %rcx
	jl	.L3593
	jmp	.L2985
.L4904:
	movq	8(%rdi), %rsi
	movq	8(%rsi), %rcx
	movq	%rcx, 16(%rbx)
	call	emit_insn
	jmp	.L3586
.L4903:
	movzbl	2(%r12), %r11d
	cmpl	%r14d, %r11d
	jne	.L3577
.L3578:
	movq	-1456(%rbp), %rdx
	movq	-1448(%rbp), %r14
	movq	%r12, (%r14,%rdx,8)
	jmp	.L3552
.L4902:
	testq	%r15, %r15
	jne	.L4480
	movq	8(%r12), %rdx
	movzbq	2(%rdx), %r10
	movzbl	mode_size(%r10), %ebx
	cmpl	%ebx, -2580(%rbp)
	je	.L3567
.L3568:
	movzbq	2(%rdx), %rsi
	movzbq	mode_size(%rsi), %rcx
	cmpq	%rcx, %r15
	je	.L4905
.L3566:
	testq	%r15, %r15
	jne	.L3574
	movzbl	2(%r12), %edi
	xorl	%edx, %edx
	movslq	%edi,%rbx
	movzbq	mode_size(%rbx), %rsi
	call	assign_stack_temp
	movq	%r12, %rsi
	movq	%rax, %r15
	movq	%rax, %rdi
	call	emit_move_insn
	movl	$1, %r8d
	movl	$1, %ecx
	movq	%r15, %rdi
	movl	%r14d, %esi
	xorl	%edx, %edx
	call	adjust_address_1
	jmp	.L4633
.L3574:
	movl	$.LC0, %edi
	movl	$2028, %esi
.L4747:
	movl	$.LC12, %edx
	jmp	.L4655
	.p2align 6,,7
.L4905:
	movq	16(%r12), %r9
	movzbq	2(%r9), %rdx
	movzbl	mode_size(%rdx), %r11d
	cmpl	%r11d, -2580(%rbp)
	jne	.L3566
.L3567:
	xorl	%r8d, %r8d
	movq	-1456(%rbp), %rdi
	movq	-1448(%rbp), %rax
	testq	%r15, %r15
	setne	%r8b
	leaq	(%rax,%rdi,8), %rbx
	movq	8(%r12,%r8,8), %rcx
	movq	%rcx, (%rbx)
	movzwl	(%rcx), %edx
	leal	-67(%rdx), %r15d
	cmpw	$1, %r15w
	jbe	.L3552
	cmpw	$54, %dx
	je	.L3552
	cmpw	$55, %dx
	je	.L3552
	cmpw	$58, %dx
	je	.L3552
	cmpw	$134, %dx
	je	.L3552
	cmpw	$56, %dx
	je	.L3552
	cmpw	$140, %dx
	je	.L3552
	cmpw	$61, %dx
	je	.L4906
.L3572:
	movslq	-1436(%rbp),%r10
	movl	-2580(%rbp), %ecx
	movl	%r14d, (%rsp)
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movl	%r14d, %r9d
	sall	$3, %ecx
	movq	%r10, 8(%rsp)
	mov	%ecx, %esi
	movq	(%rbx), %rdi
	movl	$1, %ecx
	call	extract_bit_field
	movq	%rax, (%rbx)
	jmp	.L3552
.L4906:
	movzbl	2(%rcx), %r12d
	cmpl	%r14d, %r12d
	jne	.L3572
	jmp	.L3552
	.p2align 6,,7
.L4480:
	movq	8(%r12), %rdx
	jmp	.L3568
.L4511:
	movl	%r14d, %edi
	call	get_mode_alignment
	movq	16(%r12), %rdx
	testq	%rdx, %rdx
	je	.L3562
	cmpl	%eax, 32(%rdx)
	jae	.L3563
.L4479:
	movzwl	(%r12), %edx
	jmp	.L3561
.L3563:
	movl	%r14d, %edi
	leaq	0(,%r15,8), %rbx
	call	get_mode_alignment
	mov	%eax, %r11d
	movq	%rbx, %rax
	cqto
	idivq	%r11
	testq	%rdx, %rdx
	jne	.L4479
	movq	-1464(%rbp), %r9
	movzbl	mode_size(%r9), %edx
	cmpl	%edx, -2580(%rbp)
	jne	.L4479
	movl	%r14d, %edi
	call	gen_reg_rtx
	movl	$1, %ecx
	movq	%r15, %rdx
	movq	-1456(%rbp), %rdi
	movq	-1448(%rbp), %r8
	movl	%r14d, %esi
	leaq	(%r8,%rdi,8), %rbx
	movl	$1, %r8d
	movq	%r12, %rdi
	movq	%rax, (%rbx)
	call	adjust_address_1
	movq	(%rbx), %rdi
	movq	%rax, %rsi
	call	emit_move_insn
	jmp	.L3552
	.p2align 6,,7
.L3562:
	cmpl	$8, %eax
	ja	.L4479
	jmp	.L3563
.L3558:
	movq	-2640(%rbp), %r10
	movzbl	2(%r10), %ecx
	movzbl	%cl, %edi
	cmpl	%r14d, %edi
	je	.L3556
	testb	%cl, %cl
	je	.L3556
	jmp	.L3557
.L4760:
	movl	$.LC0, %edi
	movl	$1978, %esi
	jmp	.L4747
.L4761:
	movl	$.LC0, %edi
	movl	$1953, %esi
	jmp	.L4747
	.p2align 6,,7
.L4879:
	cmpb	$29, 16(%r15)
	jne	.L3009
	movq	%r15, %rdi
	call	expr_size
	cmpw	$54, (%rax)
	movq	%rax, -2456(%rbp)
	je	.L4907
.L3010:
	movq	sizetype_tab(%rip), %rdi
	movq	-2456(%rbp), %rsi
	call	make_tree
	xorl	%esi, %esi
	movslq	32(%r15),%rdi
	movq	%rax, %r14
	call	size_int_wide
	movq	%r14, %rsi
	movl	$78, %edi
	movq	%rax, %rdx
	call	size_binop
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, -1360(%rbp)
	call	expand_expr
	xorl	%edx, %edx
	movl	ptr_mode(%rip), %edi
	movq	%rax, %rsi
	movq	$0, -2544(%rbp)
	call	convert_to_mode
	movl	$8, %edx
	movq	-2640(%rbp), %r12
	movq	%rax, -2488(%rbp)
	movq	%r13, -2496(%rbp)
	movq	%rax, -2512(%rbp)
	movq	%r12, -2504(%rbp)
	movq	16(%r13), %rax
	testq	%rax, %rax
	movq	%rax, %rsi
	je	.L3213
	movl	32(%rax), %edx
.L3213:
	movq	-2640(%rbp), %rdi
	movq	16(%rdi), %rax
	testq	%rax, %rax
	movq	%rax, %rcx
	je	.L3214
	cmpl	32(%rax), %edx
	jb	.L3215
.L3210:
	testq	%rcx, %rcx
	movl	$8, %r15d
	je	.L3211
	movl	32(%rcx), %r15d
.L3211:
	cmpb	$51, 2(%r13)
	jne	.L4766
	movq	-2640(%rbp), %rax
	cmpb	$51, 2(%rax)
	jne	.L4765
	movzwl	(%r13), %eax
	cmpl	$71, %eax
	je	.L3222
	cmpl	$66, %eax
	je	.L4908
.L3226:
	cmpl	$75, %eax
	je	.L3230
	cmpl	$78, %eax
	je	.L3230
.L3225:
	movq	-2640(%rbp), %rdx
	movzwl	(%rdx), %eax
	cmpl	$71, %eax
	je	.L3235
	cmpl	$66, %eax
	je	.L4909
.L3239:
	cmpl	$75, %eax
	je	.L3243
	cmpl	$78, %eax
	je	.L3243
.L3238:
	movq	-2488(%rbp), %rdx
	movzwl	(%rdx), %eax
	cmpl	$71, %eax
	je	.L3248
	cmpl	$66, %eax
	je	.L4910
.L3252:
	cmpl	$75, %eax
	je	.L3256
	cmpl	$78, %eax
	je	.L3256
.L3251:
	movq	-2496(%rbp), %r11
	cmpw	$66, (%r11)
	jne	.L4764
	movq	-2504(%rbp), %rax
	cmpw	$66, (%rax)
	jne	.L4763
	cmpq	$0, -2512(%rbp)
	je	.L4762
	movq	-2512(%rbp), %rcx
	cmpw	$54, (%rcx)
	je	.L4911
.L3264:
	shrl	$3, %r15d
	xorl	%edi, %edi
	mov	%r15d, %esi
	call	gen_rtx_CONST_INT
	movl	class_narrowest_mode+4(%rip), %r12d
	movl	$1, volatile_ok(%rip)
	movq	%rax, -1376(%rbp)
	testl	%r12d, %r12d
	je	.L4382
.L3397:
	movslq	%r12d,%r15
	movl	movstr_optab(,%r15,4), %edx
	cmpl	$1317, %edx
	je	.L3383
	movq	-2512(%rbp), %rsi
	cmpw	$54, (%rsi)
	je	.L4912
.L3387:
	testb	$2, target_flags+3(%rip)
	je	.L3388
	cmpw	$63, mode_bitsize(%r15,%r15)
.L4626:
	jbe	.L3383
.L3386:
	movslq	%edx,%rsi
	leaq	(%rsi,%rsi,4), %rcx
	movq	%rsi, -1384(%rbp)
	movq	insn_data+24(,%rcx,8), %r14
	movq	(%r14), %rax
	testq	%rax, %rax
	je	.L3390
	movq	-2496(%rbp), %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L3383
.L3390:
	movq	24(%r14), %rax
	testq	%rax, %rax
	jne	.L4913
.L3391:
	movq	72(%r14), %rax
	testq	%rax, %rax
	je	.L3392
	xorl	%esi, %esi
	movq	-1376(%rbp), %rdi
	call	*%rax
	testl	%eax, %eax
	je	.L3383
.L3392:
	call	get_last_insn
	movl	$1, %edx
	movq	-2512(%rbp), %rsi
	movl	%r12d, %edi
	movq	%rax, -1392(%rbp)
	call	convert_to_mode
	movq	%rax, %rbx
	movq	48(%r14), %rax
	testq	%rax, %rax
	jne	.L4914
.L3393:
	movq	-1384(%rbp), %rdx
	movq	-2496(%rbp), %rdi
	xorl	%eax, %eax
	movq	-2504(%rbp), %rsi
	movq	-1376(%rbp), %rcx
	leaq	(%rdx,%rdx,4), %r12
	movq	%rbx, %rdx
	call	*insn_data+16(,%r12,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L4502
	movq	-1392(%rbp), %rdi
	call	delete_insns_since
.L3383:
	movzbl	mode_wider_mode(%r15), %r12d
	testl	%r12d, %r12d
	jne	.L3397
.L4382:
	testb	$2, target_flags+3(%rip)
	movq	-2496(%rbp), %rbx
	movl	$0, volatile_ok(%rip)
	setne	%r11b
	movq	8(%rbx), %rsi
	movzbl	%r11b, %edi
	addl	$4, %edi
	call	copy_to_mode_reg
	testb	$2, target_flags+3(%rip)
	setne	%r8b
	movq	%rax, %r14
	movq	-2504(%rbp), %rax
	movq	8(%rax), %rsi
	movzbl	%r8b, %edi
	addl	$4, %edi
	call	copy_to_mode_reg
	movq	-2512(%rbp), %rsi
	movq	sizetype_tab(%rip), %r10
	movq	%rax, %rbx
	movzbl	61(%r10), %r15d
	shrb	$1, %r15b
	movzbl	%r15b, %edi
	call	copy_to_mode_reg
	cmpq	$0, fn.1(%rip)
	movq	%rax, %r15
	je	.L4915
.L3406:
	movq	global_trees+216(%rip), %rdi
	call	build_pointer_type
	movq	%r14, %rsi
	movq	%rax, %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	global_trees+216(%rip), %rdi
	movq	%rax, %r12
	call	build_pointer_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	%r15, %rsi
	movq	%rax, (%r12)
	movq	%rax, %rbx
	movq	sizetype_tab(%rip), %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	fn.1(%rip), %rdx
	movq	%rax, (%rbx)
	movq	(%r12), %rbx
	movq	8(%rdx), %rdi
	movq	(%rbx), %r8
	movq	$0, (%r8)
	call	build_pointer_type
	movq	fn.1(%rip), %rdx
	movl	$121, %edi
	movq	%rax, %rsi
	call	build1
	xorl	%r8d, %r8d
	movq	%r12, %rcx
	movq	fn.1(%rip), %r10
	movq	%rax, %rdx
	movl	$53, %edi
	xorl	%eax, %eax
	movq	8(%r10), %r15
	movq	8(%r15), %rsi
	call	build
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	orb	$1, 17(%rax)
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	expand_expr
	testb	$4, 3(%r14)
	jne	.L4916
.L3395:
	movq	-2488(%rbp), %rbx
	cmpw	$54, (%rbx)
	je	.L4917
	movq	sizetype_tab(%rip), %r12
	movq	-2488(%rbp), %rcx
	xorl	%r8d, %r8d
	movq	optab_table+16(%rip), %rsi
	movq	-2456(%rbp), %rdx
	xorl	%r9d, %r9d
	movzbl	61(%r12), %r14d
	movl	$3, (%rsp)
	shrb	$1, %r14b
	movzbl	%r14b, %edi
	call	expand_binop
	movq	-1360(%rbp), %rdi
	movq	%rax, %rbx
	call	highest_pow2_factor
	movq	-2488(%rbp), %rsi
	movq	%r13, %rdi
	movq	%rax, %rdx
	call	offset_address
	movq	%rax, %r13
	call	gen_label_rtx
	xorl	%r9d, %r9d
	movq	%rax, -2544(%rbp)
	movq	const_int_rtx+512(%rip), %rsi
	movq	%rbx, %rdi
	movzbl	2(%rbx), %r8d
	movl	$107, %edx
	xorl	%ecx, %ecx
	movq	%rax, (%rsp)
	call	emit_cmp_and_jump_insns
.L3409:
	cmpq	const_int_rtx+512(%rip), %rbx
	je	.L3410
	cmpw	$66, (%r13)
	movq	%r13, -2560(%rbp)
	je	.L4918
	movzbl	2(%r13), %edi
	call	get_mode_alignment
.L4627:
	movl	%eax, -2548(%rbp)
.L3412:
	movzbl	2(%r13), %eax
	cmpb	$51, %al
	je	.L3415
	cmpw	$54, (%rbx)
	je	.L4919
.L3415:
	movzwl	(%r13), %eax
	cmpl	$71, %eax
	je	.L3417
	cmpl	$66, %eax
	je	.L4920
.L3421:
	cmpl	$75, %eax
	je	.L3425
	cmpl	$78, %eax
	je	.L3425
.L3420:
	movzwl	(%rbx), %eax
	cmpl	$71, %eax
	je	.L3430
	cmpl	$66, %eax
	je	.L4921
.L3434:
	cmpl	$75, %eax
	je	.L3438
	cmpl	$78, %eax
	je	.L3438
.L3433:
	cmpw	$54, (%rbx)
	je	.L4922
.L3443:
	shrl	$3, -2548(%rbp)
	xorl	%edi, %edi
	mov	-2548(%rbp), %esi
	call	gen_rtx_CONST_INT
	movl	class_narrowest_mode+4(%rip), %r14d
	movq	%rax, -1408(%rbp)
	testl	%r14d, %r14d
	je	.L4396
.L3537:
	movslq	%r14d,%rcx
	movl	clrstr_optab(,%rcx,4), %edx
	movq	%rcx, -1416(%rbp)
	cmpl	$1317, %edx
	je	.L3524
	cmpw	$54, (%rbx)
	je	.L4923
.L3528:
	testb	$2, target_flags+3(%rip)
	je	.L3529
	movq	-1416(%rbp), %rax
	cmpw	$63, mode_bitsize(%rax,%rax)
.L4630:
	jbe	.L3524
.L3527:
	movslq	%edx,%r8
	leaq	(%r8,%r8,4), %rcx
	movq	%r8, -1424(%rbp)
	movq	insn_data+24(,%rcx,8), %r15
	movq	(%r15), %rax
	testq	%rax, %rax
	je	.L3531
	movq	-2560(%rbp), %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L3524
.L3531:
	movq	48(%r15), %rax
	testq	%rax, %rax
	je	.L3532
	xorl	%esi, %esi
	movq	-1408(%rbp), %rdi
	call	*%rax
	testl	%eax, %eax
	je	.L3524
.L3532:
	call	get_last_insn
	movl	$1, %edx
	movq	%rbx, %rsi
	movl	%r14d, %edi
	movq	%rax, -1432(%rbp)
	call	convert_to_mode
	movq	%rax, %r12
	movq	24(%r15), %rax
	testq	%rax, %rax
	jne	.L4924
.L3533:
	movq	-1424(%rbp), %rdi
	xorl	%eax, %eax
	movq	%r12, %rsi
	movq	-1408(%rbp), %rdx
	leaq	(%rdi,%rdi,4), %r14
	movq	-2560(%rbp), %rdi
	call	*insn_data+16(,%r14,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L4631
	movq	-1432(%rbp), %rdi
	call	delete_insns_since
.L3524:
	movq	-1416(%rbp), %rdx
	movzbl	mode_wider_mode(%rdx), %r14d
	testl	%r14d, %r14d
	jne	.L3537
.L4396:
	testb	$2, target_flags+3(%rip)
	movq	-2560(%rbp), %r11
	setne	%r9b
	movq	8(%r11), %rsi
	movzbl	%r9b, %edi
	addl	$4, %edi
	call	copy_to_mode_reg
	movq	sizetype_tab(%rip), %rsi
	movq	%rax, %r14
	movzbl	61(%rsi), %r10d
	movq	%rbx, %rsi
	shrb	$1, %r10b
	movzbl	%r10b, %edi
	call	copy_to_mode_reg
	cmpq	$0, fn.0(%rip)
	movq	%rax, %r15
	je	.L4925
.L3542:
	movq	global_trees+216(%rip), %rdi
	call	build_pointer_type
	movq	%r14, %rsi
	movq	%rax, %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	const_int_rtx+512(%rip), %rsi
	movq	integer_types+40(%rip), %rdi
	movq	%rax, %r12
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	%r15, %rsi
	movq	%rax, (%r12)
	movq	%rax, %rbx
	movq	sizetype_tab(%rip), %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	fn.0(%rip), %rdx
	movq	%rax, (%rbx)
	movq	(%r12), %rsi
	movq	8(%rdx), %rdi
	movq	(%rsi), %r10
	movq	$0, (%r10)
	call	build_pointer_type
	movq	fn.0(%rip), %rdx
	movl	$121, %edi
	movq	%rax, %rsi
	call	build1
	xorl	%r8d, %r8d
	movq	%r12, %rcx
	movq	fn.0(%rip), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	movq	8(%rdi), %r15
	movl	$53, %edi
	movq	8(%r15), %rsi
	call	build
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	orb	$1, 17(%rax)
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	expand_expr
	testb	$4, 3(%r14)
	jne	.L4926
.L3410:
	cmpq	$0, -2544(%rbp)
	je	.L2985
	movq	-2544(%rbp), %rdi
	call	emit_label
	jmp	.L2985
.L4926:
	movl	$49, %edi
	xorl	%esi, %esi
	movq	%r14, %rdx
	call	gen_rtx_fmt_e
	movq	%rax, %rdi
.L4631:
	call	emit_insn
	jmp	.L3410
.L4925:
	movl	$.LC7, %edi
	call	get_identifier
	movq	global_trees+216(%rip), %rdi
	movq	%rax, fn.0(%rip)
	call	build_pointer_type
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	build_function_type
	movq	fn.0(%rip), %rsi
	movl	$30, %edi
	movq	%rax, %rdx
	call	build_decl
	movl	$1, %esi
	movl	$fn.0, %edi
	movq	%rax, fn.0(%rip)
	call	ggc_add_tree_root
	movq	fn.0(%rip), %r8
	xorl	%esi, %esi
	orb	$1, 49(%r8)
	movq	fn.0(%rip), %rcx
	orb	$8, 18(%rcx)
	movq	fn.0(%rip), %r12
	orb	$64, 50(%r12)
	movq	fn.0(%rip), %rbx
	orb	$2, 18(%rbx)
	movq	fn.0(%rip), %rdi
	call	make_decl_rtl
	movq	fn.0(%rip), %rdi
	call	assemble_external
	jmp	.L3542
.L4924:
	movq	%r12, %rdi
	movl	%r14d, %esi
	call	*%rax
	testl	%eax, %eax
	jne	.L3533
	movq	%r12, %rsi
	movl	%r14d, %edi
	call	copy_to_mode_reg
	movq	%rax, %r12
	jmp	.L3533
	.p2align 6,,7
.L3529:
	movq	-1416(%rbp), %r15
	cmpw	$31, mode_bitsize(%r15,%r15)
	jmp	.L4630
.L4923:
	movq	mode_mask_array(,%rcx,8), %r12
	shrq	$1, %r12
	cmpq	%r12, 8(%rbx)
	jbe	.L3527
	jmp	.L3528
.L4922:
	movq	8(%rbx), %r14
	xorl	%r15d, %r15d
	movl	$17, %esi
.L3456:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L4385
.L3453:
	movslq	%ecx,%r10
	movzbq	mode_size(%r10), %rdx
	cmpq	%rsi, %rdx
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r10), %ecx
	testl	%ecx, %ecx
	jne	.L3453
.L4385:
	testl	%edi, %edi
	je	.L3446
	movslq	%edi,%r12
	movq	%r12, %r8
	salq	$4, %r8
	addq	optab_table+240(%rip), %r8
	cmpl	$1317, 8(%r8)
	je	.L3455
	call	get_mode_alignment
	movl	$128, %r11d
	cmpl	%eax, %r11d
	jb	.L3455
	movzbq	mode_size(%r12), %r9
	movq	%r14, %rax
	xorl	%edx, %edx
	divq	%r9
	addq	%rax, %r15
	movq	%rdx, %r14
.L3455:
	movzbq	mode_size(%r12), %rsi
	cmpq	$1, %rsi
	ja	.L3456
.L3446:
	testq	%r14, %r14
	jne	.L4757
	movl	optimize_size(%rip), %eax
	testl	%eax, %eax
	jne	.L3459
	movq	ix86_cost(%rip), %rcx
	mov	40(%rcx), %r12d
	cmpq	%r12, %r15
	jae	.L3443
.L3460:
	movq	8(%rbx), %r10
	movq	-2560(%rbp), %r15
	leaq	-464(%rbp), %r12
	testb	$2, target_flags+3(%rip)
	movq	$clear_by_pieces_1, -424(%rbp)
	movq	$0, -416(%rbp)
	setne	%dl
	leaq	16(%r12), %rcx
	movq	%r15, -464(%rbp)
	movq	%r10, -440(%rbp)
	movq	8(%r15), %r8
	movq	$0, -432(%rbp)
	movl	$0, -2572(%rbp)
	movzbl	%dl, %esi 
	movq	%r8, -456(%rbp)
	movzwl	(%r8), %edx
	leaq	5(,%rsi,4), %r15
	xorl	%esi, %esi
	leal	-96(%rdx), %ebx
	cmpw	$1, %bx
	jbe	.L3464
	cmpw	$99, %dx
	je	.L3464
	cmpw	$98, %dx
	je	.L3464
.L3463:
	movl	%esi, (%rcx)
	movl	$0, 20(%r12)
	leaq	56(%r12), %rdx
	movzwl	(%r8), %eax
	xorl	%ecx, %ecx
	cmpw	$96, %ax
	je	.L3466
	cmpw	$98, %ax
	je	.L3466
.L3465:
	movl	%ecx, (%rdx)
	movl	56(%r12), %eax
	testl	%eax, %eax
	je	.L3467
	movq	24(%r12), %r11
	movq	%r11, 32(%r12)
.L3467:
	movl	16(%r12), %r14d
	testl	%r14d, %r14d
	jne	.L3468
	movq	24(%r12), %r14
	movq	$0, -2568(%rbp)
	movl	$17, %esi
.L3481:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L4388
.L3478:
	movslq	%ecx,%r9
	movzbq	mode_size(%r9), %rbx
	cmpq	%rsi, %rbx
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r9), %ecx
	testl	%ecx, %ecx
	jne	.L3478
.L4388:
	testl	%edi, %edi
	je	.L3471
	movslq	%edi,%rbx
	movq	%rbx, %rcx
	salq	$4, %rcx
	addq	optab_table+240(%rip), %rcx
	cmpl	$1317, 8(%rcx)
	je	.L3480
	movq	%r8, -2648(%rbp)
	call	get_mode_alignment
	movl	$128, %r8d
	cmpl	%eax, %r8d
	movq	-2648(%rbp), %r8
	jb	.L3480
	movzbq	mode_size(%rbx), %rsi
	movq	%r14, %rax
	xorl	%edx, %edx
	divq	%rsi
	addq	%rax, -2568(%rbp)
	movq	%rdx, %r14
.L3480:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L3481
.L3471:
	testq	%r14, %r14
	jne	.L4757
	cmpq	$2, -2568(%rbp)
	jbe	.L3468
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L4390
.L3489:
	movslq	%ecx,%r11
	movzbq	mode_size(%r11), %rdx
	cmpq	%r15, %rdx
	cmovae	-2572(%rbp), %ecx
	movl	%ecx, -2572(%rbp)
	movzbl	mode_wider_mode(%r11), %ecx
	testl	%ecx, %ecx
	jne	.L3489
.L4390:
	movl	16(%r12), %eax
	testl	%eax, %eax
	jne	.L3468
	movzwl	(%r8), %edx
	leal	-67(%rdx), %r14d
	cmpw	$1, %r14w
	jbe	.L3493
	cmpw	$54, %dx
	je	.L3493
	cmpw	$55, %dx
	je	.L3493
	cmpw	$58, %dx
	je	.L3493
	cmpw	$134, %dx
	je	.L3493
	cmpw	$56, %dx
	je	.L3493
	cmpw	$140, %dx
	je	.L3493
.L3468:
	cmpq	$1, %r15
	jbe	.L3496
.L3517:
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L4393
.L3503:
	movslq	%ecx,%r9
	movzbq	mode_size(%r9), %rbx
	cmpq	%r15, %rbx
	cmovae	-2572(%rbp), %ecx
	movl	%ecx, -2572(%rbp)
	movzbl	mode_wider_mode(%r9), %ecx
	testl	%ecx, %ecx
	jne	.L3503
.L4393:
	movl	-2572(%rbp), %r15d
	testl	%r15d, %r15d
	je	.L3496
	movslq	-2572(%rbp),%r15
	movq	%r15, %rcx
	salq	$4, %rcx
	addq	optab_table+240(%rip), %rcx
	movl	8(%rcx), %ebx
	cmpl	$1317, %ebx
	je	.L3505
	movl	-2572(%rbp), %edi
	call	get_mode_alignment
	movl	$128, %r8d
	cmpl	%eax, %r8d
	jb	.L3505
	movzbq	mode_size(%r15), %rdx
	movslq	%ebx,%rsi
	leaq	(%rsi,%rsi,4), %r10
	cmpq	%rdx, 24(%r12)
	movq	insn_data+16(,%r10,8), %rdi
	movq	%rdx, %r14
	movq	%rdi, -1400(%rbp)
	jb	.L3505
	movl	56(%r12), %ecx
.L3515:
	testl	%ecx, %ecx
	je	.L3509
	subq	%rdx, 32(%r12)
.L3509:
	movl	16(%r12), %r11d
	testl	%r11d, %r11d
	je	.L3510
	movq	(%r12), %rdi
	movl	-2572(%rbp), %esi
	movl	$1, %r8d
	movq	8(%r12), %rdx
	movq	32(%r12), %rcx
	call	adjust_automodify_address_1
.L4629:
	movl	-2572(%rbp), %edx
	movq	%rax, %rbx
	movq	48(%r12), %rdi
	movq	32(%r12), %rsi
	call	*40(%r12)
	movq	%rbx, %rdi
	movq	%rax, %rsi
	xorl	%eax, %eax
	call	*-1400(%rbp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%r12), %eax
	testl	%eax, %eax
	movl	%eax, %ecx
	jne	.L3514
	addq	%r14, 32(%r12)
.L3514:
	movq	24(%r12), %r9
	movq	%r14, %rdx
	subq	%r14, %r9
	cmpq	%r14, %r9
	movq	%r9, 24(%r12)
	jae	.L3515
.L3505:
	movzbq	mode_size(%r15), %r15
	cmpq	$1, %r15
	ja	.L3517
.L3496:
	cmpq	$0, 24(%r12)
	je	.L3410
	jmp	.L4756
.L3510:
	movq	(%r12), %rdi
	movl	-2572(%rbp), %esi
	movl	$1, %ecx
	movq	32(%r12), %rdx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L4629
.L3493:
	movq	%r8, %rdi
	call	copy_addr_to_reg
	movq	%rax, 8(%r12)
	jmp	.L3468
.L3466:
	movl	$1, %ecx
	jmp	.L3465
.L3464:
	movl	$1, %esi
	jmp	.L3463
.L3459:
	cmpq	$2, %r15
	ja	.L3443
	jmp	.L3460
.L3438:
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%rbx), %rdi
	movq	%rax, %r14
	call	protect_from_queue
	cmpq	8(%rbx), %r14
	movq	%rax, %r12
	je	.L4927
.L3440:
	movq	%rbx, %rdi
	call	copy_rtx
	movq	%rax, %rbx
	movq	%r14, 8(%rax)
	movq	%r12, 16(%rax)
	jmp	.L3433
.L4927:
	cmpq	16(%rbx), %rax
	jne	.L3440
	jmp	.L3433
.L4921:
	cmpb	$51, 2(%rbx)
	je	.L3431
	movq	8(%rbx), %r14
	cmpw	$71, (%r14)
	je	.L4928
.L3431:
	cmpl	$66, %eax
	jne	.L3434
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%rbx), %rax
	movq	%rax, %r12
	je	.L3433
	movq	%rbx, %rdi
	call	copy_rtx
	movq	%rax, %rbx
	movq	%r12, 8(%rax)
	jmp	.L3433
.L4928:
	movq	8(%r14), %rsi
	movq	%rbx, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%r14)
	movq	%rax, %r12
	je	.L3432
	movzbl	2(%rbx), %edi
	call	gen_reg_rtx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L3433
.L3432:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%r12, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L4628:
	movq	%rax, %rbx
	jmp	.L3433
.L3430:
	cmpq	$0, 16(%rbx)
	je	.L4929
	movq	24(%rbx), %rax
	testq	%rax, %rax
	jne	.L4628
	movq	8(%rbx), %rsi
	movzbl	2(%rsi), %edi
	call	gen_reg_rtx
	movq	8(%rbx), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%rbx)
	call	gen_move_insn
	movq	16(%rbx), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%rbx), %rbx
	jmp	.L3433
.L4929:
	movq	8(%rbx), %rdi
	call	copy_to_reg
	jmp	.L4628
.L3425:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, %r14
	call	protect_from_queue
	cmpq	8(%r13), %r14
	movq	%rax, %r12
	je	.L4930
.L3427:
	movq	%r13, %rdi
	call	copy_rtx
	movq	%rax, -2560(%rbp)
	movq	%r14, 8(%rax)
	movq	-2560(%rbp), %rax
	movq	%r12, 16(%rax)
	jmp	.L3420
.L4930:
	cmpq	16(%r13), %rax
	jne	.L3427
	jmp	.L3420
.L4920:
	jne	.L3421
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%r13), %rax
	movq	%rax, %r12
	je	.L3420
	movq	%r13, %rdi
	call	copy_rtx
	movq	%rax, -2560(%rbp)
	movq	%r12, 8(%rax)
	jmp	.L3420
.L3417:
	cmpq	$0, 16(%r13)
	je	.L4931
	movq	24(%r13), %rdi
	testq	%rdi, %rdi
	movq	%rdi, -2560(%rbp)
	jne	.L3420
	movq	8(%r13), %rcx
	movzbl	2(%rcx), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %r9
	movq	%r9, -2560(%rbp)
	jmp	.L3420
.L4931:
	movq	8(%r13), %rdi
	call	copy_to_reg
	movq	%rax, -2560(%rbp)
	jmp	.L3420
.L4919:
	movzbl	%al, %edx 
	movzbl	mode_size(%rdx), %r11d
	cmpl	8(%rbx), %r11d
	jne	.L3415
	movq	const_tiny_rtx(,%rdx,8), %rsi
	movq	%r13, %rdi
	call	emit_move_insn
	jmp	.L3410
.L4918:
	movq	16(%r13), %rax
	movl	$8, -2548(%rbp)
	testq	%rax, %rax
	je	.L3412
	movl	32(%rax), %eax
	jmp	.L4627
.L4917:
	movq	8(%rbx), %rsi
	movq	-2456(%rbp), %rdi
	negq	%rsi
	call	plus_constant_wide
	movl	$1, %r8d
	movl	$1, %ecx
	movq	%r13, %rdi
	movl	$51, %esi
	movq	%rax, %rbx
	movq	-2488(%rbp), %r13
	movq	8(%r13), %rdx
	call	adjust_address_1
	movq	%rax, %r13
	jmp	.L3409
.L4916:
	movl	$49, %edi
	xorl	%esi, %esi
	movq	%r14, %rdx
	call	gen_rtx_fmt_e
	movq	%rax, %rdi
	call	emit_insn
	jmp	.L3395
.L4915:
	movl	$.LC11, %edi
	call	get_identifier
	movq	global_trees+216(%rip), %rdi
	movq	%rax, fn.1(%rip)
	call	build_pointer_type
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	build_function_type
	movq	fn.1(%rip), %rsi
	movl	$30, %edi
	movq	%rax, %rdx
	call	build_decl
	movl	$1, %esi
	movl	$fn.1, %edi
	movq	%rax, fn.1(%rip)
	call	ggc_add_tree_root
	movq	fn.1(%rip), %rsi
	orb	$1, 49(%rsi)
	xorl	%esi, %esi
	movq	fn.1(%rip), %rcx
	orb	$8, 18(%rcx)
	movq	fn.1(%rip), %r9
	orb	$64, 50(%r9)
	movq	fn.1(%rip), %rdi
	orb	$2, 18(%rdi)
	movq	fn.1(%rip), %rdi
	call	make_decl_rtl
	movq	fn.1(%rip), %rdi
	call	assemble_external
	jmp	.L3406
.L4502:
	call	emit_insn
	movl	$0, volatile_ok(%rip)
	jmp	.L3395
.L4914:
	movq	%rbx, %rdi
	movl	%r12d, %esi
	call	*%rax
	testl	%eax, %eax
	jne	.L3393
	movq	%rbx, %rsi
	movl	%r12d, %edi
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L3393
.L4913:
	movq	-2504(%rbp), %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L3383
	jmp	.L3391
	.p2align 6,,7
.L3388:
	cmpw	$31, mode_bitsize(%r15,%r15)
	jmp	.L4626
.L4912:
	movq	mode_mask_array(,%r15,8), %r9
	shrq	$1, %r9
	cmpq	%r9, 8(%rsi)
	jbe	.L3386
	jmp	.L3387
.L4911:
	movq	8(%rcx), %r12
	xorl	%r14d, %r14d
	movl	$17, %esi
.L3277:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L4371
.L3274:
	movslq	%ecx,%r8
	movzbq	mode_size(%r8), %r9
	cmpq	%rsi, %r9
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r8), %ecx
	testl	%ecx, %ecx
	jne	.L3274
.L4371:
	testl	%edi, %edi
	je	.L3267
	movslq	%edi,%rbx
	movq	%rbx, %rcx
	salq	$4, %rcx
	addq	optab_table+240(%rip), %rcx
	cmpl	$1317, 8(%rcx)
	je	.L3276
	call	get_mode_alignment
	movl	$128, %r10d
	cmpl	%eax, %r10d
	jb	.L3276
	movzbq	mode_size(%rbx), %rsi
	movq	%r12, %rax
	xorl	%edx, %edx
	divq	%rsi
	addq	%rax, %r14
	movq	%rdx, %r12
.L3276:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L3277
.L3267:
	testq	%r12, %r12
	jne	.L4757
	movl	optimize_size(%rip), %ebx
	testl	%ebx, %ebx
	jne	.L3280
	movq	ix86_cost(%rip), %r11
	mov	40(%r11), %edx
	cmpq	%rdx, %r14
	jae	.L3264
.L3281:
	movq	-2512(%rbp), %r8
	movq	-2504(%rbp), %rsi
	movq	-2496(%rbp), %rdi
	movq	-2496(%rbp), %r9
	testb	$2, target_flags+3(%rip)
	movq	8(%r8), %r12
	setne	%r14b
	movq	8(%rsi), %r8
	movq	$0, -488(%rbp)
	movl	$0, -2524(%rbp)
	movq	%r8, -512(%rbp)
	movzbl	%r14b, %ecx
	movq	8(%rdi), %r10
	movq	%r9, -544(%rbp)
	leal	5(,%rcx,4), %r14d
	xorl	%ecx, %ecx
	movq	%r10, -2520(%rbp)
	movq	-2520(%rbp), %rax
	movzwl	(%rax), %edx
	leal	-96(%rdx), %r15d
	cmpw	$1, %r15w
	jbe	.L3286
	cmpw	$99, %dx
	je	.L3286
	cmpw	$98, %dx
	je	.L3286
.L3285:
	movq	-2520(%rbp), %rbx
	movl	%ecx, -528(%rbp)
	xorl	%edx, %edx
	movzwl	(%rbx), %eax
	cmpw	$96, %ax
	je	.L3288
	cmpw	$98, %ax
	je	.L3288
.L3287:
	movl	%edx, -480(%rbp)
	movq	-2520(%rbp), %r15
	xorl	%ecx, %ecx
	movq	-2504(%rbp), %rdx
	movq	%r15, -536(%rbp)
	movq	%rdx, -520(%rbp)
	movzwl	(%r8), %edx
	leal	-96(%rdx), %r11d
	cmpw	$1, %r11w
	jbe	.L3291
	cmpw	$99, %dx
	je	.L3291
	cmpw	$98, %dx
	je	.L3291
.L3290:
	movl	-480(%rbp), %eax
	movl	%ecx, -504(%rbp)
	movl	$0, -500(%rbp)
	movl	$0, -524(%rbp)
	testl	%eax, %eax
	je	.L3292
	movq	%r12, -488(%rbp)
.L3292:
	movl	-504(%rbp), %r9d
	movq	%r12, -496(%rbp)
	testl	%r9d, %r9d
	je	.L3294
	movl	-528(%rbp), %r10d
	testl	%r10d, %r10d
	jne	.L3293
.L3294:
	xorl	%r15d, %r15d
	movl	$17, %esi
.L3307:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L4374
.L3304:
	movslq	%ecx,%rbx
	movzbq	mode_size(%rbx), %r11
	cmpq	%rsi, %r11
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%rbx), %ecx
	testl	%ecx, %ecx
	jne	.L3304
.L4374:
	testl	%edi, %edi
	je	.L3297
	movslq	%edi,%rbx
	movq	%rbx, %rcx
	salq	$4, %rcx
	addq	optab_table+240(%rip), %rcx
	cmpl	$1317, 8(%rcx)
	je	.L3306
	movq	%r8, -2648(%rbp)
	call	get_mode_alignment
	movq	-2648(%rbp), %r8
	movl	$128, %edi
	cmpl	%eax, %edi
	jb	.L3306
	movzbq	mode_size(%rbx), %rsi
	movq	%r12, %rax
	xorl	%edx, %edx
	divq	%rsi
	addq	%rax, %r15
	movq	%rdx, %r12
.L3306:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L3307
.L3297:
	testq	%r12, %r12
	jne	.L4757
	cmpq	$2, %r15
	jbe	.L3293
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L4376
.L3315:
	movslq	%ecx,%r15
	movzbl	mode_size(%r15), %edx
	cmpl	%r14d, %edx
	cmovae	-2524(%rbp), %ecx
	movl	%ecx, -2524(%rbp)
	movzbl	mode_wider_mode(%r15), %ecx
	testl	%ecx, %ecx
	jne	.L3315
.L4376:
	movl	-504(%rbp), %eax
	testl	%eax, %eax
	jne	.L3321
	movzwl	(%r8), %edx
	leal	-67(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L3319
	cmpw	$54, %dx
	je	.L3319
	cmpw	$55, %dx
	je	.L3319
	cmpw	$58, %dx
	je	.L3319
	cmpw	$134, %dx
	je	.L3319
	cmpw	$56, %dx
	je	.L3319
	cmpw	$140, %dx
	je	.L3319
.L3321:
	movl	-528(%rbp), %eax
	testl	%eax, %eax
	jne	.L3293
	movq	-2520(%rbp), %rbx
	movzwl	(%rbx), %edx
	leal	-67(%rdx), %r8d
	cmpw	$1, %r8w
	jbe	.L3323
	cmpw	$54, %dx
	je	.L3323
	cmpw	$55, %dx
	je	.L3323
	cmpw	$58, %dx
	je	.L3323
	cmpw	$134, %dx
	je	.L3323
	cmpw	$56, %dx
	je	.L3323
	cmpw	$140, %dx
	je	.L3323
.L3293:
	cmpl	$1, %r14d
	jbe	.L3326
.L3377:
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L4379
.L3333:
	movslq	%ecx,%r11
	movzbl	mode_size(%r11), %edi
	cmpl	%r14d, %edi
	cmovae	-2524(%rbp), %ecx
	movl	%ecx, -2524(%rbp)
	movzbl	mode_wider_mode(%r11), %ecx
	testl	%ecx, %ecx
	jne	.L3333
.L4379:
	movl	-2524(%rbp), %eax
	testl	%eax, %eax
	je	.L3326
	movslq	-2524(%rbp),%r15
	movq	%r15, %r14
	salq	$4, %r14
	addq	optab_table+240(%rip), %r14
	movl	8(%r14), %ebx
	cmpl	$1317, %ebx
	je	.L3335
	movl	-2524(%rbp), %edi
	call	get_mode_alignment
	movl	$128, %ecx
	cmpl	%eax, %ecx
	jb	.L3335
	movzbq	mode_size(%r15), %rdx
	movslq	%ebx,%rsi
	movq	$0, -2536(%rbp)
	leaq	(%rsi,%rsi,4), %r9
	cmpq	%rdx, -496(%rbp)
	movq	insn_data+16(,%r9,8), %r12
	movq	%rdx, -1664(%rbp)
	movq	%r12, -1368(%rbp)
	leaq	-544(%rbp), %r12
	jb	.L3335
	movl	-480(%rbp), %ecx
.L3375:
	testl	%ecx, %ecx
	je	.L3339
	subq	%rdx, 56(%r12)
.L3339:
	movq	(%r12), %rdi
	testq	%rdi, %rdi
	je	.L3340
	movl	16(%r12), %eax
	testl	%eax, %eax
	je	.L3341
	movl	-2524(%rbp), %esi
	movq	8(%r12), %rdx
	movl	$1, %r8d
	movq	56(%r12), %rcx
	call	adjust_automodify_address_1
.L4622:
	movq	%rax, -2536(%rbp)
.L3340:
	movl	40(%r12), %eax
	testl	%eax, %eax
	je	.L3343
	movq	24(%r12), %rdi
	movl	-2524(%rbp), %esi
	movl	$1, %r8d
	movq	32(%r12), %rdx
	movq	56(%r12), %rcx
	call	adjust_automodify_address_1
.L4623:
	cmpq	$0, (%r12)
	movq	%rax, %r14
	jne	.L4932
	movl	target_flags(%rip), %eax
	testl	$33554432, %eax
	movl	%eax, %esi
	je	.L3349
	movzbl	mode_size(%r15), %r10d
	leal	7(%r10), %edx
	andl	$-8, %edx
.L3350:
	movq	cfun(%rip), %r11
	andl	$33554432, %esi
	movq	16(%r11), %rbx
	leaq	8(%rbx), %rdi
	movl	8(%rbx), %ecx
	je	.L3351
	movzbl	mode_size(%r15), %eax
	addl	$7, %eax
	andl	$-8, %eax
.L4624:
	leal	(%rax,%rcx), %r9d
	movl	%r9d, (%rdi)
	movq	%r15, %rdi
	salq	$4, %rdi
	addq	optab_table+384(%rip), %rdi
	movl	8(%rdi), %eax
	cmpl	$1317, %eax
	je	.L3353
	movslq	%eax,%rbx
	leaq	(%rbx,%rbx,4), %rcx
	movq	insn_data+24(,%rcx,8), %rdx
	movq	(%rdx), %rax
	testq	%rax, %rax
	je	.L3354
	movq	%r14, %rdi
	movl	-2524(%rbp), %esi
	call	*%rax
	testl	%eax, %eax
	je	.L4933
.L3354:
	leaq	(%rbx,%rbx,4), %rsi
	movq	%r14, %rdi
	xorl	%eax, %eax
	call	*insn_data+16(,%rsi,8)
.L4625:
	movq	%rax, %rdi
	call	emit_insn
.L3373:
	movl	64(%r12), %eax
	testl	%eax, %eax
	movl	%eax, %ecx
	jne	.L3374
	movq	-1664(%rbp), %r14
	addq	%r14, 56(%r12)
.L3374:
	movq	48(%r12), %rdi
	movq	-1664(%rbp), %rdx
	subq	-1664(%rbp), %rdi
	cmpq	%rdx, %rdi
	movq	%rdi, 48(%r12)
	jae	.L3375
.L3335:
	movzbl	mode_size(%r15), %r14d
	cmpl	$1, %r14d
	ja	.L3377
.L3326:
	cmpq	$0, -496(%rbp)
	je	.L3395
	jmp	.L4742
.L4933:
	movl	-2524(%rbp), %edi
	movq	%r14, %rsi
	call	force_reg
	movq	%rax, %r14
	jmp	.L3354
.L3353:
	movzbl	mode_size(%r15), %r10d
	cmpl	%edx, %r10d
	je	.L4934
	mov	%edx, %esi
	xorl	%edi, %edi
	negq	%rsi
	call	gen_rtx_CONST_INT
	movq	global_rtl+16(%rip), %rdx
	movl	$75, %edi
	testb	$2, target_flags+3(%rip)
	movq	%rax, %rcx
	setne	%bl
	movzbl	%bl, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_ee
	movq	global_rtl+16(%rip), %rdx
	movl	$100, %edi
	testb	$2, target_flags+3(%rip)
	movq	%rax, %rcx
	setne	%r8b
	movzbl	%r8b, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_ee
.L3361:
	movl	-2524(%rbp), %edi
	movq	%rax, %rsi
	call	gen_rtx_MEM
	xorl	%r11d, %r11d
	testq	%r11, %r11
	movq	%rax, %rbx
	je	.L3370
	movq	%rax, %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	call	set_mem_attributes
	movl	flag_optimize_sibling_calls(%rip), %eax
	testl	%eax, %eax
	jne	.L4935
.L3370:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	call	emit_move_insn
	jmp	.L3373
.L4935:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	call	set_mem_alias_set
	jmp	.L3370
.L4934:
	testb	$2, target_flags+3(%rip)
	movq	global_rtl+16(%rip), %rdx
	movl	$96, %edi
	setne	%al
	movzbl	%al, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_e
	jmp	.L3361
.L3351:
	movzbl	mode_size(%r15), %eax
	incl	%eax
	andl	$-2, %eax
	jmp	.L4624
.L3349:
	movzbl	mode_size(%r15), %r8d
	leal	1(%r8), %edx
	andl	$-2, %edx
	jmp	.L3350
.L4932:
	movq	%rax, %rsi
	movq	-2536(%rbp), %rdi
	xorl	%eax, %eax
	call	*-1368(%rbp)
	jmp	.L4625
	.p2align 6,,7
.L3343:
	movq	24(%r12), %rdi
	movl	-2524(%rbp), %esi
	movl	$1, %ecx
	movq	56(%r12), %rdx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L4623
.L3341:
	movl	-2524(%rbp), %esi
	movq	56(%r12), %rdx
	movl	$1, %ecx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L4622
.L3323:
	movq	-2520(%rbp), %rdi
	call	copy_addr_to_reg
	movq	%rax, -536(%rbp)
	jmp	.L3293
.L3319:
	movq	%r8, %rdi
	call	copy_addr_to_reg
	movq	%rax, -512(%rbp)
	jmp	.L3321
.L3291:
	movl	$1, %ecx
	jmp	.L3290
.L3288:
	movl	$1, %edx
	jmp	.L3287
.L3286:
	movl	$1, %ecx
	jmp	.L3285
.L3280:
	cmpq	$2, %r14
	ja	.L3264
	jmp	.L3281
.L3256:
	movq	-2488(%rbp), %r9
	xorl	%esi, %esi
	movq	8(%r9), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	-2488(%rbp), %r8
	movq	%rax, %r12
	movq	16(%r8), %rdi
	call	protect_from_queue
	movq	-2488(%rbp), %rcx
	movq	%rax, %rbx
	cmpq	8(%rcx), %r12
	je	.L4936
.L3258:
	movq	-2488(%rbp), %rdi
	call	copy_rtx
	movq	%rax, -2512(%rbp)
	movq	%r12, 8(%rax)
	movq	-2512(%rbp), %r10
	movq	%rbx, 16(%r10)
	jmp	.L3251
.L4936:
	cmpq	16(%rcx), %rax
	jne	.L3258
	jmp	.L3251
.L4910:
	cmpb	$51, 2(%rdx)
	je	.L3249
	movq	8(%rdx), %r12
	cmpw	$71, (%r12)
	je	.L4937
.L3249:
	cmpl	$66, %eax
	jne	.L3252
	movq	-2488(%rbp), %rcx
	xorl	%esi, %esi
	movq	8(%rcx), %rdi
	call	protect_from_queue
	movq	-2488(%rbp), %rsi
	movq	%rax, %rbx
	cmpq	8(%rsi), %rax
	je	.L3251
	movq	%rsi, %rdi
	call	copy_rtx
	movq	%rax, -2512(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L3251
.L4937:
	movq	8(%r12), %rsi
	movq	%rdx, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%r12)
	movq	%rax, %rbx
	je	.L3250
	movq	-2488(%rbp), %r11
	movzbl	2(%r11), %edi
	call	gen_reg_rtx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, -2512(%rbp)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L3251
.L3250:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L4621:
	movq	%rax, -2512(%rbp)
	jmp	.L3251
.L3248:
	movq	-2488(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.L4938
	movq	-2488(%rbp), %r14
	movq	24(%r14), %rbx
	testq	%rbx, %rbx
	movq	%rbx, -2512(%rbp)
	jne	.L3251
	movq	-2488(%rbp), %rdi
	movq	8(%rdi), %rsi
	movzbl	2(%rsi), %edi
	call	gen_reg_rtx
	movq	-2488(%rbp), %r12
	movq	%rax, %rdi
	movq	8(%r12), %rsi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %rdx
	movq	%rdx, -2512(%rbp)
	jmp	.L3251
.L4938:
	movq	8(%rax), %rdi
	call	copy_to_reg
	jmp	.L4621
.L3243:
	movq	-2640(%rbp), %rdx
	xorl	%esi, %esi
	movq	8(%rdx), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	-2640(%rbp), %r10
	movq	%rax, %r12
	movq	16(%r10), %rdi
	call	protect_from_queue
	movq	-2640(%rbp), %rcx
	movq	%rax, %rbx
	cmpq	8(%rcx), %r12
	je	.L4939
.L3245:
	movq	-2640(%rbp), %rdi
	call	copy_rtx
	movq	%rax, -2504(%rbp)
	movq	%r12, 8(%rax)
	movq	-2504(%rbp), %r12
	movq	%rbx, 16(%r12)
	jmp	.L3238
.L4939:
	cmpq	16(%rcx), %rax
	jne	.L3245
	jmp	.L3238
.L4909:
	cmpb	$51, 2(%rdx)
	je	.L3236
	movq	8(%rdx), %r12
	cmpw	$71, (%r12)
	je	.L4940
.L3236:
	cmpl	$66, %eax
	jne	.L3239
	movq	-2640(%rbp), %r9
	xorl	%esi, %esi
	movq	8(%r9), %rdi
	call	protect_from_queue
	movq	-2640(%rbp), %rsi
	movq	%rax, %rbx
	cmpq	8(%rsi), %rax
	je	.L3238
	movq	%rsi, %rdi
	call	copy_rtx
	movq	%rax, -2504(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L3238
.L4940:
	movq	8(%r12), %rsi
	movq	%rdx, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%r12)
	movq	%rax, %rbx
	je	.L3237
	movq	-2640(%rbp), %r8
	movzbl	2(%r8), %edi
	call	gen_reg_rtx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, -2504(%rbp)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L3238
.L3237:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L4620:
	movq	%rax, -2504(%rbp)
	jmp	.L3238
.L3235:
	movq	-2640(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.L4941
	movq	-2640(%rbp), %r14
	movq	24(%r14), %rbx
	testq	%rbx, %rbx
	movq	%rbx, -2504(%rbp)
	jne	.L3238
	movq	-2640(%rbp), %rax
	movq	8(%rax), %rsi
	movzbl	2(%rsi), %edi
	call	gen_reg_rtx
	movq	-2640(%rbp), %r12
	movq	%rax, %rdi
	movq	8(%r12), %rsi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %rdi
	movq	%rdi, -2504(%rbp)
	jmp	.L3238
.L4941:
	movq	8(%rax), %rdi
	call	copy_to_reg
	jmp	.L4620
.L3230:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, %r12
	call	protect_from_queue
	cmpq	8(%r13), %r12
	movq	%rax, %rbx
	je	.L4942
.L3232:
	movq	%r13, %rdi
	call	copy_rtx
	movq	%rax, -2496(%rbp)
	movq	%r12, 8(%rax)
	movq	-2496(%rbp), %rcx
	movq	%rbx, 16(%rcx)
	jmp	.L3225
.L4942:
	cmpq	16(%r13), %rax
	jne	.L3232
	jmp	.L3225
.L4908:
	jne	.L3226
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%r13), %rax
	movq	%rax, %rbx
	je	.L3225
	movq	%r13, %rdi
	call	copy_rtx
	movq	%rax, -2496(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L3225
.L3222:
	testq	%rsi, %rsi
	je	.L4943
	movq	24(%r13), %rsi
	testq	%rsi, %rsi
	movq	%rsi, -2496(%rbp)
	jne	.L3225
	movq	8(%r13), %r11
	movzbl	2(%r11), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %rax
.L4619:
	movq	%rax, -2496(%rbp)
	jmp	.L3225
.L4943:
	movq	8(%r13), %rdi
	call	copy_to_reg
	jmp	.L4619
.L3215:
	testq	%rsi, %rsi
	movl	$8, %r15d
	je	.L3211
	movl	32(%rsi), %r15d
	jmp	.L3211
.L3214:
	cmpl	$7, %edx
	ja	.L3210
	jmp	.L3215
	.p2align 6,,7
.L4907:
	movq	-2456(%rbp), %rsi
	movslq	32(%r15),%r10
	cmpq	%r10, 8(%rsi)
	jge	.L3010
	movq	-2640(%rbp), %rdi
	movq	%r13, -2440(%rbp)
	movl	$8, %edx
	movq	%rdi, -2448(%rbp)
	movq	16(%r13), %rax
	testq	%rax, %rax
	movq	%rax, %rsi
	je	.L3014
	movl	32(%rax), %edx
.L3014:
	movq	-2640(%rbp), %r11
	movq	16(%r11), %rax
	testq	%rax, %rax
	movq	%rax, %rcx
	je	.L3015
	cmpl	32(%rax), %edx
	jb	.L3016
.L3011:
	testq	%rcx, %rcx
	movl	$8, %r15d
	je	.L3012
	movl	32(%rcx), %r15d
.L3012:
	cmpb	$51, 2(%r13)
	jne	.L4766
	movq	-2640(%rbp), %rax
	cmpb	$51, 2(%rax)
	jne	.L4765
	movzwl	(%r13), %eax
	cmpl	$71, %eax
	je	.L3023
	cmpl	$66, %eax
	je	.L4944
.L3027:
	cmpl	$75, %eax
	je	.L3031
	cmpl	$78, %eax
	je	.L3031
.L3026:
	movq	-2640(%rbp), %rdx
	movzwl	(%rdx), %eax
	cmpl	$71, %eax
	je	.L3036
	cmpl	$66, %eax
	je	.L4945
.L3040:
	cmpl	$75, %eax
	je	.L3044
	cmpl	$78, %eax
	je	.L3044
.L3039:
	movq	-2456(%rbp), %rdx
	movzwl	(%rdx), %eax
	cmpl	$71, %eax
	je	.L3049
	cmpl	$66, %eax
	je	.L4946
.L3053:
	cmpl	$75, %eax
	je	.L3057
	cmpl	$78, %eax
	je	.L3057
.L3052:
	movq	-2440(%rbp), %rdx
	cmpw	$66, (%rdx)
	jne	.L4764
	movq	-2448(%rbp), %rax
	cmpw	$66, (%rax)
	jne	.L4763
	cmpq	$0, -2456(%rbp)
	je	.L4762
	movq	-2456(%rbp), %rcx
	cmpw	$54, (%rcx)
	je	.L4947
.L3065:
	shrl	$3, %r15d
	xorl	%edi, %edi
	mov	%r15d, %esi
	call	gen_rtx_CONST_INT
	movl	class_narrowest_mode+4(%rip), %r12d
	movl	$1, volatile_ok(%rip)
	movq	%rax, -1336(%rbp)
	testl	%r12d, %r12d
	je	.L4368
.L3198:
	movslq	%r12d,%r15
	movl	movstr_optab(,%r15,4), %edx
	cmpl	$1317, %edx
	je	.L3184
	movq	-2456(%rbp), %rsi
	cmpw	$54, (%rsi)
	je	.L4948
.L3188:
	testb	$2, target_flags+3(%rip)
	je	.L3189
	cmpw	$63, mode_bitsize(%r15,%r15)
.L4618:
	jbe	.L3184
.L3187:
	movslq	%edx,%r9
	leaq	(%r9,%r9,4), %r8
	movq	%r9, -1344(%rbp)
	movq	insn_data+24(,%r8,8), %r14
	movq	(%r14), %rax
	testq	%rax, %rax
	je	.L3191
	movq	-2440(%rbp), %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L3184
.L3191:
	movq	24(%r14), %rax
	testq	%rax, %rax
	jne	.L4949
.L3192:
	movq	72(%r14), %rax
	testq	%rax, %rax
	je	.L3193
	xorl	%esi, %esi
	movq	-1336(%rbp), %rdi
	call	*%rax
	testl	%eax, %eax
	je	.L3184
.L3193:
	call	get_last_insn
	movl	$1, %edx
	movq	-2456(%rbp), %rsi
	movl	%r12d, %edi
	movq	%rax, -1352(%rbp)
	call	convert_to_mode
	movq	%rax, %rbx
	movq	48(%r14), %rax
	testq	%rax, %rax
	jne	.L4950
.L3194:
	movq	-1344(%rbp), %rdx
	movq	-2440(%rbp), %rdi
	xorl	%eax, %eax
	movq	-2448(%rbp), %rsi
	movq	-1336(%rbp), %rcx
	leaq	(%rdx,%rdx,4), %r12
	movq	%rbx, %rdx
	call	*insn_data+16(,%r12,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L4504
	movq	-1352(%rbp), %rdi
	call	delete_insns_since
.L3184:
	movzbl	mode_wider_mode(%r15), %r12d
	testl	%r12d, %r12d
	jne	.L3198
.L4368:
	testb	$2, target_flags+3(%rip)
	movq	-2440(%rbp), %rcx
	movl	$0, volatile_ok(%rip)
	setne	%r14b
	movq	8(%rcx), %rsi
	movzbl	%r14b, %edi
	addl	$4, %edi
	call	copy_to_mode_reg
	testb	$2, target_flags+3(%rip)
	setne	%bl
	movq	%rax, %r14
	movq	-2448(%rbp), %rax
	movq	8(%rax), %rsi
	movzbl	%bl, %edi
	addl	$4, %edi
	call	copy_to_mode_reg
	movq	-2456(%rbp), %rsi
	movq	sizetype_tab(%rip), %r10
	movq	%rax, %rbx
	movzbl	61(%r10), %r15d
	shrb	$1, %r15b
	movzbl	%r15b, %edi
	call	copy_to_mode_reg
	cmpq	$0, fn.1(%rip)
	movq	%rax, %r15
	je	.L4951
.L3207:
	movq	global_trees+216(%rip), %rdi
	call	build_pointer_type
	movq	%r14, %rsi
	movq	%rax, %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	global_trees+216(%rip), %rdi
	movq	%rax, %r12
	call	build_pointer_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	%r15, %rsi
	movq	%rax, (%r12)
	movq	%rax, %rbx
	movq	sizetype_tab(%rip), %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	fn.1(%rip), %rdx
	movq	%rax, (%rbx)
	movq	(%r12), %rbx
	movq	8(%rdx), %rdi
	movq	(%rbx), %r10
	movq	$0, (%r10)
	call	build_pointer_type
	movq	fn.1(%rip), %rdx
	movl	$121, %edi
	movq	%rax, %rsi
	call	build1
	xorl	%r8d, %r8d
	movq	%r12, %rcx
	movq	fn.1(%rip), %r15
	movq	%rax, %rdx
	movl	$53, %edi
	xorl	%eax, %eax
	movq	8(%r15), %r9
	movq	8(%r9), %rsi
	call	build
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	orb	$1, 17(%rax)
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	expand_expr
	testb	$4, 3(%r14)
	je	.L2985
	movl	$49, %edi
	xorl	%esi, %esi
	movq	%r14, %rdx
	jmp	.L4641
.L4951:
	movl	$.LC11, %edi
	call	get_identifier
	movq	global_trees+216(%rip), %rdi
	movq	%rax, fn.1(%rip)
	call	build_pointer_type
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	build_function_type
	movq	fn.1(%rip), %rsi
	movl	$30, %edi
	movq	%rax, %rdx
	call	build_decl
	movl	$1, %esi
	movl	$fn.1, %edi
	movq	%rax, fn.1(%rip)
	call	ggc_add_tree_root
	movq	fn.1(%rip), %r8
	orb	$1, 49(%r8)
	movq	fn.1(%rip), %r11
	orb	$8, 18(%r11)
	movq	fn.1(%rip), %rsi
	orb	$64, 50(%rsi)
	xorl	%esi, %esi
	movq	fn.1(%rip), %rdi
	orb	$2, 18(%rdi)
	movq	fn.1(%rip), %rdi
	call	make_decl_rtl
	movq	fn.1(%rip), %rdi
	call	assemble_external
	jmp	.L3207
.L4950:
	movq	%rbx, %rdi
	movl	%r12d, %esi
	call	*%rax
	testl	%eax, %eax
	jne	.L3194
	movq	%rbx, %rsi
	movl	%r12d, %edi
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L3194
.L4949:
	movq	-2448(%rbp), %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L3184
	jmp	.L3192
.L3189:
	cmpw	$31, mode_bitsize(%r15,%r15)
	jmp	.L4618
.L4948:
	movq	mode_mask_array(,%r15,8), %r11
	shrq	$1, %r11
	cmpq	%r11, 8(%rsi)
	jbe	.L3187
	jmp	.L3188
.L4947:
	movq	8(%rcx), %r12
	xorl	%r14d, %r14d
	movl	$17, %esi
.L3078:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L4357
.L3075:
	movslq	%ecx,%r8
	movzbq	mode_size(%r8), %r9
	cmpq	%rsi, %r9
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r8), %ecx
	testl	%ecx, %ecx
	jne	.L3075
.L4357:
	testl	%edi, %edi
	je	.L3068
	movslq	%edi,%rbx
	movq	%rbx, %rcx
	salq	$4, %rcx
	addq	optab_table+240(%rip), %rcx
	cmpl	$1317, 8(%rcx)
	je	.L3077
	call	get_mode_alignment
	movl	$128, %r10d
	cmpl	%eax, %r10d
	jb	.L3077
	movzbq	mode_size(%rbx), %rsi
	movq	%r12, %rax
	xorl	%edx, %edx
	divq	%rsi
	addq	%rax, %r14
	movq	%rdx, %r12
.L3077:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L3078
.L3068:
	testq	%r12, %r12
	jne	.L4757
	movl	optimize_size(%rip), %eax
	testl	%eax, %eax
	jne	.L3081
	movq	ix86_cost(%rip), %r11
	mov	40(%r11), %ebx
	cmpq	%rbx, %r14
	jae	.L3065
.L3082:
	movq	-2456(%rbp), %r8
	movq	-2448(%rbp), %rdi
	movq	-2440(%rbp), %r10
	movq	-2440(%rbp), %rdx
	testb	$2, target_flags+3(%rip)
	movq	8(%r8), %r12
	setne	%r14b
	movq	8(%rdi), %r8
	movq	$0, -568(%rbp)
	movl	$0, -2468(%rbp)
	movq	%r8, -592(%rbp)
	movzbl	%r14b, %ecx
	movq	8(%r10), %r9
	movq	%rdx, -624(%rbp)
	leal	5(,%rcx,4), %r14d
	xorl	%ecx, %ecx
	movq	%r9, -2464(%rbp)
	movq	-2464(%rbp), %rax
	movzwl	(%rax), %edx
	leal	-96(%rdx), %r15d
	cmpw	$1, %r15w
	jbe	.L3087
	cmpw	$99, %dx
	je	.L3087
	cmpw	$98, %dx
	je	.L3087
.L3086:
	movq	-2464(%rbp), %rsi
	movl	%ecx, -608(%rbp)
	xorl	%edx, %edx
	movzwl	(%rsi), %eax
	cmpw	$96, %ax
	je	.L3089
	cmpw	$98, %ax
	je	.L3089
.L3088:
	movq	-2464(%rbp), %r15
	movq	-2448(%rbp), %r11
	movl	%edx, -560(%rbp)
	xorl	%ecx, %ecx
	movq	%r15, -616(%rbp)
	movq	%r11, -600(%rbp)
	movzwl	(%r8), %edx
	leal	-96(%rdx), %ebx
	cmpw	$1, %bx
	jbe	.L3092
	cmpw	$99, %dx
	je	.L3092
	cmpw	$98, %dx
	je	.L3092
.L3091:
	movl	-560(%rbp), %eax
	movl	%ecx, -584(%rbp)
	movl	$0, -580(%rbp)
	movl	$0, -604(%rbp)
	testl	%eax, %eax
	je	.L3093
	movq	%r12, -568(%rbp)
.L3093:
	movl	-584(%rbp), %eax
	movq	%r12, -576(%rbp)
	testl	%eax, %eax
	je	.L3095
	movl	-608(%rbp), %eax
	testl	%eax, %eax
	jne	.L3094
.L3095:
	xorl	%r15d, %r15d
	movl	$17, %esi
.L3108:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L4360
.L3105:
	movslq	%ecx,%r9
	movzbq	mode_size(%r9), %rdx
	cmpq	%rsi, %rdx
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r9), %ecx
	testl	%ecx, %ecx
	jne	.L3105
.L4360:
	testl	%edi, %edi
	je	.L3098
	movslq	%edi,%rbx
	movq	%rbx, %r10
	salq	$4, %r10
	addq	optab_table+240(%rip), %r10
	cmpl	$1317, 8(%r10)
	je	.L3107
	movq	%r8, -2648(%rbp)
	call	get_mode_alignment
	movq	-2648(%rbp), %r8
	movl	$128, %ecx
	cmpl	%eax, %ecx
	jb	.L3107
	movzbq	mode_size(%rbx), %rsi
	movq	%r12, %rax
	xorl	%edx, %edx
	divq	%rsi
	addq	%rax, %r15
	movq	%rdx, %r12
.L3107:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L3108
.L3098:
	testq	%r12, %r12
	jne	.L4757
	cmpq	$2, %r15
	jbe	.L3094
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L4362
.L3116:
	movslq	%ecx,%rbx
	movzbl	mode_size(%rbx), %r11d
	cmpl	%r14d, %r11d
	cmovae	-2468(%rbp), %ecx
	movl	%ecx, -2468(%rbp)
	movzbl	mode_wider_mode(%rbx), %ecx
	testl	%ecx, %ecx
	jne	.L3116
.L4362:
	movl	-584(%rbp), %eax
	testl	%eax, %eax
	jne	.L3122
	movzwl	(%r8), %edx
	leal	-67(%rdx), %r15d
	cmpw	$1, %r15w
	jbe	.L3120
	cmpw	$54, %dx
	je	.L3120
	cmpw	$55, %dx
	je	.L3120
	cmpw	$58, %dx
	je	.L3120
	cmpw	$134, %dx
	je	.L3120
	cmpw	$56, %dx
	je	.L3120
	cmpw	$140, %dx
	je	.L3120
.L3122:
	movl	-608(%rbp), %r8d
	testl	%r8d, %r8d
	jne	.L3094
	movq	-2464(%rbp), %r10
	movzwl	(%r10), %edx
	leal	-67(%rdx), %r9d
	cmpw	$1, %r9w
	jbe	.L3124
	cmpw	$54, %dx
	je	.L3124
	cmpw	$55, %dx
	je	.L3124
	cmpw	$58, %dx
	je	.L3124
	cmpw	$134, %dx
	je	.L3124
	cmpw	$56, %dx
	je	.L3124
	cmpw	$140, %dx
	je	.L3124
.L3094:
	cmpl	$1, %r14d
	jbe	.L3127
.L3178:
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L4365
.L3134:
	movslq	%ecx,%r12
	movzbl	mode_size(%r12), %edx
	cmpl	%r14d, %edx
	cmovae	-2468(%rbp), %ecx
	movl	%ecx, -2468(%rbp)
	movzbl	mode_wider_mode(%r12), %ecx
	testl	%ecx, %ecx
	jne	.L3134
.L4365:
	movl	-2468(%rbp), %r14d
	testl	%r14d, %r14d
	je	.L3127
	movslq	-2468(%rbp),%r15
	movq	%r15, %rcx
	salq	$4, %rcx
	addq	optab_table+240(%rip), %rcx
	movl	8(%rcx), %ebx
	cmpl	$1317, %ebx
	je	.L3136
	movl	-2468(%rbp), %edi
	call	get_mode_alignment
	movl	$128, %edi
	cmpl	%eax, %edi
	jb	.L3136
	movzbq	mode_size(%r15), %rdx
	movslq	%ebx,%r11
	leaq	-624(%rbp), %r12
	leaq	(%r11,%r11,4), %rbx
	cmpq	%rdx, -576(%rbp)
	movq	$0, -2480(%rbp)
	movq	insn_data+16(,%rbx,8), %rsi
	movq	%rdx, -1656(%rbp)
	movq	%rsi, -1328(%rbp)
	jb	.L3136
	movl	-560(%rbp), %ecx
.L3176:
	testl	%ecx, %ecx
	je	.L3140
	subq	%rdx, 56(%r12)
.L3140:
	movq	(%r12), %rdi
	testq	%rdi, %rdi
	je	.L3141
	movl	16(%r12), %eax
	testl	%eax, %eax
	je	.L3142
	movl	-2468(%rbp), %esi
	movq	8(%r12), %rdx
	movl	$1, %r8d
	movq	56(%r12), %rcx
	call	adjust_automodify_address_1
.L4614:
	movq	%rax, -2480(%rbp)
.L3141:
	movl	40(%r12), %r8d
	testl	%r8d, %r8d
	je	.L3144
	movq	24(%r12), %rdi
	movl	-2468(%rbp), %esi
	movl	$1, %r8d
	movq	32(%r12), %rdx
	movq	56(%r12), %rcx
	call	adjust_automodify_address_1
.L4615:
	cmpq	$0, (%r12)
	movq	%rax, %r14
	jne	.L4952
	movl	target_flags(%rip), %eax
	testl	$33554432, %eax
	movl	%eax, %esi
	je	.L3150
	movzbl	mode_size(%r15), %r9d
	leal	7(%r9), %edx
	andl	$-8, %edx
.L3151:
	movq	cfun(%rip), %rcx
	andl	$33554432, %esi
	movq	16(%rcx), %rbx
	leaq	8(%rbx), %rdi
	movl	8(%rbx), %ecx
	je	.L3152
	movzbl	mode_size(%r15), %eax
	addl	$7, %eax
	andl	$-8, %eax
.L4616:
	leal	(%rax,%rcx), %esi
	movl	%esi, (%rdi)
	movq	%r15, %rdi
	salq	$4, %rdi
	addq	optab_table+384(%rip), %rdi
	movl	8(%rdi), %eax
	cmpl	$1317, %eax
	je	.L3154
	movslq	%eax,%rbx
	leaq	(%rbx,%rbx,4), %r11
	movq	insn_data+24(,%r11,8), %rdx
	movq	(%rdx), %rax
	testq	%rax, %rax
	je	.L3155
	movq	%r14, %rdi
	movl	-2468(%rbp), %esi
	call	*%rax
	testl	%eax, %eax
	je	.L4953
.L3155:
	leaq	(%rbx,%rbx,4), %r8
	movq	%r14, %rdi
	xorl	%eax, %eax
	call	*insn_data+16(,%r8,8)
.L4617:
	movq	%rax, %rdi
	call	emit_insn
.L3174:
	movl	64(%r12), %eax
	testl	%eax, %eax
	movl	%eax, %ecx
	jne	.L3175
	movq	-1656(%rbp), %r14
	addq	%r14, 56(%r12)
.L3175:
	movq	48(%r12), %rsi
	movq	-1656(%rbp), %rdx
	subq	-1656(%rbp), %rsi
	cmpq	%rdx, %rsi
	movq	%rsi, 48(%r12)
	jae	.L3176
.L3136:
	movzbl	mode_size(%r15), %r14d
	cmpl	$1, %r14d
	ja	.L3178
.L3127:
	cmpq	$0, -576(%rbp)
	jmp	.L4767
.L4953:
	movl	-2468(%rbp), %edi
	movq	%r14, %rsi
	call	force_reg
	movq	%rax, %r14
	jmp	.L3155
.L3154:
	movzbl	mode_size(%r15), %r9d
	cmpl	%edx, %r9d
	je	.L4954
	mov	%edx, %esi
	xorl	%edi, %edi
	negq	%rsi
	call	gen_rtx_CONST_INT
	movq	global_rtl+16(%rip), %rdx
	movl	$75, %edi
	testb	$2, target_flags+3(%rip)
	movq	%rax, %rcx
	setne	%bl
	movzbl	%bl, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_ee
	movq	global_rtl+16(%rip), %rdx
	movl	$100, %edi
	testb	$2, target_flags+3(%rip)
	movq	%rax, %rcx
	setne	%r10b
	movzbl	%r10b, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_ee
.L3162:
	movl	-2468(%rbp), %edi
	movq	%rax, %rsi
	call	gen_rtx_MEM
	xorl	%ecx, %ecx
	testq	%rcx, %rcx
	movq	%rax, %rbx
	je	.L3171
	movq	%rax, %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	call	set_mem_attributes
	movl	flag_optimize_sibling_calls(%rip), %edi
	testl	%edi, %edi
	jne	.L4955
.L3171:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	call	emit_move_insn
	jmp	.L3174
.L4955:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	call	set_mem_alias_set
	jmp	.L3171
.L4954:
	testb	$2, target_flags+3(%rip)
	movq	global_rtl+16(%rip), %rdx
	movl	$96, %edi
	setne	%al
	movzbl	%al, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_e
	jmp	.L3162
.L3152:
	movzbl	mode_size(%r15), %eax
	incl	%eax
	andl	$-2, %eax
	jmp	.L4616
.L3150:
	movzbl	mode_size(%r15), %r10d
	leal	1(%r10), %edx
	andl	$-2, %edx
	jmp	.L3151
.L4952:
	movq	%rax, %rsi
	movq	-2480(%rbp), %rdi
	xorl	%eax, %eax
	call	*-1328(%rbp)
	jmp	.L4617
.L3144:
	movq	24(%r12), %rdi
	movl	-2468(%rbp), %esi
	movl	$1, %ecx
	movq	56(%r12), %rdx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L4615
.L3142:
	movl	-2468(%rbp), %esi
	movq	56(%r12), %rdx
	movl	$1, %ecx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L4614
.L3124:
	movq	-2464(%rbp), %rdi
	call	copy_addr_to_reg
	movq	%rax, -616(%rbp)
	jmp	.L3094
.L3120:
	movq	%r8, %rdi
	call	copy_addr_to_reg
	movq	%rax, -592(%rbp)
	jmp	.L3122
.L3092:
	movl	$1, %ecx
	jmp	.L3091
.L3089:
	movl	$1, %edx
	jmp	.L3088
.L3087:
	movl	$1, %ecx
	jmp	.L3086
.L3081:
	cmpq	$2, %r14
	ja	.L3065
	jmp	.L3082
.L3057:
	movq	-2456(%rbp), %rcx
	xorl	%esi, %esi
	movq	8(%rcx), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	-2456(%rbp), %rbx
	movq	%rax, %r12
	movq	16(%rbx), %rdi
	call	protect_from_queue
	movq	-2456(%rbp), %rcx
	movq	%rax, %rbx
	cmpq	8(%rcx), %r12
	je	.L4956
.L3059:
	movq	-2456(%rbp), %rdi
	call	copy_rtx
	movq	%rax, -2456(%rbp)
	movq	%r12, 8(%rax)
	movq	-2456(%rbp), %r14
	movq	%rbx, 16(%r14)
	jmp	.L3052
.L4956:
	cmpq	16(%rcx), %rax
	jne	.L3059
	jmp	.L3052
.L4946:
	cmpb	$51, 2(%rdx)
	je	.L3050
	movq	8(%rdx), %r12
	cmpw	$71, (%r12)
	je	.L4957
.L3050:
	cmpl	$66, %eax
	jne	.L3053
	movq	-2456(%rbp), %r9
	xorl	%esi, %esi
	movq	8(%r9), %rdi
	call	protect_from_queue
	movq	-2456(%rbp), %rsi
	movq	%rax, %rbx
	cmpq	8(%rsi), %rax
	je	.L3052
	movq	%rsi, %rdi
	call	copy_rtx
	movq	%rax, -2456(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L3052
.L4957:
	movq	8(%r12), %rsi
	movq	%rdx, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%r12)
	movq	%rax, %rbx
	je	.L3051
	movq	-2456(%rbp), %r8
	movzbl	2(%r8), %edi
	call	gen_reg_rtx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, -2456(%rbp)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L3052
.L3051:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L4613:
	movq	%rax, -2456(%rbp)
	jmp	.L3052
.L3049:
	movq	-2456(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.L4958
	movq	-2456(%rbp), %r10
	movq	24(%r10), %rax
	testq	%rax, %rax
	jne	.L4613
	movq	-2456(%rbp), %r11
	movq	8(%r11), %rsi
	movzbl	2(%rsi), %edi
	call	gen_reg_rtx
	movq	-2456(%rbp), %r12
	movq	%rax, %rdi
	movq	8(%r12), %rsi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %rdi
	movq	%rdi, -2456(%rbp)
	jmp	.L3052
.L4958:
	movq	8(%rax), %rdi
	call	copy_to_reg
	jmp	.L4613
.L3044:
	movq	-2640(%rbp), %r14
	xorl	%esi, %esi
	movq	8(%r14), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	-2640(%rbp), %rcx
	movq	%rax, %r12
	movq	16(%rcx), %rdi
	call	protect_from_queue
	movq	-2640(%rbp), %rcx
	movq	%rax, %rbx
	cmpq	8(%rcx), %r12
	je	.L4959
.L3046:
	movq	-2640(%rbp), %rdi
	call	copy_rtx
	movq	%rax, -2448(%rbp)
	movq	%r12, 8(%rax)
	movq	-2448(%rbp), %r10
	movq	%rbx, 16(%r10)
	jmp	.L3039
.L4959:
	cmpq	16(%rcx), %rax
	jne	.L3046
	jmp	.L3039
.L4945:
	cmpb	$51, 2(%rdx)
	je	.L3037
	movq	8(%rdx), %r12
	cmpw	$71, (%r12)
	je	.L4960
.L3037:
	cmpl	$66, %eax
	jne	.L3040
	movq	-2640(%rbp), %r12
	xorl	%esi, %esi
	movq	8(%r12), %rdi
	call	protect_from_queue
	movq	-2640(%rbp), %rsi
	movq	%rax, %rbx
	cmpq	8(%rsi), %rax
	je	.L3039
	movq	%rsi, %rdi
	call	copy_rtx
	movq	%rax, -2448(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L3039
.L4960:
	movq	8(%r12), %rsi
	movq	%rdx, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%r12)
	movq	%rax, %rbx
	je	.L3038
	movq	-2640(%rbp), %r9
	movzbl	2(%r9), %edi
	call	gen_reg_rtx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, -2448(%rbp)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L3039
.L3038:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L4612:
	movq	%rax, -2448(%rbp)
	jmp	.L3039
.L3036:
	movq	-2640(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.L4961
	movq	-2640(%rbp), %rdi
	movq	24(%rdi), %rsi
	testq	%rsi, %rsi
	movq	%rsi, -2448(%rbp)
	jne	.L3039
	movq	-2640(%rbp), %rax
	movq	8(%rax), %rdx
	movzbl	2(%rdx), %edi
	call	gen_reg_rtx
	movq	-2640(%rbp), %r12
	movq	%rax, %rdi
	movq	8(%r12), %rsi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %r11
	movq	%r11, -2448(%rbp)
	jmp	.L3039
.L4961:
	movq	8(%rax), %rdi
	call	copy_to_reg
	jmp	.L4612
.L3031:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, %r12
	call	protect_from_queue
	cmpq	8(%r13), %r12
	movq	%rax, %rbx
	je	.L4962
.L3033:
	movq	%r13, %rdi
	call	copy_rtx
	movq	%rax, -2440(%rbp)
	movq	%r12, 8(%rax)
	movq	-2440(%rbp), %rdx
	movq	%rbx, 16(%rdx)
	jmp	.L3026
.L4962:
	cmpq	16(%r13), %rax
	jne	.L3033
	jmp	.L3026
.L4944:
	jne	.L3027
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%r13), %rax
	movq	%rax, %rbx
	je	.L3026
	movq	%r13, %rdi
	call	copy_rtx
	movq	%rax, -2440(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L3026
.L3023:
	testq	%rsi, %rsi
	je	.L4963
	movq	24(%r13), %rbx
	testq	%rbx, %rbx
	movq	%rbx, -2440(%rbp)
	jne	.L3026
	movq	8(%r13), %r8
	movzbl	2(%r8), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %rax
.L4611:
	movq	%rax, -2440(%rbp)
	jmp	.L3026
.L4963:
	movq	8(%r13), %rdi
	call	copy_to_reg
	jmp	.L4611
.L3016:
	testq	%rsi, %rsi
	movl	$8, %r15d
	je	.L3012
	movl	32(%rsi), %r15d
	jmp	.L3012
.L3015:
	cmpl	$7, %edx
	ja	.L3011
	jmp	.L3016
	.p2align 6,,7
.L3000:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, %r12
	call	protect_from_queue
	cmpq	8(%r13), %r12
	movq	%rax, %rbx
	je	.L4964
.L3002:
	movq	%r13, %rdi
	call	copy_rtx
	movq	%rax, %r13
	movq	%r12, 8(%rax)
	movq	%rbx, 16(%rax)
	jmp	.L2995
.L4964:
	cmpq	16(%r13), %rax
	jne	.L3002
	jmp	.L2995
.L4877:
	jne	.L2996
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%r13), %rax
	movq	%rax, %rbx
	je	.L2995
	movq	%r13, %rdi
	call	copy_rtx
	movq	%rax, %r13
	movq	%rbx, 8(%rax)
	jmp	.L2995
	.p2align 6,,7
.L2992:
	cmpq	$0, 16(%r13)
	je	.L4965
	movq	24(%r13), %rax
	testq	%rax, %rax
	je	.L3004
.L4610:
	movq	%rax, %r13
	jmp	.L2995
.L3004:
	movq	8(%r13), %r9
	movzbl	2(%r9), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %r13
	jmp	.L2995
.L4965:
	movq	8(%r13), %rdi
	call	copy_to_reg
	jmp	.L4610
.L4876:
	movq	144(%r15), %rax
	testq	%rax, %rax
	je	.L2987
	cmpq	%rax, %r13
	jne	.L2987
	jmp	.L2985
	.p2align 6,,7
.L4875:
	movq	%r13, %rdi
	call	side_effects_p
	testl	%eax, %eax
	je	.L2985
	jmp	.L2986
	.p2align 6,,7
.L2984:
	movq	-2640(%rbp), %rdx
	cmpb	$0, 2(%rdx)
	jne	.L2983
	cmpb	$0, 16(%r15)
	je	.L2983
	movq	8(%r15), %rdx
	movzbl	2(%r13), %edi
	movzbl	61(%rdx), %r8d
	shrb	$1, %r8b
	movzbl	%r8b, %esi
	cmpl	%esi, %edi
	je	.L2983
	movzbl	17(%rdx), %ecx
	movq	-2640(%rbp), %rdx
	shrb	$5, %cl
	andl	$1, %ecx
	call	convert_modes
	movq	%rax, -2640(%rbp)
	jmp	.L2983
.L4476:
	movq	-2640(%rbp), %rax
	movzwl	(%rax), %edx
	jmp	.L2906
.L4874:
	movzbl	%al, %edi
	call	gen_reg_rtx
	movq	%r15, %rdi
	movzbl	2(%r13), %edx
	movq	%rax, %rsi
	jmp	.L4609
.L2945:
	xorl	%r8d, %r8d
	testl	%r8d, %r8d
	je	.L4472
	movl	(%r13), %ecx
	movl	%ecx, %r9d
	andl	$134283263, %r9d
	cmpl	$66, %r9d
	je	.L4966
.L2961:
	andl	$268500991, %ecx
	cmpl	$268435519, %ecx
	je	.L4967
	movzbl	2(%r13), %edx
	xorl	%ecx, %ecx
	movq	%r15, %rdi
	movq	%r13, %rsi
	call	expand_expr
	cmpw	$61, (%r13)
	movq	%rax, -2640(%rbp)
	je	.L4968
.L2981:
	movl	(%r13), %eax
	andl	$134283263, %eax
	cmpl	$134217794, %eax
	je	.L4475
	movq	-2640(%rbp), %rdi
	movq	%r13, %rsi
	call	rtx_equal_p
	testl	%eax, %eax
	jne	.L4476
	movq	-2640(%rbp), %r14
	movzwl	(%r14), %edx
	leal	-67(%rdx), %ecx
	cmpw	$1, %cx
	jbe	.L2982
	cmpw	$54, %dx
	je	.L2982
	cmpw	$55, %dx
	je	.L2982
	cmpw	$58, %dx
	je	.L2982
	cmpw	$134, %dx
	je	.L2982
	cmpw	$56, %dx
	je	.L2982
	cmpw	$140, %dx
	je	.L2982
	xorl	%r10d, %r10d
	testl	%r10d, %r10d
	je	.L2906
.L2982:
	movl	$1, -2428(%rbp)
	jmp	.L2906
.L4475:
	movq	-2640(%rbp), %r11
	movzwl	(%r11), %edx
	jmp	.L2906
.L4968:
	cmpl	$52, 8(%r13)
	ja	.L2981
	movq	-2640(%rbp), %rdi
	movzwl	(%rdi), %edx
	jmp	.L2906
.L4967:
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	testl	%ecx, %ecx
	jne	.L2967
	movq	8(%r15), %rsi
	movzbl	16(%rsi), %eax
	cmpb	$6, %al
	je	.L2968
	cmpb	$10, %al
	je	.L2968
	cmpb	$11, %al
	je	.L2968
	cmpb	$12, %al
	je	.L2968
.L2967:
	movq	%rdx, %rsi
	xorl	%ecx, %ecx
	movq	%r15, %rdi
	xorl	%edx, %edx
	call	expand_expr
	movzwl	(%rax), %edx
	movq	%rax, %rbx
	cmpw	$66, %dx
	je	.L4969
.L2970:
	leal	-67(%rdx), %r12d
	cmpw	$1, %r12w
	jbe	.L2973
	cmpw	$54, %dx
	je	.L2973
	cmpw	$55, %dx
	je	.L2973
	cmpw	$58, %dx
	je	.L2973
	cmpw	$134, %dx
	je	.L2973
	cmpw	$56, %dx
	je	.L2973
	cmpw	$140, %dx
	je	.L2973
.L2972:
	movzbl	3(%r13), %edx
	movq	8(%r13), %rdi
	movq	%rbx, %rsi
	shrb	$2, %dl
	andl	$1, %edx
	call	convert_move
	xorl	%eax, %eax
	testl	%eax, %eax
	je	.L1005
	movzbl	2(%rbx), %edx
	movzbl	2(%r13), %eax
	cmpb	%al, %dl
	je	.L1005
	testb	%dl, %dl
	je	.L2975
	movq	%rbx, %rsi
	movzbl	%al, %edi
	call	gen_lowpart_SUBREG
	movzbl	3(%rax), %ebx
	orb	$16, %bl
	movb	%bl, 3(%rax)
	andb	$-5, %bl
	movzbl	3(%r13), %r8d
	andb	$4, %r8b
	orb	%r8b, %bl
	movb	%bl, 3(%rax)
	jmp	.L1005
.L2975:
	movq	8(%r13), %r9
	movzbl	3(%r13), %ecx
	movzbl	%al, %edi
	movq	%rbx, %rdx
	movzbl	2(%r9), %esi
	shrb	$2, %cl
	andl	$1, %ecx
	call	convert_modes
	jmp	.L1005
.L2973:
	cmpb	$0, 2(%rbx)
	jne	.L2972
	movq	8(%r15), %rdx
	movzbl	3(%r13), %ecx
	movzbl	2(%r13), %edi
	movzbl	61(%rdx), %r11d
	movq	%rbx, %rdx
	shrb	$2, %cl
	andl	$1, %ecx
	shrb	$1, %r11b
	movzbl	%r11b, %esi
	call	convert_modes
	movzbl	3(%r13), %ecx
	movzbl	2(%r13), %esi
	movq	8(%r13), %r15
	movq	%rax, %rdx
	movzbl	2(%r15), %edi
	shrb	$2, %cl
	andl	$1, %ecx
	call	convert_modes
	movq	%rax, %rbx
	jmp	.L2972
.L4969:
	xorl	%edi, %edi
	testl	%edi, %edi
	je	.L2970
	testb	$8, 3(%rax)
	jne	.L2971
	movq	8(%r13), %rdi
	movq	8(%rax), %rsi
	call	reg_mentioned_p
	testl	%eax, %eax
	je	.L4473
.L2971:
	movq	%rbx, %rdi
	call	copy_to_reg
	movq	%rax, %rbx
.L4473:
	movzwl	(%rbx), %edx
	jmp	.L2970
.L2968:
	cmpq	$0, 8(%rsi)
	jne	.L2967
	movzbl	3(%r13), %ecx
	movzbl	17(%rsi), %r14d
	movl	$1, %edi
	movl	%ecx, %r10d
	shrb	$5, %r14b
	shrb	$2, %r10b
	andl	$1, %r14d
	andl	%r10d, %edi
	cmpl	%edi, %r14d
	je	.L2969
	call	signed_or_unsigned_type
	movq	%r15, %rsi
	movq	%rax, %rdi
	call	convert
	movzbl	3(%r13), %ecx
	movq	%rax, %r15
.L2969:
	movq	8(%r13), %rsi
	shrb	$2, %cl
	movzbl	2(%rsi), %edi
	movl	$1, %esi
	andl	%ecx, %esi
	call	type_for_mode
	movq	%r15, %rsi
	movq	%rax, %rdi
	call	convert
	movq	8(%r13), %rdx
	movq	%rax, %r15
	jmp	.L2967
.L4966:
	movzbl	2(%r13), %eax
	cmpb	$51, %al
	je	.L2961
	xorl	%ecx, %ecx
	movzbl	%al, %edx
	movq	%r15, %rdi
	movq	%r13, %rsi
	call	expand_expr
	movq	%rax, -2640(%rbp)
	movq	%rax, %rcx
	movzbl	2(%rax), %eax
	cmpb	$51, %al
	je	.L2962
	testb	%al, %al
	je	.L2962
	cmpq	%r13, %rcx
	je	.L2964
	movq	%rcx, %rdi
	movq	%r13, %rsi
	call	rtx_equal_p
	testl	%eax, %eax
	jne	.L4970
.L2963:
	movq	-2640(%rbp), %rdi
	call	copy_to_reg
	movq	%rax, -2640(%rbp)
.L2962:
	movl	$1, -2428(%rbp)
	jmp	.L4475
.L4970:
	movq	-2640(%rbp), %rdi
	call	side_effects_p
	testl	%eax, %eax
	jne	.L2963
	movq	%r13, %rdi
	call	side_effects_p
	testl	%eax, %eax
	jne	.L2963
.L2964:
	movl	$1, %r12d
	jmp	.L2963
	.p2align 6,,7
.L4472:
	movl	(%r13), %ecx
	jmp	.L2961
.L2954:
	movl	$1, %ebx
	jmp	.L2948
.L2955:
	xorl	%ebx, %ebx
	jmp	.L2948
.L2952:
	movq	8(%r13), %rdi
	xorl	%ebx, %ebx
	call	queued_subexp_p
	testl	%eax, %eax
	jne	.L2954
	movq	16(%r13), %rdi
	call	queued_subexp_p
	testl	%eax, %eax
	je	.L2948
	jmp	.L2954
	.p2align 6,,7
.L4873:
	cmpb	$51, 2(%r13)
	jne	.L2907
	call	gen_label_rtx
	movq	%rax, %r14
	call	gen_label_rtx
	movq	cfun(%rip), %rbx
	movq	%rax, -1320(%rbp)
	movq	16(%rbx), %r12
	movq	40(%r12), %rbx
	testq	%rbx, %rbx
	je	.L4350
.L2913:
	movq	32(%rbx), %rdi
	cmpw	$24, (%rdi)
	je	.L4971
	call	emit_insn
	movq	%rax, 16(%rbx)
.L2912:
	movq	cfun(%rip), %r9
	movq	40(%rbx), %r8
	movq	16(%r9), %rcx
	testq	%r8, %r8
	movq	%r8, %rbx
	movq	%r8, 40(%rcx)
	jne	.L2913
.L4350:
	movzwl	(%r13), %eax
	cmpl	$71, %eax
	je	.L2915
	cmpl	$66, %eax
	je	.L4972
.L2919:
	cmpl	$75, %eax
	je	.L2923
	cmpl	$78, %eax
	je	.L2923
.L2918:
	call	do_pending_stack_adjust
	movq	cfun(%rip), %rbx
	movq	%r14, %rsi
	movq	16(%rbx), %r12
	incl	4(%r12)
	movq	32(%r15), %rdi
	call	jumpifnot
	call	start_cleanup_deferral
	movq	40(%r15), %rdi
	xorl	%edx, %edx
	movq	%r13, %rsi
	call	store_expr
	call	end_cleanup_deferral
	movq	cfun(%rip), %r10
	movq	16(%r10), %rdi
	movq	40(%rdi), %rbx
	testq	%rbx, %rbx
	je	.L4352
.L2933:
	movq	32(%rbx), %rdi
	cmpw	$24, (%rdi)
	je	.L4973
	call	emit_insn
	movq	%rax, 16(%rbx)
.L2932:
	movq	cfun(%rip), %r9
	movq	40(%rbx), %r8
	movq	16(%r9), %rcx
	testq	%r8, %r8
	movq	%r8, %rbx
	movq	%r8, 40(%rcx)
	jne	.L2933
.L4352:
	movq	-1320(%rbp), %rdi
	call	gen_jump
	movq	%rax, %rdi
	call	emit_jump_insn
	call	emit_barrier
	movq	%r14, %rdi
	call	emit_label
	call	start_cleanup_deferral
	movq	48(%r15), %rdi
	movq	%r13, %rsi
	xorl	%edx, %edx
	call	store_expr
	call	end_cleanup_deferral
	movq	cfun(%rip), %r13
	movq	16(%r13), %r15
	movq	40(%r15), %rbx
	testq	%rbx, %rbx
	je	.L4354
.L2940:
	movq	32(%rbx), %rdi
	cmpw	$24, (%rdi)
	je	.L4974
	call	emit_insn
	movq	%rax, 16(%rbx)
.L2939:
	movq	cfun(%rip), %r12
	movq	40(%rbx), %rdi
	movq	16(%r12), %r10
	testq	%rdi, %rdi
	movq	%rdi, %rbx
	movq	%rdi, 40(%r10)
	jne	.L2940
.L4354:
	movq	-1320(%rbp), %rdi
	call	emit_label
	movq	cfun(%rip), %r11
	movq	16(%r11), %rbx
	decl	4(%rbx)
	jmp	.L1005
.L4974:
	movq	8(%rdi), %rsi
	movq	8(%rsi), %r14
	movq	%r14, 16(%rbx)
	call	emit_insn
	jmp	.L2939
.L4973:
	movq	8(%rdi), %rdx
	movq	8(%rdx), %r11
	movq	%r11, 16(%rbx)
	call	emit_insn
	jmp	.L2932
.L2923:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, %r12
	call	protect_from_queue
	cmpq	8(%r13), %r12
	movq	%rax, %rbx
	je	.L4975
.L2925:
	movq	%r13, %rdi
	call	copy_rtx
	movq	%rax, %r13
	movq	%r12, 8(%rax)
	movq	%rbx, 16(%rax)
	jmp	.L2918
.L4975:
	cmpq	16(%r13), %rax
	jne	.L2925
	jmp	.L2918
	.p2align 6,,7
.L4972:
	jne	.L2919
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%r13), %rax
	movq	%rax, %rbx
	je	.L2918
	movq	%r13, %rdi
	call	copy_rtx
	movq	%rax, %r13
	movq	%rbx, 8(%rax)
	jmp	.L2918
	.p2align 6,,7
.L2915:
	cmpq	$0, 16(%r13)
	je	.L4976
	movq	24(%r13), %rax
	testq	%rax, %rax
	je	.L2927
.L4608:
	movq	%rax, %r13
	jmp	.L2918
.L2927:
	movq	8(%r13), %rsi
	movzbl	2(%rsi), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %r13
	jmp	.L2918
.L4976:
	movq	8(%r13), %rdi
	call	copy_to_reg
	jmp	.L4608
	.p2align 6,,7
.L4971:
	movq	8(%rdi), %rdx
	movq	8(%rdx), %r11
	movq	%r11, 16(%rbx)
	call	emit_insn
	jmp	.L2912
.L4872:
	movq	32(%r15), %rdi
	movq	const_int_rtx+512(%rip), %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	call	expand_expr
	movq	cfun(%rip), %r8
	movq	16(%r8), %rdx
	movq	40(%rdx), %rbx
	testq	%rbx, %rbx
	je	.L4348
.L2903:
	movq	32(%rbx), %rdi
	cmpw	$24, (%rdi)
	je	.L4977
	call	emit_insn
	movq	%rax, 16(%rbx)
.L2902:
	movq	cfun(%rip), %r10
	movq	40(%rbx), %rdi
	movq	16(%r10), %rsi
	testq	%rdi, %rdi
	movq	%rdi, %rbx
	movq	%rdi, 40(%rsi)
	jne	.L2903
.L4348:
	movq	40(%r15), %rdi
	movq	%r13, %rsi
	xorl	%edx, %edx
	call	store_expr
	jmp	.L1005
.L4977:
	movq	8(%rdi), %r9
	movq	8(%r9), %rcx
	movq	%rcx, 16(%rbx)
	call	emit_insn
	jmp	.L2902
.L4871:
	movq	-1800(%rbp), %r10
	movq	%r12, %rsi
	movl	$60, %edi
	xorl	%eax, %eax
	movq	104(%r10), %rdx
	call	build
	movq	%rax, %rdi
	call	fold
	movq	sizetype_tab+8(%rip), %rdi
	movq	%rax, %rsi
	call	convert
	movq	%rax, %r12
	jmp	.L2896
.L4870:
	movl	$1, %edi
	movl	$1, %esi
	call	size_int_wide
	movq	%rax, %r12
	jmp	.L2895
.L2892:
	testq	%r12, %r12
	je	.L3804
	movq	%r12, %rdi
	xorl	%esi, %esi
	call	tree_low_cst
	movq	-784(%rbp), %r13
	movq	%rax, %rbx
	subq	-1824(%rbp), %rbx
	movq	32(%r13), %rdi
.L4643:
	movl	$1, %esi
	call	tree_low_cst
	movq	-1744(%rbp), %rcx
	imulq	%rax, %rbx
	movl	(%rcx), %eax
	andl	$16842751, %eax
	cmpl	$66, %eax
	je	.L4978
.L3806:
	movq	-784(%rbp), %rdi
	movq	-1744(%rbp), %r12
	call	get_alias_set
	cmpb	$46, 16(%r15)
	movl	%eax, %r13d
	je	.L4979
.L3807:
	movq	-720(%rbp), %rdx
	movq	-1744(%rbp), %rdi
	movq	%r15, %r8
	movq	-1904(%rbp), %rsi
	movl	-812(%rbp), %ecx
	xorl	%r9d, %r9d
	movl	$0, (%rsp)
	movl	%r13d, 16(%rsp)
	movq	%rdx, 8(%rsp)
	movq	%rbx, %rdx
	call	store_field
	jmp	.L1005
.L4979:
	testl	$7, %ebx 
	jne	.L3807
	testq	%rbx, %rbx
	je	.L4481
	movq	-1744(%rbp), %r9
	cmpw	$66, (%r9)
	jne	.L3807
.L4512:
	movq	-1744(%rbp), %r10
	movzbl	2(%r10), %eax
	cmpb	$51, %al
	je	.L3816
	movzbl	%al, %edi
	call	get_mode_alignment
	xorl	%esi, %esi
	mov	%eax, %r14d
	movq	%rbx, %rax
	cqto
	idivq	%r14
	testq	%rdx, %rdx
	je	.L3815
.L3816:
	movl	$51, %esi
.L3815:
	cmpq	$-1, %rbx
	leaq	7(%rbx), %r8
	movq	-1744(%rbp), %rdi
	cmovle	%r8, %rbx
	movl	$1, %ecx
	movl	$1, %r8d
	sarq	$3, %rbx
	movq	%rbx, %rdx
	call	adjust_address_1
	movq	%rax, %r12
.L3809:
	movl	(%r12), %eax
	andl	$16842751, %eax
	cmpl	$66, %eax
	je	.L4980
.L3818:
	shrq	$3, -1904(%rbp)
	movl	-1884(%rbp), %edx
	movq	%r15, %rdi
	movq	-1904(%rbp), %rcx
	movq	%r12, %rsi
	call	store_constructor
	jmp	.L1005
.L4980:
	movq	16(%r12), %rax
	testq	%rax, %rax
	je	.L3818
	cmpq	$0, (%rax)
	je	.L3818
	movq	%r12, %rdi
	call	copy_rtx
	movslq	%r13d,%rsi
	movq	%rax, %rdi
	movq	%rax, %r12
	call	set_mem_alias_set
	jmp	.L3818
	.p2align 6,,7
.L4481:
	movq	-1744(%rbp), %rdi
	cmpw	$66, (%rdi)
	jne	.L3809
	jmp	.L4512
.L4978:
	movq	-720(%rbp), %rsi
	cmpb	$18, 16(%rsi)
	jne	.L3806
	testb	$8, 62(%rsi)
	je	.L3806
	movq	%rcx, %rdi
	call	copy_rtx
	movq	%rax, -1744(%rbp)
	orb	$1, 3(%rax)
	jmp	.L3806
	.p2align 6,,7
.L3804:
	movq	-784(%rbp), %rcx
	movslq	-1888(%rbp),%rbx
	movq	32(%rcx), %rdi
	jmp	.L4643
.L4869:
	movq	32(%r12), %r13
	movq	40(%r12), %rdx
	movl	-1804(%rbp), %r12d
	movq	%rdx, -824(%rbp)
	testl	%r12d, %r12d
	je	.L1041
	xorl	%esi, %esi
	movq	%r13, %rdi
	call	host_integerp
	testl	%eax, %eax
	jne	.L4981
.L1041:
	movq	-824(%rbp), %rdi
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	xorl	%edx, %edx
	call	expand_expr
	call	gen_label_rtx
	call	gen_label_rtx
	movq	-1800(%rbp), %rdx
	xorl	%esi, %esi
	movl	$34, %edi
	movq	%rax, -832(%rbp)
	movzbl	17(%rdx), %r14d
	shrb	$5, %r14b
	andl	$1, %r14d
	movl	%r14d, -692(%rbp)
	call	build_decl
	xorl	%ecx, %ecx
	movq	%rax, -1920(%rbp)
	movq	-1800(%rbp), %rdi
	leaq	-692(%rbp), %rdx
	movzbl	48(%rax), %esi
	call	promote_mode
	movl	%eax, %edi
	call	gen_reg_rtx
	movq	%rax, %r14
	movq	-1920(%rbp), %rax
	movq	%r14, 144(%rax)
	cmpb	$118, 16(%r15)
	je	.L4982
.L1066:
	movl	$0, -1924(%rbp)
	xorl	%r12d, %r12d
	movzbl	16(%r13), %eax
	cmpb	$47, %al
	je	.L4983
	cmpb	$51, %al
	je	.L4984
.L1084:
	movzwl	(%r14), %eax
	subl	$66, %eax
	cmpl	$12, %eax
	ja	.L1132
	mov	%eax, %r9d
	jmp	*.L1133(,%r9,8)
	.section	.rodata
	.align 8
	.align 4
.L1133:
	.quad	.L1126
	.quad	.L1132
	.quad	.L1132
	.quad	.L1132
	.quad	.L1132
	.quad	.L1131
	.quad	.L1132
	.quad	.L1132
	.quad	.L1132
	.quad	.L1129
	.quad	.L1129
	.quad	.L1132
	.quad	.L1129
	.text
.L1126:
	movq	8(%r14), %rdi
	call	queued_subexp_p
	movl	%eax, %ebx
.L1125:
	testl	%ebx, %ebx
	je	.L1122
	movzbl	2(%r14), %eax
	cmpb	$51, %al
	je	.L1134
	testb	%al, %al
	jne	.L4985
.L1134:
	movzbl	2(%r14), %edx
	movq	%r13, %rdi
	xorl	%esi, %esi
.L4540:
	xorl	%ecx, %ecx
	call	expand_expr
	testb	$8, 3(%r14)
	movq	%rax, -2208(%rbp)
	jne	.L4454
	xorl	%eax, %eax
	testl	%eax, %eax
	je	.L4449
	movl	$1, -1924(%rbp)
.L4454:
	movq	-2208(%rbp), %rbx
	movzwl	(%rbx), %edx
.L1083:
	leal	-67(%rdx), %r8d
	cmpw	$1, %r8w
	jbe	.L1161
	cmpw	$54, %dx
	je	.L1161
	cmpw	$55, %dx
	je	.L1161
	cmpw	$58, %dx
	je	.L1161
	cmpw	$134, %dx
	je	.L1161
	cmpw	$56, %dx
	je	.L1161
	cmpw	$140, %dx
	je	.L1161
.L1160:
	movq	-2208(%rbp), %rdi
	movq	%r14, %rsi
	call	rtx_equal_p
	testl	%eax, %eax
	je	.L1163
	cmpq	%r14, -2208(%rbp)
	je	.L1162
	movq	-2208(%rbp), %rdi
	call	side_effects_p
	testl	%eax, %eax
	je	.L4986
.L1163:
	movzbl	16(%r13), %eax
	testb	%al, %al
	je	.L1162
	testl	%r12d, %r12d
	jne	.L1162
	movzbl	%al, %r12d 
	cmpb	$100, tree_code_type(%r12)
	je	.L4987
.L1164:
	movzwl	(%r14), %eax
	cmpl	$71, %eax
	je	.L1169
	cmpl	$66, %eax
	je	.L4988
.L1173:
	cmpl	$75, %eax
	je	.L1177
	cmpl	$78, %eax
	je	.L1177
.L1172:
	movq	-2208(%rbp), %rsi
	movzbl	2(%r14), %ecx
	movzbl	2(%rsi), %eax
	cmpb	%cl, %al
	je	.L1182
	testb	%al, %al
	je	.L1182
	movq	8(%r13), %rdi
	movl	-1924(%rbp), %eax
	movzbl	17(%rdi), %r13d
	shrb	$5, %r13b
	movl	%r13d, %edx
	andl	$1, %edx
	testl	%eax, %eax
	je	.L1183
	movq	-2208(%rbp), %rsi
	movzbl	%cl, %edi
	call	convert_to_mode
	movq	%r14, %rdi
	movq	%rax, %rsi
	movq	%rax, -2208(%rbp)
.L4572:
	call	emit_move_insn
.L1162:
	xorl	%esi, %esi
	testl	%esi, %esi
	je	.L1082
	movl	-1924(%rbp), %eax
	testl	%eax, %eax
	je	.L1975
	movq	-2208(%rbp), %rdi
	cmpw	$66, (%rdi)
	je	.L1975
.L1082:
	xorl	%edi, %edi
	call	expand_start_loop
	movq	-1800(%rbp), %r9
	movq	-1920(%rbp), %r10
	movq	%rax, -840(%rbp)
	movl	$60, %edi
	xorl	%eax, %eax
	movq	8(%r10), %rsi
	movq	104(%r9), %rcx
	movq	%r10, %rdx
	call	build
	movq	%rax, %rdi
	call	fold
	movq	sizetype_tab+8(%rip), %rdi
	movq	%rax, %rsi
	call	convert
	movq	-784(%rbp), %r8
	movq	sizetype_tab+8(%rip), %rdi
	movq	%rax, %r13
	movq	40(%r8), %rsi
	call	convert
	movq	%r13, %rsi
	movl	$61, %edi
	movq	%rax, %rdx
	call	size_binop
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %r12
	movq	%rax, %rdi
	call	expand_expr
	movq	%r12, %rdi
	movq	%rax, %r14
	call	highest_pow2_factor
	movq	-1744(%rbp), %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	call	offset_address
	movl	$1, %r8d
	movl	$1, %ecx
	movl	-812(%rbp), %esi
	xorl	%edx, %edx
	movq	%rax, %rdi
	call	adjust_address_1
	movq	%rax, %r13
	movzbl	16(%r15), %eax
	cmpb	$46, %al
	je	.L4989
	xorl	%r12d, %r12d
	movl	$0, -2212(%rbp)
	cmpb	$47, %al
	je	.L4990
	cmpb	$51, %al
	je	.L4991
.L1995:
	movzwl	(%r13), %eax
	subl	$66, %eax
	cmpl	$12, %eax
	ja	.L2043
	mov	%eax, %ecx
	jmp	*.L2044(,%rcx,8)
	.section	.rodata
	.align 8
	.align 4
.L2044:
	.quad	.L2037
	.quad	.L2043
	.quad	.L2043
	.quad	.L2043
	.quad	.L2043
	.quad	.L2042
	.quad	.L2043
	.quad	.L2043
	.quad	.L2043
	.quad	.L2040
	.quad	.L2040
	.quad	.L2043
	.quad	.L2040
	.text
.L2037:
	movq	8(%r13), %rdi
	call	queued_subexp_p
	movl	%eax, %ebx
.L2036:
	testl	%ebx, %ebx
	je	.L2033
	movzbl	2(%r13), %eax
	cmpb	$51, %al
	je	.L2045
	testb	%al, %al
	jne	.L4992
.L2045:
	movzbl	2(%r13), %edx
	movq	%r15, %rdi
	xorl	%esi, %esi
.L4574:
	xorl	%ecx, %ecx
	call	expand_expr
	testb	$8, 3(%r13)
	movq	%rax, -2424(%rbp)
	jne	.L4465
	xorl	%eax, %eax
	testl	%eax, %eax
	je	.L4460
	movl	$1, -2212(%rbp)
.L4463:
	movq	-2424(%rbp), %r10
	movzwl	(%r10), %edx
.L1994:
	leal	-67(%rdx), %ebx
	cmpw	$1, %bx
	jbe	.L2072
	cmpw	$54, %dx
	je	.L2072
	cmpw	$55, %dx
	je	.L2072
	cmpw	$58, %dx
	je	.L2072
	cmpw	$134, %dx
	je	.L2072
	cmpw	$56, %dx
	je	.L2072
	cmpw	$140, %dx
	je	.L2072
.L2071:
	movq	-2424(%rbp), %rdi
	movq	%r13, %rsi
	call	rtx_equal_p
	testl	%eax, %eax
	je	.L2074
	cmpq	%r13, -2424(%rbp)
	je	.L2073
	movq	-2424(%rbp), %rdi
	call	side_effects_p
	testl	%eax, %eax
	je	.L4993
.L2074:
	movzbl	16(%r15), %eax
	testb	%al, %al
	je	.L2073
	testl	%r12d, %r12d
	jne	.L2073
	movzbl	%al, %r12d 
	cmpb	$100, tree_code_type(%r12)
	je	.L4994
.L2075:
	movzwl	(%r13), %eax
	cmpl	$71, %eax
	je	.L2080
	cmpl	$66, %eax
	je	.L4995
.L2084:
	cmpl	$75, %eax
	je	.L2088
	cmpl	$78, %eax
	je	.L2088
.L2083:
	movq	-2424(%rbp), %r8
	movzbl	2(%r13), %ecx
	movzbl	2(%r8), %eax
	cmpb	%cl, %al
	je	.L2093
	testb	%al, %al
	je	.L2093
	movq	8(%r15), %r9
	movl	-2212(%rbp), %r15d
	movzbl	17(%r9), %edi
	shrb	$5, %dil
	movl	%edi, %edx
	andl	$1, %edx
	testl	%r15d, %r15d
	je	.L2094
	movq	-2424(%rbp), %rsi
	movzbl	%cl, %edi
	call	convert_to_mode
	movq	%r13, %rdi
	movq	%rax, %rsi
	movq	%rax, -2424(%rbp)
.L4607:
	call	emit_move_insn
.L2073:
	xorl	%eax, %eax
	testl	%eax, %eax
	je	.L1984
	movl	-2212(%rbp), %eax
	testl	%eax, %eax
	je	.L2886
	movq	-2424(%rbp), %r15
	cmpw	$66, (%r15)
	je	.L2886
.L1984:
	movq	-1920(%rbp), %rdx
	movq	-824(%rbp), %rcx
	movl	$97, %edi
	movq	integer_types+40(%rip), %rsi
	xorl	%eax, %eax
	call	build
	movq	-840(%rbp), %rdi
	movq	%rax, %rsi
	call	expand_exit_loop_if_false
	xorl	%eax, %eax
	movq	global_trees+96(%rip), %rcx
	movq	-1920(%rbp), %r13
	movl	$130, %edi
	movq	8(%r13), %rsi
	movq	%r13, %rdx
	call	build
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	expand_increment
	call	expand_end_loop
	movq	-832(%rbp), %rdi
	call	emit_label
	jmp	.L1005
.L2886:
	cmpb	$51, 2(%r13)
	je	.L1984
	cmpw	$61, (%r13)
	je	.L4996
.L2889:
	movq	%r13, %rdi
	call	copy_to_reg
	jmp	.L1984
.L4996:
	cmpl	$52, 8(%r13)
	jbe	.L1984
	jmp	.L2889
.L2094:
	movq	-2424(%rbp), %rsi
	movq	%r13, %rdi
	call	convert_move
	jmp	.L2073
.L2093:
	cmpb	$51, %al
	je	.L4997
.L2097:
	cmpw	$39, (%r13)
	je	.L4998
	cmpb	$51, %al
	je	.L4999
	movq	%r13, %rdi
	movq	-2424(%rbp), %rsi
	jmp	.L4607
.L4999:
	movq	-2424(%rbp), %r11
	movq	%r15, %rdi
	movq	%r13, -2384(%rbp)
	movq	%r11, -2392(%rbp)
	call	expr_size
	movl	$8, %edx
	movq	16(%r13), %rcx
	movq	%rax, %r14
	testq	%rcx, %rcx
	je	.L2688
	movl	32(%rcx), %edx
.L2688:
	movq	-2424(%rbp), %r15
	movq	16(%r15), %rax
	testq	%rax, %rax
	je	.L2689
	cmpl	32(%rax), %edx
	jb	.L2690
.L2685:
	testq	%rax, %rax
	movl	$8, -2372(%rbp)
	je	.L2686
	movl	32(%rax), %eax
	movl	%eax, -2372(%rbp)
.L2686:
	cmpb	$51, 2(%r13)
	jne	.L4766
	movq	-2424(%rbp), %rsi
	cmpb	$51, 2(%rsi)
	jne	.L4765
	movzwl	(%r13), %eax
	cmpl	$71, %eax
	je	.L2697
	cmpl	$66, %eax
	je	.L5000
.L2701:
	cmpl	$75, %eax
	je	.L2705
	cmpl	$78, %eax
	je	.L2705
.L2700:
	movq	-2424(%rbp), %rbx
	movzwl	(%rbx), %eax
	cmpl	$71, %eax
	je	.L2710
	cmpl	$66, %eax
	je	.L5001
.L2714:
	cmpl	$75, %eax
	je	.L2718
	cmpl	$78, %eax
	je	.L2718
.L2713:
	movzwl	(%r14), %eax
	cmpl	$71, %eax
	je	.L2723
	cmpl	$66, %eax
	je	.L5002
.L2727:
	cmpl	$75, %eax
	je	.L2731
	cmpl	$78, %eax
	je	.L2731
.L2726:
	movq	-2384(%rbp), %rbx
	cmpw	$66, (%rbx)
	jne	.L4764
	movq	-2392(%rbp), %r9
	cmpw	$66, (%r9)
	jne	.L4763
	testq	%r14, %r14
	je	.L4762
	cmpw	$54, (%r14)
	je	.L5003
.L2739:
	shrl	$3, -2372(%rbp)
	xorl	%edi, %edi
	mov	-2372(%rbp), %esi
	call	gen_rtx_CONST_INT
	movl	class_narrowest_mode+4(%rip), %r12d
	movl	$1, volatile_ok(%rip)
	movq	%rax, -1288(%rbp)
	testl	%r12d, %r12d
	je	.L4346
.L2872:
	movslq	%r12d,%rsi
	movl	movstr_optab(,%rsi,4), %edx
	movq	%rsi, -1296(%rbp)
	cmpl	$1317, %edx
	je	.L2858
	cmpw	$54, (%r14)
	je	.L5004
.L2862:
	testb	$2, target_flags+3(%rip)
	je	.L2863
	movq	-1296(%rbp), %r10
	cmpw	$63, mode_bitsize(%r10,%r10)
.L4605:
	jbe	.L2858
.L2861:
	movslq	%edx,%rax
	leaq	(%rax,%rax,4), %rbx
	movq	%rax, -1304(%rbp)
	movq	insn_data+24(,%rbx,8), %r15
	movq	(%r15), %rax
	testq	%rax, %rax
	je	.L2865
	movq	-2384(%rbp), %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L2858
.L2865:
	movq	24(%r15), %rax
	testq	%rax, %rax
	jne	.L5005
.L2866:
	movq	72(%r15), %rax
	testq	%rax, %rax
	je	.L2867
	xorl	%esi, %esi
	movq	-1288(%rbp), %rdi
	call	*%rax
	testl	%eax, %eax
	je	.L2858
.L2867:
	call	get_last_insn
	movl	$1, %edx
	movq	%r14, %rsi
	movl	%r12d, %edi
	movq	%rax, -1312(%rbp)
	call	convert_to_mode
	movq	%rax, %rbx
	movq	48(%r15), %rax
	testq	%rax, %rax
	jne	.L5006
.L2868:
	movq	-1304(%rbp), %rdx
	movq	-2384(%rbp), %rdi
	xorl	%eax, %eax
	movq	-2392(%rbp), %rsi
	movq	-1288(%rbp), %rcx
	leaq	(%rdx,%rdx,4), %r12
	movq	%rbx, %rdx
	call	*insn_data+16(,%r12,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L4500
	movq	-1312(%rbp), %rdi
	call	delete_insns_since
.L2858:
	movq	-1296(%rbp), %r8
	movzbl	mode_wider_mode(%r8), %r12d
	testl	%r12d, %r12d
	jne	.L2872
.L4346:
	testb	$2, target_flags+3(%rip)
	movq	-2384(%rbp), %r15
	movl	$0, volatile_ok(%rip)
	setne	%r10b
	movq	8(%r15), %rsi
	movzbl	%r10b, %edi
	addl	$4, %edi
	call	copy_to_mode_reg
	movq	-2392(%rbp), %r9
	testb	$2, target_flags+3(%rip)
	setne	%sil
	movq	%rax, %r15
	movzbl	%sil, %edi
	movq	8(%r9), %rsi
	addl	$4, %edi
	call	copy_to_mode_reg
	movq	%r14, %rsi
	movq	sizetype_tab(%rip), %rdi
	movq	%rax, %rbx
	movzbl	61(%rdi), %ecx
	shrb	$1, %cl
	movzbl	%cl, %edi
	call	copy_to_mode_reg
	cmpq	$0, fn.1(%rip)
	movq	%rax, %r14
	je	.L5007
.L2881:
	movq	global_trees+216(%rip), %rdi
	call	build_pointer_type
	movq	%r15, %rsi
	movq	%rax, %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	global_trees+216(%rip), %rdi
	movq	%rax, %r12
	call	build_pointer_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	%r14, %rsi
	movq	%rax, (%r12)
	movq	%rax, %rbx
	movq	sizetype_tab(%rip), %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	fn.1(%rip), %rcx
	movq	%rax, (%rbx)
	movq	(%r12), %r9
	movq	(%r9), %rdi
	movq	$0, (%rdi)
	movq	8(%rcx), %rdi
	call	build_pointer_type
	movq	fn.1(%rip), %rdx
	movl	$121, %edi
	movq	%rax, %rsi
	call	build1
	xorl	%r8d, %r8d
	movq	%r12, %rcx
	movq	fn.1(%rip), %rbx
	movq	%rax, %rdx
	movl	$53, %edi
	xorl	%eax, %eax
	movq	8(%rbx), %r14
	movq	8(%r14), %rsi
	call	build
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	orb	$1, 17(%rax)
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	expand_expr
	testb	$4, 3(%r15)
	je	.L2073
	movl	$49, %edi
	xorl	%esi, %esi
	movq	%r15, %rdx
.L4606:
	call	gen_rtx_fmt_e
	movq	%rax, %rdi
	call	emit_insn
	jmp	.L2073
.L5007:
	movl	$.LC11, %edi
	call	get_identifier
	movq	global_trees+216(%rip), %rdi
	movq	%rax, fn.1(%rip)
	call	build_pointer_type
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	build_function_type
	movq	fn.1(%rip), %rsi
	movl	$30, %edi
	movq	%rax, %rdx
	call	build_decl
	movl	$1, %esi
	movl	$fn.1, %edi
	movq	%rax, fn.1(%rip)
	call	ggc_add_tree_root
	movq	fn.1(%rip), %r8
	xorl	%esi, %esi
	orb	$1, 49(%r8)
	movq	fn.1(%rip), %rdx
	orb	$8, 18(%rdx)
	movq	fn.1(%rip), %r12
	orb	$64, 50(%r12)
	movq	fn.1(%rip), %r11
	orb	$2, 18(%r11)
	movq	fn.1(%rip), %rdi
	call	make_decl_rtl
	movq	fn.1(%rip), %rdi
	call	assemble_external
	jmp	.L2881
.L4500:
	call	emit_insn
	movl	$0, volatile_ok(%rip)
	jmp	.L2073
	.p2align 6,,7
.L5006:
	movq	%rbx, %rdi
	movl	%r12d, %esi
	call	*%rax
	testl	%eax, %eax
	jne	.L2868
	movq	%rbx, %rsi
	movl	%r12d, %edi
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L2868
	.p2align 6,,7
.L5005:
	movq	-2392(%rbp), %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L2858
	jmp	.L2866
.L2863:
	movq	-1296(%rbp), %r11
	cmpw	$31, mode_bitsize(%r11,%r11)
	jmp	.L4605
.L5004:
	movq	mode_mask_array(,%rsi,8), %r15
	shrq	$1, %r15
	cmpq	%r15, 8(%r14)
	jbe	.L2861
	jmp	.L2862
.L5003:
	movq	8(%r14), %r12
	xorl	%r15d, %r15d
	movl	$17, %esi
.L2752:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L4335
.L2749:
	movslq	%ecx,%r10
	movzbq	mode_size(%r10), %r8
	cmpq	%rsi, %r8
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r10), %ecx
	testl	%ecx, %ecx
	jne	.L2749
.L4335:
	testl	%edi, %edi
	je	.L2742
	movslq	%edi,%rbx
	movq	%rbx, %r11
	salq	$4, %r11
	addq	optab_table+240(%rip), %r11
	cmpl	$1317, 8(%r11)
	je	.L2751
	call	get_mode_alignment
	movl	$128, %edi
	cmpl	%eax, %edi
	jb	.L2751
	movzbq	mode_size(%rbx), %rsi
	movq	%r12, %rax
	xorl	%edx, %edx
	divq	%rsi
	addq	%rax, %r15
	movq	%rdx, %r12
.L2751:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L2752
.L2742:
	testq	%r12, %r12
	jne	.L4757
	movl	optimize_size(%rip), %eax
	testl	%eax, %eax
	jne	.L2755
	movq	ix86_cost(%rip), %rbx
	mov	40(%rbx), %edx
	cmpq	%rdx, %r15
	jae	.L2739
.L2756:
	movq	-2392(%rbp), %rsi
	movq	-2384(%rbp), %rdi
	movq	8(%r14), %r12
	movq	-2384(%rbp), %r11
	testb	$2, target_flags+3(%rip)
	movq	8(%rsi), %r8
	setne	%r14b
	movq	$0, -568(%rbp)
	movl	$0, -2404(%rbp)
	movq	%r8, -592(%rbp)
	movq	8(%rdi), %r10
	movq	%r11, -624(%rbp)
	movzbl	%r14b, %ecx
	leal	5(,%rcx,4), %r14d
	xorl	%ecx, %ecx
	movzwl	(%r10), %edx
	movq	%r10, -2400(%rbp)
	leal	-96(%rdx), %r15d
	cmpw	$1, %r15w
	jbe	.L2761
	cmpw	$99, %dx
	je	.L2761
	cmpw	$98, %dx
	je	.L2761
.L2760:
	movq	-2400(%rbp), %rbx
	movl	%ecx, -608(%rbp)
	xorl	%edx, %edx
	movzwl	(%rbx), %eax
	cmpw	$96, %ax
	je	.L2763
	cmpw	$98, %ax
	je	.L2763
.L2762:
	movl	%edx, -560(%rbp)
	movq	-2392(%rbp), %rax
	xorl	%ecx, %ecx
	movq	-2400(%rbp), %rdx
	movq	%rax, -600(%rbp)
	movq	%rdx, -616(%rbp)
	movzwl	(%r8), %edx
	leal	-96(%rdx), %r15d
	cmpw	$1, %r15w
	jbe	.L2766
	cmpw	$99, %dx
	je	.L2766
	cmpw	$98, %dx
	je	.L2766
.L2765:
	movl	-560(%rbp), %r9d
	movl	%ecx, -584(%rbp)
	movl	$0, -580(%rbp)
	movl	$0, -604(%rbp)
	testl	%r9d, %r9d
	je	.L2767
	movq	%r12, -568(%rbp)
.L2767:
	movl	-584(%rbp), %r10d
	movq	%r12, -576(%rbp)
	testl	%r10d, %r10d
	je	.L2769
	movl	-608(%rbp), %r11d
	testl	%r11d, %r11d
	jne	.L2768
.L2769:
	xorl	%r15d, %r15d
	movl	$17, %esi
.L2782:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L4338
.L2779:
	movslq	%ecx,%rbx
	movzbq	mode_size(%rbx), %rdx
	cmpq	%rsi, %rdx
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%rbx), %ecx
	testl	%ecx, %ecx
	jne	.L2779
.L4338:
	testl	%edi, %edi
	je	.L2772
	movslq	%edi,%rbx
	movq	%rbx, %rcx
	salq	$4, %rcx
	addq	optab_table+240(%rip), %rcx
	cmpl	$1317, 8(%rcx)
	je	.L2781
	movq	%r8, -2648(%rbp)
	call	get_mode_alignment
	movl	$128, %r8d
	cmpl	%eax, %r8d
	movq	-2648(%rbp), %r8
	jb	.L2781
	movzbq	mode_size(%rbx), %rsi
	movq	%r12, %rax
	xorl	%edx, %edx
	divq	%rsi
	addq	%rax, %r15
	movq	%rdx, %r12
.L2781:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L2782
.L2772:
	testq	%r12, %r12
	jne	.L4757
	cmpq	$2, %r15
	jbe	.L2768
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L4340
.L2790:
	movslq	%ecx,%r15
	movzbl	mode_size(%r15), %r9d
	cmpl	%r14d, %r9d
	cmovae	-2404(%rbp), %ecx
	movl	%ecx, -2404(%rbp)
	movzbl	mode_wider_mode(%r15), %ecx
	testl	%ecx, %ecx
	jne	.L2790
.L4340:
	movl	-584(%rbp), %eax
	testl	%eax, %eax
	jne	.L2796
	movzwl	(%r8), %edx
	leal	-67(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L2794
	cmpw	$54, %dx
	je	.L2794
	cmpw	$55, %dx
	je	.L2794
	cmpw	$58, %dx
	je	.L2794
	cmpw	$134, %dx
	je	.L2794
	cmpw	$56, %dx
	je	.L2794
	cmpw	$140, %dx
	je	.L2794
.L2796:
	movl	-608(%rbp), %r11d
	testl	%r11d, %r11d
	jne	.L2768
	movq	-2400(%rbp), %rcx
	movzwl	(%rcx), %edx
	leal	-67(%rdx), %ebx
	cmpw	$1, %bx
	jbe	.L2798
	cmpw	$54, %dx
	je	.L2798
	cmpw	$55, %dx
	je	.L2798
	cmpw	$58, %dx
	je	.L2798
	cmpw	$134, %dx
	je	.L2798
	cmpw	$56, %dx
	je	.L2798
	cmpw	$140, %dx
	je	.L2798
.L2768:
	cmpl	$1, %r14d
	jbe	.L2801
.L2852:
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L4343
.L2808:
	movslq	%ecx,%r8
	movzbl	mode_size(%r8), %edx
	cmpl	%r14d, %edx
	cmovae	-2404(%rbp), %ecx
	movl	%ecx, -2404(%rbp)
	movzbl	mode_wider_mode(%r8), %ecx
	testl	%ecx, %ecx
	jne	.L2808
.L4343:
	movl	-2404(%rbp), %r14d
	testl	%r14d, %r14d
	je	.L2801
	movslq	-2404(%rbp),%r15
	movq	%r15, %r12
	salq	$4, %r12
	addq	optab_table+240(%rip), %r12
	movl	8(%r12), %ebx
	cmpl	$1317, %ebx
	je	.L2810
	movl	-2404(%rbp), %edi
	call	get_mode_alignment
	movl	$128, %edi
	cmpl	%eax, %edi
	jb	.L2810
	movzbq	mode_size(%r15), %rdx
	movslq	%ebx,%r10
	leaq	-624(%rbp), %r12
	leaq	(%r10,%r10,4), %r9
	cmpq	%rdx, -576(%rbp)
	movq	$0, -2416(%rbp)
	movq	insn_data+16(,%r9,8), %rsi
	movq	%rdx, -1648(%rbp)
	movq	%rsi, -1280(%rbp)
	jb	.L2810
	movl	-560(%rbp), %ecx
.L2850:
	testl	%ecx, %ecx
	je	.L2814
	subq	%rdx, 56(%r12)
.L2814:
	movq	(%r12), %rdi
	testq	%rdi, %rdi
	je	.L2815
	movl	16(%r12), %eax
	testl	%eax, %eax
	je	.L2816
	movl	-2404(%rbp), %esi
	movq	8(%r12), %rdx
	movl	$1, %r8d
	movq	56(%r12), %rcx
	call	adjust_automodify_address_1
.L4601:
	movq	%rax, -2416(%rbp)
.L2815:
	movl	40(%r12), %r11d
	testl	%r11d, %r11d
	je	.L2818
	movq	24(%r12), %rdi
	movl	-2404(%rbp), %esi
	movl	$1, %r8d
	movq	32(%r12), %rdx
	movq	56(%r12), %rcx
	call	adjust_automodify_address_1
.L4602:
	cmpq	$0, (%r12)
	movq	%rax, %r14
	jne	.L5008
	movl	target_flags(%rip), %eax
	testl	$33554432, %eax
	movl	%eax, %esi
	je	.L2824
	movzbl	mode_size(%r15), %ebx
	leal	7(%rbx), %edx
	andl	$-8, %edx
.L2825:
	movq	cfun(%rip), %rdi
	andl	$33554432, %esi
	movq	16(%rdi), %r8
	leaq	8(%r8), %rdi
	movl	8(%r8), %ecx
	je	.L2826
	movzbl	mode_size(%r15), %eax
	addl	$7, %eax
	andl	$-8, %eax
.L4603:
	movq	%r15, %rsi
	leal	(%rax,%rcx), %r9d
	salq	$4, %rsi
	movl	%r9d, (%rdi)
	addq	optab_table+384(%rip), %rsi
	movl	8(%rsi), %eax
	cmpl	$1317, %eax
	je	.L2828
	movslq	%eax,%rbx
	leaq	(%rbx,%rbx,4), %r10
	movq	insn_data+24(,%r10,8), %rdx
	movq	(%rdx), %rax
	testq	%rax, %rax
	je	.L2829
	movq	%r14, %rdi
	movl	-2404(%rbp), %esi
	call	*%rax
	testl	%eax, %eax
	je	.L5009
.L2829:
	leaq	(%rbx,%rbx,4), %r11
	movq	%r14, %rdi
	xorl	%eax, %eax
	call	*insn_data+16(,%r11,8)
.L4604:
	movq	%rax, %rdi
	call	emit_insn
.L2848:
	movl	64(%r12), %eax
	testl	%eax, %eax
	movl	%eax, %ecx
	jne	.L2849
	movq	-1648(%rbp), %r14
	addq	%r14, 56(%r12)
.L2849:
	movq	48(%r12), %r9
	movq	-1648(%rbp), %rdx
	subq	-1648(%rbp), %r9
	cmpq	%rdx, %r9
	movq	%r9, 48(%r12)
	jae	.L2850
.L2810:
	movzbl	mode_size(%r15), %r14d
	cmpl	$1, %r14d
	ja	.L2852
.L2801:
	cmpq	$0, -576(%rbp)
.L4768:
	je	.L2073
	jmp	.L4742
	.p2align 6,,7
.L5009:
	movl	-2404(%rbp), %edi
	movq	%r14, %rsi
	call	force_reg
	movq	%rax, %r14
	jmp	.L2829
.L2828:
	movzbl	mode_size(%r15), %ebx
	cmpl	%edx, %ebx
	je	.L5010
	mov	%edx, %esi
	xorl	%edi, %edi
	negq	%rsi
	call	gen_rtx_CONST_INT
	movq	global_rtl+16(%rip), %rdx
	testb	$2, target_flags+3(%rip)
	setne	%dil
	movq	%rax, %rcx
	movzbl	%dil, %esi
	movl	$75, %edi
	addl	$4, %esi
	call	gen_rtx_fmt_ee
	movq	global_rtl+16(%rip), %rdx
	movl	$100, %edi
	testb	$2, target_flags+3(%rip)
	movq	%rax, %rcx
	setne	%r8b
	movzbl	%r8b, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_ee
.L2836:
	movl	-2404(%rbp), %edi
	movq	%rax, %rsi
	call	gen_rtx_MEM
	xorl	%ecx, %ecx
	testq	%rcx, %rcx
	movq	%rax, %rbx
	je	.L2845
	xorl	%esi, %esi
	movq	%rax, %rdi
	movl	$1, %edx
	call	set_mem_attributes
	movl	flag_optimize_sibling_calls(%rip), %esi
	testl	%esi, %esi
	jne	.L5011
.L2845:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	call	emit_move_insn
	jmp	.L2848
.L5011:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	call	set_mem_alias_set
	jmp	.L2845
.L5010:
	testb	$2, target_flags+3(%rip)
	movq	global_rtl+16(%rip), %rdx
	movl	$96, %edi
	setne	%al
	movzbl	%al, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_e
	jmp	.L2836
	.p2align 6,,7
.L2826:
	movzbl	mode_size(%r15), %eax
	incl	%eax
	andl	$-2, %eax
	jmp	.L4603
.L2824:
	movzbl	mode_size(%r15), %ecx
	leal	1(%rcx), %edx
	andl	$-2, %edx
	jmp	.L2825
.L5008:
	movq	%rax, %rsi
	movq	-2416(%rbp), %rdi
	xorl	%eax, %eax
	call	*-1280(%rbp)
	jmp	.L4604
.L2818:
	movq	24(%r12), %rdi
	movl	-2404(%rbp), %esi
	movl	$1, %ecx
	movq	56(%r12), %rdx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L4602
.L2816:
	movl	-2404(%rbp), %esi
	movq	56(%r12), %rdx
	movl	$1, %ecx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L4601
.L2798:
	movq	-2400(%rbp), %rdi
	call	copy_addr_to_reg
	movq	%rax, -616(%rbp)
	jmp	.L2768
.L2794:
	movq	%r8, %rdi
	call	copy_addr_to_reg
	movq	%rax, -592(%rbp)
	jmp	.L2796
	.p2align 6,,7
.L2766:
	movl	$1, %ecx
	jmp	.L2765
.L2763:
	movl	$1, %edx
	jmp	.L2762
.L2761:
	movl	$1, %ecx
	jmp	.L2760
.L2755:
	cmpq	$2, %r15
	ja	.L2739
	jmp	.L2756
.L2731:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r14), %rdi
	movq	%rax, %r12
	call	protect_from_queue
	cmpq	8(%r14), %r12
	movq	%rax, %rbx
	je	.L5012
.L2733:
	movq	%r14, %rdi
	call	copy_rtx
	movq	%rax, %r14
	movq	%r12, 8(%rax)
	movq	%rbx, 16(%rax)
	jmp	.L2726
.L5012:
	cmpq	16(%r14), %rax
	jne	.L2733
	jmp	.L2726
	.p2align 6,,7
.L5002:
	cmpb	$51, 2(%r14)
	je	.L2724
	movq	8(%r14), %r12
	cmpw	$71, (%r12)
	je	.L5013
.L2724:
	cmpl	$66, %eax
	jne	.L2727
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%r14), %rax
	movq	%rax, %rbx
	je	.L2726
	movq	%r14, %rdi
	call	copy_rtx
	movq	%rax, %r14
	movq	%rbx, 8(%rax)
	jmp	.L2726
.L5013:
	movq	8(%r12), %rsi
	movq	%r14, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%r12)
	movq	%rax, %rbx
	je	.L2725
	movzbl	2(%r14), %edi
	call	gen_reg_rtx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L2726
.L2725:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L4600:
	movq	%rax, %r14
	jmp	.L2726
.L2723:
	cmpq	$0, 16(%r14)
	je	.L5014
	movq	24(%r14), %rax
	testq	%rax, %rax
	jne	.L4600
	movq	8(%r14), %rdx
	movzbl	2(%rdx), %edi
	call	gen_reg_rtx
	movq	8(%r14), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r14), %r14
	jmp	.L2726
.L5014:
	movq	8(%r14), %rdi
	call	copy_to_reg
	jmp	.L4600
	.p2align 6,,7
.L2718:
	movq	-2424(%rbp), %r12
	xorl	%esi, %esi
	movq	8(%r12), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	%rax, %r12
	movq	-2424(%rbp), %rax
	movq	16(%rax), %rdi
	call	protect_from_queue
	movq	-2424(%rbp), %rsi
	movq	%rax, %rbx
	cmpq	8(%rsi), %r12
	je	.L5015
.L2720:
	movq	-2424(%rbp), %rdi
	call	copy_rtx
	movq	%rax, -2392(%rbp)
	movq	%r12, 8(%rax)
	movq	-2392(%rbp), %r11
	movq	%rbx, 16(%r11)
	jmp	.L2713
.L5015:
	cmpq	16(%rsi), %rax
	jne	.L2720
	jmp	.L2713
	.p2align 6,,7
.L5001:
	cmpb	$51, 2(%rbx)
	je	.L2711
	movq	8(%rbx), %r12
	cmpw	$71, (%r12)
	je	.L5016
.L2711:
	cmpl	$66, %eax
	jne	.L2714
	movq	-2424(%rbp), %r8
	xorl	%esi, %esi
	movq	8(%r8), %rdi
	call	protect_from_queue
	movq	-2424(%rbp), %rdx
	movq	%rax, %rbx
	cmpq	8(%rdx), %rax
	je	.L2713
	movq	%rdx, %rdi
	call	copy_rtx
	movq	%rax, -2392(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L2713
.L5016:
	movq	8(%r12), %rsi
	movq	%rbx, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%r12)
	movq	%rax, %rbx
	je	.L2712
	movq	-2424(%rbp), %r10
	movzbl	2(%r10), %edi
	call	gen_reg_rtx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, -2392(%rbp)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L2713
.L2712:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L4599:
	movq	%rax, -2392(%rbp)
	jmp	.L2713
	.p2align 6,,7
.L2710:
	movq	-2424(%rbp), %rdx
	cmpq	$0, 16(%rdx)
	je	.L5017
	movq	-2424(%rbp), %rdi
	movq	24(%rdi), %r15
	testq	%r15, %r15
	movq	%r15, -2392(%rbp)
	jne	.L2713
	movq	-2424(%rbp), %r12
	movq	8(%r12), %rsi
	movzbl	2(%rsi), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %rcx
	movq	%rcx, -2392(%rbp)
	jmp	.L2713
.L5017:
	movq	8(%rdx), %rdi
	call	copy_to_reg
	jmp	.L4599
	.p2align 6,,7
.L2705:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, %r12
	call	protect_from_queue
	cmpq	8(%r13), %r12
	movq	%rax, %rbx
	je	.L5018
.L2707:
	movq	%r13, %rdi
	call	copy_rtx
	movq	%rax, -2384(%rbp)
	movq	%r12, 8(%rax)
	movq	-2384(%rbp), %rcx
	movq	%rbx, 16(%rcx)
	jmp	.L2700
.L5018:
	cmpq	16(%r13), %rax
	jne	.L2707
	jmp	.L2700
	.p2align 6,,7
.L5000:
	jne	.L2701
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%r13), %rax
	movq	%rax, %rbx
	je	.L2700
	movq	%r13, %rdi
	call	copy_rtx
	movq	%rax, -2384(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L2700
	.p2align 6,,7
.L2697:
	testq	%rcx, %rcx
	je	.L5019
	movq	24(%r13), %rdx
	testq	%rdx, %rdx
	movq	%rdx, -2384(%rbp)
	jne	.L2700
	movq	8(%r13), %r9
	movzbl	2(%r9), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %rbx
	movq	%rbx, -2384(%rbp)
	jmp	.L2700
.L5019:
	movq	8(%r13), %rdi
	call	copy_to_reg
	movq	%rax, -2384(%rbp)
	jmp	.L2700
	.p2align 6,,7
.L2690:
	testq	%rcx, %rcx
	movl	$8, -2372(%rbp)
	je	.L2686
	movl	32(%rcx), %edi
	movl	%edi, -2372(%rbp)
	jmp	.L2686
.L2689:
	cmpl	$7, %edx
	ja	.L2685
	jmp	.L2690
.L4998:
	movq	8(%r15), %rdi
	call	int_size_in_bytes
	cmpw	$39, (%r13)
	movl	%eax, -1244(%rbp)
	jne	.L4761
	movq	8(%r13), %rcx
	movq	8(%rcx), %r15
	movl	(%rcx), %r14d
	cmpq	$0, 8(%r15)
	movslq	%r14d,%r12
	sete	%r8b
	leaq	15(,%r12,8), %rbx
	andq	$-16, %rbx
	subq	%rbx, %rsp
	leaq	48(%rsp), %r9
	movzbl	%r8b, %r10d
	movq	%r9, -1256(%rbp)
	movl	%r10d, -2368(%rbp)
	movl	-2368(%rbp), %eax
	cmpl	%r14d, %eax
	movl	%eax, -2360(%rbp)
	jge	.L4329
.L2669:
	movslq	-2360(%rbp),%rdx
	movl	-1244(%rbp), %eax
	testl	%eax, %eax
	movq	8(%rcx,%rdx,8), %r11
	movq	%rdx, -1264(%rbp)
	movq	8(%r11), %rdi
	movq	16(%r11), %rcx
	movzbl	2(%rdi), %r14d
	movq	8(%rcx), %r15
	movslq	%r14d,%rsi
	movzbl	mode_size(%rsi), %ebx
	movq	%rsi, -1272(%rbp)
	movl	%ebx, -2364(%rbp)
	js	.L2642
	movslq	-1244(%rbp),%r9
	mov	%ebx, %r12d
	leaq	(%r12,%r15), %rbx
	cmpq	%r9, %rbx
	jle	.L2642
	movl	-1244(%rbp), %eax
	subl	%r15d, %eax
	movl	%eax, -2364(%rbp)
	je	.L4760
.L2642:
	movq	-2424(%rbp), %r12
	movzwl	(%r12), %edx
	cmpw	$66, %dx
	je	.L4510
	leal	-67(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L2646
	cmpw	$54, %dx
	je	.L2646
	cmpw	$55, %dx
	je	.L2646
	cmpw	$58, %dx
	je	.L2646
	cmpw	$134, %dx
	je	.L2646
	cmpw	$56, %dx
	je	.L2646
	cmpw	$140, %dx
	je	.L2646
.L2645:
	movq	-2424(%rbp), %rcx
	movl	%r14d, %edi
	movzbl	2(%rcx), %eax
	testb	%al, %al
	je	.L4597
	movzbl	%al, %edi
.L4597:
	call	gen_reg_rtx
	movq	-2424(%rbp), %rsi
	movq	%rax, %r12
	movq	%rax, %rdi
	call	emit_move_insn
	movzwl	(%r12), %edx
.L2644:
	cmpw	$66, %dx
	je	.L4510
.L2649:
	cmpw	$65, %dx
	je	.L5020
	leal	-67(%rdx), %esi
	cmpw	$1, %si
	jbe	.L2666
	cmpw	$54, %dx
	je	.L2666
	cmpw	$55, %dx
	je	.L2666
	cmpw	$58, %dx
	je	.L2666
	cmpw	$134, %dx
	je	.L2666
	cmpw	$56, %dx
	je	.L2666
	cmpw	$140, %dx
	je	.L2666
	cmpw	$61, %dx
	je	.L5021
.L2665:
	movslq	-1244(%rbp),%r9
	movl	-2364(%rbp), %r10d
	leaq	0(,%r15,8), %rdx
	movq	%r12, %rdi
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	%r14d, (%rsp)
	sall	$3, %r10d
	movq	%r9, 8(%rsp)
	mov	%r10d, %esi
	movl	%r14d, %r9d
	call	extract_bit_field
.L4598:
	movq	-1264(%rbp), %r12
	movq	-1256(%rbp), %r8
	movq	%rax, (%r8,%r12,8)
.L2640:
	incl	-2360(%rbp)
	movq	8(%r13), %rcx
	movl	-2360(%rbp), %eax
	cmpl	(%rcx), %eax
	jl	.L2669
.L4329:
	movq	cfun(%rip), %r15
	movq	16(%r15), %r11
	movq	40(%r11), %rbx
	testq	%rbx, %rbx
	je	.L4331
.L2675:
	movq	32(%rbx), %rdi
	cmpw	$24, (%rdi)
	je	.L5022
	call	emit_insn
	movq	%rax, 16(%rbx)
.L2674:
	movq	cfun(%rip), %rdx
	movq	40(%rbx), %rdi
	movq	16(%rdx), %r14
	testq	%rdi, %rdi
	movq	%rdi, %rbx
	movq	%rdi, 40(%r14)
	jne	.L2675
	movq	8(%r13), %rcx
.L4331:
	movl	-2368(%rbp), %ebx
	cmpl	(%rcx), %ebx
	jge	.L2073
.L2681:
	movslq	-2368(%rbp),%r12
	movq	-1256(%rbp), %r8
	salq	$3, %r12
	movq	8(%r12,%rcx), %rax
	movq	(%r8,%r12), %rsi
	movq	8(%rax), %rdi
	call	emit_move_insn
	incl	-2368(%rbp)
	movq	8(%r13), %r10
	movl	-2368(%rbp), %r9d
	cmpl	(%r10), %r9d
	movq	%r10, %rcx
	jl	.L2681
	jmp	.L2073
.L5022:
	movq	8(%rdi), %rsi
	movq	8(%rsi), %rcx
	movq	%rcx, 16(%rbx)
	call	emit_insn
	jmp	.L2674
.L5021:
	movzbl	2(%r12), %edi
	cmpl	%r14d, %edi
	jne	.L2665
.L2666:
	movq	-1264(%rbp), %rdx
	movq	-1256(%rbp), %r14
	movq	%r12, (%r14,%rdx,8)
	jmp	.L2640
.L5020:
	testq	%r15, %r15
	jne	.L4469
	movq	8(%r12), %rdx
	movzbq	2(%rdx), %rsi
	movzbl	mode_size(%rsi), %ebx
	cmpl	%ebx, -2364(%rbp)
	je	.L2655
.L2656:
	movzbq	2(%rdx), %r11
	movzbq	mode_size(%r11), %rcx
	cmpq	%rcx, %r15
	je	.L5023
.L2654:
	testq	%r15, %r15
	jne	.L3574
	movzbl	2(%r12), %edi
	xorl	%edx, %edx
	movslq	%edi,%rbx
	movzbq	mode_size(%rbx), %rsi
	call	assign_stack_temp
	movq	%r12, %rsi
	movq	%rax, %r15
	movq	%rax, %rdi
	call	emit_move_insn
	movl	$1, %r8d
	movl	$1, %ecx
	movq	%r15, %rdi
	movl	%r14d, %esi
	xorl	%edx, %edx
	call	adjust_address_1
	jmp	.L4598
.L5023:
	movq	16(%r12), %r9
	movzbq	2(%r9), %rdx
	movzbl	mode_size(%rdx), %edi
	cmpl	%edi, -2364(%rbp)
	jne	.L2654
.L2655:
	xorl	%r10d, %r10d
	movq	-1264(%rbp), %r8
	movq	-1256(%rbp), %rax
	testq	%r15, %r15
	setne	%r10b
	leaq	(%rax,%r8,8), %rbx
	movq	8(%r12,%r10,8), %rcx
	movq	%rcx, (%rbx)
	movzwl	(%rcx), %edx
	leal	-67(%rdx), %r15d
	cmpw	$1, %r15w
	jbe	.L2640
	cmpw	$54, %dx
	je	.L2640
	cmpw	$55, %dx
	je	.L2640
	cmpw	$58, %dx
	je	.L2640
	cmpw	$134, %dx
	je	.L2640
	cmpw	$56, %dx
	je	.L2640
	cmpw	$140, %dx
	je	.L2640
	cmpw	$61, %dx
	je	.L5024
.L2660:
	movslq	-1244(%rbp),%rcx
	movl	-2364(%rbp), %r11d
	movl	%r14d, (%rsp)
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movl	%r14d, %r9d
	sall	$3, %r11d
	movq	%rcx, 8(%rsp)
	mov	%r11d, %esi
	movl	$1, %ecx
	movq	(%rbx), %rdi
	call	extract_bit_field
	movq	%rax, (%rbx)
	jmp	.L2640
.L5024:
	movzbl	2(%rcx), %r12d
	cmpl	%r14d, %r12d
	jne	.L2660
	jmp	.L2640
	.p2align 6,,7
.L4469:
	movq	8(%r12), %rdx
	jmp	.L2656
.L4510:
	movl	%r14d, %edi
	call	get_mode_alignment
	movq	16(%r12), %rdx
	testq	%rdx, %rdx
	je	.L2650
	cmpl	%eax, 32(%rdx)
	jae	.L2651
.L4468:
	movzwl	(%r12), %edx
	jmp	.L2649
.L2651:
	movl	%r14d, %edi
	leaq	0(,%r15,8), %rbx
	call	get_mode_alignment
	mov	%eax, %edi
	movq	%rbx, %rax
	cqto
	idivq	%rdi
	testq	%rdx, %rdx
	jne	.L4468
	movq	-1272(%rbp), %r9
	movzbl	mode_size(%r9), %edx
	cmpl	%edx, -2364(%rbp)
	jne	.L4468
	movl	%r14d, %edi
	call	gen_reg_rtx
	movl	$1, %ecx
	movq	%r15, %rdx
	movq	-1264(%rbp), %r8
	movq	-1256(%rbp), %r10
	movq	%r12, %rdi
	movl	%r14d, %esi
	leaq	(%r10,%r8,8), %rbx
	movl	$1, %r8d
	movq	%rax, (%rbx)
	call	adjust_address_1
	movq	(%rbx), %rdi
	movq	%rax, %rsi
	call	emit_move_insn
	jmp	.L2640
	.p2align 6,,7
.L2650:
	cmpl	$8, %eax
	ja	.L4468
	jmp	.L2651
.L2646:
	movq	-2424(%rbp), %rsi
	movzbl	2(%rsi), %ecx
	movzbl	%cl, %r8d
	cmpl	%r14d, %r8d
	je	.L2644
	testb	%cl, %cl
	je	.L2644
	jmp	.L2645
.L4997:
	cmpb	$29, 16(%r15)
	jne	.L2097
	movq	%r15, %rdi
	call	expr_size
	cmpw	$54, (%rax)
	movq	%rax, -2240(%rbp)
	je	.L5025
.L2098:
	movq	sizetype_tab(%rip), %rdi
	movq	-2240(%rbp), %rsi
	call	make_tree
	xorl	%esi, %esi
	movslq	32(%r15),%rdi
	movq	%rax, %r12
	call	size_int_wide
	movq	%r12, %rsi
	movl	$78, %edi
	movq	%rax, %rdx
	call	size_binop
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, -1168(%rbp)
	call	expand_expr
	xorl	%edx, %edx
	movl	ptr_mode(%rip), %edi
	movq	%rax, %rsi
	movq	$0, -2328(%rbp)
	call	convert_to_mode
	movl	$8, %edx
	movq	-2424(%rbp), %r14
	movq	%rax, -2272(%rbp)
	movq	%r13, -2280(%rbp)
	movq	%rax, -2296(%rbp)
	movq	%r14, -2288(%rbp)
	movq	16(%r13), %rax
	testq	%rax, %rax
	movq	%rax, %rsi
	je	.L2301
	movl	32(%rax), %edx
.L2301:
	movq	-2424(%rbp), %r11
	movq	16(%r11), %rax
	testq	%rax, %rax
	movq	%rax, %rcx
	je	.L2302
	cmpl	32(%rax), %edx
	jb	.L2303
.L2298:
	testq	%rcx, %rcx
	movl	$8, %r15d
	je	.L2299
	movl	32(%rcx), %r15d
.L2299:
	cmpb	$51, 2(%r13)
	jne	.L4766
	movq	-2424(%rbp), %rax
	cmpb	$51, 2(%rax)
	jne	.L4765
	movzwl	(%r13), %eax
	cmpl	$71, %eax
	je	.L2310
	cmpl	$66, %eax
	je	.L5026
.L2314:
	cmpl	$75, %eax
	je	.L2318
	cmpl	$78, %eax
	je	.L2318
.L2313:
	movq	-2424(%rbp), %rdx
	movzwl	(%rdx), %eax
	cmpl	$71, %eax
	je	.L2323
	cmpl	$66, %eax
	je	.L5027
.L2327:
	cmpl	$75, %eax
	je	.L2331
	cmpl	$78, %eax
	je	.L2331
.L2326:
	movq	-2272(%rbp), %rdx
	movzwl	(%rdx), %eax
	cmpl	$71, %eax
	je	.L2336
	cmpl	$66, %eax
	je	.L5028
.L2340:
	cmpl	$75, %eax
	je	.L2344
	cmpl	$78, %eax
	je	.L2344
.L2339:
	movq	-2280(%rbp), %rsi
	cmpw	$66, (%rsi)
	jne	.L4764
	movq	-2288(%rbp), %rax
	cmpw	$66, (%rax)
	jne	.L4763
	cmpq	$0, -2296(%rbp)
	je	.L4762
	movq	-2296(%rbp), %rcx
	cmpw	$54, (%rcx)
	je	.L5029
.L2352:
	shrl	$3, %r15d
	xorl	%edi, %edi
	mov	%r15d, %esi
	call	gen_rtx_CONST_INT
	movl	class_narrowest_mode+4(%rip), %r12d
	movl	$1, volatile_ok(%rip)
	movq	%rax, -1184(%rbp)
	testl	%r12d, %r12d
	je	.L4313
.L2485:
	movslq	%r12d,%r15
	movl	movstr_optab(,%r15,4), %edx
	cmpl	$1317, %edx
	je	.L2471
	movq	-2296(%rbp), %rsi
	cmpw	$54, (%rsi)
	je	.L5030
.L2475:
	testb	$2, target_flags+3(%rip)
	je	.L2476
	cmpw	$63, mode_bitsize(%r15,%r15)
.L4591:
	jbe	.L2471
.L2474:
	movslq	%edx,%r10
	leaq	(%r10,%r10,4), %rsi
	movq	%r10, -1192(%rbp)
	movq	insn_data+24(,%rsi,8), %r14
	movq	(%r14), %rax
	testq	%rax, %rax
	je	.L2478
	movq	-2280(%rbp), %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L2471
.L2478:
	movq	24(%r14), %rax
	testq	%rax, %rax
	jne	.L5031
.L2479:
	movq	72(%r14), %rax
	testq	%rax, %rax
	je	.L2480
	xorl	%esi, %esi
	movq	-1184(%rbp), %rdi
	call	*%rax
	testl	%eax, %eax
	je	.L2471
.L2480:
	call	get_last_insn
	movl	$1, %edx
	movq	-2296(%rbp), %rsi
	movl	%r12d, %edi
	movq	%rax, -1200(%rbp)
	call	convert_to_mode
	movq	%rax, %rbx
	movq	48(%r14), %rax
	testq	%rax, %rax
	jne	.L5032
.L2481:
	movq	-1192(%rbp), %rdx
	movq	-2280(%rbp), %rdi
	xorl	%eax, %eax
	movq	-2288(%rbp), %rsi
	movq	-1184(%rbp), %rcx
	leaq	(%rdx,%rdx,4), %r12
	movq	%rbx, %rdx
	call	*insn_data+16(,%r12,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L4498
	movq	-1200(%rbp), %rdi
	call	delete_insns_since
.L2471:
	movzbl	mode_wider_mode(%r15), %r12d
	testl	%r12d, %r12d
	jne	.L2485
.L4313:
	testb	$2, target_flags+3(%rip)
	movq	-2280(%rbp), %r9
	movl	$0, volatile_ok(%rip)
	setne	%r14b
	movq	8(%r9), %rsi
	movzbl	%r14b, %edi
	addl	$4, %edi
	call	copy_to_mode_reg
	testb	$2, target_flags+3(%rip)
	setne	%cl
	movq	%rax, %r14
	movq	-2288(%rbp), %rax
	movq	8(%rax), %rsi
	movzbl	%cl, %edi
	addl	$4, %edi
	call	copy_to_mode_reg
	movq	-2296(%rbp), %rsi
	movq	sizetype_tab(%rip), %r11
	movq	%rax, %rbx
	movzbl	61(%r11), %r15d
	shrb	$1, %r15b
	movzbl	%r15b, %edi
	call	copy_to_mode_reg
	cmpq	$0, fn.1(%rip)
	movq	%rax, %r15
	je	.L5033
.L2494:
	movq	global_trees+216(%rip), %rdi
	call	build_pointer_type
	movq	%r14, %rsi
	movq	%rax, %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	global_trees+216(%rip), %rdi
	movq	%rax, %r12
	call	build_pointer_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	%r15, %rsi
	movq	%rax, (%r12)
	movq	%rax, %rbx
	movq	sizetype_tab(%rip), %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	fn.1(%rip), %rdx
	movq	%rax, (%rbx)
	movq	(%r12), %rcx
	movq	8(%rdx), %rdi
	movq	(%rcx), %r11
	movq	$0, (%r11)
	call	build_pointer_type
	movq	fn.1(%rip), %rdx
	movl	$121, %edi
	movq	%rax, %rsi
	call	build1
	xorl	%r8d, %r8d
	movq	%r12, %rcx
	movq	fn.1(%rip), %r15
	movq	%rax, %rdx
	movl	$53, %edi
	xorl	%eax, %eax
	movq	8(%r15), %rbx
	movq	8(%rbx), %rsi
	call	build
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	orb	$1, 17(%rax)
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	expand_expr
	testb	$4, 3(%r14)
	jne	.L5034
.L2483:
	movq	-2272(%rbp), %rbx
	cmpw	$54, (%rbx)
	je	.L5035
	movq	sizetype_tab(%rip), %r9
	movq	-2272(%rbp), %rcx
	xorl	%r8d, %r8d
	movq	optab_table+16(%rip), %rsi
	movq	-2240(%rbp), %rdx
	movzbl	61(%r9), %r12d
	xorl	%r9d, %r9d
	movl	$3, (%rsp)
	shrb	$1, %r12b
	movzbl	%r12b, %edi
	call	expand_binop
	movq	-1168(%rbp), %rdi
	movq	%rax, %rbx
	call	highest_pow2_factor
	movq	-2272(%rbp), %rsi
	movq	%r13, %rdi
	movq	%rax, %rdx
	call	offset_address
	movq	%rax, %r13
	call	gen_label_rtx
	xorl	%r9d, %r9d
	movq	%rax, -2328(%rbp)
	movq	const_int_rtx+512(%rip), %rsi
	movq	%rbx, %rdi
	movzbl	2(%rbx), %r8d
	movl	$107, %edx
	xorl	%ecx, %ecx
	movq	%rax, (%rsp)
	call	emit_cmp_and_jump_insns
.L2497:
	cmpq	const_int_rtx+512(%rip), %rbx
	je	.L2498
	cmpw	$66, (%r13)
	movq	%r13, -2344(%rbp)
	je	.L5036
	movzbl	2(%r13), %edi
	call	get_mode_alignment
.L4592:
	movl	%eax, -2332(%rbp)
.L2500:
	movzbl	2(%r13), %eax
	cmpb	$51, %al
	je	.L2503
	cmpw	$54, (%rbx)
	je	.L5037
.L2503:
	movzwl	(%r13), %eax
	cmpl	$71, %eax
	je	.L2505
	cmpl	$66, %eax
	je	.L5038
.L2509:
	cmpl	$75, %eax
	je	.L2513
	cmpl	$78, %eax
	je	.L2513
.L2508:
	movzwl	(%rbx), %eax
	cmpl	$71, %eax
	je	.L2518
	cmpl	$66, %eax
	je	.L5039
.L2522:
	cmpl	$75, %eax
	je	.L2526
	cmpl	$78, %eax
	je	.L2526
.L2521:
	cmpw	$54, (%rbx)
	je	.L5040
.L2531:
	shrl	$3, -2332(%rbp)
	xorl	%edi, %edi
	mov	-2332(%rbp), %esi
	call	gen_rtx_CONST_INT
	movl	class_narrowest_mode+4(%rip), %r14d
	movq	%rax, -1216(%rbp)
	testl	%r14d, %r14d
	je	.L4327
.L2625:
	movslq	%r14d,%rcx
	movl	clrstr_optab(,%rcx,4), %edx
	movq	%rcx, -1224(%rbp)
	cmpl	$1317, %edx
	je	.L2612
	cmpw	$54, (%rbx)
	je	.L5041
.L2616:
	testb	$2, target_flags+3(%rip)
	je	.L2617
	movq	-1224(%rbp), %rax
	cmpw	$63, mode_bitsize(%rax,%rax)
.L4595:
	jbe	.L2612
.L2615:
	movslq	%edx,%r8
	leaq	(%r8,%r8,4), %r10
	movq	%r8, -1232(%rbp)
	movq	insn_data+24(,%r10,8), %r15
	movq	(%r15), %rax
	testq	%rax, %rax
	je	.L2619
	movq	-2344(%rbp), %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L2612
.L2619:
	movq	48(%r15), %rax
	testq	%rax, %rax
	je	.L2620
	xorl	%esi, %esi
	movq	-1216(%rbp), %rdi
	call	*%rax
	testl	%eax, %eax
	je	.L2612
.L2620:
	call	get_last_insn
	movl	$1, %edx
	movq	%rbx, %rsi
	movl	%r14d, %edi
	movq	%rax, -1240(%rbp)
	call	convert_to_mode
	movq	%rax, %r12
	movq	24(%r15), %rax
	testq	%rax, %rax
	jne	.L5042
.L2621:
	movq	-1232(%rbp), %rsi
	movq	-2344(%rbp), %rdi
	xorl	%eax, %eax
	movq	-1216(%rbp), %rdx
	leaq	(%rsi,%rsi,4), %r14
	movq	%r12, %rsi
	call	*insn_data+16(,%r14,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L4596
	movq	-1240(%rbp), %rdi
	call	delete_insns_since
.L2612:
	movq	-1224(%rbp), %rdx
	movzbl	mode_wider_mode(%rdx), %r14d
	testl	%r14d, %r14d
	jne	.L2625
.L4327:
	testb	$2, target_flags+3(%rip)
	movq	-2344(%rbp), %rcx
	setne	%r9b
	movq	8(%rcx), %rsi
	movzbl	%r9b, %edi
	addl	$4, %edi
	call	copy_to_mode_reg
	movq	%rbx, %rsi
	movq	sizetype_tab(%rip), %rdi
	movq	%rax, %r14
	movzbl	61(%rdi), %r11d
	shrb	$1, %r11b
	movzbl	%r11b, %edi
	call	copy_to_mode_reg
	cmpq	$0, fn.0(%rip)
	movq	%rax, %r15
	je	.L5043
.L2630:
	movq	global_trees+216(%rip), %rdi
	call	build_pointer_type
	movq	%r14, %rsi
	movq	%rax, %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	const_int_rtx+512(%rip), %rsi
	movq	integer_types+40(%rip), %rdi
	movq	%rax, %r12
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	%r15, %rsi
	movq	%rax, (%r12)
	movq	%rax, %rbx
	movq	sizetype_tab(%rip), %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	fn.0(%rip), %rdx
	movq	%rax, (%rbx)
	movq	(%r12), %rdi
	movq	(%rdi), %r11
	movq	8(%rdx), %rdi
	movq	$0, (%r11)
	call	build_pointer_type
	movq	fn.0(%rip), %rdx
	movl	$121, %edi
	movq	%rax, %rsi
	call	build1
	xorl	%r8d, %r8d
	movq	%r12, %rcx
	movq	fn.0(%rip), %rsi
	movq	%rax, %rdx
	movl	$53, %edi
	xorl	%eax, %eax
	movq	8(%rsi), %r15
	movq	8(%r15), %rsi
	call	build
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	orb	$1, 17(%rax)
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	expand_expr
	testb	$4, 3(%r14)
	jne	.L5044
.L2498:
	cmpq	$0, -2328(%rbp)
	je	.L2073
	movq	-2328(%rbp), %rdi
	call	emit_label
	jmp	.L2073
.L5044:
	movl	$49, %edi
	xorl	%esi, %esi
	movq	%r14, %rdx
	call	gen_rtx_fmt_e
	movq	%rax, %rdi
.L4596:
	call	emit_insn
	jmp	.L2498
.L5043:
	movl	$.LC7, %edi
	call	get_identifier
	movq	global_trees+216(%rip), %rdi
	movq	%rax, fn.0(%rip)
	call	build_pointer_type
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	build_function_type
	movq	fn.0(%rip), %rsi
	movl	$30, %edi
	movq	%rax, %rdx
	call	build_decl
	movl	$1, %esi
	movl	$fn.0, %edi
	movq	%rax, fn.0(%rip)
	call	ggc_add_tree_root
	movq	fn.0(%rip), %r8
	xorl	%esi, %esi
	orb	$1, 49(%r8)
	movq	fn.0(%rip), %r10
	orb	$8, 18(%r10)
	movq	fn.0(%rip), %r12
	orb	$64, 50(%r12)
	movq	fn.0(%rip), %rbx
	orb	$2, 18(%rbx)
	movq	fn.0(%rip), %rdi
	call	make_decl_rtl
	movq	fn.0(%rip), %rdi
	call	assemble_external
	jmp	.L2630
.L5042:
	movq	%r12, %rdi
	movl	%r14d, %esi
	call	*%rax
	testl	%eax, %eax
	jne	.L2621
	movq	%r12, %rsi
	movl	%r14d, %edi
	call	copy_to_mode_reg
	movq	%rax, %r12
	jmp	.L2621
	.p2align 6,,7
.L2617:
	movq	-1224(%rbp), %r15
	cmpw	$31, mode_bitsize(%r15,%r15)
	jmp	.L4595
.L5041:
	movq	mode_mask_array(,%rcx,8), %r12
	shrq	$1, %r12
	cmpq	%r12, 8(%rbx)
	jbe	.L2615
	jmp	.L2616
.L5040:
	movq	8(%rbx), %r14
	xorl	%r15d, %r15d
	movl	$17, %esi
.L2544:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L4316
.L2541:
	movslq	%ecx,%r11
	movzbq	mode_size(%r11), %rdx
	cmpq	%rsi, %rdx
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r11), %ecx
	testl	%ecx, %ecx
	jne	.L2541
.L4316:
	testl	%edi, %edi
	je	.L2534
	movslq	%edi,%r12
	movq	%r12, %rcx
	salq	$4, %rcx
	addq	optab_table+240(%rip), %rcx
	cmpl	$1317, 8(%rcx)
	je	.L2543
	call	get_mode_alignment
	movl	$128, %r9d
	cmpl	%eax, %r9d
	jb	.L2543
	movzbq	mode_size(%r12), %r8
	movq	%r14, %rax
	xorl	%edx, %edx
	divq	%r8
	addq	%rax, %r15
	movq	%rdx, %r14
.L2543:
	movzbq	mode_size(%r12), %rsi
	cmpq	$1, %rsi
	ja	.L2544
.L2534:
	testq	%r14, %r14
	jne	.L4757
	movl	optimize_size(%rip), %r12d
	testl	%r12d, %r12d
	jne	.L2547
	movq	ix86_cost(%rip), %r10
	mov	40(%r10), %esi
	cmpq	%rsi, %r15
	jae	.L2531
.L2548:
	movq	8(%rbx), %rcx
	movq	-2344(%rbp), %r15
	leaq	-464(%rbp), %r12
	testb	$2, target_flags+3(%rip)
	movq	$clear_by_pieces_1, -424(%rbp)
	movq	$0, -416(%rbp)
	setne	%dl
	xorl	%esi, %esi
	movq	%rcx, -440(%rbp)
	movq	%r15, -464(%rbp)
	leaq	16(%r12), %rcx
	movq	8(%r15), %r8
	movq	$0, -432(%rbp)
	movl	$0, -2356(%rbp)
	movzbl	%dl, %r11d 
	movq	%r8, -456(%rbp)
	leaq	5(,%r11,4), %r15
	movzwl	(%r8), %edx
	leal	-96(%rdx), %ebx
	cmpw	$1, %bx
	jbe	.L2552
	cmpw	$99, %dx
	je	.L2552
	cmpw	$98, %dx
	je	.L2552
.L2551:
	movl	%esi, (%rcx)
	movl	$0, 20(%r12)
	leaq	56(%r12), %rdx
	movzwl	(%r8), %eax
	xorl	%ecx, %ecx
	cmpw	$96, %ax
	je	.L2554
	cmpw	$98, %ax
	je	.L2554
.L2553:
	movl	%ecx, (%rdx)
	movl	56(%r12), %eax
	testl	%eax, %eax
	je	.L2555
	movq	24(%r12), %r9
	movq	%r9, 32(%r12)
.L2555:
	movl	16(%r12), %eax
	testl	%eax, %eax
	jne	.L2556
	movq	24(%r12), %r14
	movq	$0, -2352(%rbp)
	movl	$17, %esi
.L2569:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L4319
.L2566:
	movslq	%ecx,%r10
	movzbq	mode_size(%r10), %rbx
	cmpq	%rsi, %rbx
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r10), %ecx
	testl	%ecx, %ecx
	jne	.L2566
.L4319:
	testl	%edi, %edi
	je	.L2559
	movslq	%edi,%rbx
	movq	%rbx, %rsi
	salq	$4, %rsi
	addq	optab_table+240(%rip), %rsi
	cmpl	$1317, 8(%rsi)
	je	.L2568
	movq	%r8, -2648(%rbp)
	call	get_mode_alignment
	movq	-2648(%rbp), %r8
	movl	$128, %edi
	cmpl	%eax, %edi
	jb	.L2568
	movzbq	mode_size(%rbx), %rcx
	movq	%r14, %rax
	xorl	%edx, %edx
	divq	%rcx
	addq	%rax, -2352(%rbp)
	movq	%rdx, %r14
.L2568:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L2569
.L2559:
	testq	%r14, %r14
	jne	.L4757
	cmpq	$2, -2352(%rbp)
	jbe	.L2556
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L4321
.L2577:
	movslq	%ecx,%r9
	movzbq	mode_size(%r9), %rdx
	cmpq	%r15, %rdx
	cmovae	-2356(%rbp), %ecx
	movl	%ecx, -2356(%rbp)
	movzbl	mode_wider_mode(%r9), %ecx
	testl	%ecx, %ecx
	jne	.L2577
.L4321:
	movl	16(%r12), %eax
	testl	%eax, %eax
	jne	.L2556
	movzwl	(%r8), %edx
	leal	-67(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L2581
	cmpw	$54, %dx
	je	.L2581
	cmpw	$55, %dx
	je	.L2581
	cmpw	$58, %dx
	je	.L2581
	cmpw	$134, %dx
	je	.L2581
	cmpw	$56, %dx
	je	.L2581
	cmpw	$140, %dx
	je	.L2581
.L2556:
	cmpq	$1, %r15
	jbe	.L2584
.L2605:
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L4324
.L2591:
	movslq	%ecx,%r8
	movzbq	mode_size(%r8), %rbx
	cmpq	%r15, %rbx
	cmovae	-2356(%rbp), %ecx
	movl	%ecx, -2356(%rbp)
	movzbl	mode_wider_mode(%r8), %ecx
	testl	%ecx, %ecx
	jne	.L2591
.L4324:
	movl	-2356(%rbp), %eax
	testl	%eax, %eax
	je	.L2584
	movslq	-2356(%rbp),%r15
	movq	%r15, %rsi
	salq	$4, %rsi
	addq	optab_table+240(%rip), %rsi
	movl	8(%rsi), %ebx
	cmpl	$1317, %ebx
	je	.L2593
	movl	-2356(%rbp), %edi
	call	get_mode_alignment
	movl	$128, %edi
	cmpl	%eax, %edi
	jb	.L2593
	movzbq	mode_size(%r15), %rdx
	movslq	%ebx,%rcx
	leaq	(%rcx,%rcx,4), %r11
	cmpq	%rdx, 24(%r12)
	movq	insn_data+16(,%r11,8), %r14
	movq	%r14, -1208(%rbp)
	movq	%rdx, %r14
	jb	.L2593
	movl	56(%r12), %ecx
.L2603:
	testl	%ecx, %ecx
	je	.L2597
	subq	%rdx, 32(%r12)
.L2597:
	movl	16(%r12), %eax
	testl	%eax, %eax
	je	.L2598
	movq	(%r12), %rdi
	movl	-2356(%rbp), %esi
	movl	$1, %r8d
	movq	8(%r12), %rdx
	movq	32(%r12), %rcx
	call	adjust_automodify_address_1
.L4594:
	movl	-2356(%rbp), %edx
	movq	%rax, %rbx
	movq	48(%r12), %rdi
	movq	32(%r12), %rsi
	call	*40(%r12)
	movq	%rbx, %rdi
	movq	%rax, %rsi
	xorl	%eax, %eax
	call	*-1208(%rbp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%r12), %eax
	testl	%eax, %eax
	movl	%eax, %ecx
	jne	.L2602
	addq	%r14, 32(%r12)
.L2602:
	movq	24(%r12), %r9
	movq	%r14, %rdx
	subq	%r14, %r9
	cmpq	%r14, %r9
	movq	%r9, 24(%r12)
	jae	.L2603
.L2593:
	movzbq	mode_size(%r15), %r15
	cmpq	$1, %r15
	ja	.L2605
.L2584:
	cmpq	$0, 24(%r12)
	je	.L2498
	jmp	.L4756
.L2598:
	movq	(%r12), %rdi
	movl	-2356(%rbp), %esi
	movl	$1, %ecx
	movq	32(%r12), %rdx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L4594
.L2581:
	movq	%r8, %rdi
	call	copy_addr_to_reg
	movq	%rax, 8(%r12)
	jmp	.L2556
.L2554:
	movl	$1, %ecx
	jmp	.L2553
.L2552:
	movl	$1, %esi
	jmp	.L2551
.L2547:
	cmpq	$2, %r15
	ja	.L2531
	jmp	.L2548
.L2526:
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%rbx), %rdi
	movq	%rax, %r14
	call	protect_from_queue
	cmpq	8(%rbx), %r14
	movq	%rax, %r12
	je	.L5045
.L2528:
	movq	%rbx, %rdi
	call	copy_rtx
	movq	%rax, %rbx
	movq	%r14, 8(%rax)
	movq	%r12, 16(%rax)
	jmp	.L2521
.L5045:
	cmpq	16(%rbx), %rax
	jne	.L2528
	jmp	.L2521
.L5039:
	cmpb	$51, 2(%rbx)
	je	.L2519
	movq	8(%rbx), %r14
	cmpw	$71, (%r14)
	je	.L5046
.L2519:
	cmpl	$66, %eax
	jne	.L2522
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%rbx), %rax
	movq	%rax, %r12
	je	.L2521
	movq	%rbx, %rdi
	call	copy_rtx
	movq	%rax, %rbx
	movq	%r12, 8(%rax)
	jmp	.L2521
.L5046:
	movq	8(%r14), %rsi
	movq	%rbx, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%r14)
	movq	%rax, %r12
	je	.L2520
	movzbl	2(%rbx), %edi
	call	gen_reg_rtx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L2521
.L2520:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%r12, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L4593:
	movq	%rax, %rbx
	jmp	.L2521
.L2518:
	cmpq	$0, 16(%rbx)
	je	.L5047
	movq	24(%rbx), %rax
	testq	%rax, %rax
	jne	.L4593
	movq	8(%rbx), %r10
	movzbl	2(%r10), %edi
	call	gen_reg_rtx
	movq	8(%rbx), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%rbx)
	call	gen_move_insn
	movq	16(%rbx), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%rbx), %rbx
	jmp	.L2521
.L5047:
	movq	8(%rbx), %rdi
	call	copy_to_reg
	jmp	.L4593
.L2513:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, %r14
	call	protect_from_queue
	cmpq	8(%r13), %r14
	movq	%rax, %r12
	je	.L5048
.L2515:
	movq	%r13, %rdi
	call	copy_rtx
	movq	%rax, -2344(%rbp)
	movq	%r14, 8(%rax)
	movq	-2344(%rbp), %rax
	movq	%r12, 16(%rax)
	jmp	.L2508
.L5048:
	cmpq	16(%r13), %rax
	jne	.L2515
	jmp	.L2508
.L5038:
	jne	.L2509
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%r13), %rax
	movq	%rax, %r12
	je	.L2508
	movq	%r13, %rdi
	call	copy_rtx
	movq	%rax, -2344(%rbp)
	movq	%r12, 8(%rax)
	jmp	.L2508
.L2505:
	cmpq	$0, 16(%r13)
	je	.L5049
	movq	24(%r13), %rdi
	testq	%rdi, %rdi
	movq	%rdi, -2344(%rbp)
	jne	.L2508
	movq	8(%r13), %rsi
	movzbl	2(%rsi), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %r8
	movq	%r8, -2344(%rbp)
	jmp	.L2508
.L5049:
	movq	8(%r13), %rdi
	call	copy_to_reg
	movq	%rax, -2344(%rbp)
	jmp	.L2508
.L5037:
	movzbl	%al, %edx 
	movzbl	mode_size(%rdx), %r14d
	cmpl	8(%rbx), %r14d
	jne	.L2503
	movq	const_tiny_rtx(,%rdx,8), %rsi
	movq	%r13, %rdi
	call	emit_move_insn
	jmp	.L2498
.L5036:
	movq	16(%r13), %rax
	movl	$8, -2332(%rbp)
	testq	%rax, %rax
	je	.L2500
	movl	32(%rax), %eax
	jmp	.L4592
.L5035:
	movq	8(%rbx), %rsi
	movq	-2240(%rbp), %rdi
	negq	%rsi
	call	plus_constant_wide
	movl	$1, %r8d
	movl	$1, %ecx
	movq	%r13, %rdi
	movl	$51, %esi
	movq	%rax, %rbx
	movq	-2272(%rbp), %r13
	movq	8(%r13), %rdx
	call	adjust_address_1
	movq	%rax, %r13
	jmp	.L2497
.L5034:
	movl	$49, %edi
	xorl	%esi, %esi
	movq	%r14, %rdx
	call	gen_rtx_fmt_e
	movq	%rax, %rdi
	call	emit_insn
	jmp	.L2483
.L5033:
	movl	$.LC11, %edi
	call	get_identifier
	movq	global_trees+216(%rip), %rdi
	movq	%rax, fn.1(%rip)
	call	build_pointer_type
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	build_function_type
	movq	fn.1(%rip), %rsi
	movl	$30, %edi
	movq	%rax, %rdx
	call	build_decl
	movl	$1, %esi
	movl	$fn.1, %edi
	movq	%rax, fn.1(%rip)
	call	ggc_add_tree_root
	movq	fn.1(%rip), %r10
	orb	$1, 49(%r10)
	movq	fn.1(%rip), %rsi
	orb	$8, 18(%rsi)
	xorl	%esi, %esi
	movq	fn.1(%rip), %r8
	orb	$64, 50(%r8)
	movq	fn.1(%rip), %rdi
	orb	$2, 18(%rdi)
	movq	fn.1(%rip), %rdi
	call	make_decl_rtl
	movq	fn.1(%rip), %rdi
	call	assemble_external
	jmp	.L2494
.L4498:
	call	emit_insn
	movl	$0, volatile_ok(%rip)
	jmp	.L2483
.L5032:
	movq	%rbx, %rdi
	movl	%r12d, %esi
	call	*%rax
	testl	%eax, %eax
	jne	.L2481
	movq	%rbx, %rsi
	movl	%r12d, %edi
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L2481
.L5031:
	movq	-2288(%rbp), %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L2471
	jmp	.L2479
	.p2align 6,,7
.L2476:
	cmpw	$31, mode_bitsize(%r15,%r15)
	jmp	.L4591
.L5030:
	movq	mode_mask_array(,%r15,8), %r8
	shrq	$1, %r8
	cmpq	%r8, 8(%rsi)
	jbe	.L2474
	jmp	.L2475
.L5029:
	movq	8(%rcx), %r12
	xorl	%r14d, %r14d
	movl	$17, %esi
.L2365:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L4302
.L2362:
	movslq	%ecx,%r10
	movzbq	mode_size(%r10), %r8
	cmpq	%rsi, %r8
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r10), %ecx
	testl	%ecx, %ecx
	jne	.L2362
.L4302:
	testl	%edi, %edi
	je	.L2355
	movslq	%edi,%rbx
	movq	%rbx, %rcx
	salq	$4, %rcx
	addq	optab_table+240(%rip), %rcx
	cmpl	$1317, 8(%rcx)
	je	.L2364
	call	get_mode_alignment
	movl	$128, %edx
	cmpl	%eax, %edx
	jb	.L2364
	movzbq	mode_size(%rbx), %r11
	movq	%r12, %rax
	xorl	%edx, %edx
	divq	%r11
	addq	%rax, %r14
	movq	%rdx, %r12
.L2364:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L2365
.L2355:
	testq	%r12, %r12
	jne	.L4757
	movl	optimize_size(%rip), %eax
	testl	%eax, %eax
	jne	.L2368
	movq	ix86_cost(%rip), %r9
	mov	40(%r9), %ebx
	cmpq	%rbx, %r14
	jae	.L2352
.L2369:
	movq	-2296(%rbp), %r8
	movq	-2288(%rbp), %rdi
	movq	-2280(%rbp), %rdx
	movq	-2280(%rbp), %rsi
	testb	$2, target_flags+3(%rip)
	movq	8(%r8), %r12
	setne	%r14b
	movq	8(%rdi), %r8
	movq	$0, -568(%rbp)
	movl	$0, -2308(%rbp)
	movq	%r8, -592(%rbp)
	movzbl	%r14b, %ecx
	movq	8(%rdx), %r10
	movq	%rsi, -624(%rbp)
	leal	5(,%rcx,4), %r14d
	xorl	%ecx, %ecx
	movq	%r10, -2304(%rbp)
	movq	-2304(%rbp), %rax
	movzwl	(%rax), %edx
	leal	-96(%rdx), %r15d
	cmpw	$1, %r15w
	jbe	.L2374
	cmpw	$99, %dx
	je	.L2374
	cmpw	$98, %dx
	je	.L2374
.L2373:
	movq	-2304(%rbp), %r11
	movl	%ecx, -608(%rbp)
	xorl	%edx, %edx
	movzwl	(%r11), %eax
	cmpw	$96, %ax
	je	.L2376
	cmpw	$98, %ax
	je	.L2376
.L2375:
	movq	-2304(%rbp), %r15
	movq	-2288(%rbp), %r9
	movl	%edx, -560(%rbp)
	xorl	%ecx, %ecx
	movq	%r15, -616(%rbp)
	movq	%r9, -600(%rbp)
	movzwl	(%r8), %edx
	leal	-96(%rdx), %ebx
	cmpw	$1, %bx
	jbe	.L2379
	cmpw	$99, %dx
	je	.L2379
	cmpw	$98, %dx
	je	.L2379
.L2378:
	movl	-560(%rbp), %eax
	movl	%ecx, -584(%rbp)
	movl	$0, -580(%rbp)
	movl	$0, -604(%rbp)
	testl	%eax, %eax
	je	.L2380
	movq	%r12, -568(%rbp)
.L2380:
	movl	-584(%rbp), %eax
	movq	%r12, -576(%rbp)
	testl	%eax, %eax
	je	.L2382
	movl	-608(%rbp), %esi
	testl	%esi, %esi
	jne	.L2381
.L2382:
	xorl	%r15d, %r15d
	movl	$17, %esi
.L2395:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L4305
.L2392:
	movslq	%ecx,%r10
	movzbq	mode_size(%r10), %rdx
	cmpq	%rsi, %rdx
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r10), %ecx
	testl	%ecx, %ecx
	jne	.L2392
.L4305:
	testl	%edi, %edi
	je	.L2385
	movslq	%edi,%rbx
	movq	%rbx, %rcx
	salq	$4, %rcx
	addq	optab_table+240(%rip), %rcx
	cmpl	$1317, 8(%rcx)
	je	.L2394
	movq	%r8, -2648(%rbp)
	call	get_mode_alignment
	movq	-2648(%rbp), %r8
	movl	$128, %edi
	cmpl	%eax, %edi
	jb	.L2394
	movzbq	mode_size(%rbx), %r9
	movq	%r12, %rax
	xorl	%edx, %edx
	divq	%r9
	addq	%rax, %r15
	movq	%rdx, %r12
.L2394:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L2395
.L2385:
	testq	%r12, %r12
	jne	.L4757
	cmpq	$2, %r15
	jbe	.L2381
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L4307
.L2403:
	movslq	%ecx,%rbx
	movzbl	mode_size(%rbx), %r15d
	cmpl	%r14d, %r15d
	cmovae	-2308(%rbp), %ecx
	movl	%ecx, -2308(%rbp)
	movzbl	mode_wider_mode(%rbx), %ecx
	testl	%ecx, %ecx
	jne	.L2403
.L4307:
	movl	-584(%rbp), %eax
	testl	%eax, %eax
	jne	.L2409
	movzwl	(%r8), %edx
	leal	-67(%rdx), %esi
	cmpw	$1, %si
	jbe	.L2407
	cmpw	$54, %dx
	je	.L2407
	cmpw	$55, %dx
	je	.L2407
	cmpw	$58, %dx
	je	.L2407
	cmpw	$134, %dx
	je	.L2407
	cmpw	$56, %dx
	je	.L2407
	cmpw	$140, %dx
	je	.L2407
.L2409:
	movl	-608(%rbp), %r8d
	testl	%r8d, %r8d
	jne	.L2381
	movq	-2304(%rbp), %rcx
	movzwl	(%rcx), %edx
	leal	-67(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L2411
	cmpw	$54, %dx
	je	.L2411
	cmpw	$55, %dx
	je	.L2411
	cmpw	$58, %dx
	je	.L2411
	cmpw	$134, %dx
	je	.L2411
	cmpw	$56, %dx
	je	.L2411
	cmpw	$140, %dx
	je	.L2411
.L2381:
	cmpl	$1, %r14d
	jbe	.L2414
.L2465:
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L4310
.L2421:
	movslq	%ecx,%rdi
	movzbl	mode_size(%rdi), %edx
	cmpl	%r14d, %edx
	cmovae	-2308(%rbp), %ecx
	movl	%ecx, -2308(%rbp)
	movzbl	mode_wider_mode(%rdi), %ecx
	testl	%ecx, %ecx
	jne	.L2421
.L4310:
	movl	-2308(%rbp), %r14d
	testl	%r14d, %r14d
	je	.L2414
	movslq	-2308(%rbp),%r15
	movq	%r15, %r12
	salq	$4, %r12
	addq	optab_table+240(%rip), %r12
	movl	8(%r12), %ebx
	cmpl	$1317, %ebx
	je	.L2423
	movl	-2308(%rbp), %edi
	call	get_mode_alignment
	movl	$128, %r11d
	cmpl	%eax, %r11d
	jb	.L2423
	movzbq	mode_size(%r15), %rdx
	movslq	%ebx,%rsi
	leaq	-624(%rbp), %r12
	leaq	(%rsi,%rsi,4), %rbx
	cmpq	%rdx, -576(%rbp)
	movq	$0, -2320(%rbp)
	movq	insn_data+16(,%rbx,8), %r9
	movq	%rdx, -1640(%rbp)
	movq	%r9, -1176(%rbp)
	jb	.L2423
	movl	-560(%rbp), %ecx
.L2463:
	testl	%ecx, %ecx
	je	.L2427
	subq	%rdx, 56(%r12)
.L2427:
	movq	(%r12), %rdi
	testq	%rdi, %rdi
	je	.L2428
	movl	16(%r12), %eax
	testl	%eax, %eax
	je	.L2429
	movl	-2308(%rbp), %esi
	movq	8(%r12), %rdx
	movl	$1, %r8d
	movq	56(%r12), %rcx
	call	adjust_automodify_address_1
.L4587:
	movq	%rax, -2320(%rbp)
.L2428:
	movl	40(%r12), %r8d
	testl	%r8d, %r8d
	je	.L2431
	movq	24(%r12), %rdi
	movl	-2308(%rbp), %esi
	movl	$1, %r8d
	movq	32(%r12), %rdx
	movq	56(%r12), %rcx
	call	adjust_automodify_address_1
.L4588:
	cmpq	$0, (%r12)
	movq	%rax, %r14
	jne	.L5050
	movl	target_flags(%rip), %eax
	testl	$33554432, %eax
	movl	%eax, %esi
	je	.L2437
	movzbl	mode_size(%r15), %r10d
	leal	7(%r10), %edx
	andl	$-8, %edx
.L2438:
	movq	cfun(%rip), %rdi
	andl	$33554432, %esi
	movq	16(%rdi), %r11
	leaq	8(%r11), %rdi
	movl	8(%r11), %ecx
	je	.L2439
	movzbl	mode_size(%r15), %eax
	addl	$7, %eax
	andl	$-8, %eax
.L4589:
	movq	%r15, %r9
	leal	(%rax,%rcx), %ebx
	salq	$4, %r9
	movl	%ebx, (%rdi)
	addq	optab_table+384(%rip), %r9
	movl	8(%r9), %eax
	cmpl	$1317, %eax
	je	.L2441
	movslq	%eax,%rbx
	leaq	(%rbx,%rbx,4), %rsi
	movq	insn_data+24(,%rsi,8), %rdx
	movq	(%rdx), %rax
	testq	%rax, %rax
	je	.L2442
	movq	%r14, %rdi
	movl	-2308(%rbp), %esi
	call	*%rax
	testl	%eax, %eax
	je	.L5051
.L2442:
	leaq	(%rbx,%rbx,4), %r8
	movq	%r14, %rdi
	xorl	%eax, %eax
	call	*insn_data+16(,%r8,8)
.L4590:
	movq	%rax, %rdi
	call	emit_insn
.L2461:
	movl	64(%r12), %eax
	testl	%eax, %eax
	movl	%eax, %ecx
	jne	.L2462
	movq	-1640(%rbp), %r14
	addq	%r14, 56(%r12)
.L2462:
	movq	48(%r12), %rbx
	movq	-1640(%rbp), %rdx
	subq	-1640(%rbp), %rbx
	cmpq	%rdx, %rbx
	movq	%rbx, 48(%r12)
	jae	.L2463
.L2423:
	movzbl	mode_size(%r15), %r14d
	cmpl	$1, %r14d
	ja	.L2465
.L2414:
	cmpq	$0, -576(%rbp)
	je	.L2483
	jmp	.L4742
.L5051:
	movl	-2308(%rbp), %edi
	movq	%r14, %rsi
	call	force_reg
	movq	%rax, %r14
	jmp	.L2442
.L2441:
	movzbl	mode_size(%r15), %r10d
	cmpl	%edx, %r10d
	je	.L5052
	mov	%edx, %esi
	xorl	%edi, %edi
	negq	%rsi
	call	gen_rtx_CONST_INT
	movq	global_rtl+16(%rip), %rdx
	testb	$2, target_flags+3(%rip)
	setne	%dil
	movq	%rax, %rcx
	movzbl	%dil, %esi
	movl	$75, %edi
	addl	$4, %esi
	call	gen_rtx_fmt_ee
	movq	global_rtl+16(%rip), %rdx
	movl	$100, %edi
	testb	$2, target_flags+3(%rip)
	movq	%rax, %rcx
	setne	%r11b
	movzbl	%r11b, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_ee
.L2449:
	movl	-2308(%rbp), %edi
	movq	%rax, %rsi
	call	gen_rtx_MEM
	xorl	%ecx, %ecx
	testq	%rcx, %rcx
	movq	%rax, %rbx
	je	.L2458
	xorl	%esi, %esi
	movq	%rax, %rdi
	movl	$1, %edx
	call	set_mem_attributes
	movl	flag_optimize_sibling_calls(%rip), %r9d
	testl	%r9d, %r9d
	jne	.L5053
.L2458:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	call	emit_move_insn
	jmp	.L2461
.L5053:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	call	set_mem_alias_set
	jmp	.L2458
.L5052:
	testb	$2, target_flags+3(%rip)
	movq	global_rtl+16(%rip), %rdx
	movl	$96, %edi
	setne	%al
	movzbl	%al, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_e
	jmp	.L2449
.L2439:
	movzbl	mode_size(%r15), %eax
	incl	%eax
	andl	$-2, %eax
	jmp	.L4589
.L2437:
	movzbl	mode_size(%r15), %ecx
	leal	1(%rcx), %edx
	andl	$-2, %edx
	jmp	.L2438
.L5050:
	movq	%rax, %rsi
	movq	-2320(%rbp), %rdi
	xorl	%eax, %eax
	call	*-1176(%rbp)
	jmp	.L4590
.L2431:
	movq	24(%r12), %rdi
	movl	-2308(%rbp), %esi
	movl	$1, %ecx
	movq	56(%r12), %rdx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L4588
.L2429:
	movl	-2308(%rbp), %esi
	movq	56(%r12), %rdx
	movl	$1, %ecx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L4587
.L2411:
	movq	-2304(%rbp), %rdi
	call	copy_addr_to_reg
	movq	%rax, -616(%rbp)
	jmp	.L2381
.L2407:
	movq	%r8, %rdi
	call	copy_addr_to_reg
	movq	%rax, -592(%rbp)
	jmp	.L2409
.L2379:
	movl	$1, %ecx
	jmp	.L2378
.L2376:
	movl	$1, %edx
	jmp	.L2375
.L2374:
	movl	$1, %ecx
	jmp	.L2373
.L2368:
	cmpq	$2, %r14
	ja	.L2352
	jmp	.L2369
.L2344:
	movq	-2272(%rbp), %r8
	xorl	%esi, %esi
	movq	8(%r8), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	-2272(%rbp), %r10
	movq	%rax, %r12
	movq	16(%r10), %rdi
	call	protect_from_queue
	movq	-2272(%rbp), %rcx
	movq	%rax, %rbx
	cmpq	8(%rcx), %r12
	je	.L5054
.L2346:
	movq	-2272(%rbp), %rdi
	call	copy_rtx
	movq	%rax, -2296(%rbp)
	movq	%r12, 8(%rax)
	movq	-2296(%rbp), %rdx
	movq	%rbx, 16(%rdx)
	jmp	.L2339
.L5054:
	cmpq	16(%rcx), %rax
	jne	.L2346
	jmp	.L2339
.L5028:
	cmpb	$51, 2(%rdx)
	je	.L2337
	movq	8(%rdx), %r12
	cmpw	$71, (%r12)
	je	.L5055
.L2337:
	cmpl	$66, %eax
	jne	.L2340
	movq	-2272(%rbp), %rcx
	xorl	%esi, %esi
	movq	8(%rcx), %rdi
	call	protect_from_queue
	movq	-2272(%rbp), %rsi
	movq	%rax, %rbx
	cmpq	8(%rsi), %rax
	je	.L2339
	movq	%rsi, %rdi
	call	copy_rtx
	movq	%rax, -2296(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L2339
.L5055:
	movq	8(%r12), %rsi
	movq	%rdx, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%r12)
	movq	%rax, %rbx
	je	.L2338
	movq	-2272(%rbp), %rsi
	movzbl	2(%rsi), %edi
	call	gen_reg_rtx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, -2296(%rbp)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L2339
.L2338:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L4586:
	movq	%rax, -2296(%rbp)
	jmp	.L2339
.L2336:
	movq	-2272(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.L5056
	movq	-2272(%rbp), %rdi
	movq	24(%rdi), %rbx
	testq	%rbx, %rbx
	movq	%rbx, -2296(%rbp)
	jne	.L2339
	movq	-2272(%rbp), %r9
	movq	8(%r9), %r11
	movzbl	2(%r11), %edi
	call	gen_reg_rtx
	movq	-2272(%rbp), %r14
	movq	%rax, %rdi
	movq	8(%r14), %rsi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r14), %r12
	movq	%r12, -2296(%rbp)
	jmp	.L2339
.L5056:
	movq	8(%rax), %rdi
	call	copy_to_reg
	jmp	.L4586
.L2331:
	movq	-2424(%rbp), %rdx
	xorl	%esi, %esi
	movq	8(%rdx), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	-2424(%rbp), %rbx
	movq	%rax, %r12
	movq	16(%rbx), %rdi
	call	protect_from_queue
	movq	-2424(%rbp), %rcx
	movq	%rax, %rbx
	cmpq	8(%rcx), %r12
	je	.L5057
.L2333:
	movq	-2424(%rbp), %rdi
	call	copy_rtx
	movq	%rax, -2288(%rbp)
	movq	%r12, 8(%rax)
	movq	-2288(%rbp), %rdi
	movq	%rbx, 16(%rdi)
	jmp	.L2326
.L5057:
	cmpq	16(%rcx), %rax
	jne	.L2333
	jmp	.L2326
.L5027:
	cmpb	$51, 2(%rdx)
	je	.L2324
	movq	8(%rdx), %r12
	cmpw	$71, (%r12)
	je	.L5058
.L2324:
	cmpl	$66, %eax
	jne	.L2327
	movq	-2424(%rbp), %r8
	xorl	%esi, %esi
	movq	8(%r8), %rdi
	call	protect_from_queue
	movq	-2424(%rbp), %rsi
	movq	%rax, %rbx
	cmpq	8(%rsi), %rax
	je	.L2326
	movq	%rsi, %rdi
	call	copy_rtx
	movq	%rax, -2288(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L2326
.L5058:
	movq	8(%r12), %rsi
	movq	%rdx, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%r12)
	movq	%rax, %rbx
	je	.L2325
	movq	-2424(%rbp), %r10
	movzbl	2(%r10), %edi
	call	gen_reg_rtx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, -2288(%rbp)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L2326
.L2325:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L4585:
	movq	%rax, -2288(%rbp)
	jmp	.L2326
.L2323:
	movq	-2424(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.L5059
	movq	-2424(%rbp), %r12
	movq	24(%r12), %r14
	testq	%r14, %r14
	movq	%r14, -2288(%rbp)
	jne	.L2326
	movq	-2424(%rbp), %rax
	movq	8(%rax), %r9
	movzbl	2(%r9), %edi
	call	gen_reg_rtx
	movq	-2424(%rbp), %r14
	movq	%rax, %rdi
	movq	8(%r14), %rsi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r14), %r11
	movq	%r11, -2288(%rbp)
	jmp	.L2326
.L5059:
	movq	8(%rax), %rdi
	call	copy_to_reg
	jmp	.L4585
.L2318:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, %r12
	call	protect_from_queue
	cmpq	8(%r13), %r12
	movq	%rax, %rbx
	je	.L5060
.L2320:
	movq	%r13, %rdi
	call	copy_rtx
	movq	%rax, -2280(%rbp)
	movq	%r12, 8(%rax)
	movq	-2280(%rbp), %r9
	movq	%rbx, 16(%r9)
	jmp	.L2313
.L5060:
	cmpq	16(%r13), %rax
	jne	.L2320
	jmp	.L2313
.L5026:
	jne	.L2314
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%r13), %rax
	movq	%rax, %rbx
	je	.L2313
	movq	%r13, %rdi
	call	copy_rtx
	movq	%rax, -2280(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L2313
.L2310:
	testq	%rsi, %rsi
	je	.L5061
	movq	24(%r13), %rsi
	testq	%rsi, %rsi
	movq	%rsi, -2280(%rbp)
	jne	.L2313
	movq	8(%r13), %rcx
	movzbl	2(%rcx), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %rax
.L4584:
	movq	%rax, -2280(%rbp)
	jmp	.L2313
.L5061:
	movq	8(%r13), %rdi
	call	copy_to_reg
	jmp	.L4584
.L2303:
	testq	%rsi, %rsi
	movl	$8, %r15d
	je	.L2299
	movl	32(%rsi), %r15d
	jmp	.L2299
.L2302:
	cmpl	$7, %edx
	ja	.L2298
	jmp	.L2303
.L5025:
	movq	-2240(%rbp), %rax
	movslq	32(%r15),%r10
	cmpq	%r10, 8(%rax)
	jge	.L2098
	movq	-2424(%rbp), %rcx
	movq	%r13, -2224(%rbp)
	movl	$8, %edx
	movq	%rcx, -2232(%rbp)
	movq	16(%r13), %rax
	testq	%rax, %rax
	movq	%rax, %rsi
	je	.L2102
	movl	32(%rax), %edx
.L2102:
	movq	-2424(%rbp), %r11
	movq	16(%r11), %rax
	testq	%rax, %rax
	movq	%rax, %rcx
	je	.L2103
	cmpl	32(%rax), %edx
	jb	.L2104
.L2099:
	testq	%rcx, %rcx
	movl	$8, %r15d
	je	.L2100
	movl	32(%rcx), %r15d
.L2100:
	cmpb	$51, 2(%r13)
	jne	.L4766
	movq	-2424(%rbp), %rdx
	cmpb	$51, 2(%rdx)
	jne	.L4765
	movzwl	(%r13), %eax
	cmpl	$71, %eax
	je	.L2111
	cmpl	$66, %eax
	je	.L5062
.L2115:
	cmpl	$75, %eax
	je	.L2119
	cmpl	$78, %eax
	je	.L2119
.L2114:
	movq	-2424(%rbp), %rdx
	movzwl	(%rdx), %eax
	cmpl	$71, %eax
	je	.L2124
	cmpl	$66, %eax
	je	.L5063
.L2128:
	cmpl	$75, %eax
	je	.L2132
	cmpl	$78, %eax
	je	.L2132
.L2127:
	movq	-2240(%rbp), %rdx
	movzwl	(%rdx), %eax
	cmpl	$71, %eax
	je	.L2137
	cmpl	$66, %eax
	je	.L5064
.L2141:
	cmpl	$75, %eax
	je	.L2145
	cmpl	$78, %eax
	je	.L2145
.L2140:
	movq	-2224(%rbp), %rdx
	cmpw	$66, (%rdx)
	jne	.L4764
	movq	-2232(%rbp), %rbx
	cmpw	$66, (%rbx)
	jne	.L4763
	cmpq	$0, -2240(%rbp)
	je	.L4762
	movq	-2240(%rbp), %rcx
	cmpw	$54, (%rcx)
	je	.L5065
.L2153:
	shrl	$3, %r15d
	xorl	%edi, %edi
	mov	%r15d, %esi
	call	gen_rtx_CONST_INT
	movl	class_narrowest_mode+4(%rip), %r12d
	movl	$1, volatile_ok(%rip)
	movq	%rax, -1144(%rbp)
	testl	%r12d, %r12d
	je	.L4299
.L2286:
	movslq	%r12d,%r15
	movl	movstr_optab(,%r15,4), %edx
	cmpl	$1317, %edx
	je	.L2272
	movq	-2240(%rbp), %rsi
	cmpw	$54, (%rsi)
	je	.L5066
.L2276:
	testb	$2, target_flags+3(%rip)
	je	.L2277
	cmpw	$63, mode_bitsize(%r15,%r15)
.L4583:
	jbe	.L2272
.L2275:
	movslq	%edx,%rcx
	leaq	(%rcx,%rcx,4), %rdi
	movq	%rcx, -1152(%rbp)
	movq	insn_data+24(,%rdi,8), %r14
	movq	(%r14), %rax
	testq	%rax, %rax
	je	.L2279
	movq	-2224(%rbp), %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L2272
.L2279:
	movq	24(%r14), %rax
	testq	%rax, %rax
	jne	.L5067
.L2280:
	movq	72(%r14), %rax
	testq	%rax, %rax
	je	.L2281
	xorl	%esi, %esi
	movq	-1144(%rbp), %rdi
	call	*%rax
	testl	%eax, %eax
	je	.L2272
.L2281:
	call	get_last_insn
	movl	$1, %edx
	movq	-2240(%rbp), %rsi
	movl	%r12d, %edi
	movq	%rax, -1160(%rbp)
	call	convert_to_mode
	movq	%rax, %rbx
	movq	48(%r14), %rax
	testq	%rax, %rax
	jne	.L5068
.L2282:
	movq	-1152(%rbp), %r10
	movq	-2224(%rbp), %rdi
	xorl	%eax, %eax
	movq	-2232(%rbp), %rsi
	movq	%rbx, %rdx
	movq	-1144(%rbp), %rcx
	leaq	(%r10,%r10,4), %r12
	call	*insn_data+16(,%r12,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L4500
	movq	-1160(%rbp), %rdi
	call	delete_insns_since
.L2272:
	movzbl	mode_wider_mode(%r15), %r12d
	testl	%r12d, %r12d
	jne	.L2286
.L4299:
	testb	$2, target_flags+3(%rip)
	movq	-2224(%rbp), %r11
	movl	$0, volatile_ok(%rip)
	setne	%sil
	movzbl	%sil, %edi
	movq	8(%r11), %rsi
	addl	$4, %edi
	call	copy_to_mode_reg
	testb	$2, target_flags+3(%rip)
	setne	%dl
	movq	%rax, %r14
	movq	-2232(%rbp), %rax
	movq	8(%rax), %rsi
	movzbl	%dl, %edi
	addl	$4, %edi
	call	copy_to_mode_reg
	movq	-2240(%rbp), %rsi
	movq	sizetype_tab(%rip), %r8
	movq	%rax, %rbx
	movzbl	61(%r8), %r15d
	shrb	$1, %r15b
	movzbl	%r15b, %edi
	call	copy_to_mode_reg
	cmpq	$0, fn.1(%rip)
	movq	%rax, %r15
	je	.L5069
.L2295:
	movq	global_trees+216(%rip), %rdi
	call	build_pointer_type
	movq	%r14, %rsi
	movq	%rax, %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	global_trees+216(%rip), %rdi
	movq	%rax, %r12
	call	build_pointer_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	%r15, %rsi
	movq	%rax, (%r12)
	movq	%rax, %rbx
	movq	sizetype_tab(%rip), %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	fn.1(%rip), %r15
	movq	%rax, (%rbx)
	movq	(%r12), %rdx
	movq	8(%r15), %rdi
	movq	(%rdx), %r8
	movq	$0, (%r8)
	call	build_pointer_type
	movq	fn.1(%rip), %rdx
	movl	$121, %edi
	movq	%rax, %rsi
	call	build1
	xorl	%r8d, %r8d
	movq	%r12, %rcx
	movq	fn.1(%rip), %r10
	movq	%rax, %rdx
	movl	$53, %edi
	xorl	%eax, %eax
	movq	8(%r10), %rbx
	movq	8(%rbx), %rsi
	call	build
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	orb	$1, 17(%rax)
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	expand_expr
	testb	$4, 3(%r14)
	je	.L2073
	movl	$49, %edi
	xorl	%esi, %esi
	movq	%r14, %rdx
	jmp	.L4606
.L5069:
	movl	$.LC11, %edi
	call	get_identifier
	movq	global_trees+216(%rip), %rdi
	movq	%rax, fn.1(%rip)
	call	build_pointer_type
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	build_function_type
	movq	fn.1(%rip), %rsi
	movl	$30, %edi
	movq	%rax, %rdx
	call	build_decl
	movl	$1, %esi
	movl	$fn.1, %edi
	movq	%rax, fn.1(%rip)
	call	ggc_add_tree_root
	movq	fn.1(%rip), %r12
	xorl	%esi, %esi
	orb	$1, 49(%r12)
	movq	fn.1(%rip), %rcx
	orb	$8, 18(%rcx)
	movq	fn.1(%rip), %rdi
	orb	$64, 50(%rdi)
	movq	fn.1(%rip), %r9
	orb	$2, 18(%r9)
	movq	fn.1(%rip), %rdi
	call	make_decl_rtl
	movq	fn.1(%rip), %rdi
	call	assemble_external
	jmp	.L2295
.L5068:
	movq	%rbx, %rdi
	movl	%r12d, %esi
	call	*%rax
	testl	%eax, %eax
	jne	.L2282
	movq	%rbx, %rsi
	movl	%r12d, %edi
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L2282
.L5067:
	movq	-2232(%rbp), %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L2272
	jmp	.L2280
.L2277:
	cmpw	$31, mode_bitsize(%r15,%r15)
	jmp	.L4583
.L5066:
	movq	mode_mask_array(,%r15,8), %r9
	shrq	$1, %r9
	cmpq	%r9, 8(%rsi)
	jbe	.L2275
	jmp	.L2276
.L5065:
	movq	8(%rcx), %r12
	xorl	%r14d, %r14d
	movl	$17, %esi
.L2166:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L4288
.L2163:
	movslq	%ecx,%r8
	movzbq	mode_size(%r8), %r9
	cmpq	%rsi, %r9
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r8), %ecx
	testl	%ecx, %ecx
	jne	.L2163
.L4288:
	testl	%edi, %edi
	je	.L2156
	movslq	%edi,%rbx
	movq	%rbx, %rsi
	salq	$4, %rsi
	addq	optab_table+240(%rip), %rsi
	cmpl	$1317, 8(%rsi)
	je	.L2165
	call	get_mode_alignment
	movl	$128, %r10d
	cmpl	%eax, %r10d
	jb	.L2165
	movzbq	mode_size(%rbx), %rcx
	movq	%r12, %rax
	xorl	%edx, %edx
	divq	%rcx
	addq	%rax, %r14
	movq	%rdx, %r12
.L2165:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L2166
.L2156:
	testq	%r12, %r12
	jne	.L4757
	movl	optimize_size(%rip), %r11d
	testl	%r11d, %r11d
	jne	.L2169
	movq	ix86_cost(%rip), %rbx
	mov	40(%rbx), %edx
	cmpq	%rdx, %r14
	jae	.L2153
.L2170:
	movq	-2240(%rbp), %r8
	movq	-2232(%rbp), %rcx
	movq	-2224(%rbp), %r10
	movq	-2224(%rbp), %r9
	testb	$2, target_flags+3(%rip)
	movq	8(%r8), %r12
	setne	%r14b
	movq	8(%rcx), %r8
	xorl	%ecx, %ecx
	movq	$0, -488(%rbp)
	movl	$0, -2252(%rbp)
	movq	%r8, -512(%rbp)
	movzbl	%r14b, %edi
	movq	8(%r10), %rsi
	movq	%r9, -544(%rbp)
	leal	5(,%rdi,4), %r14d
	movq	%rsi, -2248(%rbp)
	movq	-2248(%rbp), %rax
	movzwl	(%rax), %edx
	leal	-96(%rdx), %r15d
	cmpw	$1, %r15w
	jbe	.L2175
	cmpw	$99, %dx
	je	.L2175
	cmpw	$98, %dx
	je	.L2175
.L2174:
	movq	-2248(%rbp), %r11
	movl	%ecx, -528(%rbp)
	xorl	%edx, %edx
	movzwl	(%r11), %eax
	cmpw	$96, %ax
	je	.L2177
	cmpw	$98, %ax
	je	.L2177
.L2176:
	movl	%edx, -480(%rbp)
	movq	-2248(%rbp), %r15
	xorl	%ecx, %ecx
	movq	-2232(%rbp), %rdx
	movq	%r15, -536(%rbp)
	movq	%rdx, -520(%rbp)
	movzwl	(%r8), %edx
	leal	-96(%rdx), %ebx
	cmpw	$1, %bx
	jbe	.L2180
	cmpw	$99, %dx
	je	.L2180
	cmpw	$98, %dx
	je	.L2180
.L2179:
	movl	-480(%rbp), %eax
	movl	%ecx, -504(%rbp)
	movl	$0, -500(%rbp)
	movl	$0, -524(%rbp)
	testl	%eax, %eax
	je	.L2181
	movq	%r12, -488(%rbp)
.L2181:
	movl	-504(%rbp), %r9d
	movq	%r12, -496(%rbp)
	testl	%r9d, %r9d
	je	.L2183
	movl	-528(%rbp), %r10d
	testl	%r10d, %r10d
	jne	.L2182
.L2183:
	xorl	%r15d, %r15d
	movl	$17, %esi
.L2196:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L4291
.L2193:
	movslq	%ecx,%r11
	movzbq	mode_size(%r11), %rbx
	cmpq	%rsi, %rbx
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r11), %ecx
	testl	%ecx, %ecx
	jne	.L2193
.L4291:
	testl	%edi, %edi
	je	.L2186
	movslq	%edi,%rbx
	movq	%rbx, %rsi
	salq	$4, %rsi
	addq	optab_table+240(%rip), %rsi
	cmpl	$1317, 8(%rsi)
	je	.L2195
	movq	%r8, -2648(%rbp)
	call	get_mode_alignment
	movq	-2648(%rbp), %r8
	movl	$128, %edi
	cmpl	%eax, %edi
	jb	.L2195
	movzbq	mode_size(%rbx), %r9
	movq	%r12, %rax
	xorl	%edx, %edx
	divq	%r9
	addq	%rax, %r15
	movq	%rdx, %r12
.L2195:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L2196
.L2186:
	testq	%r12, %r12
	jne	.L4757
	cmpq	$2, %r15
	jbe	.L2182
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L4293
.L2204:
	movslq	%ecx,%r15
	movzbl	mode_size(%r15), %edx
	cmpl	%r14d, %edx
	cmovae	-2252(%rbp), %ecx
	movl	%ecx, -2252(%rbp)
	movzbl	mode_wider_mode(%r15), %ecx
	testl	%ecx, %ecx
	jne	.L2204
.L4293:
	movl	-504(%rbp), %eax
	testl	%eax, %eax
	jne	.L2210
	movzwl	(%r8), %edx
	leal	-67(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L2208
	cmpw	$54, %dx
	je	.L2208
	cmpw	$55, %dx
	je	.L2208
	cmpw	$58, %dx
	je	.L2208
	cmpw	$134, %dx
	je	.L2208
	cmpw	$56, %dx
	je	.L2208
	cmpw	$140, %dx
	je	.L2208
.L2210:
	movl	-528(%rbp), %r8d
	testl	%r8d, %r8d
	jne	.L2182
	movq	-2248(%rbp), %rbx
	movzwl	(%rbx), %edx
	leal	-67(%rdx), %r11d
	cmpw	$1, %r11w
	jbe	.L2212
	cmpw	$54, %dx
	je	.L2212
	cmpw	$55, %dx
	je	.L2212
	cmpw	$58, %dx
	je	.L2212
	cmpw	$134, %dx
	je	.L2212
	cmpw	$56, %dx
	je	.L2212
	cmpw	$140, %dx
	je	.L2212
.L2182:
	cmpl	$1, %r14d
	jbe	.L2215
.L2266:
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L4296
.L2222:
	movslq	%ecx,%rsi
	movzbl	mode_size(%rsi), %edi
	cmpl	%r14d, %edi
	cmovae	-2252(%rbp), %ecx
	movl	%ecx, -2252(%rbp)
	movzbl	mode_wider_mode(%rsi), %ecx
	testl	%ecx, %ecx
	jne	.L2222
.L4296:
	movl	-2252(%rbp), %eax
	testl	%eax, %eax
	je	.L2215
	movslq	-2252(%rbp),%r15
	movq	%r15, %r14
	salq	$4, %r14
	addq	optab_table+240(%rip), %r14
	movl	8(%r14), %ebx
	cmpl	$1317, %ebx
	je	.L2224
	movl	-2252(%rbp), %edi
	movl	$128, %r12d
	call	get_mode_alignment
	cmpl	%eax, %r12d
	jb	.L2224
	movslq	%ebx,%rdx
	leaq	-544(%rbp), %r12
	movq	$0, -2264(%rbp)
	leaq	(%rdx,%rdx,4), %r9
	movzbq	mode_size(%r15), %rdx
	cmpq	%rdx, -496(%rbp)
	movq	insn_data+16(,%r9,8), %rcx
	movq	%rdx, -1632(%rbp)
	movq	%rcx, -1136(%rbp)
	jb	.L2224
	movl	-480(%rbp), %ecx
.L2264:
	testl	%ecx, %ecx
	je	.L2228
	subq	%rdx, 56(%r12)
.L2228:
	movq	(%r12), %rdi
	testq	%rdi, %rdi
	je	.L2229
	movl	16(%r12), %eax
	testl	%eax, %eax
	je	.L2230
	movl	-2252(%rbp), %esi
	movq	8(%r12), %rdx
	movl	$1, %r8d
	movq	56(%r12), %rcx
	call	adjust_automodify_address_1
.L4579:
	movq	%rax, -2264(%rbp)
.L2229:
	movl	40(%r12), %eax
	testl	%eax, %eax
	je	.L2232
	movq	24(%r12), %rdi
	movl	-2252(%rbp), %esi
	movl	$1, %r8d
	movq	32(%r12), %rdx
	movq	56(%r12), %rcx
	call	adjust_automodify_address_1
.L4580:
	cmpq	$0, (%r12)
	movq	%rax, %r14
	jne	.L5070
	movl	target_flags(%rip), %eax
	testl	$33554432, %eax
	movl	%eax, %esi
	je	.L2238
	movzbl	mode_size(%r15), %r10d
	leal	7(%r10), %edx
	andl	$-8, %edx
.L2239:
	movq	cfun(%rip), %rbx
	andl	$33554432, %esi
	movq	16(%rbx), %r11
	leaq	8(%r11), %rdi
	movl	8(%r11), %ecx
	je	.L2240
	movzbl	mode_size(%r15), %eax
	addl	$7, %eax
	andl	$-8, %eax
.L4581:
	movq	%r15, %rsi
	leal	(%rax,%rcx), %r9d
	salq	$4, %rsi
	movl	%r9d, (%rdi)
	addq	optab_table+384(%rip), %rsi
	movl	8(%rsi), %eax
	cmpl	$1317, %eax
	je	.L2242
	movslq	%eax,%rbx
	leaq	(%rbx,%rbx,4), %rcx
	movq	insn_data+24(,%rcx,8), %rdi
	movq	(%rdi), %rax
	testq	%rax, %rax
	je	.L2243
	movq	%r14, %rdi
	movl	-2252(%rbp), %esi
	call	*%rax
	testl	%eax, %eax
	je	.L5071
.L2243:
	leaq	(%rbx,%rbx,4), %r10
	movq	%r14, %rdi
	xorl	%eax, %eax
	call	*insn_data+16(,%r10,8)
.L4582:
	movq	%rax, %rdi
	call	emit_insn
.L2262:
	movl	64(%r12), %eax
	testl	%eax, %eax
	movl	%eax, %ecx
	jne	.L2263
	movq	-1632(%rbp), %r14
	addq	%r14, 56(%r12)
.L2263:
	movq	48(%r12), %rbx
	movq	-1632(%rbp), %rdx
	subq	-1632(%rbp), %rbx
	cmpq	%rdx, %rbx
	movq	%rbx, 48(%r12)
	jae	.L2264
.L2224:
	movzbl	mode_size(%r15), %r14d
	cmpl	$1, %r14d
	ja	.L2266
.L2215:
	cmpq	$0, -496(%rbp)
	jmp	.L4768
.L5071:
	movl	-2252(%rbp), %edi
	movq	%r14, %rsi
	call	force_reg
	movq	%rax, %r14
	jmp	.L2243
.L2242:
	movzbl	mode_size(%r15), %r8d
	cmpl	%edx, %r8d
	je	.L5072
	mov	%edx, %esi
	xorl	%edi, %edi
	negq	%rsi
	call	gen_rtx_CONST_INT
	movq	global_rtl+16(%rip), %rdx
	movl	$75, %edi
	testb	$2, target_flags+3(%rip)
	movq	%rax, %rcx
	setne	%r11b
	movzbl	%r11b, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_ee
	movl	$100, %edi
	testb	$2, target_flags+3(%rip)
	setne	%dl
	movq	%rax, %rcx
	movzbl	%dl, %esi
	movq	global_rtl+16(%rip), %rdx
	addl	$4, %esi
	call	gen_rtx_fmt_ee
.L2250:
	movl	-2252(%rbp), %edi
	movq	%rax, %rsi
	call	gen_rtx_MEM
	xorl	%esi, %esi
	testq	%rsi, %rsi
	movq	%rax, %rbx
	je	.L2259
	movq	%rax, %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	call	set_mem_attributes
	movl	flag_optimize_sibling_calls(%rip), %eax
	testl	%eax, %eax
	jne	.L5073
.L2259:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	call	emit_move_insn
	jmp	.L2262
.L5073:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	call	set_mem_alias_set
	jmp	.L2259
.L5072:
	testb	$2, target_flags+3(%rip)
	movq	global_rtl+16(%rip), %rdx
	movl	$96, %edi
	setne	%al
	movzbl	%al, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_e
	jmp	.L2250
.L2240:
	movzbl	mode_size(%r15), %eax
	incl	%eax
	andl	$-2, %eax
	jmp	.L4581
.L2238:
	movzbl	mode_size(%r15), %r8d
	leal	1(%r8), %edx
	andl	$-2, %edx
	jmp	.L2239
.L5070:
	movq	%rax, %rsi
	movq	-2264(%rbp), %rdi
	xorl	%eax, %eax
	call	*-1136(%rbp)
	jmp	.L4582
.L2232:
	movq	24(%r12), %rdi
	movl	-2252(%rbp), %esi
	movl	$1, %ecx
	movq	56(%r12), %rdx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L4580
.L2230:
	movl	-2252(%rbp), %esi
	movq	56(%r12), %rdx
	movl	$1, %ecx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L4579
.L2212:
	movq	-2248(%rbp), %rdi
	call	copy_addr_to_reg
	movq	%rax, -536(%rbp)
	jmp	.L2182
.L2208:
	movq	%r8, %rdi
	call	copy_addr_to_reg
	movq	%rax, -512(%rbp)
	jmp	.L2210
.L2180:
	movl	$1, %ecx
	jmp	.L2179
.L2177:
	movl	$1, %edx
	jmp	.L2176
.L2175:
	movl	$1, %ecx
	jmp	.L2174
.L2169:
	cmpq	$2, %r14
	ja	.L2153
	jmp	.L2170
.L2145:
	movq	-2240(%rbp), %r9
	xorl	%esi, %esi
	movq	8(%r9), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	-2240(%rbp), %r8
	movq	%rax, %r12
	movq	16(%r8), %rdi
	call	protect_from_queue
	movq	-2240(%rbp), %rcx
	movq	%rax, %rbx
	cmpq	8(%rcx), %r12
	je	.L5074
.L2147:
	movq	-2240(%rbp), %rdi
	call	copy_rtx
	movq	%rax, -2240(%rbp)
	movq	%r12, 8(%rax)
	movq	-2240(%rbp), %r10
	movq	%rbx, 16(%r10)
	jmp	.L2140
.L5074:
	cmpq	16(%rcx), %rax
	jne	.L2147
	jmp	.L2140
.L5064:
	cmpb	$51, 2(%rdx)
	je	.L2138
	movq	8(%rdx), %r12
	cmpw	$71, (%r12)
	je	.L5075
.L2138:
	cmpl	$66, %eax
	jne	.L2141
	movq	-2240(%rbp), %r12
	xorl	%esi, %esi
	movq	8(%r12), %rdi
	call	protect_from_queue
	movq	-2240(%rbp), %rsi
	movq	%rax, %rbx
	cmpq	8(%rsi), %rax
	je	.L2140
	movq	%rsi, %rdi
	call	copy_rtx
	movq	%rax, -2240(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L2140
.L5075:
	movq	8(%r12), %rsi
	movq	%rdx, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%r12)
	movq	%rax, %rbx
	je	.L2139
	movq	-2240(%rbp), %rsi
	movzbl	2(%rsi), %edi
	call	gen_reg_rtx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, -2240(%rbp)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L2140
.L2139:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L4578:
	movq	%rax, -2240(%rbp)
	jmp	.L2140
.L2137:
	movq	-2240(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.L5076
	movq	-2240(%rbp), %rdi
	movq	24(%rdi), %rax
	testq	%rax, %rax
	jne	.L4578
	movq	-2240(%rbp), %rax
	movq	8(%rax), %r11
	movzbl	2(%r11), %edi
	call	gen_reg_rtx
	movq	-2240(%rbp), %r14
	movq	%rax, %rdi
	movq	8(%r14), %rsi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r14), %rcx
	movq	%rcx, -2240(%rbp)
	jmp	.L2140
.L5076:
	movq	8(%rax), %rdi
	call	copy_to_reg
	jmp	.L4578
.L2132:
	movq	-2424(%rbp), %r10
	xorl	%esi, %esi
	movq	8(%r10), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	-2424(%rbp), %r9
	movq	%rax, %r12
	movq	16(%r9), %rdi
	call	protect_from_queue
	movq	-2424(%rbp), %rcx
	movq	%rax, %rbx
	cmpq	8(%rcx), %r12
	je	.L5077
.L2134:
	movq	-2424(%rbp), %rdi
	call	copy_rtx
	movq	%rax, -2232(%rbp)
	movq	%r12, 8(%rax)
	movq	-2232(%rbp), %rdi
	movq	%rbx, 16(%rdi)
	jmp	.L2127
.L5077:
	cmpq	16(%rcx), %rax
	jne	.L2134
	jmp	.L2127
.L5063:
	cmpb	$51, 2(%rdx)
	je	.L2125
	movq	8(%rdx), %r12
	cmpw	$71, (%r12)
	je	.L5078
.L2125:
	cmpl	$66, %eax
	jne	.L2128
	movq	-2424(%rbp), %r8
	xorl	%esi, %esi
	movq	8(%r8), %rdi
	call	protect_from_queue
	movq	-2424(%rbp), %rsi
	movq	%rax, %rbx
	cmpq	8(%rsi), %rax
	je	.L2127
	movq	%rsi, %rdi
	call	copy_rtx
	movq	%rax, -2232(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L2127
.L5078:
	movq	8(%r12), %rsi
	movq	%rdx, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%r12)
	movq	%rax, %rbx
	je	.L2126
	movq	-2424(%rbp), %rsi
	movzbl	2(%rsi), %edi
	call	gen_reg_rtx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, -2232(%rbp)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L2127
.L2126:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L4577:
	movq	%rax, -2232(%rbp)
	jmp	.L2127
.L2124:
	movq	-2424(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.L5079
	movq	-2424(%rbp), %rax
	movq	24(%rax), %rcx
	testq	%rcx, %rcx
	movq	%rcx, -2232(%rbp)
	jne	.L2127
	movq	-2424(%rbp), %rbx
	movq	8(%rbx), %rdx
	movzbl	2(%rdx), %edi
	call	gen_reg_rtx
	movq	-2424(%rbp), %r14
	movq	%rax, %rdi
	movq	8(%r14), %rsi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r14), %r11
	movq	%r11, -2232(%rbp)
	jmp	.L2127
.L5079:
	movq	8(%rax), %rdi
	call	copy_to_reg
	jmp	.L4577
.L2119:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, %r12
	call	protect_from_queue
	cmpq	8(%r13), %r12
	movq	%rax, %rbx
	je	.L5080
.L2121:
	movq	%r13, %rdi
	call	copy_rtx
	movq	%rax, -2224(%rbp)
	movq	%r12, 8(%rax)
	movq	-2224(%rbp), %r14
	movq	%rbx, 16(%r14)
	jmp	.L2114
.L5080:
	cmpq	16(%r13), %rax
	jne	.L2121
	jmp	.L2114
.L5062:
	jne	.L2115
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%r13), %rax
	movq	%rax, %rbx
	je	.L2114
	movq	%r13, %rdi
	call	copy_rtx
	movq	%rax, -2224(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L2114
.L2111:
	testq	%rsi, %rsi
	je	.L5081
	movq	24(%r13), %rbx
	testq	%rbx, %rbx
	movq	%rbx, -2224(%rbp)
	jne	.L2114
	movq	8(%r13), %r12
	movzbl	2(%r12), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %rax
.L4576:
	movq	%rax, -2224(%rbp)
	jmp	.L2114
.L5081:
	movq	8(%r13), %rdi
	call	copy_to_reg
	jmp	.L4576
.L2104:
	testq	%rsi, %rsi
	movl	$8, %r15d
	je	.L2100
	movl	32(%rsi), %r15d
	jmp	.L2100
.L2103:
	cmpl	$7, %edx
	ja	.L2099
	jmp	.L2104
	.p2align 6,,7
.L2088:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, %r12
	call	protect_from_queue
	cmpq	8(%r13), %r12
	movq	%rax, %rbx
	je	.L5082
.L2090:
	movq	%r13, %rdi
	call	copy_rtx
	movq	%rax, %r13
	movq	%r12, 8(%rax)
	movq	%rbx, 16(%rax)
	jmp	.L2083
.L5082:
	cmpq	16(%r13), %rax
	jne	.L2090
	jmp	.L2083
.L4995:
	jne	.L2084
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%r13), %rax
	movq	%rax, %rbx
	je	.L2083
	movq	%r13, %rdi
	call	copy_rtx
	movq	%rax, %r13
	movq	%rbx, 8(%rax)
	jmp	.L2083
.L2080:
	cmpq	$0, 16(%r13)
	je	.L5083
	movq	24(%r13), %rax
	testq	%rax, %rax
	je	.L2092
.L4575:
	movq	%rax, %r13
	jmp	.L2083
.L2092:
	movq	8(%r13), %rsi
	movzbl	2(%rsi), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %r13
	jmp	.L2083
.L5083:
	movq	8(%r13), %rdi
	call	copy_to_reg
	jmp	.L4575
.L4994:
	movq	144(%r15), %rax
	testq	%rax, %rax
	je	.L2075
	cmpq	%rax, %r13
	jne	.L2075
	jmp	.L2073
	.p2align 6,,7
.L4993:
	movq	%r13, %rdi
	call	side_effects_p
	testl	%eax, %eax
	je	.L2073
	jmp	.L2074
	.p2align 6,,7
.L2072:
	movq	-2424(%rbp), %rdx
	cmpb	$0, 2(%rdx)
	jne	.L2071
	cmpb	$0, 16(%r15)
	je	.L2071
	movq	8(%r15), %rdx
	movzbl	2(%r13), %edi
	movzbl	61(%rdx), %r14d
	shrb	$1, %r14b
	movzbl	%r14b, %esi
	cmpl	%esi, %edi
	je	.L2071
	movzbl	17(%rdx), %ecx
	movq	-2424(%rbp), %rdx
	shrb	$5, %cl
	andl	$1, %ecx
	call	convert_modes
	movq	%rax, -2424(%rbp)
	jmp	.L2071
.L4460:
	movq	-2424(%rbp), %r9
	movzwl	(%r9), %edx
	jmp	.L1994
.L4465:
	movq	-2424(%rbp), %r11
	movzwl	(%r11), %edx
	jmp	.L1994
.L4992:
	movzbl	%al, %edi
	call	gen_reg_rtx
	movq	%r15, %rdi
	movzbl	2(%r13), %edx
	movq	%rax, %rsi
	jmp	.L4574
.L2033:
	xorl	%r11d, %r11d
	testl	%r11d, %r11d
	je	.L4461
	movl	(%r13), %ecx
	movl	%ecx, %esi
	andl	$134283263, %esi
	cmpl	$66, %esi
	je	.L5084
.L2049:
	andl	$268500991, %ecx
	cmpl	$268435519, %ecx
	je	.L5085
	movzbl	2(%r13), %edx
	xorl	%ecx, %ecx
	movq	%r15, %rdi
	movq	%r13, %rsi
	call	expand_expr
	cmpw	$61, (%r13)
	movq	%rax, -2424(%rbp)
	je	.L5086
.L2069:
	movl	(%r13), %eax
	andl	$134283263, %eax
	cmpl	$134217794, %eax
	je	.L4464
	movq	-2424(%rbp), %rdi
	movq	%r13, %rsi
	call	rtx_equal_p
	testl	%eax, %eax
	jne	.L4465
	movq	-2424(%rbp), %rax
	movzwl	(%rax), %edx
	leal	-67(%rdx), %r8d
	cmpw	$1, %r8w
	jbe	.L2070
	cmpw	$54, %dx
	je	.L2070
	cmpw	$55, %dx
	je	.L2070
	cmpw	$58, %dx
	je	.L2070
	cmpw	$134, %dx
	je	.L2070
	cmpw	$56, %dx
	je	.L2070
	cmpw	$140, %dx
	je	.L2070
	xorl	%edi, %edi
	testl	%edi, %edi
	je	.L1994
.L2070:
	movl	$1, -2212(%rbp)
	jmp	.L1994
.L4464:
	movq	-2424(%rbp), %rcx
	movzwl	(%rcx), %edx
	jmp	.L1994
.L5086:
	cmpl	$52, 8(%r13)
	jbe	.L4463
	jmp	.L2069
.L5085:
	xorl	%r14d, %r14d
	xorl	%edx, %edx
	testl	%r14d, %r14d
	jne	.L2055
	movq	8(%r15), %rsi
	movzbl	16(%rsi), %eax
	cmpb	$6, %al
	je	.L2056
	cmpb	$10, %al
	je	.L2056
	cmpb	$11, %al
	je	.L2056
	cmpb	$12, %al
	je	.L2056
.L2055:
	movq	%rdx, %rsi
	xorl	%ecx, %ecx
	movq	%r15, %rdi
	xorl	%edx, %edx
	call	expand_expr
	movzwl	(%rax), %edx
	movq	%rax, %rbx
	cmpw	$66, %dx
	je	.L5087
.L2058:
	leal	-67(%rdx), %r9d
	cmpw	$1, %r9w
	jbe	.L2061
	cmpw	$54, %dx
	je	.L2061
	cmpw	$55, %dx
	je	.L2061
	cmpw	$58, %dx
	je	.L2061
	cmpw	$134, %dx
	je	.L2061
	cmpw	$56, %dx
	je	.L2061
	cmpw	$140, %dx
	je	.L2061
.L2060:
	movzbl	3(%r13), %edx
	movq	8(%r13), %rdi
	movq	%rbx, %rsi
	shrb	$2, %dl
	andl	$1, %edx
	call	convert_move
	xorl	%r11d, %r11d
	testl	%r11d, %r11d
	je	.L1984
	movzbl	2(%rbx), %edx
	movzbl	2(%r13), %eax
	cmpb	%al, %dl
	je	.L1984
	testb	%dl, %dl
	je	.L2063
	movq	%rbx, %rsi
	movzbl	%al, %edi
	call	gen_lowpart_SUBREG
	movzbl	3(%rax), %ebx
	orb	$16, %bl
	movb	%bl, 3(%rax)
	andb	$-5, %bl
	movzbl	3(%r13), %esi
	andb	$4, %sil
	orb	%sil, %bl
	movb	%bl, 3(%rax)
	jmp	.L1984
.L2063:
	movq	8(%r13), %r14
	movzbl	3(%r13), %ecx
	movzbl	%al, %edi
	movq	%rbx, %rdx
	movzbl	2(%r14), %esi
	shrb	$2, %cl
	andl	$1, %ecx
	call	convert_modes
	jmp	.L1984
.L2061:
	cmpb	$0, 2(%rbx)
	jne	.L2060
	movq	8(%r15), %rcx
	movzbl	2(%r13), %edi
	movq	%rbx, %rdx
	movzbl	61(%rcx), %r10d
	movzbl	3(%r13), %ecx
	shrb	$1, %r10b
	shrb	$2, %cl
	movzbl	%r10b, %esi
	andl	$1, %ecx
	call	convert_modes
	movzbl	3(%r13), %ecx
	movzbl	2(%r13), %esi
	movq	8(%r13), %r15
	movq	%rax, %rdx
	movzbl	2(%r15), %edi
	shrb	$2, %cl
	andl	$1, %ecx
	call	convert_modes
	movq	%rax, %rbx
	jmp	.L2060
.L5087:
	xorl	%edi, %edi
	testl	%edi, %edi
	je	.L2058
	testb	$8, 3(%rax)
	jne	.L2059
	movq	8(%r13), %rdi
	movq	8(%rax), %rsi
	call	reg_mentioned_p
	testl	%eax, %eax
	je	.L4462
.L2059:
	movq	%rbx, %rdi
	call	copy_to_reg
	movq	%rax, %rbx
.L4462:
	movzwl	(%rbx), %edx
	jmp	.L2058
.L2056:
	cmpq	$0, 8(%rsi)
	jne	.L2055
	movzbl	3(%r13), %ecx
	movzbl	17(%rsi), %r12d
	movl	$1, %edi
	movl	%ecx, %edx
	shrb	$5, %r12b
	shrb	$2, %dl
	andl	$1, %r12d
	andl	%edx, %edi
	cmpl	%edi, %r12d
	je	.L2057
	call	signed_or_unsigned_type
	movq	%r15, %rsi
	movq	%rax, %rdi
	call	convert
	movzbl	3(%r13), %ecx
	movq	%rax, %r15
.L2057:
	movq	8(%r13), %r8
	shrb	$2, %cl
	movl	$1, %esi
	andl	%ecx, %esi
	movzbl	2(%r8), %edi
	call	type_for_mode
	movq	%r15, %rsi
	movq	%rax, %rdi
	call	convert
	movq	8(%r13), %rdx
	movq	%rax, %r15
	jmp	.L2055
.L5084:
	movzbl	2(%r13), %eax
	cmpb	$51, %al
	je	.L2049
	movq	%r13, %rsi
	xorl	%ecx, %ecx
	movzbl	%al, %edx
	movq	%r15, %rdi
	call	expand_expr
	movq	%rax, -2424(%rbp)
	movq	%rax, %rsi
	movzbl	2(%rax), %eax
	cmpb	$51, %al
	je	.L2050
	testb	%al, %al
	je	.L2050
	cmpq	%r13, %rsi
	je	.L2052
	movq	%rsi, %rdi
	movq	%r13, %rsi
	call	rtx_equal_p
	testl	%eax, %eax
	jne	.L5088
.L2051:
	movq	-2424(%rbp), %rdi
	call	copy_to_reg
	movq	%rax, -2424(%rbp)
.L2050:
	movl	$1, -2212(%rbp)
	jmp	.L4460
.L5088:
	movq	-2424(%rbp), %rdi
	call	side_effects_p
	testl	%eax, %eax
	jne	.L2051
	movq	%r13, %rdi
	call	side_effects_p
	testl	%eax, %eax
	jne	.L2051
.L2052:
	movl	$1, %r12d
	jmp	.L2051
	.p2align 6,,7
.L4461:
	movl	(%r13), %ecx
	jmp	.L2049
.L2042:
	movl	$1, %ebx
	jmp	.L2036
.L2043:
	xorl	%ebx, %ebx
	jmp	.L2036
.L2040:
	movq	8(%r13), %rdi
	xorl	%ebx, %ebx
	call	queued_subexp_p
	testl	%eax, %eax
	jne	.L2042
	movq	16(%r13), %rdi
	call	queued_subexp_p
	testl	%eax, %eax
	je	.L2036
	jmp	.L2042
	.p2align 6,,7
.L4991:
	cmpb	$51, 2(%r13)
	jne	.L1995
	call	gen_label_rtx
	movq	%rax, %r14
	call	gen_label_rtx
	movq	cfun(%rip), %r9
	movq	%rax, -1128(%rbp)
	movq	16(%r9), %r8
	movq	40(%r8), %rbx
	testq	%rbx, %rbx
	je	.L4281
.L2001:
	movq	32(%rbx), %rdi
	cmpw	$24, (%rdi)
	je	.L5089
	call	emit_insn
	movq	%rax, 16(%rbx)
.L2000:
	movq	cfun(%rip), %rdx
	movq	40(%rbx), %r11
	movq	16(%rdx), %rsi
	testq	%r11, %r11
	movq	%r11, %rbx
	movq	%r11, 40(%rsi)
	jne	.L2001
.L4281:
	movzwl	(%r13), %eax
	cmpl	$71, %eax
	je	.L2003
	cmpl	$66, %eax
	je	.L5090
.L2007:
	cmpl	$75, %eax
	je	.L2011
	cmpl	$78, %eax
	je	.L2011
.L2006:
	call	do_pending_stack_adjust
	movq	cfun(%rip), %r9
	movq	%r14, %rsi
	movq	16(%r9), %r8
	incl	4(%r8)
	movq	32(%r15), %rdi
	call	jumpifnot
	call	start_cleanup_deferral
	movq	40(%r15), %rdi
	xorl	%edx, %edx
	movq	%r13, %rsi
	call	store_expr
	call	end_cleanup_deferral
	movq	cfun(%rip), %r12
	movq	16(%r12), %rdi
	movq	40(%rdi), %rbx
	testq	%rbx, %rbx
	je	.L4283
.L2021:
	movq	32(%rbx), %rdi
	cmpw	$24, (%rdi)
	je	.L5091
	call	emit_insn
	movq	%rax, 16(%rbx)
.L2020:
	movq	cfun(%rip), %rdx
	movq	40(%rbx), %r11
	movq	16(%rdx), %rsi
	testq	%r11, %r11
	movq	%r11, %rbx
	movq	%r11, 40(%rsi)
	jne	.L2021
.L4283:
	movq	-1128(%rbp), %rdi
	call	gen_jump
	movq	%rax, %rdi
	call	emit_jump_insn
	call	emit_barrier
	movq	%r14, %rdi
	call	emit_label
	call	start_cleanup_deferral
	movq	48(%r15), %rdi
	movq	%r13, %rsi
	xorl	%edx, %edx
	call	store_expr
	call	end_cleanup_deferral
	movq	cfun(%rip), %r13
	movq	16(%r13), %r15
	movq	40(%r15), %rbx
	testq	%rbx, %rbx
	je	.L4285
.L2028:
	movq	32(%rbx), %rdi
	cmpw	$24, (%rdi)
	je	.L5092
	call	emit_insn
	movq	%rax, 16(%rbx)
.L2027:
	movq	cfun(%rip), %r9
	movq	40(%rbx), %rdi
	movq	16(%r9), %r8
	testq	%rdi, %rdi
	movq	%rdi, %rbx
	movq	%rdi, 40(%r8)
	jne	.L2028
.L4285:
	movq	-1128(%rbp), %rdi
	call	emit_label
	movq	cfun(%rip), %r10
	movq	16(%r10), %rbx
	decl	4(%rbx)
	jmp	.L1984
.L5092:
	movq	8(%rdi), %r12
	movq	8(%r12), %r14
	movq	%r14, 16(%rbx)
	call	emit_insn
	jmp	.L2027
.L5091:
	movq	8(%rdi), %rcx
	movq	8(%rcx), %r10
	movq	%r10, 16(%rbx)
	call	emit_insn
	jmp	.L2020
.L2011:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, %r12
	call	protect_from_queue
	cmpq	8(%r13), %r12
	movq	%rax, %rbx
	je	.L5093
.L2013:
	movq	%r13, %rdi
	call	copy_rtx
	movq	%rax, %r13
	movq	%r12, 8(%rax)
	movq	%rbx, 16(%rax)
	jmp	.L2006
.L5093:
	cmpq	16(%r13), %rax
	jne	.L2013
	jmp	.L2006
	.p2align 6,,7
.L5090:
	jne	.L2007
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%r13), %rax
	movq	%rax, %rbx
	je	.L2006
	movq	%r13, %rdi
	call	copy_rtx
	movq	%rax, %r13
	movq	%rbx, 8(%rax)
	jmp	.L2006
	.p2align 6,,7
.L2003:
	cmpq	$0, 16(%r13)
	je	.L5094
	movq	24(%r13), %rax
	testq	%rax, %rax
	je	.L2015
.L4573:
	movq	%rax, %r13
	jmp	.L2006
.L2015:
	movq	8(%r13), %rbx
	movzbl	2(%rbx), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %r13
	jmp	.L2006
.L5094:
	movq	8(%r13), %rdi
	call	copy_to_reg
	jmp	.L4573
	.p2align 6,,7
.L5089:
	movq	8(%rdi), %rcx
	movq	8(%rcx), %r10
	movq	%r10, 16(%rbx)
	call	emit_insn
	jmp	.L2000
.L4990:
	movq	32(%r15), %rdi
	movq	const_int_rtx+512(%rip), %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	call	expand_expr
	movq	cfun(%rip), %rdx
	movq	16(%rdx), %rcx
	movq	40(%rcx), %rbx
	testq	%rbx, %rbx
	je	.L4279
.L1991:
	movq	32(%rbx), %rdi
	cmpw	$24, (%rdi)
	je	.L5095
	call	emit_insn
	movq	%rax, 16(%rbx)
.L1990:
	movq	cfun(%rip), %r12
	movq	40(%rbx), %rdi
	movq	16(%r12), %r14
	testq	%rdi, %rdi
	movq	%rdi, %rbx
	movq	%rdi, 40(%r14)
	jne	.L1991
.L4279:
	movq	40(%r15), %rdi
	movq	%r13, %rsi
	xorl	%edx, %edx
	call	store_expr
	jmp	.L1984
.L5095:
	movq	8(%rdi), %rsi
	movq	8(%rsi), %r11
	movq	%r11, 16(%rbx)
	call	emit_insn
	jmp	.L1990
.L4989:
	movq	-1904(%rbp), %rbx
	movl	-1884(%rbp), %edx
	movq	%r15, %rdi
	movq	%r13, %rsi
	addq	$7, %rbx
	cmpq	$-1, -1904(%rbp)
	cmovg	-1904(%rbp), %rbx
	sarq	$3, %rbx
	movq	%rbx, %rcx
	call	store_constructor
	jmp	.L1984
.L1975:
	cmpb	$51, 2(%r14)
	je	.L1082
	cmpw	$61, (%r14)
	je	.L5096
.L1978:
	movq	%r14, %rdi
	call	copy_to_reg
	jmp	.L1082
.L5096:
	cmpl	$52, 8(%r14)
	jbe	.L1082
	jmp	.L1978
.L1183:
	movq	-2208(%rbp), %rsi
	movq	%r14, %rdi
	call	convert_move
	jmp	.L1162
.L1182:
	cmpb	$51, %al
	je	.L5097
.L1186:
	cmpw	$39, (%r14)
	je	.L5098
	cmpb	$51, %al
	je	.L5099
	movq	%r14, %rdi
	movq	-2208(%rbp), %rsi
	jmp	.L4572
.L5099:
	movq	-2208(%rbp), %r11
	movq	%r13, %rdi
	movq	%r14, -2152(%rbp)
	movq	%r11, -2160(%rbp)
	call	expr_size
	movl	$8, %edx
	movq	16(%r14), %rcx
	movq	%rax, %r13
	testq	%rcx, %rcx
	je	.L1777
	movl	32(%rcx), %edx
.L1777:
	movq	-2208(%rbp), %rdi
	movq	16(%rdi), %rax
	testq	%rax, %rax
	je	.L1778
	cmpl	32(%rax), %edx
	jb	.L1779
.L1774:
	testq	%rax, %rax
	movl	$8, -2144(%rbp)
	je	.L1775
	movl	32(%rax), %eax
	movl	%eax, -2144(%rbp)
.L1775:
	cmpb	$51, 2(%r14)
	jne	.L4766
	movq	-2208(%rbp), %rdx
	cmpb	$51, 2(%rdx)
	jne	.L4765
	movzwl	(%r14), %eax
	cmpl	$71, %eax
	je	.L1786
	cmpl	$66, %eax
	je	.L5100
.L1790:
	cmpl	$75, %eax
	je	.L1794
	cmpl	$78, %eax
	je	.L1794
.L1789:
	movq	-2208(%rbp), %rbx
	movzwl	(%rbx), %eax
	cmpl	$71, %eax
	je	.L1799
	cmpl	$66, %eax
	je	.L5101
.L1803:
	cmpl	$75, %eax
	je	.L1807
	cmpl	$78, %eax
	je	.L1807
.L1802:
	movzwl	(%r13), %eax
	cmpl	$71, %eax
	je	.L1812
	cmpl	$66, %eax
	je	.L5102
.L1816:
	cmpl	$75, %eax
	je	.L1820
	cmpl	$78, %eax
	je	.L1820
.L1815:
	movq	-2152(%rbp), %r10
	cmpw	$66, (%r10)
	jne	.L4764
	movq	-2160(%rbp), %rax
	cmpw	$66, (%rax)
	jne	.L4763
	testq	%r13, %r13
	je	.L4762
	cmpw	$54, (%r13)
	je	.L5103
.L1828:
	shrl	$3, -2144(%rbp)
	xorl	%edi, %edi
	mov	-2144(%rbp), %esi
	call	gen_rtx_CONST_INT
	movl	class_narrowest_mode+4(%rip), %r12d
	movl	$1, volatile_ok(%rip)
	movq	%rax, -1088(%rbp)
	testl	%r12d, %r12d
	je	.L4277
.L1961:
	movslq	%r12d,%rax
	movl	movstr_optab(,%rax,4), %edx
	movq	%rax, -1096(%rbp)
	cmpl	$1317, %edx
	je	.L1947
	cmpw	$54, (%r13)
	je	.L5104
.L1951:
	testb	$2, target_flags+3(%rip)
	je	.L1952
	movq	-1096(%rbp), %rcx
	cmpw	$63, mode_bitsize(%rcx,%rcx)
.L4570:
	jbe	.L1947
.L1950:
	movslq	%edx,%rdi
	leaq	(%rdi,%rdi,4), %r10
	movq	%rdi, -1104(%rbp)
	movq	insn_data+24(,%r10,8), %rdx
	movq	(%rdx), %rax
	movq	%rdx, -1112(%rbp)
	testq	%rax, %rax
	je	.L1954
	movq	-2152(%rbp), %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L1947
.L1954:
	movq	-1112(%rbp), %rsi
	movq	24(%rsi), %rax
	testq	%rax, %rax
	jne	.L5105
.L1955:
	movq	-1112(%rbp), %r11
	movq	72(%r11), %rax
	testq	%rax, %rax
	je	.L1956
	xorl	%esi, %esi
	movq	-1088(%rbp), %rdi
	call	*%rax
	testl	%eax, %eax
	je	.L1947
.L1956:
	call	get_last_insn
	movl	$1, %edx
	movq	%r13, %rsi
	movl	%r12d, %edi
	movq	%rax, -1120(%rbp)
	call	convert_to_mode
	movq	-1112(%rbp), %r8
	movq	%rax, %rbx
	movq	48(%r8), %rax
	testq	%rax, %rax
	jne	.L5106
.L1957:
	movq	-1104(%rbp), %r9
	movq	-2152(%rbp), %rdi
	xorl	%eax, %eax
	movq	-2160(%rbp), %rsi
	movq	%rbx, %rdx
	movq	-1088(%rbp), %rcx
	leaq	(%r9,%r9,4), %r12
	call	*insn_data+16(,%r12,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L4496
	movq	-1120(%rbp), %rdi
	call	delete_insns_since
.L1947:
	movq	-1096(%rbp), %rcx
	movzbl	mode_wider_mode(%rcx), %r12d
	testl	%r12d, %r12d
	jne	.L1961
.L4277:
	testb	$2, target_flags+3(%rip)
	movq	-2152(%rbp), %r11
	movl	$0, volatile_ok(%rip)
	setne	%sil
	movzbl	%sil, %edi
	movq	8(%r11), %rsi
	addl	$4, %edi
	call	copy_to_mode_reg
	testb	$2, target_flags+3(%rip)
	setne	%bl
	movq	%rax, -2200(%rbp)
	movq	-2160(%rbp), %rax
	movq	8(%rax), %rsi
	movzbl	%bl, %edi
	addl	$4, %edi
	call	copy_to_mode_reg
	movq	%r13, %rsi
	movq	sizetype_tab(%rip), %r10
	movq	%rax, %rbx
	movzbl	61(%r10), %edx
	shrb	$1, %dl
	movzbl	%dl, %edi
	call	copy_to_mode_reg
	cmpq	$0, fn.1(%rip)
	movq	%rax, %r13
	je	.L5107
.L1970:
	movq	global_trees+216(%rip), %rdi
	call	build_pointer_type
	movq	-2200(%rbp), %rsi
	movq	%rax, %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	global_trees+216(%rip), %rdi
	movq	%rax, %r12
	call	build_pointer_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	%r13, %rsi
	movq	%rax, (%r12)
	movq	%rax, %rbx
	movq	sizetype_tab(%rip), %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	fn.1(%rip), %rdx
	movq	%rax, (%rbx)
	movq	(%r12), %r11
	movq	8(%rdx), %rdi
	movq	(%r11), %rbx
	movq	$0, (%rbx)
	call	build_pointer_type
	movq	fn.1(%rip), %rdx
	movl	$121, %edi
	movq	%rax, %rsi
	call	build1
	xorl	%r8d, %r8d
	movl	$53, %edi
	movq	fn.1(%rip), %r10
	movq	%rax, %rdx
	xorl	%eax, %eax
	movq	8(%r10), %rcx
	movq	8(%rcx), %rsi
	movq	%r12, %rcx
	call	build
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	orb	$1, 17(%rax)
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	expand_expr
	movq	-2200(%rbp), %r13
	testb	$4, 3(%r13)
	je	.L1162
	movl	$49, %edi
	xorl	%esi, %esi
	movq	-2200(%rbp), %rdx
.L4571:
	call	gen_rtx_fmt_e
	movq	%rax, %rdi
	call	emit_insn
	jmp	.L1162
.L5107:
	movl	$.LC11, %edi
	call	get_identifier
	movq	global_trees+216(%rip), %rdi
	movq	%rax, fn.1(%rip)
	call	build_pointer_type
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	build_function_type
	movq	fn.1(%rip), %rsi
	movl	$30, %edi
	movq	%rax, %rdx
	call	build_decl
	movl	$1, %esi
	movl	$fn.1, %edi
	movq	%rax, fn.1(%rip)
	call	ggc_add_tree_root
	movq	fn.1(%rip), %r9
	xorl	%esi, %esi
	orb	$1, 49(%r9)
	movq	fn.1(%rip), %r12
	orb	$8, 18(%r12)
	movq	fn.1(%rip), %r8
	orb	$64, 50(%r8)
	movq	fn.1(%rip), %rdi
	orb	$2, 18(%rdi)
	movq	fn.1(%rip), %rdi
	call	make_decl_rtl
	movq	fn.1(%rip), %rdi
	call	assemble_external
	jmp	.L1970
.L4496:
	call	emit_insn
	movl	$0, volatile_ok(%rip)
	jmp	.L1162
	.p2align 6,,7
.L5106:
	movq	%rbx, %rdi
	movl	%r12d, %esi
	call	*%rax
	testl	%eax, %eax
	jne	.L1957
	movq	%rbx, %rsi
	movl	%r12d, %edi
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L1957
	.p2align 6,,7
.L5105:
	movq	-2160(%rbp), %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L1947
	jmp	.L1955
.L1952:
	movq	-1096(%rbp), %rax
	cmpw	$31, mode_bitsize(%rax,%rax)
	jmp	.L4570
.L5104:
	movq	mode_mask_array(,%rax,8), %r8
	shrq	$1, %r8
	cmpq	%r8, 8(%r13)
	jbe	.L1950
	jmp	.L1951
.L5103:
	movq	8(%r13), %r12
	xorl	%r8d, %r8d
	movl	$17, %esi
.L1841:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L4266
.L1838:
	movslq	%ecx,%r11
	movzbq	mode_size(%r11), %r9
	cmpq	%rsi, %r9
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r11), %ecx
	testl	%ecx, %ecx
	jne	.L1838
.L4266:
	testl	%edi, %edi
	je	.L1831
	movslq	%edi,%rbx
	movq	%rbx, %rsi
	salq	$4, %rsi
	addq	optab_table+240(%rip), %rsi
	cmpl	$1317, 8(%rsi)
	je	.L1840
	movq	%r8, -2648(%rbp)
	call	get_mode_alignment
	movq	-2648(%rbp), %r8
	movl	$128, %edi
	cmpl	%eax, %edi
	jb	.L1840
	movzbq	mode_size(%rbx), %r10
	movq	%r12, %rax
	xorl	%edx, %edx
	divq	%r10
	addq	%rax, %r8
	movq	%rdx, %r12
.L1840:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L1841
.L1831:
	testq	%r12, %r12
	jne	.L4757
	movl	optimize_size(%rip), %edx
	testl	%edx, %edx
	jne	.L1844
	movq	ix86_cost(%rip), %r11
	mov	40(%r11), %ebx
	cmpq	%rbx, %r8
	jae	.L1828
.L1845:
	movq	-2160(%rbp), %rdx
	movq	-2152(%rbp), %rcx
	movq	8(%r13), %r12
	movq	-2152(%rbp), %rdi
	testb	$2, target_flags+3(%rip)
	movq	8(%rdx), %r8
	setne	%r13b
	movq	$0, -344(%rbp)
	movl	$0, -2180(%rbp)
	movq	%r8, -368(%rbp)
	movq	8(%rcx), %rsi
	xorl	%ecx, %ecx
	movq	%rdi, -400(%rbp)
	movzbl	%r13b, %r10d
	leal	5(,%r10,4), %r13d
	movzwl	(%rsi), %edx
	movq	%rsi, -2168(%rbp)
	leal	-96(%rdx), %r9d
	cmpw	$1, %r9w
	jbe	.L1850
	cmpw	$99, %dx
	je	.L1850
	cmpw	$98, %dx
	je	.L1850
.L1849:
	movq	-2168(%rbp), %rbx
	movl	%ecx, -384(%rbp)
	xorl	%edx, %edx
	movzwl	(%rbx), %eax
	cmpw	$96, %ax
	je	.L1852
	cmpw	$98, %ax
	je	.L1852
.L1851:
	movq	-2168(%rbp), %rsi
	movq	-2160(%rbp), %r9
	movl	%edx, -336(%rbp)
	xorl	%ecx, %ecx
	movq	%rsi, -392(%rbp)
	movq	%r9, -376(%rbp)
	movzwl	(%r8), %edx
	leal	-96(%rdx), %r11d
	cmpw	$1, %r11w
	jbe	.L1855
	cmpw	$99, %dx
	je	.L1855
	cmpw	$98, %dx
	je	.L1855
.L1854:
	movl	-336(%rbp), %eax
	movl	%ecx, -360(%rbp)
	movl	$0, -356(%rbp)
	movl	$0, -380(%rbp)
	testl	%eax, %eax
	je	.L1856
	movq	%r12, -344(%rbp)
.L1856:
	movl	-360(%rbp), %edi
	movq	%r12, -352(%rbp)
	testl	%edi, %edi
	je	.L1858
	movl	-384(%rbp), %ecx
	testl	%ecx, %ecx
	jne	.L1857
.L1858:
	movq	$0, -2176(%rbp)
	movl	$17, %esi
.L1871:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L4269
.L1868:
	movslq	%ecx,%r10
	movzbq	mode_size(%r10), %rdx
	cmpq	%rsi, %rdx
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r10), %ecx
	testl	%ecx, %ecx
	jne	.L1868
.L4269:
	testl	%edi, %edi
	je	.L1861
	movslq	%edi,%rbx
	movq	%rbx, %r11
	salq	$4, %r11
	addq	optab_table+240(%rip), %r11
	cmpl	$1317, 8(%r11)
	je	.L1870
	movq	%r8, -2648(%rbp)
	call	get_mode_alignment
	movl	$128, %r8d
	cmpl	%eax, %r8d
	movq	-2648(%rbp), %r8
	jb	.L1870
	movzbq	mode_size(%rbx), %rsi
	movq	%r12, %rax
	xorl	%edx, %edx
	divq	%rsi
	addq	%rax, -2176(%rbp)
	movq	%rdx, %r12
.L1870:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L1871
.L1861:
	testq	%r12, %r12
	jne	.L4757
	cmpq	$2, -2176(%rbp)
	jbe	.L1857
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L4271
.L1879:
	movslq	%ecx,%rbx
	movzbl	mode_size(%rbx), %edi
	cmpl	%r13d, %edi
	cmovae	-2180(%rbp), %ecx
	movl	%ecx, -2180(%rbp)
	movzbl	mode_wider_mode(%rbx), %ecx
	testl	%ecx, %ecx
	jne	.L1879
.L4271:
	movl	-360(%rbp), %eax
	testl	%eax, %eax
	jne	.L1885
	movzwl	(%r8), %edx
	leal	-67(%rdx), %ecx
	cmpw	$1, %cx
	jbe	.L1883
	cmpw	$54, %dx
	je	.L1883
	cmpw	$55, %dx
	je	.L1883
	cmpw	$58, %dx
	je	.L1883
	cmpw	$134, %dx
	je	.L1883
	cmpw	$56, %dx
	je	.L1883
	cmpw	$140, %dx
	je	.L1883
.L1885:
	movl	-384(%rbp), %eax
	testl	%eax, %eax
	jne	.L1857
	movq	-2168(%rbp), %r11
	movzwl	(%r11), %edx
	leal	-67(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L1887
	cmpw	$54, %dx
	je	.L1887
	cmpw	$55, %dx
	je	.L1887
	cmpw	$58, %dx
	je	.L1887
	cmpw	$134, %dx
	je	.L1887
	cmpw	$56, %dx
	je	.L1887
	cmpw	$140, %dx
	je	.L1887
.L1857:
	cmpl	$1, %r13d
	jbe	.L1890
.L1941:
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L4274
.L1897:
	movslq	%ecx,%r8
	movzbl	mode_size(%r8), %edx
	cmpl	%r13d, %edx
	cmovae	-2180(%rbp), %ecx
	movl	%ecx, -2180(%rbp)
	movzbl	mode_wider_mode(%r8), %ecx
	testl	%ecx, %ecx
	jne	.L1897
.L4274:
	movl	-2180(%rbp), %eax
	testl	%eax, %eax
	je	.L1890
	movslq	-2180(%rbp),%rax
	movq	%rax, %r13
	movq	%rax, -1072(%rbp)
	salq	$4, %r13
	addq	optab_table+240(%rip), %r13
	movl	8(%r13), %ebx
	cmpl	$1317, %ebx
	je	.L1899
	movl	-2180(%rbp), %edi
	movl	$128, %r12d
	call	get_mode_alignment
	cmpl	%eax, %r12d
	jb	.L1899
	movq	-1072(%rbp), %r9
	movslq	%ebx,%rdi
	leaq	-400(%rbp), %r12
	leaq	(%rdi,%rdi,4), %rbx
	movq	$0, -2192(%rbp)
	movq	insn_data+16(,%rbx,8), %rsi
	movzbq	mode_size(%r9), %rdx
	cmpq	%rdx, -352(%rbp)
	movq	%rsi, -1080(%rbp)
	movq	%rdx, -1624(%rbp)
	jb	.L1899
	movl	-336(%rbp), %ecx
.L1939:
	testl	%ecx, %ecx
	je	.L1903
	subq	%rdx, 56(%r12)
.L1903:
	movq	(%r12), %rdi
	testq	%rdi, %rdi
	je	.L1904
	movl	16(%r12), %eax
	testl	%eax, %eax
	je	.L1905
	movl	-2180(%rbp), %esi
	movq	8(%r12), %rdx
	movl	$1, %r8d
	movq	56(%r12), %rcx
	call	adjust_automodify_address_1
.L4566:
	movq	%rax, -2192(%rbp)
.L1904:
	movl	40(%r12), %eax
	testl	%eax, %eax
	je	.L1907
	movq	24(%r12), %rdi
	movl	-2180(%rbp), %esi
	movl	$1, %r8d
	movq	32(%r12), %rdx
	movq	56(%r12), %rcx
	call	adjust_automodify_address_1
.L4567:
	cmpq	$0, (%r12)
	movq	%rax, %r13
	jne	.L5108
	movl	target_flags(%rip), %eax
	testl	$33554432, %eax
	movl	%eax, %esi
	je	.L1913
	movq	-1072(%rbp), %r10
	movzbl	mode_size(%r10), %ecx
	leal	7(%rcx), %edx
	andl	$-8, %edx
.L1914:
	movq	cfun(%rip), %rbx
	andl	$33554432, %esi
	movq	16(%rbx), %r9
	leaq	8(%r9), %rdi
	movl	8(%r9), %ecx
	je	.L1915
	movq	-1072(%rbp), %rsi
	movzbl	mode_size(%rsi), %eax
	addl	$7, %eax
	andl	$-8, %eax
.L4568:
	leal	(%rax,%rcx), %r11d
	movl	%r11d, (%rdi)
	movq	-1072(%rbp), %rdi
	salq	$4, %rdi
	addq	optab_table+384(%rip), %rdi
	movl	8(%rdi), %eax
	cmpl	$1317, %eax
	je	.L1917
	movslq	%eax,%rbx
	leaq	(%rbx,%rbx,4), %rcx
	movq	insn_data+24(,%rcx,8), %rdx
	movq	(%rdx), %rax
	testq	%rax, %rax
	je	.L1918
	movq	%r13, %rdi
	movl	-2180(%rbp), %esi
	call	*%rax
	testl	%eax, %eax
	je	.L5109
.L1918:
	leaq	(%rbx,%rbx,4), %r8
	movq	%r13, %rdi
	xorl	%eax, %eax
	call	*insn_data+16(,%r8,8)
.L4569:
	movq	%rax, %rdi
	call	emit_insn
.L1937:
	movl	64(%r12), %eax
	testl	%eax, %eax
	movl	%eax, %ecx
	jne	.L1938
	movq	-1624(%rbp), %r13
	addq	%r13, 56(%r12)
.L1938:
	movq	48(%r12), %r11
	movq	-1624(%rbp), %rdx
	subq	-1624(%rbp), %r11
	cmpq	%rdx, %r11
	movq	%r11, 48(%r12)
	jae	.L1939
.L1899:
	movq	-1072(%rbp), %r12
	movzbl	mode_size(%r12), %r13d
	cmpl	$1, %r13d
	ja	.L1941
.L1890:
	cmpq	$0, -352(%rbp)
.L4769:
	je	.L1162
	jmp	.L4742
	.p2align 6,,7
.L5109:
	movl	-2180(%rbp), %edi
	movq	%r13, %rsi
	call	force_reg
	movq	%rax, %r13
	jmp	.L1918
.L1917:
	movq	-1072(%rbp), %rax
	movzbl	mode_size(%rax), %r9d
	cmpl	%edx, %r9d
	je	.L5110
	mov	%edx, %esi
	xorl	%edi, %edi
	negq	%rsi
	call	gen_rtx_CONST_INT
	movq	global_rtl+16(%rip), %rdx
	testb	$2, target_flags+3(%rip)
	setne	%dil
	movq	%rax, %rcx
	movzbl	%dil, %esi
	movl	$75, %edi
	addl	$4, %esi
	call	gen_rtx_fmt_ee
	movq	global_rtl+16(%rip), %rdx
	movl	$100, %edi
	testb	$2, target_flags+3(%rip)
	movq	%rax, %rcx
	setne	%r10b
	movzbl	%r10b, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_ee
.L1925:
	movl	-2180(%rbp), %edi
	movq	%rax, %rsi
	call	gen_rtx_MEM
	xorl	%esi, %esi
	testq	%rsi, %rsi
	movq	%rax, %rbx
	je	.L1934
	movq	%rax, %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	call	set_mem_attributes
	movl	flag_optimize_sibling_calls(%rip), %eax
	testl	%eax, %eax
	jne	.L5111
.L1934:
	movq	%rbx, %rdi
	movq	%r13, %rsi
	call	emit_move_insn
	jmp	.L1937
.L5111:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	call	set_mem_alias_set
	jmp	.L1934
.L5110:
	testb	$2, target_flags+3(%rip)
	movq	global_rtl+16(%rip), %rdx
	movl	$96, %edi
	setne	%bl
	movzbl	%bl, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_e
	jmp	.L1925
	.p2align 6,,7
.L1915:
	movq	-1072(%rbp), %r10
	movzbl	mode_size(%r10), %eax
	incl	%eax
	andl	$-2, %eax
	jmp	.L4568
.L1913:
	movq	-1072(%rbp), %r8
	movzbl	mode_size(%r8), %r11d
	leal	1(%r11), %edx
	andl	$-2, %edx
	jmp	.L1914
.L5108:
	movq	%rax, %rsi
	movq	-2192(%rbp), %rdi
	xorl	%eax, %eax
	call	*-1080(%rbp)
	jmp	.L4569
.L1907:
	movq	24(%r12), %rdi
	movl	-2180(%rbp), %esi
	movl	$1, %ecx
	movq	56(%r12), %rdx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L4567
.L1905:
	movl	-2180(%rbp), %esi
	movq	56(%r12), %rdx
	movl	$1, %ecx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L4566
.L1887:
	movq	-2168(%rbp), %rdi
	call	copy_addr_to_reg
	movq	%rax, -392(%rbp)
	jmp	.L1857
.L1883:
	movq	%r8, %rdi
	call	copy_addr_to_reg
	movq	%rax, -368(%rbp)
	jmp	.L1885
	.p2align 6,,7
.L1855:
	movl	$1, %ecx
	jmp	.L1854
.L1852:
	movl	$1, %edx
	jmp	.L1851
.L1850:
	movl	$1, %ecx
	jmp	.L1849
.L1844:
	cmpq	$2, %r8
	ja	.L1828
	jmp	.L1845
.L1820:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, %r12
	call	protect_from_queue
	cmpq	8(%r13), %r12
	movq	%rax, %rbx
	je	.L5112
.L1822:
	movq	%r13, %rdi
	call	copy_rtx
	movq	%rax, %r13
	movq	%r12, 8(%rax)
	movq	%rbx, 16(%rax)
	jmp	.L1815
.L5112:
	cmpq	16(%r13), %rax
	jne	.L1822
	jmp	.L1815
	.p2align 6,,7
.L5102:
	cmpb	$51, 2(%r13)
	je	.L1813
	movq	8(%r13), %r12
	cmpw	$71, (%r12)
	je	.L5113
.L1813:
	cmpl	$66, %eax
	jne	.L1816
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%r13), %rax
	movq	%rax, %rbx
	je	.L1815
	movq	%r13, %rdi
	call	copy_rtx
	movq	%rax, %r13
	movq	%rbx, 8(%rax)
	jmp	.L1815
.L5113:
	movq	8(%r12), %rsi
	movq	%r13, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%r12)
	movq	%rax, %rbx
	je	.L1814
	movzbl	2(%r13), %edi
	call	gen_reg_rtx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L1815
.L1814:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L4565:
	movq	%rax, %r13
	jmp	.L1815
.L1812:
	cmpq	$0, 16(%r13)
	je	.L5114
	movq	24(%r13), %rax
	testq	%rax, %rax
	jne	.L4565
	movq	8(%r13), %r8
	movzbl	2(%r8), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %r13
	jmp	.L1815
.L5114:
	movq	8(%r13), %rdi
	call	copy_to_reg
	jmp	.L4565
	.p2align 6,,7
.L1807:
	movq	-2208(%rbp), %r11
	xorl	%esi, %esi
	movq	8(%r11), %rdi
	call	protect_from_queue
	movq	-2208(%rbp), %rsi
	movq	%rax, %r12
	movq	16(%rsi), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	-2208(%rbp), %rsi
	movq	%rax, %rbx
	cmpq	8(%rsi), %r12
	je	.L5115
.L1809:
	movq	-2208(%rbp), %rdi
	call	copy_rtx
	movq	%rax, -2160(%rbp)
	movq	%r12, 8(%rax)
	movq	-2160(%rbp), %rdi
	movq	%rbx, 16(%rdi)
	jmp	.L1802
.L5115:
	cmpq	16(%rsi), %rax
	jne	.L1809
	jmp	.L1802
	.p2align 6,,7
.L5101:
	cmpb	$51, 2(%rbx)
	je	.L1800
	movq	8(%rbx), %r12
	cmpw	$71, (%r12)
	je	.L5116
.L1800:
	cmpl	$66, %eax
	jne	.L1803
	movq	-2208(%rbp), %r10
	xorl	%esi, %esi
	movq	8(%r10), %rdi
	call	protect_from_queue
	movq	-2208(%rbp), %rdx
	movq	%rax, %rbx
	cmpq	8(%rdx), %rax
	je	.L1802
	movq	%rdx, %rdi
	call	copy_rtx
	movq	%rax, -2160(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L1802
.L5116:
	movq	8(%r12), %rsi
	movq	%rbx, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%r12)
	movq	%rax, %rbx
	je	.L1801
	movq	-2208(%rbp), %r8
	movzbl	2(%r8), %edi
	call	gen_reg_rtx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, -2160(%rbp)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L1802
.L1801:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L4564:
	movq	%rax, -2160(%rbp)
	jmp	.L1802
	.p2align 6,,7
.L1799:
	movq	-2208(%rbp), %rdx
	cmpq	$0, 16(%rdx)
	je	.L5117
	movq	-2208(%rbp), %rdx
	movq	24(%rdx), %r9
	testq	%r9, %r9
	movq	%r9, -2160(%rbp)
	jne	.L1802
	movq	-2208(%rbp), %r12
	movq	8(%r12), %rbx
	movzbl	2(%rbx), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %rcx
	movq	%rcx, -2160(%rbp)
	jmp	.L1802
.L5117:
	movq	8(%rdx), %rdi
	call	copy_to_reg
	jmp	.L4564
	.p2align 6,,7
.L1794:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r14), %rdi
	movq	%rax, %r12
	call	protect_from_queue
	cmpq	8(%r14), %r12
	movq	%rax, %rbx
	je	.L5118
.L1796:
	movq	%r14, %rdi
	call	copy_rtx
	movq	%rax, -2152(%rbp)
	movq	%r12, 8(%rax)
	movq	-2152(%rbp), %rcx
	movq	%rbx, 16(%rcx)
	jmp	.L1789
.L5118:
	cmpq	16(%r14), %rax
	jne	.L1796
	jmp	.L1789
	.p2align 6,,7
.L5100:
	jne	.L1790
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%r14), %rax
	movq	%rax, %rbx
	je	.L1789
	movq	%r14, %rdi
	call	copy_rtx
	movq	%rax, -2152(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L1789
	.p2align 6,,7
.L1786:
	testq	%rcx, %rcx
	je	.L5119
	movq	24(%r14), %rbx
	testq	%rbx, %rbx
	movq	%rbx, -2152(%rbp)
	jne	.L1789
	movq	8(%r14), %r12
	movzbl	2(%r12), %edi
	call	gen_reg_rtx
	movq	8(%r14), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r14), %rax
	movq	%rax, -2152(%rbp)
	jmp	.L1789
.L5119:
	movq	8(%r14), %rdi
	call	copy_to_reg
	movq	%rax, -2152(%rbp)
	jmp	.L1789
	.p2align 6,,7
.L1779:
	testq	%rcx, %rcx
	movl	$8, -2144(%rbp)
	je	.L1775
	movl	32(%rcx), %r9d
	movl	%r9d, -2144(%rbp)
	jmp	.L1775
.L1778:
	cmpl	$7, %edx
	ja	.L1774
	jmp	.L1779
.L5098:
	movq	8(%r13), %rdi
	call	int_size_in_bytes
	cmpw	$39, (%r14)
	movl	%eax, -1028(%rbp)
	jne	.L4761
	movq	8(%r14), %rcx
	movq	8(%rcx), %rsi
	movl	(%rcx), %r13d
	cmpq	$0, 8(%rsi)
	movslq	%r13d,%rdi
	sete	%r8b
	leaq	15(,%rdi,8), %rbx
	andq	$-16, %rbx
	subq	%rbx, %rsp
	leaq	48(%rsp), %r12
	movzbl	%r8b, %r9d
	movq	%r12, -1040(%rbp)
	movl	%r9d, -2140(%rbp)
	movl	-2140(%rbp), %eax
	cmpl	%r13d, %eax
	movl	%eax, -2132(%rbp)
	jge	.L4260
.L1758:
	movslq	-2132(%rbp),%rbx
	movq	8(%rcx,%rbx,8), %r12
	movq	%rbx, -1048(%rbp)
	movl	-1028(%rbp), %ecx
	movq	8(%r12), %rax
	movq	16(%r12), %r11
	testl	%ecx, %ecx
	movzbl	2(%rax), %r13d
	movq	8(%r11), %r10
	movq	%r10, -1056(%rbp)
	movslq	%r13d,%rdx
	movzbl	mode_size(%rdx), %ebx
	movq	%rdx, -1064(%rbp)
	movl	%ebx, -2136(%rbp)
	js	.L1731
	mov	%ebx, %r9d
	movslq	-1028(%rbp),%rdi
	addq	-1056(%rbp), %r9
	cmpq	%rdi, %r9
	jle	.L1731
	movl	-1028(%rbp), %r8d
	subl	-1056(%rbp), %r8d
	movl	%r8d, -2136(%rbp)
	je	.L4760
.L1731:
	movq	-2208(%rbp), %r12
	movzwl	(%r12), %edx
	cmpw	$66, %dx
	je	.L4509
	leal	-67(%rdx), %esi
	cmpw	$1, %si
	jbe	.L1735
	cmpw	$54, %dx
	je	.L1735
	cmpw	$55, %dx
	je	.L1735
	cmpw	$58, %dx
	je	.L1735
	cmpw	$134, %dx
	je	.L1735
	cmpw	$56, %dx
	je	.L1735
	cmpw	$140, %dx
	je	.L1735
.L1734:
	movq	-2208(%rbp), %rcx
	movl	%r13d, %edi
	movzbl	2(%rcx), %eax
	testb	%al, %al
	je	.L4562
	movzbl	%al, %edi
.L4562:
	call	gen_reg_rtx
	movq	-2208(%rbp), %rsi
	movq	%rax, %r12
	movq	%rax, %rdi
	call	emit_move_insn
	movzwl	(%r12), %edx
.L1733:
	cmpw	$66, %dx
	je	.L4509
.L1738:
	cmpw	$65, %dx
	je	.L5120
	leal	-67(%rdx), %ebx
	cmpw	$1, %bx
	jbe	.L1755
	cmpw	$54, %dx
	je	.L1755
	cmpw	$55, %dx
	je	.L1755
	cmpw	$58, %dx
	je	.L1755
	cmpw	$134, %dx
	je	.L1755
	cmpw	$56, %dx
	je	.L1755
	cmpw	$140, %dx
	je	.L1755
	cmpw	$61, %dx
	je	.L5121
.L1754:
	movslq	-1028(%rbp),%r9
	movl	-2136(%rbp), %eax
	movq	%r12, %rdi
	movq	-1056(%rbp), %rdx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	%r13d, (%rsp)
	sall	$3, %eax
	movq	%r9, 8(%rsp)
	mov	%eax, %esi
	salq	$3, %rdx
	movl	%r13d, %r9d
	call	extract_bit_field
.L4563:
	movq	-1048(%rbp), %r8
	movq	-1040(%rbp), %r12
	movq	%rax, (%r12,%r8,8)
.L1729:
	incl	-2132(%rbp)
	movq	8(%r14), %rcx
	movl	-2132(%rbp), %esi
	cmpl	(%rcx), %esi
	jl	.L1758
.L4260:
	movq	cfun(%rip), %r11
	movq	16(%r11), %r10
	movq	40(%r10), %rbx
	testq	%rbx, %rbx
	je	.L4262
.L1764:
	movq	32(%rbx), %rdi
	cmpw	$24, (%rdi)
	je	.L5122
	call	emit_insn
	movq	%rax, 16(%rbx)
.L1763:
	movq	cfun(%rip), %rdx
	movq	40(%rbx), %rdi
	movq	16(%rdx), %r9
	testq	%rdi, %rdi
	movq	%rdi, %rbx
	movq	%rdi, 40(%r9)
	jne	.L1764
	movq	8(%r14), %rcx
.L4262:
	movl	-2140(%rbp), %ebx
	cmpl	(%rcx), %ebx
	jge	.L1162
.L1770:
	movslq	-2140(%rbp),%r10
	movq	-1040(%rbp), %r8
	salq	$3, %r10
	movq	8(%r10,%rcx), %rsi
	movq	8(%rsi), %rdi
	movq	(%r8,%r10), %rsi
	call	emit_move_insn
	incl	-2140(%rbp)
	movq	8(%r14), %r12
	movl	-2140(%rbp), %eax
	cmpl	(%r12), %eax
	movq	%r12, %rcx
	jl	.L1770
	jmp	.L1162
.L5122:
	movq	8(%rdi), %r13
	movq	8(%r13), %rcx
	movq	%rcx, 16(%rbx)
	call	emit_insn
	jmp	.L1763
.L5121:
	movzbl	2(%r12), %edi
	cmpl	%r13d, %edi
	jne	.L1754
.L1755:
	movq	-1048(%rbp), %rdx
	movq	-1040(%rbp), %r13
	movq	%r12, (%r13,%rdx,8)
	jmp	.L1729
.L5120:
	cmpq	$0, -1056(%rbp)
	jne	.L4458
	movq	8(%r12), %rdx
	movzbq	2(%rdx), %r10
	movzbl	mode_size(%r10), %esi
	cmpl	%esi, -2136(%rbp)
	je	.L1744
.L1745:
	movzbq	2(%rdx), %rcx
	movzbq	mode_size(%rcx), %r11
	cmpq	%r11, -1056(%rbp)
	je	.L5123
.L1743:
	cmpq	$0, -1056(%rbp)
	jne	.L3574
	movzbl	2(%r12), %edi
	xorl	%edx, %edx
	movslq	%edi,%rcx
	movzbq	mode_size(%rcx), %rsi
	call	assign_stack_temp
	movq	%r12, %rsi
	movq	%rax, %rbx
	movq	%rax, %rdi
	call	emit_move_insn
	movl	$1, %r8d
	movl	$1, %ecx
	movq	%rbx, %rdi
	movl	%r13d, %esi
	xorl	%edx, %edx
	call	adjust_address_1
	jmp	.L4563
.L5123:
	movq	16(%r12), %rdx
	movzbq	2(%rdx), %rdi
	movzbl	mode_size(%rdi), %ebx
	cmpl	%ebx, -2136(%rbp)
	jne	.L1743
.L1744:
	xorl	%r9d, %r9d
	movq	-1048(%rbp), %r8
	movq	-1040(%rbp), %rax
	cmpq	$0, -1056(%rbp)
	setne	%r9b
	leaq	(%rax,%r8,8), %rbx
	movq	8(%r12,%r9,8), %rcx
	movq	%rcx, (%rbx)
	movzwl	(%rcx), %edx
	leal	-67(%rdx), %r12d
	cmpw	$1, %r12w
	jbe	.L1729
	cmpw	$54, %dx
	je	.L1729
	cmpw	$55, %dx
	je	.L1729
	cmpw	$58, %dx
	je	.L1729
	cmpw	$134, %dx
	je	.L1729
	cmpw	$56, %dx
	je	.L1729
	cmpw	$140, %dx
	je	.L1729
	cmpw	$61, %dx
	je	.L5124
.L1749:
	movslq	-1028(%rbp),%r10
	movl	-2136(%rbp), %r11d
	movl	%r13d, (%rsp)
	xorl	%edx, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	%r13d, %r9d
	sall	$3, %r11d
	movq	%r10, 8(%rsp)
	mov	%r11d, %esi
	movq	(%rbx), %rdi
	call	extract_bit_field
	movq	%rax, (%rbx)
	jmp	.L1729
.L5124:
	movzbl	2(%rcx), %esi
	cmpl	%r13d, %esi
	jne	.L1749
	jmp	.L1729
	.p2align 6,,7
.L4458:
	movq	8(%r12), %rdx
	jmp	.L1745
.L4509:
	movl	%r13d, %edi
	call	get_mode_alignment
	movq	16(%r12), %rdx
	testq	%rdx, %rdx
	je	.L1739
	cmpl	%eax, 32(%rdx)
	jae	.L1740
.L4457:
	movzwl	(%r12), %edx
	jmp	.L1738
.L1740:
	movq	-1056(%rbp), %rbx
	movl	%r13d, %edi
	call	get_mode_alignment
	mov	%eax, %edi
	salq	$3, %rbx
	movq	%rbx, %rax
	cqto
	idivq	%rdi
	testq	%rdx, %rdx
	jne	.L4457
	movq	-1064(%rbp), %rax
	movzbl	mode_size(%rax), %edx
	cmpl	%edx, -2136(%rbp)
	jne	.L4457
	movl	%r13d, %edi
	call	gen_reg_rtx
	movl	$1, %ecx
	movq	-1056(%rbp), %rdx
	movq	-1048(%rbp), %r8
	movq	-1040(%rbp), %r9
	movq	%r12, %rdi
	movl	%r13d, %esi
	leaq	(%r9,%r8,8), %rbx
	movl	$1, %r8d
	movq	%rax, (%rbx)
	call	adjust_address_1
	movq	(%rbx), %rdi
	movq	%rax, %rsi
	call	emit_move_insn
	jmp	.L1729
	.p2align 6,,7
.L1739:
	cmpl	$8, %eax
	ja	.L4457
	jmp	.L1740
.L1735:
	movq	-2208(%rbp), %r11
	movzbl	2(%r11), %ecx
	movzbl	%cl, %r10d
	cmpl	%r13d, %r10d
	je	.L1733
	testb	%cl, %cl
	je	.L1733
	jmp	.L1734
.L5097:
	cmpb	$29, 16(%r13)
	jne	.L1186
	movq	%r13, %rdi
	call	expr_size
	cmpw	$54, (%rax)
	movq	%rax, -1952(%rbp)
	je	.L5125
.L1187:
	movq	sizetype_tab(%rip), %rdi
	movq	-1952(%rbp), %rsi
	call	make_tree
	xorl	%esi, %esi
	movslq	32(%r13),%rdi
	movq	%rax, %r12
	call	size_int_wide
	movq	%r12, %rsi
	movl	$78, %edi
	movq	%rax, %rdx
	call	size_binop
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, -920(%rbp)
	call	expand_expr
	xorl	%edx, %edx
	movl	ptr_mode(%rip), %edi
	movq	%rax, %rsi
	movq	$0, -2080(%rbp)
	call	convert_to_mode
	movl	$8, %edx
	movq	-2208(%rbp), %r12
	movq	%rax, -2000(%rbp)
	movq	%r14, -2016(%rbp)
	movq	%rax, -2032(%rbp)
	movq	%r12, -2024(%rbp)
	movq	16(%r14), %rax
	testq	%rax, %rax
	movq	%rax, %rsi
	je	.L1390
	movl	32(%rax), %edx
.L1390:
	movq	-2208(%rbp), %r13
	movq	16(%r13), %rax
	testq	%rax, %rax
	movq	%rax, %rcx
	je	.L1391
	cmpl	32(%rax), %edx
	jb	.L1392
.L1387:
	testq	%rcx, %rcx
	movl	$8, -2004(%rbp)
	je	.L1388
	movl	32(%rcx), %r8d
	movl	%r8d, -2004(%rbp)
.L1388:
	cmpb	$51, 2(%r14)
	jne	.L4766
	movq	-2208(%rbp), %r10
	cmpb	$51, 2(%r10)
	jne	.L4765
	movzwl	(%r14), %eax
	cmpl	$71, %eax
	je	.L1399
	cmpl	$66, %eax
	je	.L5126
.L1403:
	cmpl	$75, %eax
	je	.L1407
	cmpl	$78, %eax
	je	.L1407
.L1402:
	movq	-2208(%rbp), %rbx
	movzwl	(%rbx), %eax
	cmpl	$71, %eax
	je	.L1412
	cmpl	$66, %eax
	je	.L5127
.L1416:
	cmpl	$75, %eax
	je	.L1420
	cmpl	$78, %eax
	je	.L1420
.L1415:
	movq	-2000(%rbp), %rdx
	movzwl	(%rdx), %eax
	cmpl	$71, %eax
	je	.L1425
	cmpl	$66, %eax
	je	.L5128
.L1429:
	cmpl	$75, %eax
	je	.L1433
	cmpl	$78, %eax
	je	.L1433
.L1428:
	movq	-2016(%rbp), %rsi
	cmpw	$66, (%rsi)
	jne	.L4764
	movq	-2024(%rbp), %r11
	cmpw	$66, (%r11)
	jne	.L4763
	cmpq	$0, -2032(%rbp)
	je	.L4762
	movq	-2032(%rbp), %rcx
	cmpw	$54, (%rcx)
	je	.L5129
.L1441:
	shrl	$3, -2004(%rbp)
	xorl	%edi, %edi
	mov	-2004(%rbp), %esi
	call	gen_rtx_CONST_INT
	movl	class_narrowest_mode+4(%rip), %r12d
	movl	$1, volatile_ok(%rip)
	movq	%rax, -944(%rbp)
	testl	%r12d, %r12d
	je	.L4244
.L1574:
	movslq	%r12d,%rax
	movl	movstr_optab(,%rax,4), %edx
	movq	%rax, -952(%rbp)
	cmpl	$1317, %edx
	je	.L1560
	movq	-2032(%rbp), %rcx
	cmpw	$54, (%rcx)
	je	.L5130
.L1564:
	testb	$2, target_flags+3(%rip)
	je	.L1565
	movq	-952(%rbp), %r9
	cmpw	$63, mode_bitsize(%r9,%r9)
.L4555:
	jbe	.L1560
.L1563:
	movslq	%edx,%rax
	leaq	(%rax,%rax,4), %rbx
	movq	%rax, -960(%rbp)
	movq	insn_data+24(,%rbx,8), %r13
	movq	(%r13), %rax
	testq	%rax, %rax
	je	.L1567
	movq	-2016(%rbp), %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L1560
.L1567:
	movq	24(%r13), %rax
	testq	%rax, %rax
	jne	.L5131
.L1568:
	movq	72(%r13), %rax
	testq	%rax, %rax
	je	.L1569
	xorl	%esi, %esi
	movq	-944(%rbp), %rdi
	call	*%rax
	testl	%eax, %eax
	je	.L1560
.L1569:
	call	get_last_insn
	movl	$1, %edx
	movq	-2032(%rbp), %rsi
	movl	%r12d, %edi
	movq	%rax, -968(%rbp)
	call	convert_to_mode
	movq	%rax, %rbx
	movq	48(%r13), %rax
	testq	%rax, %rax
	jne	.L5132
.L1570:
	movq	-960(%rbp), %rdi
	xorl	%eax, %eax
	movq	-2024(%rbp), %rsi
	movq	%rbx, %rdx
	movq	-944(%rbp), %rcx
	leaq	(%rdi,%rdi,4), %r13
	movq	-2016(%rbp), %rdi
	call	*insn_data+16(,%r13,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L4494
	movq	-968(%rbp), %rdi
	call	delete_insns_since
.L1560:
	movq	-952(%rbp), %rdx
	movzbl	mode_wider_mode(%rdx), %r12d
	testl	%r12d, %r12d
	jne	.L1574
.L4244:
	testb	$2, target_flags+3(%rip)
	movq	-2016(%rbp), %r8
	movl	$0, volatile_ok(%rip)
	setne	%r9b
	movq	8(%r8), %rsi
	movzbl	%r9b, %edi
	addl	$4, %edi
	call	copy_to_mode_reg
	movq	-2024(%rbp), %r12
	testb	$2, target_flags+3(%rip)
	setne	%r11b
	movq	%rax, %r13
	movq	8(%r12), %rsi
	movzbl	%r11b, %edi
	addl	$4, %edi
	call	copy_to_mode_reg
	movq	sizetype_tab(%rip), %r10
	movq	%rax, %rbx
	movzbl	61(%r10), %esi
	shrb	$1, %sil
	movzbl	%sil, %edi
	movq	-2032(%rbp), %rsi
	call	copy_to_mode_reg
	cmpq	$0, fn.1(%rip)
	movq	%rax, -2072(%rbp)
	je	.L5133
.L1583:
	movq	global_trees+216(%rip), %rdi
	call	build_pointer_type
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	global_trees+216(%rip), %rdi
	movq	%rax, %r12
	call	build_pointer_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	%rax, (%r12)
	movq	%rax, %rbx
	movq	-2072(%rbp), %rsi
	movq	sizetype_tab(%rip), %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	fn.1(%rip), %r11
	movq	%rax, (%rbx)
	movq	(%r12), %r9
	movq	8(%r11), %rdi
	movq	(%r9), %r8
	movq	$0, (%r8)
	call	build_pointer_type
	movq	fn.1(%rip), %rdx
	movl	$121, %edi
	movq	%rax, %rsi
	call	build1
	xorl	%r8d, %r8d
	movq	%r12, %rcx
	movq	fn.1(%rip), %r10
	movq	%rax, %rdx
	movl	$53, %edi
	xorl	%eax, %eax
	movq	8(%r10), %rbx
	movq	8(%rbx), %rsi
	call	build
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	orb	$1, 17(%rax)
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	expand_expr
	testb	$4, 3(%r13)
	jne	.L5134
.L1572:
	movq	-2000(%rbp), %rdx
	cmpw	$54, (%rdx)
	je	.L5135
	movq	sizetype_tab(%rip), %r12
	movq	-2000(%rbp), %rcx
	xorl	%r8d, %r8d
	movq	optab_table+16(%rip), %rsi
	movq	-1952(%rbp), %rdx
	xorl	%r9d, %r9d
	movzbl	61(%r12), %r13d
	movl	$3, (%rsp)
	shrb	$1, %r13b
	movzbl	%r13b, %edi
	call	expand_binop
	movq	-920(%rbp), %rdi
	movq	%rax, %rbx
	call	highest_pow2_factor
	movq	-2000(%rbp), %rsi
	movq	%r14, %rdi
	movq	%rax, %rdx
	call	offset_address
	movq	%rax, %r14
	call	gen_label_rtx
	xorl	%r9d, %r9d
	movq	%rax, -2080(%rbp)
	movq	const_int_rtx+512(%rip), %rsi
	movq	%rbx, %rdi
	movzbl	2(%rbx), %r8d
	movl	$107, %edx
	xorl	%ecx, %ecx
	movq	%rax, (%rsp)
	call	emit_cmp_and_jump_insns
.L1586:
	cmpq	const_int_rtx+512(%rip), %rbx
	je	.L1587
	cmpw	$66, (%r14)
	movq	%r14, -2096(%rbp)
	je	.L5136
	movzbl	2(%r14), %edi
	call	get_mode_alignment
.L4556:
	movl	%eax, -2084(%rbp)
.L1589:
	movzbl	2(%r14), %eax
	cmpb	$51, %al
	je	.L1592
	cmpw	$54, (%rbx)
	je	.L5137
.L1592:
	movzwl	(%r14), %eax
	cmpl	$71, %eax
	je	.L1594
	cmpl	$66, %eax
	je	.L5138
.L1598:
	cmpl	$75, %eax
	je	.L1602
	cmpl	$78, %eax
	je	.L1602
.L1597:
	movzwl	(%rbx), %eax
	cmpl	$71, %eax
	je	.L1607
	cmpl	$66, %eax
	je	.L5139
.L1611:
	cmpl	$75, %eax
	je	.L1615
	cmpl	$78, %eax
	je	.L1615
.L1610:
	cmpw	$54, (%rbx)
	je	.L5140
.L1620:
	shrl	$3, -2084(%rbp)
	xorl	%edi, %edi
	mov	-2084(%rbp), %esi
	call	gen_rtx_CONST_INT
	movl	class_narrowest_mode+4(%rip), %r13d
	movq	%rax, -992(%rbp)
	testl	%r13d, %r13d
	je	.L4258
.L1714:
	movslq	%r13d,%rsi
	movl	clrstr_optab(,%rsi,4), %edx
	movq	%rsi, -1000(%rbp)
	cmpl	$1317, %edx
	je	.L1701
	cmpw	$54, (%rbx)
	je	.L5141
.L1705:
	testb	$2, target_flags+3(%rip)
	je	.L1706
	movq	-1000(%rbp), %rsi
	cmpw	$63, mode_bitsize(%rsi,%rsi)
.L4560:
	jbe	.L1701
.L1704:
	movslq	%edx,%r9
	leaq	(%r9,%r9,4), %r11
	movq	%r9, -1008(%rbp)
	movq	insn_data+24(,%r11,8), %r10
	movq	(%r10), %rax
	movq	%r10, -1016(%rbp)
	testq	%rax, %rax
	je	.L1708
	movq	-2096(%rbp), %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L1701
.L1708:
	movq	-1016(%rbp), %rcx
	movq	48(%rcx), %rax
	testq	%rax, %rax
	je	.L1709
	xorl	%esi, %esi
	movq	-992(%rbp), %rdi
	call	*%rax
	testl	%eax, %eax
	je	.L1701
.L1709:
	call	get_last_insn
	movl	$1, %edx
	movq	%rbx, %rsi
	movl	%r13d, %edi
	movq	%rax, -1024(%rbp)
	call	convert_to_mode
	movq	-1016(%rbp), %rdx
	movq	%rax, %r12
	movq	24(%rdx), %rax
	testq	%rax, %rax
	jne	.L5142
.L1710:
	movq	-1008(%rbp), %rax
	movq	-2096(%rbp), %rdi
	movq	%r12, %rsi
	movq	-992(%rbp), %rdx
	leaq	(%rax,%rax,4), %r13
	xorl	%eax, %eax
	call	*insn_data+16(,%r13,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L4561
	movq	-1024(%rbp), %rdi
	call	delete_insns_since
.L1701:
	movq	-1000(%rbp), %r12
	movzbl	mode_wider_mode(%r12), %r13d
	testl	%r13d, %r13d
	jne	.L1714
.L4258:
	testb	$2, target_flags+3(%rip)
	movq	-2096(%rbp), %r10
	setne	%r11b
	movq	8(%r10), %rsi
	movzbl	%r11b, %edi
	addl	$4, %edi
	call	copy_to_mode_reg
	movq	sizetype_tab(%rip), %r8
	movq	%rax, %r13
	movzbl	61(%r8), %esi
	shrb	$1, %sil
	movzbl	%sil, %edi
	movq	%rbx, %rsi
	call	copy_to_mode_reg
	cmpq	$0, fn.0(%rip)
	movq	%rax, -2128(%rbp)
	je	.L5143
.L1719:
	movq	global_trees+216(%rip), %rdi
	call	build_pointer_type
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	const_int_rtx+512(%rip), %rsi
	movq	integer_types+40(%rip), %rdi
	movq	%rax, %r12
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	%rax, (%r12)
	movq	%rax, %rbx
	movq	-2128(%rbp), %rsi
	movq	sizetype_tab(%rip), %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	fn.0(%rip), %rdx
	movq	%rax, (%rbx)
	movq	(%r12), %r11
	movq	8(%rdx), %rdi
	movq	(%r11), %r10
	movq	$0, (%r10)
	call	build_pointer_type
	movq	fn.0(%rip), %rdx
	movl	$121, %edi
	movq	%rax, %rsi
	call	build1
	movq	%r12, %rcx
	movl	$53, %edi
	movq	fn.0(%rip), %rsi
	movq	%rax, %rdx
	xorl	%eax, %eax
	movq	8(%rsi), %r8
	movq	8(%r8), %rsi
	xorl	%r8d, %r8d
	call	build
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	orb	$1, 17(%rax)
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	expand_expr
	testb	$4, 3(%r13)
	jne	.L5144
.L1587:
	cmpq	$0, -2080(%rbp)
	je	.L1162
	movq	-2080(%rbp), %rdi
	call	emit_label
	jmp	.L1162
.L5144:
	movl	$49, %edi
	xorl	%esi, %esi
	movq	%r13, %rdx
	call	gen_rtx_fmt_e
	movq	%rax, %rdi
.L4561:
	call	emit_insn
	jmp	.L1587
.L5143:
	movl	$.LC7, %edi
	call	get_identifier
	movq	global_trees+216(%rip), %rdi
	movq	%rax, fn.0(%rip)
	call	build_pointer_type
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	build_function_type
	movq	fn.0(%rip), %rsi
	movl	$30, %edi
	movq	%rax, %rdx
	call	build_decl
	movl	$1, %esi
	movl	$fn.0, %edi
	movq	%rax, fn.0(%rip)
	call	ggc_add_tree_root
	movq	fn.0(%rip), %rcx
	xorl	%esi, %esi
	orb	$1, 49(%rcx)
	movq	fn.0(%rip), %r9
	orb	$8, 18(%r9)
	movq	fn.0(%rip), %rdi
	orb	$64, 50(%rdi)
	movq	fn.0(%rip), %rbx
	orb	$2, 18(%rbx)
	movq	fn.0(%rip), %rdi
	call	make_decl_rtl
	movq	fn.0(%rip), %rdi
	call	assemble_external
	jmp	.L1719
.L5142:
	movq	%r12, %rdi
	movl	%r13d, %esi
	call	*%rax
	testl	%eax, %eax
	jne	.L1710
	movq	%r12, %rsi
	movl	%r13d, %edi
	call	copy_to_mode_reg
	movq	%rax, %r12
	jmp	.L1710
	.p2align 6,,7
.L1706:
	movq	-1000(%rbp), %r8
	cmpw	$31, mode_bitsize(%r8,%r8)
	jmp	.L4560
.L5141:
	movq	mode_mask_array(,%rsi,8), %r12
	shrq	$1, %r12
	cmpq	%r12, 8(%rbx)
	jbe	.L1704
	jmp	.L1705
.L5140:
	movq	8(%rbx), %r13
	xorl	%r8d, %r8d
	movl	$17, %esi
.L1633:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L4247
.L1630:
	movslq	%ecx,%r10
	movzbq	mode_size(%r10), %r11
	cmpq	%rsi, %r11
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r10), %ecx
	testl	%ecx, %ecx
	jne	.L1630
.L4247:
	testl	%edi, %edi
	je	.L1623
	movslq	%edi,%r12
	movq	%r12, %r9
	salq	$4, %r9
	addq	optab_table+240(%rip), %r9
	cmpl	$1317, 8(%r9)
	je	.L1632
	movq	%r8, -2648(%rbp)
	call	get_mode_alignment
	movl	$128, %r8d
	cmpl	%eax, %r8d
	movq	-2648(%rbp), %r8
	jb	.L1632
	movzbq	mode_size(%r12), %rdi
	movq	%r13, %rax
	xorl	%edx, %edx
	divq	%rdi
	addq	%rax, %r8
	movq	%rdx, %r13
.L1632:
	movzbq	mode_size(%r12), %rsi
	cmpq	$1, %rsi
	ja	.L1633
.L1623:
	testq	%r13, %r13
	jne	.L4757
	movl	optimize_size(%rip), %eax
	testl	%eax, %eax
	jne	.L1636
	movq	ix86_cost(%rip), %rdx
	mov	40(%rdx), %r12d
	cmpq	%r12, %r8
	jae	.L1620
.L1637:
	movq	8(%rbx), %r9
	movq	-2096(%rbp), %r11
	xorl	%r10d, %r10d
	movq	$clear_by_pieces_1, -424(%rbp)
	movq	$0, -416(%rbp)
	testb	$2, target_flags+3(%rip)
	setne	%r10b
	leaq	-464(%rbp), %r12
	movq	%r9, -440(%rbp)
	movq	%r11, -464(%rbp)
	leaq	16(%r12), %rcx
	movq	8(%r11), %r8
	movq	$0, -432(%rbp)
	movl	$0, -2108(%rbp)
	leaq	5(,%r10,4), %rsi
	movq	%r8, -456(%rbp)
	movq	%rsi, -2120(%rbp)
	movzwl	(%r8), %edx
	xorl	%esi, %esi
	leal	-96(%rdx), %ebx
	cmpw	$1, %bx
	jbe	.L1641
	cmpw	$99, %dx
	je	.L1641
	cmpw	$98, %dx
	je	.L1641
.L1640:
	movl	%esi, (%rcx)
	movl	$0, 20(%r12)
	leaq	56(%r12), %rdx
	movzwl	(%r8), %eax
	xorl	%ecx, %ecx
	cmpw	$96, %ax
	je	.L1643
	cmpw	$98, %ax
	je	.L1643
.L1642:
	movl	%ecx, (%rdx)
	movl	56(%r12), %eax
	testl	%eax, %eax
	je	.L1644
	movq	24(%r12), %r13
	movq	%r13, 32(%r12)
.L1644:
	movl	16(%r12), %ecx
	testl	%ecx, %ecx
	jne	.L1645
	movq	24(%r12), %r13
	movq	$0, -2104(%rbp)
	movl	$17, %esi
.L1658:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L4250
.L1655:
	movslq	%ecx,%rbx
	movzbq	mode_size(%rbx), %rdx
	cmpq	%rsi, %rdx
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%rbx), %ecx
	testl	%ecx, %ecx
	jne	.L1655
.L4250:
	testl	%edi, %edi
	je	.L1648
	movslq	%edi,%rbx
	movq	%rbx, %rsi
	salq	$4, %rsi
	addq	optab_table+240(%rip), %rsi
	cmpl	$1317, 8(%rsi)
	je	.L1657
	movq	%r8, -2648(%rbp)
	call	get_mode_alignment
	movl	$128, %r8d
	cmpl	%eax, %r8d
	movq	-2648(%rbp), %r8
	jb	.L1657
	movzbq	mode_size(%rbx), %r11
	movq	%r13, %rax
	xorl	%edx, %edx
	divq	%r11
	addq	%rax, -2104(%rbp)
	movq	%rdx, %r13
.L1657:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L1658
.L1648:
	testq	%r13, %r13
	jne	.L4757
	cmpq	$2, -2104(%rbp)
	jbe	.L1645
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L4252
.L1666:
	movslq	%ecx,%r9
	movzbq	mode_size(%r9), %r13
	cmpq	-2120(%rbp), %r13
	cmovae	-2108(%rbp), %ecx
	movl	%ecx, -2108(%rbp)
	movzbl	mode_wider_mode(%r9), %ecx
	testl	%ecx, %ecx
	jne	.L1666
.L4252:
	movl	16(%r12), %eax
	testl	%eax, %eax
	jne	.L1645
	movzwl	(%r8), %edx
	leal	-67(%rdx), %ecx
	cmpw	$1, %cx
	jbe	.L1670
	cmpw	$54, %dx
	je	.L1670
	cmpw	$55, %dx
	je	.L1670
	cmpw	$58, %dx
	je	.L1670
	cmpw	$134, %dx
	je	.L1670
	cmpw	$56, %dx
	je	.L1670
	cmpw	$140, %dx
	je	.L1670
.L1645:
	cmpq	$1, -2120(%rbp)
	jbe	.L1673
.L1694:
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L4255
.L1680:
	movslq	%ecx,%rbx
	movzbq	mode_size(%rbx), %rdx
	cmpq	-2120(%rbp), %rdx
	cmovae	-2108(%rbp), %ecx
	movl	%ecx, -2108(%rbp)
	movzbl	mode_wider_mode(%rbx), %ecx
	testl	%ecx, %ecx
	jne	.L1680
.L4255:
	movl	-2108(%rbp), %esi
	testl	%esi, %esi
	je	.L1673
	movslq	-2108(%rbp),%r8
	movq	%r8, -976(%rbp)
	salq	$4, %r8
	addq	optab_table+240(%rip), %r8
	movl	8(%r8), %ebx
	cmpl	$1317, %ebx
	je	.L1682
	movl	-2108(%rbp), %edi
	call	get_mode_alignment
	movl	$128, %edi
	cmpl	%eax, %edi
	jb	.L1682
	movq	-976(%rbp), %r10
	movslq	%ebx,%r13
	leaq	(%r13,%r13,4), %r9
	movq	insn_data+16(,%r9,8), %r11
	movzbq	mode_size(%r10), %rdx
	cmpq	%rdx, 24(%r12)
	movq	%r11, -984(%rbp)
	movq	%rdx, %r13
	jb	.L1682
	movl	56(%r12), %ecx
.L1692:
	testl	%ecx, %ecx
	je	.L1686
	subq	%rdx, 32(%r12)
.L1686:
	movl	16(%r12), %eax
	testl	%eax, %eax
	je	.L1687
	movq	(%r12), %rdi
	movl	-2108(%rbp), %esi
	movl	$1, %r8d
	movq	8(%r12), %rdx
	movq	32(%r12), %rcx
	call	adjust_automodify_address_1
.L4559:
	movl	-2108(%rbp), %edx
	movq	%rax, %rbx
	movq	48(%r12), %rdi
	movq	32(%r12), %rsi
	call	*40(%r12)
	movq	%rbx, %rdi
	movq	%rax, %rsi
	xorl	%eax, %eax
	call	*-984(%rbp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%r12), %eax
	testl	%eax, %eax
	movl	%eax, %ecx
	jne	.L1691
	addq	%r13, 32(%r12)
.L1691:
	movq	24(%r12), %rbx
	movq	%r13, %rdx
	subq	%r13, %rbx
	cmpq	%r13, %rbx
	movq	%rbx, 24(%r12)
	jae	.L1692
.L1682:
	movq	-976(%rbp), %rdx
	movzbq	mode_size(%rdx), %rcx
	cmpq	$1, %rcx
	movq	%rcx, -2120(%rbp)
	ja	.L1694
.L1673:
	cmpq	$0, 24(%r12)
	je	.L1587
	jmp	.L4756
.L1687:
	movq	(%r12), %rdi
	movl	-2108(%rbp), %esi
	movl	$1, %ecx
	movq	32(%r12), %rdx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L4559
.L1670:
	movq	%r8, %rdi
	call	copy_addr_to_reg
	movq	%rax, 8(%r12)
	jmp	.L1645
.L1643:
	movl	$1, %ecx
	jmp	.L1642
.L1641:
	movl	$1, %esi
	jmp	.L1640
.L1636:
	cmpq	$2, %r8
	ja	.L1620
	jmp	.L1637
.L1615:
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%rbx), %rdi
	movq	%rax, %r13
	call	protect_from_queue
	cmpq	8(%rbx), %r13
	movq	%rax, %r12
	je	.L5145
.L1617:
	movq	%rbx, %rdi
	call	copy_rtx
	movq	%rax, %rbx
	movq	%r13, 8(%rax)
	movq	%r12, 16(%rax)
	jmp	.L1610
.L5145:
	cmpq	16(%rbx), %rax
	jne	.L1617
	jmp	.L1610
.L5139:
	cmpb	$51, 2(%rbx)
	je	.L1608
	movq	8(%rbx), %r13
	cmpw	$71, (%r13)
	je	.L5146
.L1608:
	cmpl	$66, %eax
	jne	.L1611
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%rbx), %rax
	movq	%rax, %r12
	je	.L1610
	movq	%rbx, %rdi
	call	copy_rtx
	movq	%rax, %rbx
	movq	%r12, 8(%rax)
	jmp	.L1610
.L5146:
	movq	8(%r13), %rsi
	movq	%rbx, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%r13)
	movq	%rax, %r12
	je	.L1609
	movzbl	2(%rbx), %edi
	call	gen_reg_rtx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L1610
.L1609:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%r12, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L4558:
	movq	%rax, %rbx
	jmp	.L1610
.L1607:
	cmpq	$0, 16(%rbx)
	je	.L5147
	movq	24(%rbx), %rax
	testq	%rax, %rax
	jne	.L4558
	movq	8(%rbx), %rsi
	movzbl	2(%rsi), %edi
	call	gen_reg_rtx
	movq	8(%rbx), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%rbx)
	call	gen_move_insn
	movq	16(%rbx), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%rbx), %rbx
	jmp	.L1610
.L5147:
	movq	8(%rbx), %rdi
	call	copy_to_reg
	jmp	.L4558
.L1602:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r14), %rdi
	movq	%rax, %r13
	call	protect_from_queue
	cmpq	8(%r14), %r13
	movq	%rax, %r12
	je	.L5148
.L1604:
	movq	%r14, %rdi
	call	copy_rtx
	movq	%rax, -2096(%rbp)
	movq	%r13, 8(%rax)
	movq	-2096(%rbp), %rax
	movq	%r12, 16(%rax)
	jmp	.L1597
.L5148:
	cmpq	16(%r14), %rax
	jne	.L1604
	jmp	.L1597
.L5138:
	jne	.L1598
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%r14), %rax
	movq	%rax, %r12
	je	.L1597
	movq	%r14, %rdi
	call	copy_rtx
	movq	%rax, -2096(%rbp)
	movq	%r12, 8(%rax)
	jmp	.L1597
.L1594:
	cmpq	$0, 16(%r14)
	je	.L5149
	movq	24(%r14), %rdi
	testq	%rdi, %rdi
	movq	%rdi, -2096(%rbp)
	jne	.L1597
	movq	8(%r14), %rdx
	movzbl	2(%rdx), %edi
	call	gen_reg_rtx
	movq	8(%r14), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r14), %rax
.L4557:
	movq	%rax, -2096(%rbp)
	jmp	.L1597
.L5149:
	movq	8(%r14), %rdi
	call	copy_to_reg
	jmp	.L4557
.L5137:
	movzbl	%al, %edx 
	movzbl	mode_size(%rdx), %ecx
	cmpl	8(%rbx), %ecx
	jne	.L1592
	movq	const_tiny_rtx(,%rdx,8), %rsi
	movq	%r14, %rdi
	call	emit_move_insn
	jmp	.L1587
.L5136:
	movq	16(%r14), %rax
	movl	$8, -2084(%rbp)
	testq	%rax, %rax
	je	.L1589
	movl	32(%rax), %eax
	jmp	.L4556
.L5135:
	movq	8(%rdx), %rsi
	movq	-1952(%rbp), %rdi
	negq	%rsi
	call	plus_constant_wide
	movl	$1, %r8d
	movl	$1, %ecx
	movq	%r14, %rdi
	movl	$51, %esi
	movq	%rax, %rbx
	movq	-2000(%rbp), %r14
	movq	8(%r14), %rdx
	call	adjust_address_1
	movq	%rax, %r14
	jmp	.L1586
.L5134:
	movl	$49, %edi
	xorl	%esi, %esi
	movq	%r13, %rdx
	call	gen_rtx_fmt_e
	movq	%rax, %rdi
	call	emit_insn
	jmp	.L1572
.L5133:
	movl	$.LC11, %edi
	call	get_identifier
	movq	global_trees+216(%rip), %rdi
	movq	%rax, fn.1(%rip)
	call	build_pointer_type
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	build_function_type
	movq	fn.1(%rip), %rsi
	movl	$30, %edi
	movq	%rax, %rdx
	call	build_decl
	movl	$1, %esi
	movl	$fn.1, %edi
	movq	%rax, fn.1(%rip)
	call	ggc_add_tree_root
	movq	fn.1(%rip), %rsi
	orb	$1, 49(%rsi)
	xorl	%esi, %esi
	movq	fn.1(%rip), %rdx
	orb	$8, 18(%rdx)
	movq	fn.1(%rip), %rdi
	orb	$64, 50(%rdi)
	movq	fn.1(%rip), %rcx
	orb	$2, 18(%rcx)
	movq	fn.1(%rip), %rdi
	call	make_decl_rtl
	movq	fn.1(%rip), %rdi
	call	assemble_external
	jmp	.L1583
.L4494:
	call	emit_insn
	movl	$0, volatile_ok(%rip)
	jmp	.L1572
.L5132:
	movq	%rbx, %rdi
	movl	%r12d, %esi
	call	*%rax
	testl	%eax, %eax
	jne	.L1570
	movq	%rbx, %rsi
	movl	%r12d, %edi
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L1570
.L5131:
	movq	-2024(%rbp), %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L1560
	jmp	.L1568
	.p2align 6,,7
.L1565:
	movq	-952(%rbp), %rcx
	cmpw	$31, mode_bitsize(%rcx,%rcx)
	jmp	.L4555
.L5130:
	movq	mode_mask_array(,%rax,8), %r11
	shrq	$1, %r11
	cmpq	%r11, 8(%rcx)
	jbe	.L1563
	jmp	.L1564
.L5129:
	movq	8(%rcx), %r12
	xorl	%r13d, %r13d
	movl	$17, %esi
.L1454:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L4233
.L1451:
	movslq	%ecx,%rbx
	movzbq	mode_size(%rbx), %rdx
	cmpq	%rsi, %rdx
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%rbx), %ecx
	testl	%ecx, %ecx
	jne	.L1451
.L4233:
	testl	%edi, %edi
	je	.L1444
	movslq	%edi,%rbx
	movq	%rbx, %r9
	salq	$4, %r9
	addq	optab_table+240(%rip), %r9
	cmpl	$1317, 8(%r9)
	je	.L1453
	call	get_mode_alignment
	movl	$128, %ecx
	cmpl	%eax, %ecx
	jb	.L1453
	movzbq	mode_size(%rbx), %r8
	movq	%r12, %rax
	xorl	%edx, %edx
	divq	%r8
	addq	%rax, %r13
	movq	%rdx, %r12
.L1453:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L1454
.L1444:
	testq	%r12, %r12
	jne	.L4757
	movl	optimize_size(%rip), %r10d
	testl	%r10d, %r10d
	jne	.L1457
	movq	ix86_cost(%rip), %r11
	mov	40(%r11), %esi
	cmpq	%rsi, %r13
	jae	.L1441
.L1458:
	movq	-2032(%rbp), %r8
	movq	-2024(%rbp), %r10
	movq	-2016(%rbp), %rdi
	movq	-2016(%rbp), %rdx
	testb	$2, target_flags+3(%rip)
	movq	8(%r8), %r12
	setne	%r13b
	movq	8(%r10), %r8
	movq	$0, -344(%rbp)
	movl	$0, -2052(%rbp)
	movq	%r8, -368(%rbp)
	movzbl	%r13b, %ecx
	movq	8(%rdi), %r9
	movq	%rdx, -400(%rbp)
	leal	5(,%rcx,4), %r13d
	xorl	%ecx, %ecx
	movq	%r9, -2040(%rbp)
	movq	-2040(%rbp), %rax
	movzwl	(%rax), %edx
	leal	-96(%rdx), %ebx
	cmpw	$1, %bx
	jbe	.L1463
	cmpw	$99, %dx
	je	.L1463
	cmpw	$98, %dx
	je	.L1463
.L1462:
	movq	-2040(%rbp), %rsi
	movl	%ecx, -384(%rbp)
	xorl	%edx, %edx
	movzwl	(%rsi), %eax
	cmpw	$96, %ax
	je	.L1465
	cmpw	$98, %ax
	je	.L1465
.L1464:
	movq	-2040(%rbp), %rax
	movq	-2024(%rbp), %rbx
	movl	%edx, -336(%rbp)
	xorl	%ecx, %ecx
	movq	%rax, -392(%rbp)
	movq	%rbx, -376(%rbp)
	movzwl	(%r8), %edx
	leal	-96(%rdx), %r11d
	cmpw	$1, %r11w
	jbe	.L1468
	cmpw	$99, %dx
	je	.L1468
	cmpw	$98, %dx
	je	.L1468
.L1467:
	movl	-336(%rbp), %edx
	movl	%ecx, -360(%rbp)
	movl	$0, -356(%rbp)
	movl	$0, -380(%rbp)
	testl	%edx, %edx
	je	.L1469
	movq	%r12, -344(%rbp)
.L1469:
	movl	-360(%rbp), %r9d
	movq	%r12, -352(%rbp)
	testl	%r9d, %r9d
	je	.L1471
	movl	-384(%rbp), %edi
	testl	%edi, %edi
	jne	.L1470
.L1471:
	movq	$0, -2048(%rbp)
	movl	$17, %esi
.L1484:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L4236
.L1481:
	movslq	%ecx,%r10
	movzbq	mode_size(%r10), %r11
	cmpq	%rsi, %r11
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r10), %ecx
	testl	%ecx, %ecx
	jne	.L1481
.L4236:
	testl	%edi, %edi
	je	.L1474
	movslq	%edi,%rbx
	movq	%rbx, %rcx
	salq	$4, %rcx
	addq	optab_table+240(%rip), %rcx
	cmpl	$1317, 8(%rcx)
	je	.L1483
	movq	%r8, -2648(%rbp)
	call	get_mode_alignment
	movl	$128, %r8d
	cmpl	%eax, %r8d
	movq	-2648(%rbp), %r8
	jb	.L1483
	movzbq	mode_size(%rbx), %rsi
	movq	%r12, %rax
	xorl	%edx, %edx
	divq	%rsi
	addq	%rax, -2048(%rbp)
	movq	%rdx, %r12
.L1483:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L1484
.L1474:
	testq	%r12, %r12
	jne	.L4757
	cmpq	$2, -2048(%rbp)
	jbe	.L1470
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L4238
.L1492:
	movslq	%ecx,%rbx
	movzbl	mode_size(%rbx), %edx
	cmpl	%r13d, %edx
	cmovae	-2052(%rbp), %ecx
	movl	%ecx, -2052(%rbp)
	movzbl	mode_wider_mode(%rbx), %ecx
	testl	%ecx, %ecx
	jne	.L1492
.L4238:
	movl	-360(%rbp), %eax
	testl	%eax, %eax
	jne	.L1498
	movzwl	(%r8), %edx
	leal	-67(%rdx), %edi
	cmpw	$1, %di
	jbe	.L1496
	cmpw	$54, %dx
	je	.L1496
	cmpw	$55, %dx
	je	.L1496
	cmpw	$58, %dx
	je	.L1496
	cmpw	$134, %dx
	je	.L1496
	cmpw	$56, %dx
	je	.L1496
	cmpw	$140, %dx
	je	.L1496
.L1498:
	movl	-384(%rbp), %eax
	testl	%eax, %eax
	jne	.L1470
	movq	-2040(%rbp), %r11
	movzwl	(%r11), %edx
	leal	-67(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L1500
	cmpw	$54, %dx
	je	.L1500
	cmpw	$55, %dx
	je	.L1500
	cmpw	$58, %dx
	je	.L1500
	cmpw	$134, %dx
	je	.L1500
	cmpw	$56, %dx
	je	.L1500
	cmpw	$140, %dx
	je	.L1500
.L1470:
	cmpl	$1, %r13d
	jbe	.L1503
.L1554:
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L4241
.L1510:
	movslq	%ecx,%r8
	movzbl	mode_size(%r8), %r12d
	cmpl	%r13d, %r12d
	cmovae	-2052(%rbp), %ecx
	movl	%ecx, -2052(%rbp)
	movzbl	mode_wider_mode(%r8), %ecx
	testl	%ecx, %ecx
	jne	.L1510
.L4241:
	movl	-2052(%rbp), %eax
	testl	%eax, %eax
	je	.L1503
	movslq	-2052(%rbp),%rcx
	movq	%rcx, %r13
	movq	%rcx, -928(%rbp)
	salq	$4, %r13
	addq	optab_table+240(%rip), %r13
	movl	8(%r13), %ebx
	cmpl	$1317, %ebx
	je	.L1512
	movl	-2052(%rbp), %edi
	call	get_mode_alignment
	movl	$128, %r9d
	cmpl	%eax, %r9d
	jb	.L1512
	movq	-928(%rbp), %rsi
	movslq	%ebx,%rdi
	leaq	-400(%rbp), %r12
	leaq	(%rdi,%rdi,4), %rdx
	movq	$0, -2064(%rbp)
	movq	insn_data+16(,%rdx,8), %rbx
	movzbq	mode_size(%rsi), %rdx
	cmpq	%rdx, -352(%rbp)
	movq	%rbx, -936(%rbp)
	movq	%rdx, -1616(%rbp)
	jb	.L1512
	movl	-336(%rbp), %ecx
.L1552:
	testl	%ecx, %ecx
	je	.L1516
	subq	%rdx, 56(%r12)
.L1516:
	movq	(%r12), %rdi
	testq	%rdi, %rdi
	je	.L1517
	movl	16(%r12), %eax
	testl	%eax, %eax
	je	.L1518
	movl	-2052(%rbp), %esi
	movq	8(%r12), %rdx
	movl	$1, %r8d
	movq	56(%r12), %rcx
	call	adjust_automodify_address_1
.L4551:
	movq	%rax, -2064(%rbp)
.L1517:
	movl	40(%r12), %eax
	testl	%eax, %eax
	je	.L1520
	movq	24(%r12), %rdi
	movl	-2052(%rbp), %esi
	movl	$1, %r8d
	movq	32(%r12), %rdx
	movq	56(%r12), %rcx
	call	adjust_automodify_address_1
.L4552:
	cmpq	$0, (%r12)
	movq	%rax, %r13
	jne	.L5150
	movl	target_flags(%rip), %eax
	testl	$33554432, %eax
	movl	%eax, %esi
	je	.L1526
	movq	-928(%rbp), %rax
	movzbl	mode_size(%rax), %r10d
	leal	7(%r10), %edx
	andl	$-8, %edx
.L1527:
	movq	cfun(%rip), %rcx
	andl	$33554432, %esi
	movq	16(%rcx), %r9
	leaq	8(%r9), %rdi
	movl	8(%r9), %ecx
	je	.L1528
	movq	-928(%rbp), %rsi
	movzbl	mode_size(%rsi), %eax
	addl	$7, %eax
	andl	$-8, %eax
.L4553:
	leal	(%rax,%rcx), %r10d
	movl	%r10d, (%rdi)
	movq	-928(%rbp), %rdi
	salq	$4, %rdi
	addq	optab_table+384(%rip), %rdi
	movl	8(%rdi), %eax
	cmpl	$1317, %eax
	je	.L1530
	movslq	%eax,%rbx
	leaq	(%rbx,%rbx,4), %r11
	movq	insn_data+24(,%r11,8), %rdx
	movq	(%rdx), %rax
	testq	%rax, %rax
	je	.L1531
	movq	%r13, %rdi
	movl	-2052(%rbp), %esi
	call	*%rax
	testl	%eax, %eax
	je	.L5151
.L1531:
	leaq	(%rbx,%rbx,4), %r8
	movq	%r13, %rdi
	xorl	%eax, %eax
	call	*insn_data+16(,%r8,8)
.L4554:
	movq	%rax, %rdi
	call	emit_insn
.L1550:
	movl	64(%r12), %eax
	testl	%eax, %eax
	movl	%eax, %ecx
	jne	.L1551
	movq	-1616(%rbp), %r13
	addq	%r13, 56(%r12)
.L1551:
	movq	48(%r12), %r10
	movq	-1616(%rbp), %rdx
	subq	-1616(%rbp), %r10
	cmpq	%rdx, %r10
	movq	%r10, 48(%r12)
	jae	.L1552
.L1512:
	movq	-928(%rbp), %r12
	movzbl	mode_size(%r12), %r13d
	cmpl	$1, %r13d
	ja	.L1554
.L1503:
	cmpq	$0, -352(%rbp)
	je	.L1572
	jmp	.L4742
.L5151:
	movl	-2052(%rbp), %edi
	movq	%r13, %rsi
	call	force_reg
	movq	%rax, %r13
	jmp	.L1531
.L1530:
	movq	-928(%rbp), %rax
	movzbl	mode_size(%rax), %r9d
	cmpl	%edx, %r9d
	je	.L5152
	mov	%edx, %esi
	xorl	%edi, %edi
	negq	%rsi
	call	gen_rtx_CONST_INT
	movq	global_rtl+16(%rip), %rdx
	testb	$2, target_flags+3(%rip)
	setne	%dil
	movq	%rax, %rcx
	movzbl	%dil, %esi
	movl	$75, %edi
	addl	$4, %esi
	call	gen_rtx_fmt_ee
	movq	global_rtl+16(%rip), %rdx
	movl	$100, %edi
	testb	$2, target_flags+3(%rip)
	movq	%rax, %rcx
	setne	%bl
	movzbl	%bl, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_ee
.L1538:
	movl	-2052(%rbp), %edi
	movq	%rax, %rsi
	call	gen_rtx_MEM
	xorl	%esi, %esi
	testq	%rsi, %rsi
	movq	%rax, %rbx
	je	.L1547
	movq	%rax, %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	call	set_mem_attributes
	movl	flag_optimize_sibling_calls(%rip), %eax
	testl	%eax, %eax
	jne	.L5153
.L1547:
	movq	%rbx, %rdi
	movq	%r13, %rsi
	call	emit_move_insn
	jmp	.L1550
.L5153:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	call	set_mem_alias_set
	jmp	.L1547
.L5152:
	testb	$2, target_flags+3(%rip)
	movq	global_rtl+16(%rip), %rdx
	movl	$96, %edi
	setne	%cl
	movzbl	%cl, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_e
	jmp	.L1538
.L1528:
	movq	-928(%rbp), %rbx
	movzbl	mode_size(%rbx), %eax
	incl	%eax
	andl	$-2, %eax
	jmp	.L4553
.L1526:
	movq	-928(%rbp), %r8
	movzbl	mode_size(%r8), %r11d
	leal	1(%r11), %edx
	andl	$-2, %edx
	jmp	.L1527
.L5150:
	movq	%rax, %rsi
	movq	-2064(%rbp), %rdi
	xorl	%eax, %eax
	call	*-936(%rbp)
	jmp	.L4554
	.p2align 6,,7
.L1520:
	movq	24(%r12), %rdi
	movl	-2052(%rbp), %esi
	movl	$1, %ecx
	movq	56(%r12), %rdx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L4552
.L1518:
	movl	-2052(%rbp), %esi
	movq	56(%r12), %rdx
	movl	$1, %ecx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L4551
.L1500:
	movq	-2040(%rbp), %rdi
	call	copy_addr_to_reg
	movq	%rax, -392(%rbp)
	jmp	.L1470
.L1496:
	movq	%r8, %rdi
	call	copy_addr_to_reg
	movq	%rax, -368(%rbp)
	jmp	.L1498
.L1468:
	movl	$1, %ecx
	jmp	.L1467
.L1465:
	movl	$1, %edx
	jmp	.L1464
.L1463:
	movl	$1, %ecx
	jmp	.L1462
.L1457:
	cmpq	$2, %r13
	ja	.L1441
	jmp	.L1458
.L1433:
	movq	-2000(%rbp), %r9
	xorl	%esi, %esi
	movq	8(%r9), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	-2000(%rbp), %rbx
	movq	%rax, %r12
	movq	16(%rbx), %rdi
	call	protect_from_queue
	movq	-2000(%rbp), %rcx
	movq	%rax, %rbx
	cmpq	8(%rcx), %r12
	je	.L5154
.L1435:
	movq	-2000(%rbp), %rdi
	call	copy_rtx
	movq	%rax, -2032(%rbp)
	movq	%r12, 8(%rax)
	movq	-2032(%rbp), %rcx
	movq	%rbx, 16(%rcx)
	jmp	.L1428
.L5154:
	cmpq	16(%rcx), %rax
	jne	.L1435
	jmp	.L1428
.L5128:
	cmpb	$51, 2(%rdx)
	je	.L1426
	movq	8(%rdx), %r12
	cmpw	$71, (%r12)
	je	.L5155
.L1426:
	cmpl	$66, %eax
	jne	.L1429
	movq	-2000(%rbp), %r11
	xorl	%esi, %esi
	movq	8(%r11), %rdi
	call	protect_from_queue
	movq	-2000(%rbp), %rsi
	movq	%rax, %rbx
	cmpq	8(%rsi), %rax
	je	.L1428
	movq	%rsi, %rdi
	call	copy_rtx
	movq	%rax, -2032(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L1428
.L5155:
	movq	8(%r12), %rsi
	movq	%rdx, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%r12)
	movq	%rax, %rbx
	je	.L1427
	movq	-2000(%rbp), %rdx
	movzbl	2(%rdx), %edi
	call	gen_reg_rtx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, -2032(%rbp)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L1428
.L1427:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L4550:
	movq	%rax, -2032(%rbp)
	jmp	.L1428
.L1425:
	movq	-2000(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.L5156
	movq	-2000(%rbp), %rdi
	movq	24(%rdi), %r12
	testq	%r12, %r12
	movq	%r12, -2032(%rbp)
	jne	.L1428
	movq	-2000(%rbp), %rax
	movq	8(%rax), %r10
	movzbl	2(%r10), %edi
	call	gen_reg_rtx
	movq	-2000(%rbp), %r13
	movq	%rax, %rdi
	movq	8(%r13), %rsi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %r8
	movq	%r8, -2032(%rbp)
	jmp	.L1428
.L5156:
	movq	8(%rax), %rdi
	call	copy_to_reg
	jmp	.L4550
.L1420:
	movq	-2208(%rbp), %r12
	xorl	%esi, %esi
	movq	8(%r12), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	-2208(%rbp), %r13
	movq	%rax, %r12
	movq	16(%r13), %rdi
	call	protect_from_queue
	movq	-2208(%rbp), %rsi
	movq	%rax, %rbx
	cmpq	8(%rsi), %r12
	je	.L5157
.L1422:
	movq	-2208(%rbp), %rdi
	call	copy_rtx
	movq	%rax, -2024(%rbp)
	movq	%r12, 8(%rax)
	movq	-2024(%rbp), %rdi
	movq	%rbx, 16(%rdi)
	jmp	.L1415
.L5157:
	cmpq	16(%rsi), %rax
	jne	.L1422
	jmp	.L1415
.L5127:
	cmpb	$51, 2(%rbx)
	je	.L1413
	movq	8(%rbx), %r12
	cmpw	$71, (%r12)
	je	.L5158
.L1413:
	cmpl	$66, %eax
	jne	.L1416
	movq	-2208(%rbp), %rcx
	xorl	%esi, %esi
	movq	8(%rcx), %rdi
	call	protect_from_queue
	movq	-2208(%rbp), %rdx
	movq	%rax, %rbx
	cmpq	8(%rdx), %rax
	je	.L1415
	movq	%rdx, %rdi
	call	copy_rtx
	movq	%rax, -2024(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L1415
.L5158:
	movq	8(%r12), %rsi
	movq	%rbx, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%r12)
	movq	%rax, %rbx
	je	.L1414
	movq	-2208(%rbp), %r9
	movzbl	2(%r9), %edi
	call	gen_reg_rtx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, -2024(%rbp)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L1415
.L1414:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L4549:
	movq	%rax, -2024(%rbp)
	jmp	.L1415
.L1412:
	movq	-2208(%rbp), %rdx
	cmpq	$0, 16(%rdx)
	je	.L5159
	movq	-2208(%rbp), %rax
	movq	24(%rax), %r8
	testq	%r8, %r8
	movq	%r8, -2024(%rbp)
	jne	.L1415
	movq	-2208(%rbp), %r13
	movq	8(%r13), %rsi
	movzbl	2(%rsi), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %r10
	movq	%r10, -2024(%rbp)
	jmp	.L1415
.L5159:
	movq	8(%rdx), %rdi
	call	copy_to_reg
	jmp	.L4549
.L1407:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r14), %rdi
	movq	%rax, %r12
	call	protect_from_queue
	cmpq	8(%r14), %r12
	movq	%rax, %rbx
	je	.L5160
.L1409:
	movq	%r14, %rdi
	call	copy_rtx
	movq	%rax, -2016(%rbp)
	movq	%r12, 8(%rax)
	movq	-2016(%rbp), %rsi
	movq	%rbx, 16(%rsi)
	jmp	.L1402
.L5160:
	cmpq	16(%r14), %rax
	jne	.L1409
	jmp	.L1402
.L5126:
	jne	.L1403
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%r14), %rax
	movq	%rax, %rbx
	je	.L1402
	movq	%r14, %rdi
	call	copy_rtx
	movq	%rax, -2016(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L1402
.L1399:
	testq	%rsi, %rsi
	je	.L5161
	movq	24(%r14), %rdx
	testq	%rdx, %rdx
	movq	%rdx, -2016(%rbp)
	jne	.L1402
	movq	8(%r14), %r11
	movzbl	2(%r11), %edi
	call	gen_reg_rtx
	movq	8(%r14), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r14), %rbx
	movq	%rbx, -2016(%rbp)
	jmp	.L1402
.L5161:
	movq	8(%r14), %rdi
	call	copy_to_reg
	movq	%rax, -2016(%rbp)
	jmp	.L1402
.L1392:
	testq	%rsi, %rsi
	movl	$8, -2004(%rbp)
	je	.L1388
	movl	32(%rsi), %eax
	movl	%eax, -2004(%rbp)
	jmp	.L1388
.L1391:
	cmpl	$7, %edx
	ja	.L1387
	jmp	.L1392
.L5125:
	movq	-1952(%rbp), %rax
	movslq	32(%r13),%r9
	cmpq	%r9, 8(%rax)
	jge	.L1187
	movq	-2208(%rbp), %rcx
	movq	%r14, -1936(%rbp)
	movl	$8, %edx
	movq	%rcx, -1944(%rbp)
	movq	16(%r14), %rax
	testq	%rax, %rax
	movq	%rax, %rsi
	je	.L1191
	movl	32(%rax), %edx
.L1191:
	movq	-2208(%rbp), %rbx
	movq	16(%rbx), %rax
	testq	%rax, %rax
	movq	%rax, %rcx
	je	.L1192
	cmpl	32(%rax), %edx
	jb	.L1193
.L1188:
	testq	%rcx, %rcx
	movl	$8, -1928(%rbp)
	je	.L1189
	movl	32(%rcx), %edx
	movl	%edx, -1928(%rbp)
.L1189:
	cmpb	$51, 2(%r14)
	jne	.L4766
	movq	-2208(%rbp), %r10
	cmpb	$51, 2(%r10)
	jne	.L4765
	movzwl	(%r14), %eax
	cmpl	$71, %eax
	je	.L1200
	cmpl	$66, %eax
	je	.L5162
.L1204:
	cmpl	$75, %eax
	je	.L1208
	cmpl	$78, %eax
	je	.L1208
.L1203:
	movq	-2208(%rbp), %rbx
	movzwl	(%rbx), %eax
	cmpl	$71, %eax
	je	.L1213
	cmpl	$66, %eax
	je	.L5163
.L1217:
	cmpl	$75, %eax
	je	.L1221
	cmpl	$78, %eax
	je	.L1221
.L1216:
	movq	-1952(%rbp), %rdx
	movzwl	(%rdx), %eax
	cmpl	$71, %eax
	je	.L1226
	cmpl	$66, %eax
	je	.L5164
.L1230:
	cmpl	$75, %eax
	je	.L1234
	cmpl	$78, %eax
	je	.L1234
.L1229:
	movq	-1936(%rbp), %r10
	cmpw	$66, (%r10)
	jne	.L4764
	movq	-1944(%rbp), %r11
	cmpw	$66, (%r11)
	jne	.L4763
	cmpq	$0, -1952(%rbp)
	je	.L4762
	movq	-1952(%rbp), %rcx
	cmpw	$54, (%rcx)
	je	.L5165
.L1242:
	shrl	$3, -1928(%rbp)
	xorl	%edi, %edi
	mov	-1928(%rbp), %esi
	call	gen_rtx_CONST_INT
	movl	class_narrowest_mode+4(%rip), %r12d
	movl	$1, volatile_ok(%rip)
	movq	%rax, -888(%rbp)
	testl	%r12d, %r12d
	je	.L4230
.L1375:
	movslq	%r12d,%rax
	movl	movstr_optab(,%rax,4), %edx
	movq	%rax, -896(%rbp)
	cmpl	$1317, %edx
	je	.L1361
	movq	-1952(%rbp), %rcx
	cmpw	$54, (%rcx)
	je	.L5166
.L1365:
	testb	$2, target_flags+3(%rip)
	je	.L1366
	movq	-896(%rbp), %rcx
	cmpw	$63, mode_bitsize(%rcx,%rcx)
.L4548:
	jbe	.L1361
.L1364:
	movslq	%edx,%rax
	leaq	(%rax,%rax,4), %rbx
	movq	%rax, -904(%rbp)
	movq	insn_data+24(,%rbx,8), %r13
	movq	(%r13), %rax
	testq	%rax, %rax
	je	.L1368
	movq	-1936(%rbp), %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L1361
.L1368:
	movq	24(%r13), %rax
	testq	%rax, %rax
	jne	.L5167
.L1369:
	movq	72(%r13), %rax
	testq	%rax, %rax
	je	.L1370
	xorl	%esi, %esi
	movq	-888(%rbp), %rdi
	call	*%rax
	testl	%eax, %eax
	je	.L1361
.L1370:
	call	get_last_insn
	movl	$1, %edx
	movq	-1952(%rbp), %rsi
	movl	%r12d, %edi
	movq	%rax, -912(%rbp)
	call	convert_to_mode
	movq	%rax, %rbx
	movq	48(%r13), %rax
	testq	%rax, %rax
	jne	.L5168
.L1371:
	movq	-904(%rbp), %rsi
	movq	-1936(%rbp), %rdi
	xorl	%eax, %eax
	movq	%rbx, %rdx
	movq	-888(%rbp), %rcx
	leaq	(%rsi,%rsi,4), %r10
	movq	-1944(%rbp), %rsi
	call	*insn_data+16(,%r10,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L4496
	movq	-912(%rbp), %rdi
	call	delete_insns_since
.L1361:
	movq	-896(%rbp), %rdx
	movzbl	mode_wider_mode(%rdx), %r12d
	testl	%r12d, %r12d
	jne	.L1375
.L4230:
	testb	$2, target_flags+3(%rip)
	movq	-1936(%rbp), %r13
	movl	$0, volatile_ok(%rip)
	setne	%cl
	movq	8(%r13), %rsi
	movzbl	%cl, %edi
	addl	$4, %edi
	call	copy_to_mode_reg
	movq	-1944(%rbp), %r11
	testb	$2, target_flags+3(%rip)
	setne	%r9b
	movq	%rax, %r13
	movq	8(%r11), %rsi
	movzbl	%r9b, %edi
	addl	$4, %edi
	call	copy_to_mode_reg
	movq	-1952(%rbp), %rsi
	movq	sizetype_tab(%rip), %rdi
	movq	%rax, %rbx
	movzbl	61(%rdi), %r12d
	shrb	$1, %r12b
	movzbl	%r12b, %edi
	call	copy_to_mode_reg
	cmpq	$0, fn.1(%rip)
	movq	%rax, -1992(%rbp)
	je	.L5169
.L1384:
	movq	global_trees+216(%rip), %rdi
	call	build_pointer_type
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	global_trees+216(%rip), %rdi
	movq	%rax, %r12
	call	build_pointer_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	%rax, (%r12)
	movq	%rax, %rbx
	movq	-1992(%rbp), %rsi
	movq	sizetype_tab(%rip), %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	fn.1(%rip), %r11
	movq	%rax, (%rbx)
	movq	(%r12), %rcx
	movq	8(%r11), %rdi
	movq	(%rcx), %r9
	movq	$0, (%r9)
	call	build_pointer_type
	movq	fn.1(%rip), %rdx
	movl	$121, %edi
	movq	%rax, %rsi
	call	build1
	xorl	%r8d, %r8d
	movq	%r12, %rcx
	movq	fn.1(%rip), %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	movq	8(%rdi), %rbx
	movl	$53, %edi
	movq	8(%rbx), %rsi
	call	build
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	orb	$1, 17(%rax)
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	expand_expr
	testb	$4, 3(%r13)
	je	.L1162
	movl	$49, %edi
	xorl	%esi, %esi
	movq	%r13, %rdx
	jmp	.L4571
.L5169:
	movl	$.LC11, %edi
	call	get_identifier
	movq	global_trees+216(%rip), %rdi
	movq	%rax, fn.1(%rip)
	call	build_pointer_type
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	build_function_type
	movq	fn.1(%rip), %rsi
	movl	$30, %edi
	movq	%rax, %rdx
	call	build_decl
	movl	$1, %esi
	movl	$fn.1, %edi
	movq	%rax, fn.1(%rip)
	call	ggc_add_tree_root
	movq	fn.1(%rip), %rdx
	orb	$1, 49(%rdx)
	movq	fn.1(%rip), %rsi
	orb	$8, 18(%rsi)
	xorl	%esi, %esi
	movq	fn.1(%rip), %r10
	orb	$64, 50(%r10)
	movq	fn.1(%rip), %r8
	orb	$2, 18(%r8)
	movq	fn.1(%rip), %rdi
	call	make_decl_rtl
	movq	fn.1(%rip), %rdi
	call	assemble_external
	jmp	.L1384
.L5168:
	movq	%rbx, %rdi
	movl	%r12d, %esi
	call	*%rax
	testl	%eax, %eax
	jne	.L1371
	movq	%rbx, %rsi
	movl	%r12d, %edi
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L1371
.L5167:
	movq	-1944(%rbp), %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L1361
	jmp	.L1369
.L1366:
	movq	-896(%rbp), %r8
	cmpw	$31, mode_bitsize(%r8,%r8)
	jmp	.L4548
.L5166:
	movq	mode_mask_array(,%rax,8), %r11
	shrq	$1, %r11
	cmpq	%r11, 8(%rcx)
	jbe	.L1364
	jmp	.L1365
.L5165:
	movq	8(%rcx), %r12
	xorl	%r13d, %r13d
	movl	$17, %esi
.L1255:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L4219
.L1252:
	movslq	%ecx,%r9
	movzbq	mode_size(%r9), %rbx
	cmpq	%rsi, %rbx
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r9), %ecx
	testl	%ecx, %ecx
	jne	.L1252
.L4219:
	testl	%edi, %edi
	je	.L1245
	movslq	%edi,%rbx
	movq	%rbx, %rsi
	salq	$4, %rsi
	addq	optab_table+240(%rip), %rsi
	cmpl	$1317, 8(%rsi)
	je	.L1254
	call	get_mode_alignment
	movl	$128, %ecx
	cmpl	%eax, %ecx
	jb	.L1254
	movzbq	mode_size(%rbx), %r8
	movq	%r12, %rax
	xorl	%edx, %edx
	divq	%r8
	addq	%rax, %r13
	movq	%rdx, %r12
.L1254:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L1255
.L1245:
	testq	%r12, %r12
	jne	.L4757
	movl	optimize_size(%rip), %eax
	testl	%eax, %eax
	jne	.L1258
	movq	ix86_cost(%rip), %r10
	mov	40(%r10), %edx
	cmpq	%rdx, %r13
	jae	.L1242
.L1259:
	movq	-1952(%rbp), %r8
	movq	-1944(%rbp), %rdi
	movq	-1936(%rbp), %rsi
	movq	-1936(%rbp), %r9
	testb	$2, target_flags+3(%rip)
	movq	8(%r8), %r12
	setne	%r13b
	movq	8(%rdi), %r8
	movq	$0, -264(%rbp)
	movl	$0, -1972(%rbp)
	movq	%r8, -288(%rbp)
	movzbl	%r13b, %ecx
	movq	8(%rsi), %rbx
	movq	%r9, -320(%rbp)
	leal	5(,%rcx,4), %r13d
	xorl	%ecx, %ecx
	movq	%rbx, -1960(%rbp)
	movq	-1960(%rbp), %rax
	movzwl	(%rax), %edx
	leal	-96(%rdx), %r11d
	cmpw	$1, %r11w
	jbe	.L1264
	cmpw	$99, %dx
	je	.L1264
	cmpw	$98, %dx
	je	.L1264
.L1263:
	movq	-1960(%rbp), %r10
	movl	%ecx, -304(%rbp)
	xorl	%edx, %edx
	movzwl	(%r10), %eax
	cmpw	$96, %ax
	je	.L1266
	cmpw	$98, %ax
	je	.L1266
.L1265:
	movl	%edx, -256(%rbp)
	movq	-1960(%rbp), %rax
	xorl	%ecx, %ecx
	movq	-1944(%rbp), %rdx
	movq	%rax, -312(%rbp)
	movq	%rdx, -296(%rbp)
	movzwl	(%r8), %edx
	leal	-96(%rdx), %r11d
	cmpw	$1, %r11w
	jbe	.L1269
	cmpw	$99, %dx
	je	.L1269
	cmpw	$98, %dx
	je	.L1269
.L1268:
	movl	-256(%rbp), %eax
	movl	%ecx, -280(%rbp)
	movl	$0, -276(%rbp)
	movl	$0, -300(%rbp)
	testl	%eax, %eax
	je	.L1270
	movq	%r12, -264(%rbp)
.L1270:
	movl	-280(%rbp), %eax
	movq	%r12, -272(%rbp)
	testl	%eax, %eax
	je	.L1272
	movl	-304(%rbp), %eax
	testl	%eax, %eax
	jne	.L1271
.L1272:
	movq	$0, -1968(%rbp)
	movl	$17, %esi
.L1285:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L4222
.L1282:
	movslq	%ecx,%r9
	movzbq	mode_size(%r9), %rbx
	cmpq	%rsi, %rbx
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r9), %ecx
	testl	%ecx, %ecx
	jne	.L1282
.L4222:
	testl	%edi, %edi
	je	.L1275
	movslq	%edi,%rbx
	movq	%rbx, %rsi
	salq	$4, %rsi
	addq	optab_table+240(%rip), %rsi
	cmpl	$1317, 8(%rsi)
	je	.L1284
	movq	%r8, -2648(%rbp)
	call	get_mode_alignment
	movq	-2648(%rbp), %r8
	movl	$128, %ecx
	cmpl	%eax, %ecx
	jb	.L1284
	movzbq	mode_size(%rbx), %r10
	movq	%r12, %rax
	xorl	%edx, %edx
	divq	%r10
	addq	%rax, -1968(%rbp)
	movq	%rdx, %r12
.L1284:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L1285
.L1275:
	testq	%r12, %r12
	jne	.L4757
	cmpq	$2, -1968(%rbp)
	jbe	.L1271
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L4224
.L1293:
	movslq	%ecx,%r11
	movzbl	mode_size(%r11), %edx
	cmpl	%r13d, %edx
	cmovae	-1972(%rbp), %ecx
	movl	%ecx, -1972(%rbp)
	movzbl	mode_wider_mode(%r11), %ecx
	testl	%ecx, %ecx
	jne	.L1293
.L4224:
	movl	-280(%rbp), %eax
	testl	%eax, %eax
	jne	.L1299
	movzwl	(%r8), %edx
	leal	-67(%rdx), %r9d
	cmpw	$1, %r9w
	jbe	.L1297
	cmpw	$54, %dx
	je	.L1297
	cmpw	$55, %dx
	je	.L1297
	cmpw	$58, %dx
	je	.L1297
	cmpw	$134, %dx
	je	.L1297
	cmpw	$56, %dx
	je	.L1297
	cmpw	$140, %dx
	je	.L1297
.L1299:
	movl	-304(%rbp), %r8d
	testl	%r8d, %r8d
	jne	.L1271
	movq	-1960(%rbp), %rsi
	movzwl	(%rsi), %edx
	leal	-67(%rdx), %ebx
	cmpw	$1, %bx
	jbe	.L1301
	cmpw	$54, %dx
	je	.L1301
	cmpw	$55, %dx
	je	.L1301
	cmpw	$58, %dx
	je	.L1301
	cmpw	$134, %dx
	je	.L1301
	cmpw	$56, %dx
	je	.L1301
	cmpw	$140, %dx
	je	.L1301
.L1271:
	cmpl	$1, %r13d
	jbe	.L1304
.L1355:
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L4227
.L1311:
	movslq	%ecx,%r12
	movzbl	mode_size(%r12), %edi
	cmpl	%r13d, %edi
	cmovae	-1972(%rbp), %ecx
	movl	%ecx, -1972(%rbp)
	movzbl	mode_wider_mode(%r12), %ecx
	testl	%ecx, %ecx
	jne	.L1311
.L4227:
	movl	-1972(%rbp), %r13d
	testl	%r13d, %r13d
	je	.L1304
	movslq	-1972(%rbp),%rax
	movq	%rax, %rcx
	movq	%rax, -872(%rbp)
	salq	$4, %rcx
	addq	optab_table+240(%rip), %rcx
	movl	8(%rcx), %ebx
	cmpl	$1317, %ebx
	je	.L1313
	movl	-1972(%rbp), %edi
	call	get_mode_alignment
	movl	$128, %r10d
	cmpl	%eax, %r10d
	jb	.L1313
	movslq	%ebx,%r8
	movq	-872(%rbp), %r11
	leaq	-320(%rbp), %r12
	leaq	(%r8,%r8,4), %r9
	movq	$0, -1984(%rbp)
	movq	insn_data+16(,%r9,8), %rdx
	movq	%rdx, -880(%rbp)
	movzbq	mode_size(%r11), %rdx
	cmpq	%rdx, -272(%rbp)
	movq	%rdx, -1608(%rbp)
	jb	.L1313
	movl	-256(%rbp), %ecx
.L1353:
	testl	%ecx, %ecx
	je	.L1317
	subq	%rdx, 56(%r12)
.L1317:
	movq	(%r12), %rdi
	testq	%rdi, %rdi
	je	.L1318
	movl	16(%r12), %ebx
	testl	%ebx, %ebx
	je	.L1319
	movl	-1972(%rbp), %esi
	movq	8(%r12), %rdx
	movl	$1, %r8d
	movq	56(%r12), %rcx
	call	adjust_automodify_address_1
.L4544:
	movq	%rax, -1984(%rbp)
.L1318:
	movl	40(%r12), %esi
	testl	%esi, %esi
	je	.L1321
	movq	24(%r12), %rdi
	movl	-1972(%rbp), %esi
	movl	$1, %r8d
	movq	32(%r12), %rdx
	movq	56(%r12), %rcx
	call	adjust_automodify_address_1
.L4545:
	cmpq	$0, (%r12)
	movq	%rax, %r13
	jne	.L5170
	movl	target_flags(%rip), %eax
	testl	$33554432, %eax
	movl	%eax, %esi
	je	.L1327
	movq	-872(%rbp), %rcx
	movzbl	mode_size(%rcx), %edi
	leal	7(%rdi), %edx
	andl	$-8, %edx
.L1328:
	movq	cfun(%rip), %r9
	andl	$33554432, %esi
	movq	16(%r9), %r11
	leaq	8(%r11), %rdi
	movl	8(%r11), %ecx
	je	.L1329
	movq	-872(%rbp), %r8
	movzbl	mode_size(%r8), %eax
	addl	$7, %eax
	andl	$-8, %eax
.L4546:
	movq	-872(%rbp), %rsi
	leal	(%rax,%rcx), %r10d
	movl	%r10d, (%rdi)
	salq	$4, %rsi
	addq	optab_table+384(%rip), %rsi
	movl	8(%rsi), %eax
	cmpl	$1317, %eax
	je	.L1331
	movslq	%eax,%rbx
	leaq	(%rbx,%rbx,4), %rdi
	movq	insn_data+24(,%rdi,8), %rdx
	movq	(%rdx), %rax
	testq	%rax, %rax
	je	.L1332
	movq	%r13, %rdi
	movl	-1972(%rbp), %esi
	call	*%rax
	testl	%eax, %eax
	je	.L5171
.L1332:
	leaq	(%rbx,%rbx,4), %rcx
	movq	%r13, %rdi
	xorl	%eax, %eax
	call	*insn_data+16(,%rcx,8)
.L4547:
	movq	%rax, %rdi
	call	emit_insn
.L1351:
	movl	64(%r12), %eax
	testl	%eax, %eax
	movl	%eax, %ecx
	jne	.L1352
	movq	-1608(%rbp), %r13
	addq	%r13, 56(%r12)
.L1352:
	movq	48(%r12), %rdi
	movq	-1608(%rbp), %rdx
	subq	-1608(%rbp), %rdi
	cmpq	%rdx, %rdi
	movq	%rdi, 48(%r12)
	jae	.L1353
.L1313:
	movq	-872(%rbp), %r12
	movzbl	mode_size(%r12), %r13d
	cmpl	$1, %r13d
	ja	.L1355
.L1304:
	cmpq	$0, -272(%rbp)
	jmp	.L4769
.L5171:
	movl	-1972(%rbp), %edi
	movq	%r13, %rsi
	call	force_reg
	movq	%rax, %r13
	jmp	.L1332
.L1331:
	movq	-872(%rbp), %rax
	movzbl	mode_size(%rax), %r11d
	cmpl	%edx, %r11d
	je	.L5172
	mov	%edx, %esi
	xorl	%edi, %edi
	negq	%rsi
	call	gen_rtx_CONST_INT
	movq	global_rtl+16(%rip), %rdx
	movl	$75, %edi
	testb	$2, target_flags+3(%rip)
	movq	%rax, %rcx
	setne	%bl
	movzbl	%bl, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_ee
	movq	global_rtl+16(%rip), %rdx
	movl	$100, %edi
	testb	$2, target_flags+3(%rip)
	movq	%rax, %rcx
	setne	%r8b
	movzbl	%r8b, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_ee
.L1339:
	movl	-1972(%rbp), %edi
	movq	%rax, %rsi
	call	gen_rtx_MEM
	xorl	%esi, %esi
	testq	%rsi, %rsi
	movq	%rax, %rbx
	je	.L1348
	xorl	%esi, %esi
	movq	%rax, %rdi
	movl	$1, %edx
	call	set_mem_attributes
	movl	flag_optimize_sibling_calls(%rip), %r10d
	testl	%r10d, %r10d
	jne	.L5173
.L1348:
	movq	%rbx, %rdi
	movq	%r13, %rsi
	call	emit_move_insn
	jmp	.L1351
.L5173:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	call	set_mem_alias_set
	jmp	.L1348
.L5172:
	testb	$2, target_flags+3(%rip)
	movq	global_rtl+16(%rip), %rdx
	movl	$96, %edi
	setne	%r9b
	movzbl	%r9b, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_e
	jmp	.L1339
.L1329:
	movq	-872(%rbp), %rbx
	movzbl	mode_size(%rbx), %eax
	incl	%eax
	andl	$-2, %eax
	jmp	.L4546
.L1327:
	movq	-872(%rbp), %rax
	movzbl	mode_size(%rax), %r10d
	leal	1(%r10), %edx
	andl	$-2, %edx
	jmp	.L1328
.L5170:
	movq	%rax, %rsi
	movq	-1984(%rbp), %rdi
	xorl	%eax, %eax
	call	*-880(%rbp)
	jmp	.L4547
.L1321:
	movq	24(%r12), %rdi
	movl	-1972(%rbp), %esi
	movl	$1, %ecx
	movq	56(%r12), %rdx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L4545
.L1319:
	movl	-1972(%rbp), %esi
	movq	56(%r12), %rdx
	movl	$1, %ecx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L4544
.L1301:
	movq	-1960(%rbp), %rdi
	call	copy_addr_to_reg
	movq	%rax, -312(%rbp)
	jmp	.L1271
.L1297:
	movq	%r8, %rdi
	call	copy_addr_to_reg
	movq	%rax, -288(%rbp)
	jmp	.L1299
.L1269:
	movl	$1, %ecx
	jmp	.L1268
.L1266:
	movl	$1, %edx
	jmp	.L1265
.L1264:
	movl	$1, %ecx
	jmp	.L1263
.L1258:
	cmpq	$2, %r13
	ja	.L1242
	jmp	.L1259
.L1234:
	movq	-1952(%rbp), %rcx
	xorl	%esi, %esi
	movq	8(%rcx), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	-1952(%rbp), %r9
	movq	%rax, %r12
	movq	16(%r9), %rdi
	call	protect_from_queue
	movq	-1952(%rbp), %rcx
	movq	%rax, %rbx
	cmpq	8(%rcx), %r12
	je	.L5174
.L1236:
	movq	-1952(%rbp), %rdi
	call	copy_rtx
	movq	%rax, -1952(%rbp)
	movq	%r12, 8(%rax)
	movq	-1952(%rbp), %rax
	movq	%rbx, 16(%rax)
	jmp	.L1229
.L5174:
	cmpq	16(%rcx), %rax
	jne	.L1236
	jmp	.L1229
.L5164:
	cmpb	$51, 2(%rdx)
	je	.L1227
	movq	8(%rdx), %r12
	cmpw	$71, (%r12)
	je	.L5175
.L1227:
	cmpl	$66, %eax
	jne	.L1230
	movq	-1952(%rbp), %r13
	xorl	%esi, %esi
	movq	8(%r13), %rdi
	call	protect_from_queue
	movq	-1952(%rbp), %rsi
	movq	%rax, %rbx
	cmpq	8(%rsi), %rax
	je	.L1229
	movq	%rsi, %rdi
	call	copy_rtx
	movq	%rax, -1952(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L1229
.L5175:
	movq	8(%r12), %rsi
	movq	%rdx, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%r12)
	movq	%rax, %rbx
	je	.L1228
	movq	-1952(%rbp), %rsi
	movzbl	2(%rsi), %edi
	call	gen_reg_rtx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, -1952(%rbp)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L1229
.L1228:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L4543:
	movq	%rax, -1952(%rbp)
	jmp	.L1229
.L1226:
	movq	-1952(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.L5176
	movq	-1952(%rbp), %rbx
	movq	24(%rbx), %rax
	testq	%rax, %rax
	jne	.L4543
	movq	-1952(%rbp), %rdx
	movq	8(%rdx), %r8
	movzbl	2(%r8), %edi
	call	gen_reg_rtx
	movq	-1952(%rbp), %r12
	movq	%rax, %rdi
	movq	8(%r12), %rsi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %rdi
	movq	%rdi, -1952(%rbp)
	jmp	.L1229
.L5176:
	movq	8(%rax), %rdi
	call	copy_to_reg
	jmp	.L4543
.L1221:
	movq	-2208(%rbp), %rbx
	xorl	%esi, %esi
	movq	8(%rbx), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	%rax, %r12
	movq	-2208(%rbp), %rax
	movq	16(%rax), %rdi
	call	protect_from_queue
	movq	-2208(%rbp), %rsi
	movq	%rax, %rbx
	cmpq	8(%rsi), %r12
	je	.L5177
.L1223:
	movq	-2208(%rbp), %rdi
	call	copy_rtx
	movq	%rax, -1944(%rbp)
	movq	%r12, 8(%rax)
	movq	-1944(%rbp), %rdi
	movq	%rbx, 16(%rdi)
	jmp	.L1216
.L5177:
	cmpq	16(%rsi), %rax
	jne	.L1223
	jmp	.L1216
.L5163:
	cmpb	$51, 2(%rbx)
	je	.L1214
	movq	8(%rbx), %r12
	cmpw	$71, (%r12)
	je	.L5178
.L1214:
	cmpl	$66, %eax
	jne	.L1217
	movq	-2208(%rbp), %rcx
	xorl	%esi, %esi
	movq	8(%rcx), %rdi
	call	protect_from_queue
	movq	-2208(%rbp), %rdx
	movq	%rax, %rbx
	cmpq	8(%rdx), %rax
	je	.L1216
	movq	%rdx, %rdi
	call	copy_rtx
	movq	%rax, -1944(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L1216
.L5178:
	movq	8(%r12), %rsi
	movq	%rbx, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%r12)
	movq	%rax, %rbx
	je	.L1215
	movq	-2208(%rbp), %r9
	movzbl	2(%r9), %edi
	call	gen_reg_rtx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, -1944(%rbp)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L1216
.L1215:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L4542:
	movq	%rax, -1944(%rbp)
	jmp	.L1216
.L1213:
	movq	-2208(%rbp), %rdx
	cmpq	$0, 16(%rdx)
	je	.L5179
	movq	-2208(%rbp), %rdx
	movq	24(%rdx), %r8
	testq	%r8, %r8
	movq	%r8, -1944(%rbp)
	jne	.L1216
	movq	-2208(%rbp), %r12
	movq	8(%r12), %r11
	movzbl	2(%r11), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %r10
	movq	%r10, -1944(%rbp)
	jmp	.L1216
.L5179:
	movq	8(%rdx), %rdi
	call	copy_to_reg
	jmp	.L4542
.L1208:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r14), %rdi
	movq	%rax, %r12
	call	protect_from_queue
	cmpq	8(%r14), %r12
	movq	%rax, %rbx
	je	.L5180
.L1210:
	movq	%r14, %rdi
	call	copy_rtx
	movq	%rax, -1936(%rbp)
	movq	%r12, 8(%rax)
	movq	-1936(%rbp), %r12
	movq	%rbx, 16(%r12)
	jmp	.L1203
.L5180:
	cmpq	16(%r14), %rax
	jne	.L1210
	jmp	.L1203
.L5162:
	jne	.L1204
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%r14), %rax
	movq	%rax, %rbx
	je	.L1203
	movq	%r14, %rdi
	call	copy_rtx
	movq	%rax, -1936(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L1203
.L1200:
	testq	%rsi, %rsi
	je	.L5181
	movq	24(%r14), %r11
	testq	%r11, %r11
	movq	%r11, -1936(%rbp)
	jne	.L1203
	movq	8(%r14), %r13
	movzbl	2(%r13), %edi
	call	gen_reg_rtx
	movq	8(%r14), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r14), %rsi
	movq	%rsi, -1936(%rbp)
	jmp	.L1203
.L5181:
	movq	8(%r14), %rdi
	call	copy_to_reg
	movq	%rax, -1936(%rbp)
	jmp	.L1203
.L1193:
	testq	%rsi, %rsi
	movl	$8, -1928(%rbp)
	je	.L1189
	movl	32(%rsi), %r8d
	movl	%r8d, -1928(%rbp)
	jmp	.L1189
.L1192:
	cmpl	$7, %edx
	ja	.L1188
	jmp	.L1193
	.p2align 6,,7
.L1177:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r14), %rdi
	movq	%rax, %r12
	call	protect_from_queue
	cmpq	8(%r14), %r12
	movq	%rax, %rbx
	je	.L5182
.L1179:
	movq	%r14, %rdi
	call	copy_rtx
	movq	%rax, %r14
	movq	%r12, 8(%rax)
	movq	%rbx, 16(%rax)
	jmp	.L1172
.L5182:
	cmpq	16(%r14), %rax
	jne	.L1179
	jmp	.L1172
.L4988:
	jne	.L1173
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%r14), %rax
	movq	%rax, %rbx
	je	.L1172
	movq	%r14, %rdi
	call	copy_rtx
	movq	%rax, %r14
	movq	%rbx, 8(%rax)
	jmp	.L1172
	.p2align 6,,7
.L1169:
	cmpq	$0, 16(%r14)
	je	.L5183
	movq	24(%r14), %rax
	testq	%rax, %rax
	je	.L1181
.L4541:
	movq	%rax, %r14
	jmp	.L1172
.L1181:
	movq	8(%r14), %r11
	movzbl	2(%r11), %edi
	call	gen_reg_rtx
	movq	8(%r14), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r14), %r14
	jmp	.L1172
.L5183:
	movq	8(%r14), %rdi
	call	copy_to_reg
	jmp	.L4541
.L4987:
	movq	144(%r13), %rax
	testq	%rax, %rax
	je	.L1164
	cmpq	%rax, %r14
	jne	.L1164
	jmp	.L1162
.L4986:
	movq	%r14, %rdi
	call	side_effects_p
	testl	%eax, %eax
	je	.L1162
	jmp	.L1163
	.p2align 6,,7
.L1161:
	movq	-2208(%rbp), %rdx
	cmpb	$0, 2(%rdx)
	jne	.L1160
	cmpb	$0, 16(%r13)
	je	.L1160
	movq	8(%r13), %rdx
	movzbl	2(%r14), %edi
	movzbl	61(%rdx), %r10d
	shrb	$1, %r10b
	movzbl	%r10b, %esi
	cmpl	%esi, %edi
	je	.L1160
	movzbl	17(%rdx), %ecx
	movq	-2208(%rbp), %rdx
	shrb	$5, %cl
	andl	$1, %ecx
	call	convert_modes
	movq	%rax, -2208(%rbp)
	jmp	.L1160
.L4449:
	movq	-2208(%rbp), %rdi
	movzwl	(%rdi), %edx
	jmp	.L1083
.L4985:
	movzbl	%al, %edi
	call	gen_reg_rtx
	movq	%r13, %rdi
	movzbl	2(%r14), %edx
	movq	%rax, %rsi
	jmp	.L4540
.L1122:
	xorl	%ecx, %ecx
	testl	%ecx, %ecx
	je	.L4450
	movl	(%r14), %ecx
	movl	%ecx, %edx
	andl	$134283263, %edx
	cmpl	$66, %edx
	je	.L5184
.L1138:
	andl	$268500991, %ecx
	cmpl	$268435519, %ecx
	je	.L5185
	movzbl	2(%r14), %edx
	xorl	%ecx, %ecx
	movq	%r13, %rdi
	movq	%r14, %rsi
	call	expand_expr
	cmpw	$61, (%r14)
	movq	%rax, -2208(%rbp)
	je	.L5186
.L1158:
	movl	(%r14), %eax
	andl	$134283263, %eax
	cmpl	$134217794, %eax
	je	.L4453
	movq	-2208(%rbp), %rdi
	movq	%r14, %rsi
	call	rtx_equal_p
	testl	%eax, %eax
	jne	.L4454
	movq	-2208(%rbp), %rax
	movzwl	(%rax), %edx
	leal	-67(%rdx), %r11d
	cmpw	$1, %r11w
	jbe	.L1159
	cmpw	$54, %dx
	je	.L1159
	cmpw	$55, %dx
	je	.L1159
	cmpw	$58, %dx
	je	.L1159
	cmpw	$134, %dx
	je	.L1159
	cmpw	$56, %dx
	je	.L1159
	cmpw	$140, %dx
	je	.L1159
	xorl	%esi, %esi
	testl	%esi, %esi
	je	.L1083
.L1159:
	movl	$1, -1924(%rbp)
	jmp	.L1083
.L4453:
	movq	-2208(%rbp), %rcx
	movzwl	(%rcx), %edx
	jmp	.L1083
.L5186:
	cmpl	$52, 8(%r14)
	ja	.L1158
.L4452:
	movq	-2208(%rbp), %r9
	movzwl	(%r9), %edx
	jmp	.L1083
.L5185:
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	testl	%r8d, %r8d
	jne	.L1144
	movq	8(%r13), %rsi
	movzbl	16(%rsi), %eax
	cmpb	$6, %al
	je	.L1145
	cmpb	$10, %al
	je	.L1145
	cmpb	$11, %al
	je	.L1145
	cmpb	$12, %al
	je	.L1145
.L1144:
	movq	%rdx, %rsi
	xorl	%ecx, %ecx
	movq	%r13, %rdi
	xorl	%edx, %edx
	call	expand_expr
	movzwl	(%rax), %edx
	movq	%rax, %rbx
	cmpw	$66, %dx
	je	.L5187
.L1147:
	leal	-67(%rdx), %r12d
	cmpw	$1, %r12w
	jbe	.L1150
	cmpw	$54, %dx
	je	.L1150
	cmpw	$55, %dx
	je	.L1150
	cmpw	$58, %dx
	je	.L1150
	cmpw	$134, %dx
	je	.L1150
	cmpw	$56, %dx
	je	.L1150
	cmpw	$140, %dx
	je	.L1150
.L1149:
	movzbl	3(%r14), %edx
	movq	8(%r14), %rdi
	movq	%rbx, %rsi
	shrb	$2, %dl
	andl	$1, %edx
	call	convert_move
	xorl	%edx, %edx
	testl	%edx, %edx
	je	.L1082
	movzbl	2(%rbx), %edx
	movzbl	2(%r14), %eax
	cmpb	%al, %dl
	je	.L1082
	testb	%dl, %dl
	je	.L1152
	movq	%rbx, %rsi
	movzbl	%al, %edi
	call	gen_lowpart_SUBREG
	movzbl	3(%rax), %ebx
	orb	$16, %bl
	movb	%bl, 3(%rax)
	andb	$-5, %bl
	movzbl	3(%r14), %r8d
	andb	$4, %r8b
	orb	%r8b, %bl
	movb	%bl, 3(%rax)
	jmp	.L1082
.L1152:
	movq	8(%r14), %r10
	movzbl	3(%r14), %ecx
	movzbl	%al, %edi
	movq	%rbx, %rdx
	movzbl	2(%r10), %esi
	shrb	$2, %cl
	andl	$1, %ecx
	call	convert_modes
	jmp	.L1082
.L1150:
	cmpb	$0, 2(%rbx)
	jne	.L1149
	movq	8(%r13), %rcx
	movzbl	2(%r14), %edi
	movq	%rbx, %rdx
	movzbl	61(%rcx), %r9d
	movzbl	3(%r14), %ecx
	shrb	$1, %r9b
	shrb	$2, %cl
	movzbl	%r9b, %esi
	andl	$1, %ecx
	call	convert_modes
	movzbl	3(%r14), %ecx
	movzbl	2(%r14), %esi
	movq	8(%r14), %r13
	movq	%rax, %rdx
	movzbl	2(%r13), %edi
	shrb	$2, %cl
	andl	$1, %ecx
	call	convert_modes
	movq	%rax, %rbx
	jmp	.L1149
.L5187:
	xorl	%edi, %edi
	testl	%edi, %edi
	je	.L1147
	testb	$8, 3(%rax)
	jne	.L1148
	movq	8(%r14), %rdi
	movq	8(%rax), %rsi
	call	reg_mentioned_p
	testl	%eax, %eax
	je	.L4451
.L1148:
	movq	%rbx, %rdi
	call	copy_to_reg
	movq	%rax, %rbx
.L4451:
	movzwl	(%rbx), %edx
	jmp	.L1147
.L1145:
	cmpq	$0, 8(%rsi)
	jne	.L1144
	movzbl	3(%r14), %ecx
	movzbl	17(%rsi), %r10d
	movl	$1, %edi
	movl	%ecx, %r11d
	shrb	$5, %r10b
	shrb	$2, %r11b
	andl	$1, %r10d
	andl	%r11d, %edi
	cmpl	%edi, %r10d
	je	.L1146
	call	signed_or_unsigned_type
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	convert
	movzbl	3(%r14), %ecx
	movq	%rax, %r13
.L1146:
	movq	8(%r14), %rsi
	shrb	$2, %cl
	movzbl	2(%rsi), %edi
	movl	$1, %esi
	andl	%ecx, %esi
	call	type_for_mode
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	convert
	movq	8(%r14), %rdx
	movq	%rax, %r13
	jmp	.L1144
.L5184:
	movzbl	2(%r14), %eax
	cmpb	$51, %al
	je	.L1138
	movzbl	%al, %edx
	xorl	%ecx, %ecx
	movq	%r13, %rdi
	movq	%r14, %rsi
	call	expand_expr
	movq	%rax, -2208(%rbp)
	movq	%rax, %rdx
	movzbl	2(%rax), %eax
	cmpb	$51, %al
	je	.L1139
	testb	%al, %al
	je	.L1139
	cmpq	%r14, %rdx
	je	.L1141
	movq	%rdx, %rdi
	movq	%r14, %rsi
	call	rtx_equal_p
	testl	%eax, %eax
	jne	.L5188
.L1140:
	movq	-2208(%rbp), %rdi
	call	copy_to_reg
	movq	%rax, -2208(%rbp)
.L1139:
	movl	$1, -1924(%rbp)
	jmp	.L4452
.L5188:
	movq	-2208(%rbp), %rdi
	call	side_effects_p
	testl	%eax, %eax
	jne	.L1140
	movq	%r14, %rdi
	call	side_effects_p
	testl	%eax, %eax
	jne	.L1140
.L1141:
	movl	$1, %r12d
	jmp	.L1140
	.p2align 6,,7
.L4450:
	movl	(%r14), %ecx
	jmp	.L1138
.L1131:
	movl	$1, %ebx
	jmp	.L1125
.L1132:
	xorl	%ebx, %ebx
	jmp	.L1125
.L1129:
	movq	8(%r14), %rdi
	xorl	%ebx, %ebx
	call	queued_subexp_p
	testl	%eax, %eax
	jne	.L1131
	movq	16(%r14), %rdi
	call	queued_subexp_p
	testl	%eax, %eax
	je	.L1125
	jmp	.L1131
	.p2align 6,,7
.L4984:
	cmpb	$51, 2(%r14)
	jne	.L1084
	call	gen_label_rtx
	movq	%rax, -856(%rbp)
	call	gen_label_rtx
	movq	cfun(%rip), %rbx
	movq	%rax, -864(%rbp)
	movq	16(%rbx), %rsi
	movq	40(%rsi), %rbx
	testq	%rbx, %rbx
	je	.L4212
.L1090:
	movq	32(%rbx), %rdi
	cmpw	$24, (%rdi)
	je	.L5189
	call	emit_insn
	movq	%rax, 16(%rbx)
.L1089:
	movq	cfun(%rip), %rdx
	movq	40(%rbx), %r9
	movq	16(%rdx), %rcx
	testq	%r9, %r9
	movq	%r9, %rbx
	movq	%r9, 40(%rcx)
	jne	.L1090
.L4212:
	movzwl	(%r14), %eax
	cmpl	$71, %eax
	je	.L1092
	cmpl	$66, %eax
	je	.L5190
.L1096:
	cmpl	$75, %eax
	je	.L1100
	cmpl	$78, %eax
	je	.L1100
.L1095:
	call	do_pending_stack_adjust
	movq	cfun(%rip), %rbx
	movq	16(%rbx), %rsi
	incl	4(%rsi)
	movq	-856(%rbp), %rsi
	movq	32(%r13), %rdi
	call	jumpifnot
	call	start_cleanup_deferral
	movq	40(%r13), %rdi
	xorl	%edx, %edx
	movq	%r14, %rsi
	call	store_expr
	call	end_cleanup_deferral
	movq	cfun(%rip), %rdi
	movq	16(%rdi), %r10
	movq	40(%r10), %rbx
	testq	%rbx, %rbx
	je	.L4214
.L1110:
	movq	32(%rbx), %rdi
	cmpw	$24, (%rdi)
	je	.L5191
	call	emit_insn
	movq	%rax, 16(%rbx)
.L1109:
	movq	cfun(%rip), %rdx
	movq	40(%rbx), %r9
	movq	16(%rdx), %rcx
	testq	%r9, %r9
	movq	%r9, %rbx
	movq	%r9, 40(%rcx)
	jne	.L1110
.L4214:
	movq	-864(%rbp), %rdi
	call	gen_jump
	movq	%rax, %rdi
	call	emit_jump_insn
	call	emit_barrier
	movq	-856(%rbp), %rdi
	call	emit_label
	call	start_cleanup_deferral
	movq	48(%r13), %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	call	store_expr
	call	end_cleanup_deferral
	movq	cfun(%rip), %r14
	movq	16(%r14), %r13
	movq	40(%r13), %rbx
	testq	%rbx, %rbx
	je	.L4216
.L1117:
	movq	32(%rbx), %rdi
	cmpw	$24, (%rdi)
	je	.L5192
	call	emit_insn
	movq	%rax, 16(%rbx)
.L1116:
	movq	cfun(%rip), %r11
	movq	40(%rbx), %rdi
	movq	16(%r11), %rsi
	testq	%rdi, %rdi
	movq	%rdi, %rbx
	movq	%rdi, 40(%rsi)
	jne	.L1117
.L4216:
	movq	-864(%rbp), %rdi
	call	emit_label
	movq	cfun(%rip), %r12
	movq	16(%r12), %rbx
	decl	4(%rbx)
	jmp	.L1082
.L5192:
	movq	8(%rdi), %r10
	movq	8(%r10), %r8
	movq	%r8, 16(%rbx)
	call	emit_insn
	jmp	.L1116
.L5191:
	movq	8(%rdi), %r12
	movq	8(%r12), %r11
	movq	%r11, 16(%rbx)
	call	emit_insn
	jmp	.L1109
.L1100:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r14), %rdi
	movq	%rax, %r12
	call	protect_from_queue
	cmpq	8(%r14), %r12
	movq	%rax, %rbx
	je	.L5193
.L1102:
	movq	%r14, %rdi
	call	copy_rtx
	movq	%rax, %r14
	movq	%r12, 8(%rax)
	movq	%rbx, 16(%rax)
	jmp	.L1095
.L5193:
	cmpq	16(%r14), %rax
	jne	.L1102
	jmp	.L1095
	.p2align 6,,7
.L5190:
	jne	.L1096
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%r14), %rax
	movq	%rax, %rbx
	je	.L1095
	movq	%r14, %rdi
	call	copy_rtx
	movq	%rax, %r14
	movq	%rbx, 8(%rax)
	jmp	.L1095
	.p2align 6,,7
.L1092:
	cmpq	$0, 16(%r14)
	je	.L5194
	movq	24(%r14), %rax
	testq	%rax, %rax
	je	.L1104
.L4539:
	movq	%rax, %r14
	jmp	.L1095
.L1104:
	movq	8(%r14), %r8
	movzbl	2(%r8), %edi
	call	gen_reg_rtx
	movq	8(%r14), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r14), %r14
	jmp	.L1095
.L5194:
	movq	8(%r14), %rdi
	call	copy_to_reg
	jmp	.L4539
	.p2align 6,,7
.L5189:
	movq	8(%rdi), %r12
	movq	8(%r12), %r11
	movq	%r11, 16(%rbx)
	call	emit_insn
	jmp	.L1089
.L4983:
	movq	32(%r13), %rdi
	movq	const_int_rtx+512(%rip), %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	call	expand_expr
	movq	cfun(%rip), %rdx
	movq	16(%rdx), %r12
	movq	40(%r12), %rbx
	testq	%rbx, %rbx
	je	.L4210
.L1080:
	movq	32(%rbx), %rdi
	cmpw	$24, (%rdi)
	je	.L5195
	call	emit_insn
	movq	%rax, 16(%rbx)
.L1079:
	movq	cfun(%rip), %rdi
	movq	40(%rbx), %r8
	movq	16(%rdi), %r10
	testq	%r8, %r8
	movq	%r8, %rbx
	movq	%r8, 40(%r10)
	jne	.L1080
.L4210:
	movq	40(%r13), %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	call	store_expr
	jmp	.L1082
.L5195:
	movq	8(%rdi), %rcx
	movq	8(%rcx), %r9
	movq	%r9, 16(%rbx)
	call	emit_insn
	jmp	.L1079
.L4982:
	cmpq	$0, 48(%r15)
	jne	.L1066
	movq	const_int_rtx+512(%rip), %rsi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movq	%r15, %rdi
	call	expand_expr
	movq	cfun(%rip), %rbx
	movq	16(%rbx), %rcx
	movq	40(%rcx), %rbx
	testq	%rbx, %rbx
	je	.L1066
.L1072:
	movq	32(%rbx), %rdi
	cmpw	$24, (%rdi)
	je	.L5196
	call	emit_insn
	movq	%rax, 16(%rbx)
.L1071:
	movq	cfun(%rip), %r11
	movq	40(%rbx), %rdi
	movq	16(%r11), %rsi
	testq	%rdi, %rdi
	movq	%rdi, %rbx
	movq	%rdi, 40(%rsi)
	jne	.L1072
	jmp	.L1066
.L5196:
	movq	8(%rdi), %r10
	movq	8(%r10), %r8
	movq	%r8, 16(%rbx)
	call	emit_insn
	jmp	.L1071
.L4981:
	movq	-824(%rbp), %rdi
	xorl	%esi, %esi
	call	host_integerp
	testl	%eax, %eax
	je	.L1041
	xorl	%esi, %esi
	movq	%r13, %rdi
	call	tree_low_cst
	xorl	%esi, %esi
	movq	-824(%rbp), %rdi
	movq	%rax, %r12
	call	tree_low_cst
	movq	-1744(%rbp), %r9
	movq	%rax, %r14
	subq	%r12, %rax
	leaq	1(%rax), %rbx
	cmpw	$66, (%r9)
	je	.L5197
.L1042:
	subq	-1824(%rbp), %r14
	movq	%r12, %r13
	subq	-1824(%rbp), %r13
	cmpq	%r14, %r13
	movq	%r14, -1912(%rbp)
	jg	.L1005
	movq	-1904(%rbp), %rbx
	shrq	$3, %rbx
	movq	%rbx, -848(%rbp)
.L1064:
	movq	-784(%rbp), %r8
	xorl	%esi, %esi
	movq	%r13, %rbx
	movq	32(%r8), %rdi
	call	tree_low_cst
	movq	-1744(%rbp), %rsi
	imulq	%rax, %rbx
	movl	(%rsi), %eax
	andl	$16842751, %eax
	cmpl	$66, %eax
	je	.L5198
.L1047:
	movq	-784(%rbp), %rdi
	movq	-1744(%rbp), %r12
	call	get_alias_set
	cmpb	$46, 16(%r15)
	movl	%eax, %r14d
	je	.L5199
.L1048:
	movq	-720(%rbp), %r9
	movq	-1744(%rbp), %rdi
	movq	%rbx, %rdx
	movq	-1904(%rbp), %rsi
	movl	-812(%rbp), %ecx
	movq	%r15, %r8
	movl	$0, (%rsp)
	movl	%r14d, 16(%rsp)
	movq	%r9, 8(%rsp)
	xorl	%r9d, %r9d
	call	store_field
.L1045:
	incq	%r13
	cmpq	-1912(%rbp), %r13
	jle	.L1064
	jmp	.L1005
.L5199:
	testl	$7, %ebx 
	jne	.L1048
	testq	%rbx, %rbx
	je	.L4447
	movq	-1744(%rbp), %rdi
	cmpw	$66, (%rdi)
	jne	.L1048
.L4508:
	movq	-1744(%rbp), %rsi
	movzbl	2(%rsi), %eax
	cmpb	$51, %al
	je	.L1057
	movzbl	%al, %edi
	call	get_mode_alignment
	xorl	%esi, %esi
	mov	%eax, %r12d
	movq	%rbx, %rax
	cqto
	idivq	%r12
	testq	%rdx, %rdx
	je	.L1056
.L1057:
	movl	$51, %esi
.L1056:
	cmpq	$-1, %rbx
	leaq	7(%rbx), %rdx
	movq	-1744(%rbp), %rdi
	cmovle	%rdx, %rbx
	movl	$1, %ecx
	movl	$1, %r8d
	sarq	$3, %rbx
	movq	%rbx, %rdx
	call	adjust_address_1
	movq	%rax, %r12
.L1050:
	movl	(%r12), %eax
	andl	$16842751, %eax
	cmpl	$66, %eax
	je	.L5200
.L1059:
	movl	-1884(%rbp), %edx
	movq	-848(%rbp), %rcx
	movq	%r15, %rdi
	movq	%r12, %rsi
	call	store_constructor
	jmp	.L1045
.L5200:
	movq	16(%r12), %rax
	testq	%rax, %rax
	je	.L1059
	cmpq	$0, (%rax)
	je	.L1059
	movq	%r12, %rdi
	call	copy_rtx
	movslq	%r14d,%rsi
	movq	%rax, %rdi
	movq	%rax, %r12
	call	set_mem_alias_set
	jmp	.L1059
.L4447:
	movq	-1744(%rbp), %r10
	cmpw	$66, (%r10)
	jne	.L1050
	jmp	.L4508
.L5198:
	movq	-720(%rbp), %rax
	cmpb	$18, 16(%rax)
	jne	.L1047
	testb	$8, 62(%rax)
	je	.L1047
	movq	%rsi, %rdi
	call	copy_rtx
	movq	%rax, -1744(%rbp)
	orb	$1, 3(%rax)
	jmp	.L1047
.L5197:
	cmpq	$2, %rbx
	jle	.L1042
	movq	-784(%rbp), %rcx
	movl	$1, %esi
	movq	32(%rcx), %rdi
	call	host_integerp
	testl	%eax, %eax
	je	.L1041
	movq	-784(%rbp), %rax
	movl	$1, %esi
	movq	32(%rax), %rdi
	call	tree_low_cst
	imulq	%rbx, %rax
	cmpq	$320, %rax
	jg	.L1041
	jmp	.L1042
	.p2align 6,,7
.L4868:
	movq	32(%rcx), %rdi
	movl	$1, %esi
	call	host_integerp
	testl	%eax, %eax
	jne	.L5201
	movq	$-1, -1904(%rbp)
	jmp	.L1039
.L5201:
	movq	-784(%rbp), %r11
	movl	$1, %esi
	movq	32(%r11), %rdi
	call	tree_low_cst
	jmp	.L4538
.L1014:
	movq	%r15, %rdi
	call	integer_zerop
.L4537:
	movl	%eax, %ebx
	jmp	.L1013
.L1015:
	movq	32(%r15), %rdi
	xorl	%ebx, %ebx
	call	is_zeros_p
	testl	%eax, %eax
	je	.L1013
	movq	40(%r15), %rdi
	call	is_zeros_p
	testl	%eax, %eax
	je	.L1013
.L4206:
	movl	$1, %ebx
	jmp	.L1013
.L1017:
	leaq	32(%r15), %rsi
	movl	$dconst0, %edi
	movl	$24, %ecx
	cld
	repz
	cmpsb
.L4536:
	sete	%r8b
	movzbl	%r8b, %ebx
	jmp	.L1013
.L1035:
	cmpl	$46, %eax
	je	.L1025
	cmpl	$46, %eax
	jb	.L1033
	subl	$114, %eax
	cmpl	$3, %eax
	ja	.L1033
	movq	32(%r15), %rdi
	call	is_zeros_p
	jmp	.L4537
.L1025:
	movq	8(%r15), %rax
	testq	%rax, %rax
	je	.L1026
	cmpb	$19, 16(%rax)
	je	.L5202
.L1026:
	movq	40(%r15), %rbx
	testq	%rbx, %rbx
	je	.L4206
.L1032:
	movq	32(%rbx), %rdi
	call	is_zeros_p
	testl	%eax, %eax
	je	.L1033
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L1032
	jmp	.L4206
.L5202:
	cmpq	$0, 40(%r15)
	jmp	.L4536
	.p2align 6,,7
.L1018:
	movq	32(%r15), %rbx
	testq	%rbx, %rbx
	je	.L4206
.L1024:
	movq	32(%rbx), %rdi
	call	is_zeros_p
	testl	%eax, %eax
	je	.L1033
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L1024
	jmp	.L4206
.L4867:
	movl	$49, %edi
	xorl	%esi, %esi
	movq	%r13, %rdx
	call	gen_rtx_fmt_e
.L4534:
	movq	%rax, %rdi
	call	emit_insn
	jmp	.L865
.L4866:
	movl	$.LC7, %edi
	call	get_identifier
	movq	global_trees+216(%rip), %rdi
	movq	%rax, fn.0(%rip)
	call	build_pointer_type
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	build_function_type
	movq	fn.0(%rip), %rsi
	movl	$30, %edi
	movq	%rax, %rdx
	call	build_decl
	movl	$1, %esi
	movl	$fn.0, %edi
	movq	%rax, fn.0(%rip)
	call	ggc_add_tree_root
	movq	fn.0(%rip), %rdi
	xorl	%esi, %esi
	orb	$1, 49(%rdi)
	movq	fn.0(%rip), %r8
	orb	$8, 18(%r8)
	movq	fn.0(%rip), %rcx
	orb	$64, 50(%rcx)
	movq	fn.0(%rip), %r12
	orb	$2, 18(%r12)
	movq	fn.0(%rip), %rdi
	call	make_decl_rtl
	movq	fn.0(%rip), %rdi
	call	assemble_external
	jmp	.L999
.L4865:
	movq	%r15, %rdi
	movl	%ebx, %esi
	call	*%rax
	testl	%eax, %eax
	jne	.L990
	movq	%r15, %rsi
	movl	%ebx, %edi
	call	copy_to_mode_reg
	movq	%rax, %r15
	jmp	.L990
	.p2align 6,,7
.L986:
	cmpw	$31, mode_bitsize(%r12,%r12)
	jmp	.L4533
.L4864:
	movq	mode_mask_array(,%r12,8), %r14
	shrq	$1, %r14
	cmpq	%r14, 8(%rcx)
	jbe	.L984
	jmp	.L985
.L4863:
	movq	8(%rax), %r12
	xorl	%r13d, %r13d
	movl	$17, %esi
	movl	$128, %r14d
.L913:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L4190
.L910:
	movslq	%ecx,%r10
	movzbq	mode_size(%r10), %rdx
	cmpq	%rsi, %rdx
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r10), %ecx
	testl	%ecx, %ecx
	jne	.L910
.L4190:
	testl	%edi, %edi
	je	.L903
	movslq	%edi,%rbx
	movq	%rbx, %rsi
	salq	$4, %rsi
	addq	optab_table+240(%rip), %rsi
	cmpl	$1317, 8(%rsi)
	je	.L912
	call	get_mode_alignment
	cmpl	%eax, %r14d
	jb	.L912
	movzbq	mode_size(%rbx), %r8
	movq	%r12, %rax
	xorl	%edx, %edx
	divq	%r8
	addq	%rax, %r13
	movq	%rdx, %r12
.L912:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L913
.L903:
	testq	%r12, %r12
	jne	.L4757
	movl	optimize_size(%rip), %r12d
	testl	%r12d, %r12d
	jne	.L916
	movq	ix86_cost(%rip), %r14
	mov	40(%r14), %r9d
	cmpq	%r9, %r13
	jae	.L900
.L917:
	movq	-1872(%rbp), %rdi
	movq	-1864(%rbp), %rax
	testb	$2, target_flags+3(%rip)
	setne	%dl
	xorl	%esi, %esi
	xorl	%r14d, %r14d
	movq	8(%rdi), %r13
	movq	%rax, -240(%rbp)
	movq	$0, -192(%rbp)
	movq	$clear_by_pieces_1, -200(%rbp)
	movq	%r13, -216(%rbp)
	movzbl	%dl, %ebx 
	movq	8(%rax), %r8
	movq	$0, -208(%rbp)
	leaq	-240(%rbp), %r13
	leaq	5(,%rbx,4), %r12
	leaq	16(%r13), %rcx
	movq	%r8, -232(%rbp)
	movzwl	(%r8), %edx
	leal	-96(%rdx), %r15d
	cmpw	$1, %r15w
	jbe	.L921
	cmpw	$99, %dx
	je	.L921
	cmpw	$98, %dx
	je	.L921
.L920:
	movl	%esi, (%rcx)
	movl	$0, 20(%r13)
	leaq	56(%r13), %rdx
	movzwl	(%r8), %eax
	xorl	%ecx, %ecx
	cmpw	$96, %ax
	je	.L923
	cmpw	$98, %ax
	je	.L923
.L922:
	movl	%ecx, (%rdx)
	movl	56(%r13), %esi
	testl	%esi, %esi
	je	.L924
	movq	24(%r13), %r10
	movq	%r10, 32(%r13)
.L924:
	movl	16(%r13), %r11d
	testl	%r11d, %r11d
	jne	.L925
	movq	24(%r13), %r15
	movq	$0, -1880(%rbp)
	movl	$17, %esi
.L938:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L4193
.L935:
	movslq	%ecx,%r9
	movzbq	mode_size(%r9), %rbx
	cmpq	%rsi, %rbx
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r9), %ecx
	testl	%ecx, %ecx
	jne	.L935
.L4193:
	testl	%edi, %edi
	je	.L928
	movslq	%edi,%rbx
	movq	%rbx, %rcx
	salq	$4, %rcx
	addq	optab_table+240(%rip), %rcx
	cmpl	$1317, 8(%rcx)
	je	.L937
	movq	%r8, -2648(%rbp)
	call	get_mode_alignment
	movl	$128, %r8d
	cmpl	%eax, %r8d
	movq	-2648(%rbp), %r8
	jb	.L937
	movzbq	mode_size(%rbx), %rsi
	movq	%r15, %rax
	xorl	%edx, %edx
	divq	%rsi
	addq	%rax, -1880(%rbp)
	movq	%rdx, %r15
.L937:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L938
.L928:
	testq	%r15, %r15
	jne	.L4757
	cmpq	$2, -1880(%rbp)
	jbe	.L925
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L4195
.L946:
	movslq	%ecx,%r10
	movzbq	mode_size(%r10), %rdx
	cmpq	%r12, %rdx
	cmovb	%ecx, %r14d
	movzbl	mode_wider_mode(%r10), %ecx
	testl	%ecx, %ecx
	jne	.L946
.L4195:
	movl	16(%r13), %eax
	testl	%eax, %eax
	jne	.L925
	movzwl	(%r8), %edx
	leal	-67(%rdx), %r11d
	cmpw	$1, %r11w
	jbe	.L950
	cmpw	$54, %dx
	je	.L950
	cmpw	$55, %dx
	je	.L950
	cmpw	$58, %dx
	je	.L950
	cmpw	$134, %dx
	je	.L950
	cmpw	$56, %dx
	je	.L950
	cmpw	$140, %dx
	je	.L950
.L925:
	cmpq	$1, %r12
	jbe	.L953
.L974:
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L4198
.L960:
	movslq	%ecx,%r9
	movzbq	mode_size(%r9), %rbx
	cmpq	%r12, %rbx
	cmovb	%ecx, %r14d
	movzbl	mode_wider_mode(%r9), %ecx
	testl	%ecx, %ecx
	jne	.L960
.L4198:
	testl	%r14d, %r14d
	je	.L953
	movslq	%r14d,%r15
	movq	%r15, %r12
	salq	$4, %r12
	addq	optab_table+240(%rip), %r12
	movl	8(%r12), %ebx
	cmpl	$1317, %ebx
	je	.L962
	movl	%r14d, %edi
	call	get_mode_alignment
	movl	$128, %ecx
	cmpl	%eax, %ecx
	jb	.L962
	movzbq	mode_size(%r15), %rdx
	movslq	%ebx,%rsi
	leaq	(%rsi,%rsi,4), %rdi
	cmpq	%rdx, 24(%r13)
	movq	insn_data+16(,%rdi,8), %r8
	movq	%rdx, %r12
	movq	%r8, -792(%rbp)
	jb	.L962
	movl	56(%r13), %ecx
.L972:
	testl	%ecx, %ecx
	je	.L966
	subq	%rdx, 32(%r13)
.L966:
	movl	16(%r13), %r10d
	testl	%r10d, %r10d
	je	.L967
	movq	(%r13), %rdi
	movq	8(%r13), %rdx
	movl	%r14d, %esi
	movq	32(%r13), %rcx
	movl	$1, %r8d
	call	adjust_automodify_address_1
.L4532:
	movl	%r14d, %edx
	movq	%rax, %rbx
	movq	48(%r13), %rdi
	movq	32(%r13), %rsi
	call	*40(%r13)
	movq	%rbx, %rdi
	movq	%rax, %rsi
	xorl	%eax, %eax
	call	*-792(%rbp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%r13), %eax
	testl	%eax, %eax
	movl	%eax, %ecx
	jne	.L971
	addq	%r12, 32(%r13)
.L971:
	movq	24(%r13), %r11
	movq	%r12, %rdx
	subq	%r12, %r11
	cmpq	%r12, %r11
	movq	%r11, 24(%r13)
	jae	.L972
.L962:
	movzbq	mode_size(%r15), %r12
	cmpq	$1, %r12
	ja	.L974
.L953:
	cmpq	$0, 24(%r13)
	je	.L865
	jmp	.L4756
	.p2align 6,,7
.L967:
	movq	(%r13), %rdi
	movq	32(%r13), %rdx
	movl	%r14d, %esi
	movl	$1, %ecx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L4532
.L950:
	movq	%r8, %rdi
	call	copy_addr_to_reg
	movq	%rax, 8(%r13)
	jmp	.L925
.L923:
	movl	$1, %ecx
	jmp	.L922
.L921:
	movl	$1, %esi
	jmp	.L920
.L916:
	cmpq	$2, %r13
	ja	.L900
	jmp	.L917
.L895:
	movq	-1872(%rbp), %r12
	xorl	%esi, %esi
	movq	8(%r12), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	-1872(%rbp), %r8
	movq	%rax, %r12
	movq	16(%r8), %rdi
	call	protect_from_queue
	movq	-1872(%rbp), %rcx
	movq	%rax, %rbx
	cmpq	8(%rcx), %r12
	je	.L5203
.L897:
	movq	-1872(%rbp), %rdi
	call	copy_rtx
	movq	%rax, -1872(%rbp)
	movq	%r12, 8(%rax)
	movq	-1872(%rbp), %rax
	movq	%rbx, 16(%rax)
	jmp	.L890
.L5203:
	cmpq	16(%rcx), %rax
	jne	.L897
	jmp	.L890
.L4862:
	cmpb	$51, 2(%rdx)
	je	.L888
	movq	8(%rdx), %r12
	cmpw	$71, (%r12)
	je	.L5204
.L888:
	cmpl	$66, %eax
	jne	.L891
	movq	-1872(%rbp), %rcx
	xorl	%esi, %esi
	movq	8(%rcx), %rdi
	call	protect_from_queue
	movq	-1872(%rbp), %rsi
	movq	%rax, %rbx
	cmpq	8(%rsi), %rax
	je	.L890
	movq	%rsi, %rdi
	call	copy_rtx
	movq	%rax, -1872(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L890
.L5204:
	movq	8(%r12), %rsi
	movq	%rdx, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%r12)
	movq	%rax, %rbx
	je	.L889
	movq	-1872(%rbp), %r11
	movzbl	2(%r11), %edi
	call	gen_reg_rtx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, -1872(%rbp)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L890
.L889:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L4531:
	movq	%rax, -1872(%rbp)
	jmp	.L890
.L887:
	movq	-1872(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.L5205
	movq	-1872(%rbp), %r9
	movq	24(%r9), %rax
	testq	%rax, %rax
	jne	.L4531
	movq	-1872(%rbp), %rdi
	movq	8(%rdi), %rbx
	movzbl	2(%rbx), %edi
	call	gen_reg_rtx
	movq	-1872(%rbp), %r13
	movq	%rax, %rdi
	movq	8(%r13), %rsi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %r14
	movq	%r14, -1872(%rbp)
	jmp	.L890
.L5205:
	movq	8(%rax), %rdi
	call	copy_to_reg
	jmp	.L4531
.L882:
	movq	-1744(%rbp), %r14
	xorl	%esi, %esi
	movq	8(%r14), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r14), %rdi
	movq	%rax, %r12
	call	protect_from_queue
	movq	-1744(%rbp), %rsi
	movq	%rax, %rbx
	cmpq	8(%rsi), %r12
	je	.L5206
.L884:
	movq	-1744(%rbp), %rdi
	call	copy_rtx
	movq	%rax, -1864(%rbp)
	movq	%r12, 8(%rax)
	movq	-1864(%rbp), %rdi
	movq	%rbx, 16(%rdi)
	jmp	.L877
.L5206:
	cmpq	16(%rsi), %rax
	jne	.L884
	jmp	.L877
.L4861:
	jne	.L878
	movq	8(%rdx), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	-1744(%rbp), %rcx
	movq	%rax, %rbx
	cmpq	8(%rcx), %rax
	je	.L877
	movq	%rcx, %rdi
	call	copy_rtx
	movq	%rax, -1864(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L877
	.p2align 6,,7
.L874:
	movq	-1744(%rbp), %rdx
	cmpq	$0, 16(%rdx)
	je	.L5207
	movq	-1744(%rbp), %rdx
	movq	24(%rdx), %rbx
	testq	%rbx, %rbx
	movq	%rbx, -1864(%rbp)
	jne	.L877
	movq	-1744(%rbp), %r13
	movq	8(%r13), %rsi
	movzbl	2(%rsi), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %r10
	movq	%r10, -1864(%rbp)
	jmp	.L877
.L5207:
	movq	8(%rdx), %rdi
	call	copy_to_reg
	movq	%rax, -1864(%rbp)
	jmp	.L877
.L4860:
	movzbl	%al, %edx 
	movzbl	mode_size(%rdx), %r9d
	cmpl	8(%rsi), %r9d
	jne	.L872
	movq	%rbx, %rdi
	movq	const_tiny_rtx(,%rdx,8), %rsi
.L4535:
	call	emit_move_insn
	jmp	.L865
.L4859:
	movq	16(%rax), %rax
	movl	$8, %r15d
	testq	%rax, %rax
	je	.L869
	movl	32(%rax), %r15d
	jmp	.L869
.L4858:
	movzbq	2(%rbx), %rcx
	movq	%rbx, %rdi
	movq	const_tiny_rtx(,%rcx,8), %rsi
	jmp	.L4535
.L864:
	movq	-1744(%rbp), %r13
	cmpw	$61, (%r13)
	jne	.L1001
	movq	-1744(%rbp), %rdx
	movl	$49, %edi
	xorl	%esi, %esi
	call	gen_rtx_fmt_e
	movq	%rax, %rdi
	call	emit_insn
	jmp	.L1001
.L815:
	movl	-1852(%rbp), %edi
	testl	%edi, %edi
	jne	.L4445
	movq	-1824(%rbp), %r10
	subq	%r10, -1816(%rbp)
	movq	-1816(%rbp), %rdx
	incq	%rdx
	cmpq	%rdx, -1848(%rbp)
	jl	.L863
	movq	-1840(%rbp), %r15
	movq	-1848(%rbp), %rsi
	salq	$2, %r15
	leaq	(%rsi,%rsi,2), %r14
	cmpq	%r14, %r15
	jl	.L813
.L863:
	movl	$1, -1852(%rbp)
.L813:
	movl	-1852(%rbp), %r13d
	testl	%r13d, %r13d
	je	.L864
	jmp	.L4445
.L839:
	movq	%r13, %rdi
	call	integer_zerop
.L4529:
	movl	%eax, %r12d
	jmp	.L838
.L840:
	movq	32(%r13), %rdi
	xorl	%r12d, %r12d
	call	is_zeros_p
	testl	%eax, %eax
	je	.L838
	movq	40(%r13), %rdi
	call	is_zeros_p
	testl	%eax, %eax
	je	.L838
.L4187:
	movl	$1, %r12d
	jmp	.L838
.L842:
	leaq	32(%r13), %rsi
	movl	$dconst0, %edi
	movl	$24, %ecx
	cld
	repz
	cmpsb
.L4528:
	sete	%r8b
	movzbl	%r8b, %r12d
	jmp	.L838
.L860:
	cmpl	$46, %eax
	je	.L850
	cmpl	$46, %eax
	jb	.L858
	subl	$114, %eax
	cmpl	$3, %eax
	ja	.L858
	movq	32(%r13), %rdi
	call	is_zeros_p
	jmp	.L4529
.L850:
	movq	8(%r13), %rax
	testq	%rax, %rax
	je	.L851
	cmpb	$19, 16(%rax)
	je	.L5208
.L851:
	movq	40(%r13), %r12
	testq	%r12, %r12
	je	.L4187
.L857:
	movq	32(%r12), %rdi
	call	is_zeros_p
	testl	%eax, %eax
	je	.L858
	movq	(%r12), %r12
	testq	%r12, %r12
	jne	.L857
	jmp	.L4187
.L5208:
	cmpq	$0, 40(%r13)
	jmp	.L4528
	.p2align 6,,7
.L843:
	movq	32(%r13), %r12
	testq	%r12, %r12
	je	.L4187
.L849:
	movq	32(%r12), %rdi
	call	is_zeros_p
	testl	%eax, %eax
	je	.L858
	movq	(%r12), %r12
	testq	%r12, %r12
	jne	.L849
	jmp	.L4187
.L4857:
	movq	8(%r13), %rax
	xorl	%r15d, %r15d
	xorl	%r14d, %r14d
	movq	40(%r13), %r12
	testq	%rax, %rax
	je	.L825
	cmpb	$19, 16(%rax)
	je	.L5209
.L825:
	testq	%r12, %r12
	jne	.L832
.L4183:
	leal	0(,%r14,4), %ecx
	leal	(%r15,%r15,2), %r11d
	cmpl	%r11d, %ecx
	setge	%al
.L4530:
	movzbl	%al, %edx
	jmp	.L826
.L832:
	movq	32(%r12), %rdi
	leal	1(%r14), %r13d
	call	mostly_zeros_p
	movq	(%r12), %r12
	testl	%eax, %eax
	cmovne	%r13d, %r14d
	incl	%r15d
	testq	%r12, %r12
	jne	.L832
	jmp	.L4183
.L5209:
	testq	%r12, %r12
	sete	%al
	jmp	.L4530
.L4856:
	movq	32(%rax), %r12
	movl	$1, %esi
	movq	40(%rax), %rbx
	movq	%r12, %rdi
	call	host_integerp
	testl	%eax, %eax
	je	.L821
	movq	%rbx, %rdi
	movl	$1, %esi
	call	host_integerp
	testl	%eax, %eax
	je	.L821
	movq	%rbx, %rdi
	movl	$1, %esi
	call	tree_low_cst
	movl	$1, %esi
	movq	%r12, %rdi
	movq	%rax, %rbx
	call	tree_low_cst
	subq	%rax, %rbx
	incq	%rbx
	jmp	.L822
.L821:
	movl	$1, -1852(%rbp)
	jmp	.L815
	.p2align 6,,7
.L4855:
	movq	-704(%rbp), %r9
	testb	$4, 18(%r9)
	jne	.L863
	jmp	.L811
.L4854:
	movq	-1800(%rbp), %r8
	xorl	%esi, %esi
	movq	104(%r8), %rdi
	call	tree_low_cst
	xorl	%esi, %esi
	movq	%rax, -1824(%rbp)
	movq	-1800(%rbp), %rax
	movq	112(%rax), %rdi
	call	tree_low_cst
	movq	%rax, -1816(%rbp)
	jmp	.L810
.L4853:
	xorl	%esi, %esi
	call	host_integerp
	testl	%eax, %eax
	je	.L809
	movq	-1800(%rbp), %rcx
	xorl	%esi, %esi
	movq	112(%rcx), %rdi
	call	host_integerp
	testl	%eax, %eax
	movl	$1, %eax
	cmove	-1804(%rbp), %eax
	movl	%eax, -1804(%rbp)
	jmp	.L809
.L4852:
	movq	24(%rcx), %r11
	movq	8(%r11), %rsi
	movq	24(%rsi), %r13
	movq	%r13, -1800(%rbp)
	jmp	.L808
.LFE6:
.Lfe6:
	.size	store_constructor,.Lfe6-store_constructor
	.section	.rodata.str1.1
.LC14:
	.string	"store_field"
	.text
	.align 2
	.p2align 4,,15
	.type	store_field,@function
store_field:
.LFB7:
	pushq	%rbp
.LCFI32:
	movq	%rsp, %rbp
.LCFI33:
	pushq	%r15
.LCFI34:
	movq	%r8, %r15
	pushq	%r14
.LCFI35:
	xorl	%r14d, %r14d
	pushq	%r13
.LCFI36:
	movq	%rdx, %r13
	pushq	%r12
.LCFI37:
	movq	%rsi, %r12
	pushq	%rbx
.LCFI38:
	movl	%ecx, %ebx
	subq	$1464, %rsp
.LCFI39:
	movl	%r9d, -356(%rbp)
	movq	%rdi, -1128(%rbp)
	movzbl	16(%r8), %edx
	testb	%dl, %dl
	je	.L6341
	testq	%rsi, %rsi
	je	.L7600
	cmpq	$63, %rsi
	ja	.L5213
	movl	$1, %esi
	movl	%r12d, %ecx
	salq	%cl, %rsi
	leaq	-1(%rsi), %r14
.L5213:
	cmpl	$51, %ebx
	je	.L7601
	movq	-1128(%rbp), %rsi
	movzwl	(%rsi), %eax
.L5215:
	cmpw	$65, %ax
	je	.L7602
	testl	%ebx, %ebx
	je	.L6130
	cmpl	$51, %ebx
	je	.L6131
	movslq	%ebx,%rdx
	cmpb	$0, direct_store(%rdx)
	jne	.L6131
	movl	mode_class(,%rdx,4), %edx
	cmpl	$5, %edx
	je	.L6131
	cmpl	$6, %edx
	je	.L6131
.L6130:
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%r15, %rdi
	call	expand_expr
	testl	%ebx, %ebx
	movq	%rax, -1432(%rbp)
	je	.L6133
	cmpl	$51, %ebx
	je	.L6133
	movq	8(%r15), %r9
	movzbl	61(%r9), %edi
	shrb	$1, %dil
	movzbl	%dil, %esi
	cmpl	%esi, %ebx
	je	.L6133
	movq	-1432(%rbp), %rdx
	movl	%ebx, %edi
	movl	$1, %ecx
	call	convert_modes
	movq	%rax, -1432(%rbp)
.L6133:
	movq	-1128(%rbp), %rdx
	cmpb	$51, 2(%rdx)
	je	.L7603
.L6134:
	movq	24(%rbp), %rdi
	call	int_size_in_bytes
	movq	-1432(%rbp), %r8
	movl	%ebx, %ecx
	movq	-1128(%rbp), %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	movq	%rax, %r9
	call	store_bit_field
	movl	-356(%rbp), %eax
	testl	%eax, %eax
	je	.L6341
	testq	%r14, %r14
	je	.L6342
	movq	-1128(%rbp), %r11
	movl	(%r11), %eax
	andl	$134283263, %eax
	cmpl	$134217794, %eax
	je	.L6342
	movq	-1432(%rbp), %rbx
	movl	16(%rbp), %eax
	movzbl	2(%rbx), %r13d
	testl	%r13d, %r13d
	cmove	-356(%rbp), %r13d
	testl	%eax, %eax
	je	.L6344
	movq	%r14, %rdi
	movl	%r13d, %esi
	call	trunc_int_for_mode
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	gen_rtx_CONST_INT
	xorl	%ecx, %ecx
	movq	%rbx, %rsi
	movl	%r13d, %edi
	movq	%rax, %rdx
	call	expand_and
	.p2align 4,,7
.L7524:
	movq	%rax, %r14
.L5210:
	leaq	-40(%rbp), %rsp
	movq	%r14, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
.L6344:
	movslq	%r13d,%r8
	xorl	%esi, %esi
	movzwq	mode_bitsize(%r8,%r8), %rdi
	subq	%r12, %rdi
	call	build_int_2_wide
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	-1432(%rbp), %rdx
	movl	%r13d, %esi
	movl	$82, %edi
	movq	%rax, %rcx
	movq	%rax, %r15
	call	expand_shift
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movl	$83, %edi
	movl	%r13d, %esi
	movq	%rax, %rdx
	movq	%r15, %rcx
	call	expand_shift
	jmp	.L7524
.L6342:
	movq	24(%rbp), %rdi
	call	int_size_in_bytes
	movl	-356(%rbp), %r9d
	xorl	%r8d, %r8d
	movq	-1128(%rbp), %rdi
	movl	16(%rbp), %ecx
	movq	%r12, %rsi
	movq	%r13, %rdx
	movl	$0, (%rsp)
	movq	%rax, 8(%rsp)
	call	extract_bit_field
	jmp	.L7524
	.p2align 6,,7
.L6341:
	movq	const_int_rtx+512(%rip), %r14
	jmp	.L5210
.L7603:
	movq	-1432(%rbp), %rcx
	cmpb	$51, 2(%rcx)
	jne	.L6134
	cmpw	$66, (%rdx)
	jne	.L6136
	cmpw	$66, (%rcx)
	jne	.L6136
	testl	$7, %r13d 
	jne	.L6136
	cmpq	$-1, %r13
	leaq	7(%r13), %r8
	movq	-1128(%rbp), %rdi
	cmovle	%r8, %r13
	movl	$1, %ecx
	movl	$1, %r8d
	sarq	$3, %r13
	xorl	%esi, %esi
	movq	%r13, %rdx
	call	adjust_address_1
	movq	%r12, %rsi
	leaq	14(%r12), %r10
	addq	$7, %rsi
	movq	%rax, -1416(%rbp)
	movq	%rax, -1424(%rbp)
	cmovs	%r10, %rsi
	xorl	%edi, %edi
	sarq	$3, %rsi
	call	gen_rtx_CONST_INT
	movl	$8, %ecx
	movq	-1416(%rbp), %r13
	movq	%rax, -1440(%rbp)
	movq	16(%r13), %rdx
	testq	%rdx, %rdx
	je	.L6144
	movl	32(%rdx), %ecx
.L6144:
	movq	-1432(%rbp), %r15
	movq	16(%r15), %rax
	testq	%rax, %rax
	je	.L6145
	cmpl	32(%rax), %ecx
	jb	.L6146
.L6141:
	testq	%rax, %rax
	movl	$8, %r15d
	je	.L6142
	movl	32(%rax), %r15d
.L6142:
	movq	-1416(%rbp), %rbx
	cmpb	$51, 2(%rbx)
	jne	.L7598
	movq	-1432(%rbp), %rsi
	cmpb	$51, 2(%rsi)
	jne	.L7597
	movq	-1416(%rbp), %rbx
	movzwl	(%rbx), %eax
	cmpl	$71, %eax
	je	.L6153
	cmpl	$66, %eax
	je	.L7604
.L6157:
	cmpl	$75, %eax
	je	.L6161
	cmpl	$78, %eax
	je	.L6161
.L6156:
	movq	-1432(%rbp), %rdx
	movzwl	(%rdx), %eax
	cmpl	$71, %eax
	je	.L6166
	cmpl	$66, %eax
	je	.L7605
.L6170:
	cmpl	$75, %eax
	je	.L6174
	cmpl	$78, %eax
	je	.L6174
.L6169:
	movq	-1440(%rbp), %rdx
	movzwl	(%rdx), %eax
	cmpl	$71, %eax
	je	.L6179
	cmpl	$66, %eax
	je	.L7606
.L6183:
	cmpl	$75, %eax
	je	.L6187
	cmpl	$78, %eax
	je	.L6187
.L6182:
	movq	-1424(%rbp), %r13
	cmpw	$66, (%r13)
	jne	.L7596
	movq	-1432(%rbp), %r11
	cmpw	$66, (%r11)
	jne	.L7595
	cmpq	$0, -1440(%rbp)
	je	.L7594
	movq	-1440(%rbp), %rcx
	cmpw	$54, (%rcx)
	je	.L7607
.L6195:
	shrl	$3, %r15d
	xorl	%edi, %edi
	mov	%r15d, %esi
	call	gen_rtx_CONST_INT
	movl	class_narrowest_mode+4(%rip), %ebx
	movl	$1, volatile_ok(%rip)
	movq	%rax, -568(%rbp)
	testl	%ebx, %ebx
	je	.L7345
	.p2align 4,,7
.L6328:
	movslq	%ebx,%r12
	movl	movstr_optab(,%r12,4), %edx
	cmpl	$1317, %edx
	je	.L6314
	movq	-1440(%rbp), %rsi
	cmpw	$54, (%rsi)
	je	.L7608
.L6318:
	testb	$2, target_flags+3(%rip)
	je	.L6319
	cmpw	$63, mode_bitsize(%r12,%r12)
.L7487:
	jbe	.L6314
.L6317:
	movslq	%edx,%r14
	leaq	(%r14,%r14,4), %rcx
	movq	insn_data+24(,%rcx,8), %r13
	movq	(%r13), %rax
	testq	%rax, %rax
	je	.L6321
	movq	-1424(%rbp), %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L6314
.L6321:
	movq	24(%r13), %rax
	testq	%rax, %rax
	jne	.L7609
.L6322:
	movq	72(%r13), %rax
	testq	%rax, %rax
	je	.L6323
	xorl	%esi, %esi
	movq	-568(%rbp), %rdi
	call	*%rax
	testl	%eax, %eax
	je	.L6314
.L6323:
	call	get_last_insn
	movl	$1, %edx
	movq	-1440(%rbp), %rsi
	movl	%ebx, %edi
	movq	%rax, -576(%rbp)
	call	convert_to_mode
	movq	%rax, %r15
	movq	48(%r13), %rax
	testq	%rax, %rax
	jne	.L7610
.L6324:
	leaq	(%r14,%r14,4), %r13
	xorl	%eax, %eax
	movq	-1424(%rbp), %rdi
	movq	-1432(%rbp), %rsi
	movq	%r15, %rdx
	movq	-568(%rbp), %rcx
	call	*insn_data+16(,%r13,8)
	testq	%rax, %rax
	jne	.L7442
	movq	-576(%rbp), %rdi
	call	delete_insns_since
.L6314:
	movzbl	mode_wider_mode(%r12), %ebx
	testl	%ebx, %ebx
	jne	.L6328
.L7345:
	testb	$2, target_flags+3(%rip)
	movq	-1424(%rbp), %r10
	movl	$0, volatile_ok(%rip)
	setne	%al
	movq	8(%r10), %rsi
	movzbl	%al, %edi
	addl	$4, %edi
	call	copy_to_mode_reg
	movq	-1432(%rbp), %r11
	testb	$2, target_flags+3(%rip)
	setne	%r8b
	movq	%rax, %r13
	movq	8(%r11), %rsi
	movzbl	%r8b, %edi
	addl	$4, %edi
	call	copy_to_mode_reg
	movq	-1440(%rbp), %rsi
	movq	sizetype_tab(%rip), %rdx
	movq	%rax, %rbx
	movzbl	61(%rdx), %r12d
	shrb	$1, %r12b
	movzbl	%r12b, %edi
	call	copy_to_mode_reg
	cmpq	$0, fn.1(%rip)
	movq	%rax, %r14
	je	.L7611
.L6337:
	movq	global_trees+216(%rip), %rdi
	call	build_pointer_type
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	global_trees+216(%rip), %rdi
	movq	%rax, %r15
	call	build_pointer_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	%r14, %rsi
	movq	%rax, (%r15)
	movq	%rax, %r12
	movq	sizetype_tab(%rip), %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	fn.1(%rip), %rcx
	movq	%rax, (%r12)
	movq	(%r15), %rdx
	movq	8(%rcx), %rdi
	movq	(%rdx), %r12
	movq	$0, (%r12)
	call	build_pointer_type
	movq	fn.1(%rip), %rdx
	movl	$121, %edi
	movq	%rax, %rsi
	call	build1
	xorl	%r8d, %r8d
	movq	%r15, %rcx
	movq	fn.1(%rip), %r14
	movq	%rax, %rdx
	movl	$53, %edi
	xorl	%eax, %eax
	movq	8(%r14), %rbx
	movq	8(%rbx), %rsi
	call	build
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	orb	$1, 17(%rax)
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	expand_expr
	testb	$4, 3(%r13)
	jne	.L7612
.L6326:
	movl	-356(%rbp), %eax
	movq	-1416(%rbp), %r14
	testl	%eax, %eax
	jne	.L5210
	jmp	.L6341
.L7612:
	movl	$49, %edi
	xorl	%esi, %esi
	movq	%r13, %rdx
	call	gen_rtx_fmt_e
	movq	%rax, %rdi
	call	emit_insn
	jmp	.L6326
.L7611:
	movl	$.LC11, %edi
	call	get_identifier
	movq	global_trees+216(%rip), %rdi
	movq	%rax, fn.1(%rip)
	call	build_pointer_type
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	build_function_type
	movq	fn.1(%rip), %rsi
	movl	$30, %edi
	movq	%rax, %rdx
	call	build_decl
	movl	$1, %esi
	movl	$fn.1, %edi
	movq	%rax, fn.1(%rip)
	call	ggc_add_tree_root
	movq	fn.1(%rip), %r15
	orb	$1, 49(%r15)
	movq	fn.1(%rip), %r9
	orb	$8, 18(%r9)
	movq	fn.1(%rip), %rsi
	orb	$64, 50(%rsi)
	xorl	%esi, %esi
	movq	fn.1(%rip), %rdi
	orb	$2, 18(%rdi)
	movq	fn.1(%rip), %rdi
	call	make_decl_rtl
	movq	fn.1(%rip), %rdi
	call	assemble_external
	jmp	.L6337
.L7442:
	movq	%rax, %rdi
	call	emit_insn
	movl	$0, volatile_ok(%rip)
	jmp	.L6326
.L7610:
	movq	%r15, %rdi
	movl	%ebx, %esi
	call	*%rax
	testl	%eax, %eax
	jne	.L6324
	movq	%r15, %rsi
	movl	%ebx, %edi
	call	copy_to_mode_reg
	movq	%rax, %r15
	jmp	.L6324
.L7609:
	movq	-1432(%rbp), %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L6314
	jmp	.L6322
.L6319:
	cmpw	$31, mode_bitsize(%r12,%r12)
	jmp	.L7487
.L7608:
	movq	mode_mask_array(,%r12,8), %r15
	shrq	$1, %r15
	cmpq	%r15, 8(%rsi)
	jbe	.L6317
	jmp	.L6318
.L7607:
	movq	8(%rcx), %r12
	xorl	%r13d, %r13d
	movl	$17, %esi
	movl	$128, %r14d
.L6208:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L7334
	.p2align 4,,7
.L6205:
	movslq	%ecx,%r9
	movzbq	mode_size(%r9), %r10
	cmpq	%rsi, %r10
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r9), %ecx
	testl	%ecx, %ecx
	jne	.L6205
.L7334:
	testl	%edi, %edi
	je	.L6198
	movslq	%edi,%rbx
	movq	%rbx, %r8
	salq	$4, %r8
	addq	optab_table+240(%rip), %r8
	cmpl	$1317, 8(%r8)
	je	.L6207
	call	get_mode_alignment
	cmpl	%eax, %r14d
	jb	.L6207
	movzbq	mode_size(%rbx), %rcx
	movq	%r12, %rax
	xorl	%edx, %edx
	divq	%rcx
	addq	%rax, %r13
	movq	%rdx, %r12
.L6207:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L6208
.L6198:
	testq	%r12, %r12
	jne	.L7587
	movl	optimize_size(%rip), %eax
	testl	%eax, %eax
	jne	.L6211
	movq	ix86_cost(%rip), %r12
	mov	40(%r12), %edx
	cmpq	%rdx, %r13
	jae	.L6195
.L6212:
	movq	-1440(%rbp), %r8
	movq	-1432(%rbp), %rdi
	movq	-1424(%rbp), %r10
	movq	-1424(%rbp), %r11
	testb	$2, target_flags+3(%rip)
	movq	8(%r8), %r13
	setne	%sil
	xorl	%ecx, %ecx
	movq	8(%rdi), %r8
	movq	$0, -152(%rbp)
	movq	%r8, -176(%rbp)
	movzbl	%sil, %r15d
	movq	8(%r10), %r9
	movq	%r11, -208(%rbp)
	leal	5(,%r15,4), %r12d
	xorl	%r15d, %r15d
	movq	%r9, -1448(%rbp)
	movq	-1448(%rbp), %r14
	movzwl	(%r14), %edx
	leal	-96(%rdx), %ebx
	cmpw	$1, %bx
	jbe	.L6217
	cmpw	$99, %dx
	je	.L6217
	cmpw	$98, %dx
	je	.L6217
.L6216:
	movq	-1448(%rbp), %rbx
	movl	%ecx, -192(%rbp)
	xorl	%edx, %edx
	movzwl	(%rbx), %eax
	cmpw	$96, %ax
	je	.L6219
	cmpw	$98, %ax
	je	.L6219
.L6218:
	movq	-1432(%rbp), %rcx
	movq	-1448(%rbp), %rax
	movl	%edx, -144(%rbp)
	movq	%rcx, -184(%rbp)
	movq	%rax, -200(%rbp)
	xorl	%ecx, %ecx
	movzwl	(%r8), %edx
	leal	-96(%rdx), %r14d
	cmpw	$1, %r14w
	jbe	.L6222
	cmpw	$99, %dx
	je	.L6222
	cmpw	$98, %dx
	je	.L6222
.L6221:
	movl	-144(%rbp), %edx
	movl	%ecx, -168(%rbp)
	movl	$0, -164(%rbp)
	movl	$0, -188(%rbp)
	testl	%edx, %edx
	je	.L6223
	movq	%r13, -152(%rbp)
.L6223:
	movl	-168(%rbp), %r9d
	movq	%r13, -160(%rbp)
	testl	%r9d, %r9d
	je	.L6225
	movl	-192(%rbp), %r11d
	testl	%r11d, %r11d
	jne	.L6224
.L6225:
	xorl	%r14d, %r14d
	movl	$17, %esi
.L6238:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L7337
	.p2align 4,,7
.L6235:
	movslq	%ecx,%r10
	movzbq	mode_size(%r10), %rbx
	cmpq	%rsi, %rbx
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r10), %ecx
	testl	%ecx, %ecx
	jne	.L6235
.L7337:
	testl	%edi, %edi
	je	.L6228
	movslq	%edi,%rbx
	movq	%rbx, %rsi
	salq	$4, %rsi
	addq	optab_table+240(%rip), %rsi
	cmpl	$1317, 8(%rsi)
	je	.L6237
	movq	%r8, -1464(%rbp)
	call	get_mode_alignment
	movq	-1464(%rbp), %r8
	movl	$128, %edi
	cmpl	%eax, %edi
	jb	.L6237
	movzbq	mode_size(%rbx), %r9
	movq	%r13, %rax
	xorl	%edx, %edx
	divq	%r9
	addq	%rax, %r14
	movq	%rdx, %r13
.L6237:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L6238
.L6228:
	testq	%r13, %r13
	jne	.L7587
	cmpq	$2, %r14
	jbe	.L6224
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L7339
.L6246:
	movslq	%ecx,%r14
	movzbl	mode_size(%r14), %edx
	cmpl	%r12d, %edx
	cmovb	%ecx, %r15d
	movzbl	mode_wider_mode(%r14), %ecx
	testl	%ecx, %ecx
	jne	.L6246
.L7339:
	movl	-168(%rbp), %eax
	testl	%eax, %eax
	jne	.L6252
	movzwl	(%r8), %edx
	leal	-67(%rdx), %r11d
	cmpw	$1, %r11w
	jbe	.L6250
	cmpw	$54, %dx
	je	.L6250
	cmpw	$55, %dx
	je	.L6250
	cmpw	$58, %dx
	je	.L6250
	cmpw	$134, %dx
	je	.L6250
	cmpw	$56, %dx
	je	.L6250
	cmpw	$140, %dx
	je	.L6250
.L6252:
	movl	-192(%rbp), %r8d
	testl	%r8d, %r8d
	jne	.L6224
	movq	-1448(%rbp), %rbx
	movzwl	(%rbx), %edx
	leal	-67(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L6254
	cmpw	$54, %dx
	je	.L6254
	cmpw	$55, %dx
	je	.L6254
	cmpw	$58, %dx
	je	.L6254
	cmpw	$134, %dx
	je	.L6254
	cmpw	$56, %dx
	je	.L6254
	cmpw	$140, %dx
	je	.L6254
.L6224:
	cmpl	$1, %r12d
	jbe	.L6257
.L6308:
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L7342
	.p2align 4,,7
.L6264:
	movslq	%ecx,%rsi
	movzbl	mode_size(%rsi), %edi
	cmpl	%r12d, %edi
	cmovb	%ecx, %r15d
	movzbl	mode_wider_mode(%rsi), %ecx
	testl	%ecx, %ecx
	jne	.L6264
.L7342:
	testl	%r15d, %r15d
	je	.L6257
	movslq	%r15d,%r13
	movq	%r13, %r12
	salq	$4, %r12
	addq	optab_table+240(%rip), %r12
	movl	8(%r12), %ebx
	cmpl	$1317, %ebx
	je	.L6266
	movl	%r15d, %edi
	call	get_mode_alignment
	movl	$128, %ecx
	cmpl	%eax, %ecx
	jb	.L6266
	movslq	%ebx,%rdx
	leaq	-208(%rbp), %r12
	movq	$0, -1456(%rbp)
	leaq	(%rdx,%rdx,4), %r14
	movzbq	mode_size(%r13), %rdx
	cmpq	%rdx, -160(%rbp)
	movq	insn_data+16(,%r14,8), %r9
	movq	%rdx, -888(%rbp)
	movq	%r9, -560(%rbp)
	jb	.L6266
	movl	-144(%rbp), %ecx
.L6306:
	testl	%ecx, %ecx
	je	.L6270
	subq	%rdx, 56(%r12)
.L6270:
	movq	(%r12), %rdi
	testq	%rdi, %rdi
	je	.L6271
	movl	16(%r12), %eax
	testl	%eax, %eax
	je	.L6272
	movq	8(%r12), %rdx
	movq	56(%r12), %rcx
	movl	%r15d, %esi
	movl	$1, %r8d
	call	adjust_automodify_address_1
.L7482:
	movq	%rax, -1456(%rbp)
.L6271:
	movl	40(%r12), %r11d
	testl	%r11d, %r11d
	je	.L6274
	movq	24(%r12), %rdi
	movq	32(%r12), %rdx
	movl	%r15d, %esi
	movq	56(%r12), %rcx
	movl	$1, %r8d
	call	adjust_automodify_address_1
.L7483:
	cmpq	$0, (%r12)
	movq	%rax, %r14
	jne	.L7613
	movl	target_flags(%rip), %eax
	testl	$33554432, %eax
	movl	%eax, %esi
	je	.L6280
	movzbl	mode_size(%r13), %r8d
	leal	7(%r8), %edx
	andl	$-8, %edx
.L6281:
	movq	cfun(%rip), %rdi
	andl	$33554432, %esi
	movq	16(%rdi), %rbx
	leaq	8(%rbx), %rdi
	movl	8(%rbx), %ecx
	je	.L6282
	movzbl	mode_size(%r13), %eax
	addl	$7, %eax
	andl	$-8, %eax
.L7484:
	movq	%r13, %rsi
	leal	(%rax,%rcx), %r9d
	salq	$4, %rsi
	movl	%r9d, (%rdi)
	addq	optab_table+384(%rip), %rsi
	movl	8(%rsi), %eax
	cmpl	$1317, %eax
	je	.L6284
	movslq	%eax,%rbx
	leaq	(%rbx,%rbx,4), %rdx
	movq	insn_data+24(,%rdx,8), %rcx
	movq	(%rcx), %rax
	testq	%rax, %rax
	je	.L6285
	movq	%r14, %rdi
	movl	%r15d, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L7614
.L6285:
	leaq	(%rbx,%rbx,4), %r11
	movq	%r14, %rdi
	xorl	%eax, %eax
	call	*insn_data+16(,%r11,8)
.L7486:
	movq	%rax, %rdi
	call	emit_insn
.L6304:
	movl	64(%r12), %eax
	testl	%eax, %eax
	movl	%eax, %ecx
	jne	.L6305
	movq	-888(%rbp), %r14
	addq	%r14, 56(%r12)
.L6305:
	movq	48(%r12), %r9
	movq	-888(%rbp), %rdx
	subq	-888(%rbp), %r9
	cmpq	%rdx, %r9
	movq	%r9, 48(%r12)
	jae	.L6306
.L6266:
	movzbl	mode_size(%r13), %r12d
	cmpl	$1, %r12d
	ja	.L6308
.L6257:
	cmpq	$0, -160(%rbp)
	je	.L6326
.L7537:
	movl	$.LC0, %edi
	movl	$1503, %esi
	movl	$.LC10, %edx
.L7528:
	call	fancy_abort
.L7614:
	movq	%r14, %rsi
	movl	%r15d, %edi
	call	force_reg
	movq	%rax, %r14
	jmp	.L6285
.L6284:
	movzbl	mode_size(%r13), %r8d
	cmpl	%edx, %r8d
	je	.L7615
	mov	%edx, %esi
	xorl	%edi, %edi
	negq	%rsi
	call	gen_rtx_CONST_INT
	movq	global_rtl+16(%rip), %rdx
	movl	$75, %edi
	testb	$2, target_flags+3(%rip)
	movq	%rax, %rcx
	setne	%bl
	movzbl	%bl, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_ee
	movq	global_rtl+16(%rip), %rdx
	movl	$100, %edi
	testb	$2, target_flags+3(%rip)
	movq	%rax, %rcx
	setne	%r10b
	movzbl	%r10b, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_ee
.L7485:
	movl	%r15d, %edi
	movq	%rax, %rsi
	call	gen_rtx_MEM
	xorl	%edi, %edi
	testq	%rdi, %rdi
	movq	%rax, %rbx
	je	.L6301
	xorl	%esi, %esi
	movq	%rax, %rdi
	movl	$1, %edx
	call	set_mem_attributes
	movl	flag_optimize_sibling_calls(%rip), %esi
	testl	%esi, %esi
	jne	.L7616
.L6301:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	call	emit_move_insn
	jmp	.L6304
.L7616:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	call	set_mem_alias_set
	jmp	.L6301
.L7615:
	testb	$2, target_flags+3(%rip)
	movq	global_rtl+16(%rip), %rdx
	movl	$96, %edi
	setne	%al
	movzbl	%al, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_e
	jmp	.L7485
.L6282:
	movzbl	mode_size(%r13), %eax
	incl	%eax
	andl	$-2, %eax
	jmp	.L7484
.L6280:
	movzbl	mode_size(%r13), %r10d
	leal	1(%r10), %edx
	andl	$-2, %edx
	jmp	.L6281
.L7613:
	movq	%rax, %rsi
	movq	-1456(%rbp), %rdi
	xorl	%eax, %eax
	call	*-560(%rbp)
	jmp	.L7486
.L6274:
	movq	24(%r12), %rdi
	movq	56(%r12), %rdx
	movl	%r15d, %esi
	movl	$1, %ecx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L7483
.L6272:
	movq	56(%r12), %rdx
	movl	%r15d, %esi
	movl	$1, %ecx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L7482
.L6254:
	movq	-1448(%rbp), %rdi
	call	copy_addr_to_reg
	movq	%rax, -200(%rbp)
	jmp	.L6224
.L6250:
	movq	%r8, %rdi
	call	copy_addr_to_reg
	movq	%rax, -176(%rbp)
	jmp	.L6252
.L7587:
	movl	$.LC0, %edi
	movl	$1542, %esi
	movl	$.LC5, %edx
	jmp	.L7528
	.p2align 6,,7
.L6222:
	movl	$1, %ecx
	jmp	.L6221
.L6219:
	movl	$1, %edx
	jmp	.L6218
.L6217:
	movl	$1, %ecx
	jmp	.L6216
.L6211:
	cmpq	$2, %r13
	ja	.L6195
	jmp	.L6212
.L7594:
	movl	$.LC0, %edi
	movl	$1648, %esi
.L7586:
	movl	$.LC9, %edx
	jmp	.L7528
.L7595:
	movl	$.LC0, %edi
	movl	$1646, %esi
	jmp	.L7586
.L7596:
	movl	$.LC0, %edi
	movl	$1644, %esi
	jmp	.L7586
	.p2align 6,,7
.L6187:
	movq	-1440(%rbp), %rsi
	movq	8(%rsi), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	-1440(%rbp), %r8
	movq	%rax, %rbx
	movq	16(%r8), %rdi
	call	protect_from_queue
	movq	-1440(%rbp), %rcx
	movq	%rax, %r12
	cmpq	8(%rcx), %rbx
	je	.L7617
.L6189:
	movq	-1440(%rbp), %rdi
	call	copy_rtx
	movq	%rax, -1440(%rbp)
	movq	%rbx, 8(%rax)
	movq	-1440(%rbp), %rdi
	movq	%r12, 16(%rdi)
	jmp	.L6182
.L7617:
	cmpq	16(%rcx), %rax
	jne	.L6189
	jmp	.L6182
	.p2align 6,,7
.L7606:
	cmpb	$51, 2(%rdx)
	je	.L6180
	movq	8(%rdx), %rbx
	cmpw	$71, (%rbx)
	je	.L7618
.L6180:
	cmpl	$66, %eax
	jne	.L6183
	movq	-1440(%rbp), %r10
	xorl	%esi, %esi
	movq	8(%r10), %rdi
	call	protect_from_queue
	movq	-1440(%rbp), %rsi
	movq	%rax, %rbx
	cmpq	8(%rsi), %rax
	je	.L6182
	movq	%rsi, %rdi
	call	copy_rtx
	movq	%rax, -1440(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L6182
.L7618:
	movq	8(%rbx), %rsi
	movq	%rdx, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%rbx)
	movq	%rax, %r12
	je	.L6181
	movq	-1440(%rbp), %r9
	movzbl	2(%r9), %edi
	call	gen_reg_rtx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, -1440(%rbp)
	call	gen_move_insn
	movq	16(%rbx), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L6182
.L6181:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%r12, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L7481:
	movq	%rax, -1440(%rbp)
	jmp	.L6182
.L6179:
	movq	-1440(%rbp), %rsi
	cmpq	$0, 16(%rsi)
	je	.L7619
	movq	-1440(%rbp), %rcx
	movq	24(%rcx), %rax
	testq	%rax, %rax
	jne	.L7481
	movq	-1440(%rbp), %r14
	movq	8(%r14), %rbx
	movzbl	2(%rbx), %edi
	call	gen_reg_rtx
	movq	-1440(%rbp), %r12
	movq	%rax, %rdi
	movq	8(%r12), %rsi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %rdx
	movq	%rdx, -1440(%rbp)
	jmp	.L6182
.L7619:
	movq	8(%rsi), %rdi
	call	copy_to_reg
	jmp	.L7481
.L6174:
	movq	-1432(%rbp), %rbx
	xorl	%esi, %esi
	movq	8(%rbx), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	-1432(%rbp), %rcx
	movq	%rax, %rbx
	movq	16(%rcx), %rdi
	call	protect_from_queue
	movq	-1432(%rbp), %rcx
	movq	%rax, %r12
	cmpq	8(%rcx), %rbx
	je	.L7620
.L6176:
	movq	-1432(%rbp), %rdi
	call	copy_rtx
	movq	%rax, -1432(%rbp)
	movq	%rbx, 8(%rax)
	movq	-1432(%rbp), %rdx
	movq	%r12, 16(%rdx)
	jmp	.L6169
.L7620:
	cmpq	16(%rcx), %rax
	jne	.L6176
	jmp	.L6169
	.p2align 6,,7
.L7605:
	cmpb	$51, 2(%rdx)
	je	.L6167
	movq	8(%rdx), %rbx
	cmpw	$71, (%rbx)
	je	.L7621
.L6167:
	cmpl	$66, %eax
	jne	.L6170
	movq	-1432(%rbp), %rsi
	movq	8(%rsi), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	-1432(%rbp), %rsi
	movq	%rax, %rbx
	cmpq	8(%rsi), %rax
	je	.L6169
	movq	%rsi, %rdi
	call	copy_rtx
	movq	%rax, -1432(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L6169
.L7621:
	movq	8(%rbx), %rsi
	movq	%rdx, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%rbx)
	movq	%rax, %r12
	je	.L6168
	movq	-1432(%rbp), %r8
	movzbl	2(%r8), %edi
	call	gen_reg_rtx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, -1432(%rbp)
	call	gen_move_insn
	movq	16(%rbx), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L6169
.L6168:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%r12, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L7480:
	movq	%rax, -1432(%rbp)
	jmp	.L6169
.L6166:
	movq	-1432(%rbp), %rsi
	cmpq	$0, 16(%rsi)
	je	.L7622
	movq	-1432(%rbp), %r12
	movq	24(%r12), %rax
	testq	%rax, %rax
	jne	.L7480
	movq	-1432(%rbp), %rax
	movq	8(%rax), %r11
	movzbl	2(%r11), %edi
	call	gen_reg_rtx
	movq	-1432(%rbp), %r13
	movq	%rax, %rdi
	movq	8(%r13), %rsi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %r14
	movq	%r14, -1432(%rbp)
	jmp	.L6169
.L7622:
	movq	8(%rsi), %rdi
	call	copy_to_reg
	jmp	.L7480
.L6161:
	movq	-1416(%rbp), %rdx
	xorl	%esi, %esi
	movq	8(%rdx), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	-1416(%rbp), %rcx
	movq	%rax, %r12
	movq	16(%rcx), %rdi
	call	protect_from_queue
	movq	-1416(%rbp), %rcx
	movq	%rax, %rbx
	cmpq	8(%rcx), %r12
	je	.L7623
.L6163:
	movq	-1416(%rbp), %rdi
	call	copy_rtx
	movq	%rax, -1424(%rbp)
	movq	%r12, 8(%rax)
	movq	-1424(%rbp), %r12
	movq	%rbx, 16(%r12)
	jmp	.L6156
.L7623:
	cmpq	16(%rcx), %rax
	jne	.L6163
	jmp	.L6156
	.p2align 6,,7
.L7604:
	jne	.L6157
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	-1416(%rbp), %rsi
	movq	%rax, %rbx
	cmpq	8(%rsi), %rax
	je	.L6156
	movq	%rsi, %rdi
	call	copy_rtx
	movq	%rax, -1424(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L6156
	.p2align 6,,7
.L6153:
	testq	%rdx, %rdx
	je	.L7624
	movq	-1416(%rbp), %rax
	movq	24(%rax), %r11
	testq	%r11, %r11
	movq	%r11, -1424(%rbp)
	jne	.L6156
	movq	-1416(%rbp), %r10
	movq	8(%r10), %r9
	movzbl	2(%r9), %edi
	call	gen_reg_rtx
	movq	-1416(%rbp), %r13
	movq	%rax, %rdi
	movq	8(%r13), %rsi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %rdi
	movq	%rdi, -1424(%rbp)
	jmp	.L6156
.L7624:
	movq	-1416(%rbp), %r14
	movq	8(%r14), %rdi
	call	copy_to_reg
	movq	%rax, -1424(%rbp)
	jmp	.L6156
.L7597:
	movl	$.LC0, %edi
	movl	$1637, %esi
	jmp	.L7586
.L7598:
	movl	$.LC0, %edi
	movl	$1634, %esi
	jmp	.L7586
	.p2align 6,,7
.L6146:
	testq	%rdx, %rdx
	movl	$8, %r15d
	je	.L6142
	movl	32(%rdx), %r15d
	jmp	.L6142
.L6145:
	cmpl	$7, %ecx
	ja	.L6141
	jmp	.L6146
.L6136:
	movl	$.LC0, %edi
	movl	$5145, %esi
.L7529:
	movl	$.LC14, %edx
	jmp	.L7528
	.p2align 6,,7
.L6131:
	cmpw	$61, %ax
	je	.L6130
	cmpw	$63, %ax
	je	.L6130
	testq	%r12, %r12
	js	.L6129
	movq	8(%r15), %r11
	movq	32(%r11), %rdi
	cmpb	$25, 16(%rdi)
	je	.L7625
.L6129:
	movl	-356(%rbp), %eax
	movq	-1128(%rbp), %r10
	testl	%eax, %eax
	movq	8(%r10), %rdi
	je	.L6346
	movzwl	(%rdi), %edx
	cmpw	$61, %dx
	je	.L6346
	leal	-67(%rdx), %esi
	cmpw	$1, %si
	jbe	.L6346
	cmpw	$54, %dx
	je	.L6346
	cmpw	$58, %dx
	je	.L6346
	cmpw	$55, %dx
	je	.L6346
	cmpw	$75, %dx
	je	.L7626
.L6347:
	call	copy_to_reg
	movq	-1128(%rbp), %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L6346:
	cmpq	$-1, %r13
	leaq	7(%r13), %rdi
	movl	%ebx, %esi
	cmovle	%rdi, %r13
	movl	$1, %ecx
	movl	$1, %r8d
	movq	-1128(%rbp), %rdi
	sarq	$3, %r13
	movq	%r13, %rdx
	call	adjust_address_1
	cmpq	-1128(%rbp), %rax
	movq	%rax, %r13
	je	.L7627
.L6350:
	movzbl	3(%r13), %eax
	orb	$16, %al
	andb	$127, %al
	testb	$1, %al
	movb	%al, 3(%r13)
	jne	.L6354
	movq	16(%r13), %rax
	testq	%rax, %rax
	je	.L6354
	cmpq	$0, (%rax)
	jne	.L7628
.L6354:
	xorl	%ebx, %ebx
	movl	$0, -1132(%rbp)
	cmpl	$0, -356(%rbp)
	setne	%bl
	xorl	%r12d, %r12d
	movl	%ebx, -580(%rbp)
	movzbl	16(%r15), %eax
	cmpb	$47, %al
	je	.L7629
	cmpb	$51, %al
	je	.L7630
.L6367:
	movzwl	(%r13), %eax
	subl	$66, %eax
	cmpl	$12, %eax
	ja	.L6415
	mov	%eax, %r14d
	jmp	*.L6416(,%r14,8)
	.section	.rodata
	.align 8
	.align 4
.L6416:
	.quad	.L6409
	.quad	.L6415
	.quad	.L6415
	.quad	.L6415
	.quad	.L6415
	.quad	.L6414
	.quad	.L6415
	.quad	.L6415
	.quad	.L6415
	.quad	.L6412
	.quad	.L6412
	.quad	.L6415
	.quad	.L6412
	.text
.L6409:
	movq	8(%r13), %rdi
	call	queued_subexp_p
	movl	%eax, %ebx
.L6408:
	testl	%ebx, %ebx
	je	.L6405
	movzbl	2(%r13), %eax
	cmpb	$51, %al
	je	.L6417
	testb	%al, %al
	jne	.L7631
.L6417:
	movzbl	2(%r13), %edx
	movq	%r15, %rdi
	xorl	%esi, %esi
.L7489:
	xorl	%ecx, %ecx
	call	expand_expr
	testb	$8, 3(%r13)
	movq	%rax, %r14
	jne	.L7433
	movl	-580(%rbp), %eax
	testl	%eax, %eax
	je	.L7433
.L6422:
	movl	$1, -1132(%rbp)
.L7433:
	movzwl	(%r14), %edx
.L6366:
	leal	-67(%rdx), %esi
	cmpw	$1, %si
	jbe	.L6444
	cmpw	$54, %dx
	je	.L6444
	cmpw	$55, %dx
	je	.L6444
	cmpw	$58, %dx
	je	.L6444
	cmpw	$134, %dx
	je	.L6444
	cmpw	$56, %dx
	je	.L6444
	cmpw	$140, %dx
	je	.L6444
.L6443:
	movq	%r14, %rdi
	movq	%r13, %rsi
	call	rtx_equal_p
	testl	%eax, %eax
	je	.L6446
	cmpq	%r13, %r14
	je	.L6445
	movq	%r14, %rdi
	call	side_effects_p
	testl	%eax, %eax
	je	.L7632
.L6446:
	movzbl	16(%r15), %eax
	testb	%al, %al
	je	.L6445
	testl	%r12d, %r12d
	jne	.L6445
	movzbl	%al, %r12d 
	cmpb	$100, tree_code_type(%r12)
	je	.L7633
.L6447:
	movzwl	(%r13), %eax
	cmpl	$71, %eax
	je	.L6452
	cmpl	$66, %eax
	je	.L7634
.L6456:
	cmpl	$75, %eax
	je	.L6460
	cmpl	$78, %eax
	je	.L6460
.L6455:
	movzbl	2(%r14), %eax
	movzbl	2(%r13), %ecx
	cmpb	%cl, %al
	je	.L6465
	testb	%al, %al
	je	.L6465
	movq	8(%r15), %rdi
	movl	-1132(%rbp), %r15d
	movzbl	17(%rdi), %r9d
	shrb	$5, %r9b
	movl	%r9d, %edx
	andl	$1, %edx
	testl	%r15d, %r15d
	je	.L6466
	movq	%r14, %rsi
	movzbl	%cl, %edi
	call	convert_to_mode
	movq	%rax, %r14
.L7056:
	movq	%r13, %rdi
	movq	%r14, %rsi
	call	emit_move_insn
.L6445:
	movl	-580(%rbp), %eax
	testl	%eax, %eax
	jne	.L7256
.L7523:
	xorl	%r14d, %r14d
	jmp	.L5210
.L7256:
	movl	-1132(%rbp), %eax
	testl	%eax, %eax
	je	.L7258
	cmpw	$66, (%r14)
	jne	.L5210
.L7258:
	cmpb	$51, 2(%r13)
	je	.L7260
	cmpw	$61, (%r13)
	je	.L7635
.L7261:
	movq	%r13, %rdi
.L7527:
	call	copy_to_reg
	jmp	.L7524
.L7635:
	cmpl	$52, 8(%r13)
	ja	.L7261
.L7260:
	movq	%r13, %r14
	jmp	.L5210
.L6466:
	movq	%r13, %rdi
	movq	%r14, %rsi
	call	convert_move
	jmp	.L6445
.L6465:
	cmpb	$51, %al
	je	.L7636
.L6469:
	cmpw	$39, (%r13)
	je	.L7637
	cmpb	$51, %al
	jne	.L7056
	movq	%r15, %rdi
	movq	%r13, -1360(%rbp)
	movq	%r14, -1368(%rbp)
	call	expr_size
	movl	$8, %edx
	movq	16(%r13), %rcx
	movq	%rax, %r15
	testq	%rcx, %rcx
	je	.L7060
	movl	32(%rcx), %edx
.L7060:
	movq	16(%r14), %rax
	testq	%rax, %rax
	je	.L7061
	cmpl	32(%rax), %edx
	jb	.L7062
.L7057:
	testq	%rax, %rax
	movl	$8, -1352(%rbp)
	je	.L7058
	movl	32(%rax), %eax
	movl	%eax, -1352(%rbp)
.L7058:
	cmpb	$51, 2(%r13)
	jne	.L7598
	cmpb	$51, 2(%r14)
	jne	.L7597
	movzwl	(%r13), %eax
	cmpl	$71, %eax
	je	.L7069
	cmpl	$66, %eax
	je	.L7638
.L7073:
	cmpl	$75, %eax
	je	.L7077
	cmpl	$78, %eax
	je	.L7077
.L7072:
	movzwl	(%r14), %eax
	cmpl	$71, %eax
	je	.L7082
	cmpl	$66, %eax
	je	.L7639
.L7086:
	cmpl	$75, %eax
	je	.L7090
	cmpl	$78, %eax
	je	.L7090
.L7085:
	movzwl	(%r15), %eax
	cmpl	$71, %eax
	je	.L7095
	cmpl	$66, %eax
	je	.L7640
.L7099:
	cmpl	$75, %eax
	je	.L7103
	cmpl	$78, %eax
	je	.L7103
.L7098:
	movq	-1360(%rbp), %r8
	cmpw	$66, (%r8)
	jne	.L7596
	movq	-1368(%rbp), %rdx
	cmpw	$66, (%rdx)
	jne	.L7595
	testq	%r15, %r15
	je	.L7594
	cmpw	$54, (%r15)
	je	.L7641
.L7111:
	shrl	$3, -1352(%rbp)
	xorl	%edi, %edi
	mov	-1352(%rbp), %esi
	call	gen_rtx_CONST_INT
	movl	class_narrowest_mode+4(%rip), %ebx
	movl	$1, volatile_ok(%rip)
	movq	%rax, -824(%rbp)
	testl	%ebx, %ebx
	je	.L7414
.L7244:
	movslq	%ebx,%rax
	movl	movstr_optab(,%rax,4), %edx
	movq	%rax, -832(%rbp)
	cmpl	$1317, %edx
	je	.L7230
	cmpw	$54, (%r15)
	je	.L7642
.L7234:
	testb	$2, target_flags+3(%rip)
	je	.L7235
	movq	-832(%rbp), %r8
	cmpw	$63, mode_bitsize(%r8,%r8)
.L7521:
	jbe	.L7230
.L7233:
	movslq	%edx,%rax
	leaq	(%rax,%rax,4), %rsi
	movq	%rax, -840(%rbp)
	movq	insn_data+24(,%rsi,8), %rdi
	movq	(%rdi), %rax
	movq	%rdi, -848(%rbp)
	testq	%rax, %rax
	je	.L7237
	movq	-1360(%rbp), %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L7230
.L7237:
	movq	-848(%rbp), %r9
	movq	24(%r9), %rax
	testq	%rax, %rax
	jne	.L7643
.L7238:
	movq	-848(%rbp), %rdx
	movq	72(%rdx), %rax
	testq	%rax, %rax
	je	.L7239
	xorl	%esi, %esi
	movq	-824(%rbp), %rdi
	call	*%rax
	testl	%eax, %eax
	je	.L7230
.L7239:
	call	get_last_insn
	movl	$1, %edx
	movq	%r15, %rsi
	movl	%ebx, %edi
	movq	%rax, -856(%rbp)
	call	convert_to_mode
	movq	-848(%rbp), %r11
	movq	%rax, %r12
	movq	48(%r11), %rax
	testq	%rax, %rax
	jne	.L7644
.L7240:
	movq	-840(%rbp), %r8
	movq	-1360(%rbp), %rdi
	xorl	%eax, %eax
	movq	-1368(%rbp), %rsi
	movq	%r12, %rdx
	movq	-824(%rbp), %rcx
	leaq	(%r8,%r8,4), %rbx
	call	*insn_data+16(,%rbx,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L7446
	movq	-856(%rbp), %rdi
	call	delete_insns_since
.L7230:
	movq	-832(%rbp), %r12
	movzbl	mode_wider_mode(%r12), %ebx
	testl	%ebx, %ebx
	jne	.L7244
.L7414:
	testb	$2, target_flags+3(%rip)
	movq	-1360(%rbp), %r9
	movl	$0, volatile_ok(%rip)
	setne	%dl
	movq	8(%r9), %rsi
	movzbl	%dl, %edi
	addl	$4, %edi
	call	copy_to_mode_reg
	testb	$2, target_flags+3(%rip)
	setne	%sil
	movq	%rax, -1408(%rbp)
	movq	-1368(%rbp), %rax
	movzbl	%sil, %edi
	movq	8(%rax), %rsi
	addl	$4, %edi
	call	copy_to_mode_reg
	movq	%r15, %rsi
	movq	sizetype_tab(%rip), %r10
	movq	%rax, %rbx
	movzbl	61(%r10), %ecx
	shrb	$1, %cl
	movzbl	%cl, %edi
	call	copy_to_mode_reg
	cmpq	$0, fn.1(%rip)
	movq	%rax, %r15
	je	.L7645
.L7253:
	movq	global_trees+216(%rip), %rdi
	call	build_pointer_type
	movq	-1408(%rbp), %rsi
	movq	%rax, %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	global_trees+216(%rip), %rdi
	movq	%rax, %r12
	call	build_pointer_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	%r15, %rsi
	movq	%rax, (%r12)
	movq	%rax, %rbx
	movq	sizetype_tab(%rip), %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	fn.1(%rip), %rcx
	movq	%rax, (%rbx)
	movq	(%r12), %rsi
	movq	8(%rcx), %rdi
	movq	(%rsi), %r10
	movq	$0, (%r10)
	call	build_pointer_type
	movq	fn.1(%rip), %rdx
	movl	$121, %edi
	movq	%rax, %rsi
	call	build1
	xorl	%r8d, %r8d
	movq	%r12, %rcx
	movq	fn.1(%rip), %rbx
	movq	%rax, %rdx
	movl	$53, %edi
	xorl	%eax, %eax
	movq	8(%rbx), %r15
	movq	8(%r15), %rsi
	call	build
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	orb	$1, 17(%rax)
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	expand_expr
	movq	-1408(%rbp), %rcx
	testb	$4, 3(%rcx)
	je	.L6445
	movl	$49, %edi
	xorl	%esi, %esi
	movq	%rcx, %rdx
.L7522:
	call	gen_rtx_fmt_e
	movq	%rax, %rdi
	call	emit_insn
	jmp	.L6445
.L7645:
	movl	$.LC11, %edi
	call	get_identifier
	movq	global_trees+216(%rip), %rdi
	movq	%rax, fn.1(%rip)
	call	build_pointer_type
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	build_function_type
	movq	fn.1(%rip), %rsi
	movl	$30, %edi
	movq	%rax, %rdx
	call	build_decl
	movl	$1, %esi
	movl	$fn.1, %edi
	movq	%rax, fn.1(%rip)
	call	ggc_add_tree_root
	movq	fn.1(%rip), %r12
	xorl	%esi, %esi
	orb	$1, 49(%r12)
	movq	fn.1(%rip), %r8
	orb	$8, 18(%r8)
	movq	fn.1(%rip), %r11
	orb	$64, 50(%r11)
	movq	fn.1(%rip), %rdi
	orb	$2, 18(%rdi)
	movq	fn.1(%rip), %rdi
	call	make_decl_rtl
	movq	fn.1(%rip), %rdi
	call	assemble_external
	jmp	.L7253
.L7446:
	call	emit_insn
	movl	$0, volatile_ok(%rip)
	jmp	.L6445
	.p2align 6,,7
.L7644:
	movq	%r12, %rdi
	movl	%ebx, %esi
	call	*%rax
	testl	%eax, %eax
	jne	.L7240
	movq	%r12, %rsi
	movl	%ebx, %edi
	call	copy_to_mode_reg
	movq	%rax, %r12
	jmp	.L7240
.L7643:
	movq	-1368(%rbp), %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L7230
	jmp	.L7238
.L7235:
	movq	-832(%rbp), %rcx
	cmpw	$31, mode_bitsize(%rcx,%rcx)
	jmp	.L7521
.L7642:
	movq	mode_mask_array(,%rax,8), %r12
	shrq	$1, %r12
	cmpq	%r12, 8(%r15)
	jbe	.L7233
	jmp	.L7234
.L7641:
	movq	8(%r15), %r12
	xorl	%r8d, %r8d
	movl	$17, %esi
.L7124:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L7403
.L7121:
	movslq	%ecx,%r11
	movzbq	mode_size(%r11), %rbx
	cmpq	%rsi, %rbx
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r11), %ecx
	testl	%ecx, %ecx
	jne	.L7121
.L7403:
	testl	%edi, %edi
	je	.L7114
	movslq	%edi,%rbx
	movq	%rbx, %rcx
	salq	$4, %rcx
	addq	optab_table+240(%rip), %rcx
	cmpl	$1317, 8(%rcx)
	je	.L7123
	movq	%r8, -1464(%rbp)
	call	get_mode_alignment
	movq	-1464(%rbp), %r8
	movl	$128, %esi
	cmpl	%eax, %esi
	jb	.L7123
	movzbq	mode_size(%rbx), %r10
	movq	%r12, %rax
	xorl	%edx, %edx
	divq	%r10
	addq	%rax, %r8
	movq	%rdx, %r12
.L7123:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L7124
.L7114:
	testq	%r12, %r12
	jne	.L7587
	movl	optimize_size(%rip), %eax
	testl	%eax, %eax
	jne	.L7127
	movq	ix86_cost(%rip), %rdx
	mov	40(%rdx), %r9d
	cmpq	%r9, %r8
	jae	.L7111
.L7128:
	movq	-1368(%rbp), %r9
	movq	-1360(%rbp), %rcx
	movq	8(%r15), %r15
	movq	-1360(%rbp), %rdi
	testb	$2, target_flags+3(%rip)
	movq	8(%r9), %r8
	setne	%r12b
	movq	$0, -296(%rbp)
	movl	$0, -1388(%rbp)
	movq	%r8, -320(%rbp)
	movq	8(%rcx), %rbx
	xorl	%ecx, %ecx
	movq	%rdi, -352(%rbp)
	movzbl	%r12b, %r10d
	leal	5(,%r10,4), %r12d
	movzwl	(%rbx), %edx
	movq	%rbx, -1376(%rbp)
	leal	-96(%rdx), %r11d
	cmpw	$1, %r11w
	jbe	.L7133
	cmpw	$99, %dx
	je	.L7133
	cmpw	$98, %dx
	je	.L7133
.L7132:
	movq	-1376(%rbp), %r11
	movl	%ecx, -336(%rbp)
	xorl	%edx, %edx
	movzwl	(%r11), %eax
	cmpw	$96, %ax
	je	.L7135
	cmpw	$98, %ax
	je	.L7135
.L7134:
	movl	%edx, -288(%rbp)
	movq	-1368(%rbp), %rax
	xorl	%ecx, %ecx
	movq	-1376(%rbp), %rdx
	movq	%rax, -328(%rbp)
	movq	%rdx, -344(%rbp)
	movzwl	(%r8), %edx
	leal	-96(%rdx), %esi
	cmpw	$1, %si
	jbe	.L7138
	cmpw	$99, %dx
	je	.L7138
	cmpw	$98, %dx
	je	.L7138
.L7137:
	movl	-288(%rbp), %ebx
	movl	%ecx, -312(%rbp)
	movl	$0, -308(%rbp)
	movl	$0, -332(%rbp)
	testl	%ebx, %ebx
	je	.L7139
	movq	%r15, -296(%rbp)
.L7139:
	movl	-312(%rbp), %edi
	movq	%r15, -304(%rbp)
	testl	%edi, %edi
	je	.L7141
	movl	-336(%rbp), %r10d
	testl	%r10d, %r10d
	jne	.L7140
.L7141:
	movq	$0, -1384(%rbp)
	movl	$17, %esi
.L7154:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L7406
.L7151:
	movslq	%ecx,%r9
	movzbq	mode_size(%r9), %r11
	cmpq	%rsi, %r11
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r9), %ecx
	testl	%ecx, %ecx
	jne	.L7151
.L7406:
	testl	%edi, %edi
	je	.L7144
	movslq	%edi,%rbx
	movq	%rbx, %rcx
	salq	$4, %rcx
	addq	optab_table+240(%rip), %rcx
	cmpl	$1317, 8(%rcx)
	je	.L7153
	movq	%r8, -1464(%rbp)
	call	get_mode_alignment
	movl	$128, %r8d
	cmpl	%eax, %r8d
	movq	-1464(%rbp), %r8
	jb	.L7153
	movzbq	mode_size(%rbx), %rsi
	movq	%r15, %rax
	xorl	%edx, %edx
	divq	%rsi
	addq	%rax, -1384(%rbp)
	movq	%rdx, %r15
.L7153:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L7154
.L7144:
	testq	%r15, %r15
	jne	.L7587
	cmpq	$2, -1384(%rbp)
	jbe	.L7140
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L7408
.L7162:
	movslq	%ecx,%rbx
	movzbl	mode_size(%rbx), %edx
	cmpl	%r12d, %edx
	cmovae	-1388(%rbp), %ecx
	movl	%ecx, -1388(%rbp)
	movzbl	mode_wider_mode(%rbx), %ecx
	testl	%ecx, %ecx
	jne	.L7162
.L7408:
	movl	-312(%rbp), %eax
	testl	%eax, %eax
	jne	.L7168
	movzwl	(%r8), %edx
	leal	-67(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L7166
	cmpw	$54, %dx
	je	.L7166
	cmpw	$55, %dx
	je	.L7166
	cmpw	$58, %dx
	je	.L7166
	cmpw	$134, %dx
	je	.L7166
	cmpw	$56, %dx
	je	.L7166
	cmpw	$140, %dx
	je	.L7166
.L7168:
	movl	-336(%rbp), %eax
	testl	%eax, %eax
	jne	.L7140
	movq	-1376(%rbp), %r11
	movzwl	(%r11), %edx
	leal	-67(%rdx), %r9d
	cmpw	$1, %r9w
	jbe	.L7170
	cmpw	$54, %dx
	je	.L7170
	cmpw	$55, %dx
	je	.L7170
	cmpw	$58, %dx
	je	.L7170
	cmpw	$134, %dx
	je	.L7170
	cmpw	$56, %dx
	je	.L7170
	cmpw	$140, %dx
	je	.L7170
.L7140:
	cmpl	$1, %r12d
	jbe	.L7173
.L7224:
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L7411
.L7180:
	movslq	%ecx,%r8
	movzbl	mode_size(%r8), %r15d
	cmpl	%r12d, %r15d
	cmovae	-1388(%rbp), %ecx
	movl	%ecx, -1388(%rbp)
	movzbl	mode_wider_mode(%r8), %ecx
	testl	%ecx, %ecx
	jne	.L7180
.L7411:
	movl	-1388(%rbp), %eax
	testl	%eax, %eax
	je	.L7173
	movslq	-1388(%rbp),%rcx
	movq	%rcx, %r12
	movq	%rcx, -808(%rbp)
	salq	$4, %r12
	addq	optab_table+240(%rip), %r12
	movl	8(%r12), %ebx
	cmpl	$1317, %ebx
	je	.L7182
	movl	-1388(%rbp), %edi
	call	get_mode_alignment
	movl	$128, %edi
	cmpl	%eax, %edi
	jb	.L7182
	movq	-808(%rbp), %rsi
	movslq	%ebx,%r10
	leaq	-352(%rbp), %r12
	leaq	(%r10,%r10,4), %rdx
	movq	$0, -1400(%rbp)
	movq	insn_data+16(,%rdx,8), %rbx
	movzbq	mode_size(%rsi), %rdx
	cmpq	%rdx, -304(%rbp)
	movq	%rbx, -816(%rbp)
	movq	%rdx, -912(%rbp)
	jb	.L7182
	movl	-288(%rbp), %ecx
.L7222:
	testl	%ecx, %ecx
	je	.L7186
	subq	%rdx, 56(%r12)
.L7186:
	movq	(%r12), %rdi
	testq	%rdi, %rdi
	je	.L7187
	movl	16(%r12), %eax
	testl	%eax, %eax
	je	.L7188
	movl	-1388(%rbp), %esi
	movq	8(%r12), %rdx
	movl	$1, %r8d
	movq	56(%r12), %rcx
	call	adjust_automodify_address_1
.L7517:
	movq	%rax, -1400(%rbp)
.L7187:
	movl	40(%r12), %eax
	testl	%eax, %eax
	je	.L7190
	movq	24(%r12), %rdi
	movl	-1388(%rbp), %esi
	movl	$1, %r8d
	movq	32(%r12), %rdx
	movq	56(%r12), %rcx
	call	adjust_automodify_address_1
.L7518:
	cmpq	$0, (%r12)
	movq	%rax, %r15
	jne	.L7646
	movl	target_flags(%rip), %esi
	testl	$33554432, %esi
	je	.L7196
	movq	-808(%rbp), %rax
	movzbl	mode_size(%rax), %r9d
	leal	7(%r9), %edx
	andl	$-8, %edx
.L7197:
	movq	cfun(%rip), %rcx
	andl	$33554432, %esi
	movq	16(%rcx), %rbx
	leaq	8(%rbx), %rdi
	movl	8(%rbx), %ecx
	je	.L7198
	movq	-808(%rbp), %rsi
	movzbl	mode_size(%rsi), %eax
	addl	$7, %eax
	andl	$-8, %eax
.L7519:
	leal	(%rax,%rcx), %r9d
	movl	%r9d, (%rdi)
	movq	-808(%rbp), %rdi
	salq	$4, %rdi
	addq	optab_table+384(%rip), %rdi
	movl	8(%rdi), %eax
	cmpl	$1317, %eax
	je	.L7200
	movslq	%eax,%rbx
	leaq	(%rbx,%rbx,4), %r11
	movq	insn_data+24(,%r11,8), %rdx
	movq	(%rdx), %rax
	testq	%rax, %rax
	je	.L7201
	movq	%r15, %rdi
	movl	-1388(%rbp), %esi
	call	*%rax
	testl	%eax, %eax
	je	.L7647
.L7201:
	leaq	(%rbx,%rbx,4), %r8
	movq	%r15, %rdi
	xorl	%eax, %eax
	call	*insn_data+16(,%r8,8)
.L7520:
	movq	%rax, %rdi
	call	emit_insn
.L7220:
	movl	64(%r12), %eax
	testl	%eax, %eax
	movl	%eax, %ecx
	jne	.L7221
	movq	-912(%rbp), %r15
	addq	%r15, 56(%r12)
.L7221:
	movq	48(%r12), %r9
	movq	-912(%rbp), %rdx
	subq	-912(%rbp), %r9
	cmpq	%rdx, %r9
	movq	%r9, 48(%r12)
	jae	.L7222
.L7182:
	movq	-808(%rbp), %rdx
	movzbl	mode_size(%rdx), %r12d
	cmpl	$1, %r12d
	ja	.L7224
.L7173:
	cmpq	$0, -304(%rbp)
.L7588:
	je	.L6445
	jmp	.L7537
	.p2align 6,,7
.L7647:
	movl	-1388(%rbp), %edi
	movq	%r15, %rsi
	call	force_reg
	movq	%rax, %r15
	jmp	.L7201
.L7200:
	movq	-808(%rbp), %rax
	movzbl	mode_size(%rax), %ebx
	cmpl	%edx, %ebx
	je	.L7648
	mov	%edx, %esi
	xorl	%edi, %edi
	negq	%rsi
	call	gen_rtx_CONST_INT
	movq	global_rtl+16(%rip), %rdx
	testb	$2, target_flags+3(%rip)
	setne	%dil
	movq	%rax, %rcx
	movzbl	%dil, %esi
	movl	$75, %edi
	addl	$4, %esi
	call	gen_rtx_fmt_ee
	movq	global_rtl+16(%rip), %rdx
	movl	$100, %edi
	testb	$2, target_flags+3(%rip)
	movq	%rax, %rcx
	setne	%r10b
	movzbl	%r10b, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_ee
.L7208:
	movl	-1388(%rbp), %edi
	movq	%rax, %rsi
	call	gen_rtx_MEM
	xorl	%esi, %esi
	testq	%rsi, %rsi
	movq	%rax, %rbx
	je	.L7217
	movq	%rax, %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	call	set_mem_attributes
	movl	flag_optimize_sibling_calls(%rip), %eax
	testl	%eax, %eax
	jne	.L7649
.L7217:
	movq	%rbx, %rdi
	movq	%r15, %rsi
	call	emit_move_insn
	jmp	.L7220
.L7649:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	call	set_mem_alias_set
	jmp	.L7217
.L7648:
	testb	$2, target_flags+3(%rip)
	movq	global_rtl+16(%rip), %rdx
	movl	$96, %edi
	setne	%cl
	movzbl	%cl, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_e
	jmp	.L7208
.L7198:
	movq	-808(%rbp), %r10
	movzbl	mode_size(%r10), %eax
	incl	%eax
	andl	$-2, %eax
	jmp	.L7519
.L7196:
	movq	-808(%rbp), %r8
	movzbl	mode_size(%r8), %r11d
	leal	1(%r11), %edx
	andl	$-2, %edx
	jmp	.L7197
.L7646:
	movq	%rax, %rsi
	movq	-1400(%rbp), %rdi
	xorl	%eax, %eax
	call	*-816(%rbp)
	jmp	.L7520
.L7190:
	movq	24(%r12), %rdi
	movl	-1388(%rbp), %esi
	movl	$1, %ecx
	movq	56(%r12), %rdx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L7518
.L7188:
	movl	-1388(%rbp), %esi
	movq	56(%r12), %rdx
	movl	$1, %ecx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L7517
.L7170:
	movq	-1376(%rbp), %rdi
	call	copy_addr_to_reg
	movq	%rax, -344(%rbp)
	jmp	.L7140
.L7166:
	movq	%r8, %rdi
	call	copy_addr_to_reg
	movq	%rax, -320(%rbp)
	jmp	.L7168
	.p2align 6,,7
.L7138:
	movl	$1, %ecx
	jmp	.L7137
.L7135:
	movl	$1, %edx
	jmp	.L7134
.L7133:
	movl	$1, %ecx
	jmp	.L7132
.L7127:
	cmpq	$2, %r8
	ja	.L7111
	jmp	.L7128
.L7103:
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r15), %rdi
	movq	%rax, %r12
	call	protect_from_queue
	cmpq	8(%r15), %r12
	movq	%rax, %rbx
	je	.L7650
.L7105:
	movq	%r15, %rdi
	call	copy_rtx
	movq	%rax, %r15
	movq	%r12, 8(%rax)
	movq	%rbx, 16(%rax)
	jmp	.L7098
.L7650:
	cmpq	16(%r15), %rax
	jne	.L7105
	jmp	.L7098
	.p2align 6,,7
.L7640:
	cmpb	$51, 2(%r15)
	je	.L7096
	movq	8(%r15), %r12
	cmpw	$71, (%r12)
	je	.L7651
.L7096:
	cmpl	$66, %eax
	jne	.L7099
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%r15), %rax
	movq	%rax, %rbx
	je	.L7098
	movq	%r15, %rdi
	call	copy_rtx
	movq	%rax, %r15
	movq	%rbx, 8(%rax)
	jmp	.L7098
.L7651:
	movq	8(%r12), %rsi
	movq	%r15, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%r12)
	movq	%rax, %rbx
	je	.L7097
	movzbl	2(%r15), %edi
	call	gen_reg_rtx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, %r15
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L7098
.L7097:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L7516:
	movq	%rax, %r15
	jmp	.L7098
.L7095:
	cmpq	$0, 16(%r15)
	je	.L7652
	movq	24(%r15), %rax
	testq	%rax, %rax
	jne	.L7516
	movq	8(%r15), %r9
	movzbl	2(%r9), %edi
	call	gen_reg_rtx
	movq	8(%r15), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r15)
	call	gen_move_insn
	movq	16(%r15), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r15), %r15
	jmp	.L7098
.L7652:
	movq	8(%r15), %rdi
	call	copy_to_reg
	jmp	.L7516
.L7090:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r14), %rdi
	movq	%rax, %r12
	call	protect_from_queue
	cmpq	8(%r14), %r12
	movq	%rax, %rbx
	je	.L7653
.L7092:
	movq	%r14, %rdi
	call	copy_rtx
	movq	%rax, -1368(%rbp)
	movq	%r12, 8(%rax)
	movq	-1368(%rbp), %rdi
	movq	%rbx, 16(%rdi)
	jmp	.L7085
.L7653:
	cmpq	16(%r14), %rax
	jne	.L7092
	jmp	.L7085
	.p2align 6,,7
.L7639:
	cmpb	$51, 2(%r14)
	je	.L7083
	movq	8(%r14), %r12
	cmpw	$71, (%r12)
	je	.L7654
.L7083:
	cmpl	$66, %eax
	jne	.L7086
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%r14), %rax
	movq	%rax, %rbx
	je	.L7085
	movq	%r14, %rdi
	call	copy_rtx
	movq	%rax, -1368(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L7085
.L7654:
	movq	8(%r12), %rsi
	movq	%r14, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%r12)
	movq	%rax, %rbx
	je	.L7084
	movzbl	2(%r14), %edi
	call	gen_reg_rtx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, -1368(%rbp)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L7085
.L7084:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L7515:
	movq	%rax, -1368(%rbp)
	jmp	.L7085
.L7082:
	cmpq	$0, 16(%r14)
	je	.L7655
	movq	24(%r14), %r12
	testq	%r12, %r12
	movq	%r12, -1368(%rbp)
	jne	.L7085
	movq	8(%r14), %r10
	movzbl	2(%r10), %edi
	call	gen_reg_rtx
	movq	8(%r14), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r14), %rax
	movq	%rax, -1368(%rbp)
	jmp	.L7085
.L7655:
	movq	8(%r14), %rdi
	call	copy_to_reg
	jmp	.L7515
.L7077:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, %r12
	call	protect_from_queue
	cmpq	8(%r13), %r12
	movq	%rax, %rbx
	je	.L7656
.L7079:
	movq	%r13, %rdi
	call	copy_rtx
	movq	%rax, -1360(%rbp)
	movq	%r12, 8(%rax)
	movq	-1360(%rbp), %r11
	movq	%rbx, 16(%r11)
	jmp	.L7072
.L7656:
	cmpq	16(%r13), %rax
	jne	.L7079
	jmp	.L7072
	.p2align 6,,7
.L7638:
	jne	.L7073
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%r13), %rax
	movq	%rax, %rbx
	je	.L7072
	movq	%r13, %rdi
	call	copy_rtx
	movq	%rax, -1360(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L7072
	.p2align 6,,7
.L7069:
	testq	%rcx, %rcx
	je	.L7657
	movq	24(%r13), %rcx
	testq	%rcx, %rcx
	movq	%rcx, -1360(%rbp)
	jne	.L7072
	movq	8(%r13), %rbx
	movzbl	2(%rbx), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %rsi
	movq	%rsi, -1360(%rbp)
	jmp	.L7072
.L7657:
	movq	8(%r13), %rdi
	call	copy_to_reg
	movq	%rax, -1360(%rbp)
	jmp	.L7072
.L7062:
	testq	%rcx, %rcx
	movl	$8, -1352(%rbp)
	je	.L7058
	movl	32(%rcx), %edx
	movl	%edx, -1352(%rbp)
	jmp	.L7058
.L7061:
	cmpl	$7, %edx
	ja	.L7057
	jmp	.L7062
.L7637:
	movq	8(%r15), %rdi
	call	int_size_in_bytes
	cmpw	$39, (%r13)
	movl	%eax, -764(%rbp)
	jne	.L7593
	movq	8(%r13), %rcx
	movq	8(%rcx), %r9
	movl	(%rcx), %r15d
	cmpq	$0, 8(%r9)
	movslq	%r15d,%rdi
	sete	%dl
	leaq	15(,%rdi,8), %rbx
	andq	$-16, %rbx
	subq	%rbx, %rsp
	leaq	24(%rsp), %r12
	movzbl	%dl, %r10d
	movq	%r12, -776(%rbp)
	movl	%r10d, -1348(%rbp)
	movl	-1348(%rbp), %eax
	cmpl	%r15d, %eax
	movl	%eax, -1340(%rbp)
	jge	.L7397
.L7041:
	movslq	-1340(%rbp),%rbx
	movq	8(%rcx,%rbx,8), %r12
	movq	%rbx, -784(%rbp)
	movl	-764(%rbp), %ecx
	movq	8(%r12), %rax
	movq	16(%r12), %rsi
	testl	%ecx, %ecx
	movzbl	2(%rax), %r15d
	movq	8(%rsi), %r11
	movq	%r11, -792(%rbp)
	movslq	%r15d,%r8
	movzbl	mode_size(%r8), %ebx
	movq	%r8, -800(%rbp)
	movl	%ebx, -1344(%rbp)
	js	.L7014
	mov	%ebx, %r10d
	movslq	-764(%rbp),%rdi
	addq	-792(%rbp), %r10
	cmpq	%rdi, %r10
	jle	.L7014
	movl	-764(%rbp), %edx
	subl	-792(%rbp), %edx
	movl	%edx, -1344(%rbp)
	je	.L7592
.L7014:
	movzwl	(%r14), %edx
	movq	%r14, %r12
	cmpw	$66, %dx
	je	.L7448
	leal	-67(%rdx), %r9d
	cmpw	$1, %r9w
	jbe	.L7018
	cmpw	$54, %dx
	je	.L7018
	cmpw	$55, %dx
	je	.L7018
	cmpw	$58, %dx
	je	.L7018
	cmpw	$134, %dx
	je	.L7018
	cmpw	$56, %dx
	je	.L7018
	cmpw	$140, %dx
	je	.L7018
.L7017:
	movzbl	2(%r14), %eax
	movl	%r15d, %edi
	testb	%al, %al
	je	.L7513
	movzbl	%al, %edi
.L7513:
	call	gen_reg_rtx
	movq	%r14, %rsi
	movq	%rax, %r12
	movq	%rax, %rdi
	call	emit_move_insn
	movzwl	(%r12), %edx
.L7016:
	cmpw	$66, %dx
	je	.L7448
.L7021:
	cmpw	$65, %dx
	je	.L7658
	leal	-67(%rdx), %r11d
	cmpw	$1, %r11w
	jbe	.L7038
	cmpw	$54, %dx
	je	.L7038
	cmpw	$55, %dx
	je	.L7038
	cmpw	$58, %dx
	je	.L7038
	cmpw	$134, %dx
	je	.L7038
	cmpw	$56, %dx
	je	.L7038
	cmpw	$140, %dx
	je	.L7038
	cmpw	$61, %dx
	je	.L7659
.L7037:
	movslq	-764(%rbp),%rdi
	movl	-1344(%rbp), %eax
	movl	$1, %ecx
	movq	-792(%rbp), %rdx
	xorl	%r8d, %r8d
	movl	%r15d, %r9d
	movl	%r15d, (%rsp)
	sall	$3, %eax
	movq	%rdi, 8(%rsp)
	mov	%eax, %esi
	salq	$3, %rdx
	movq	%r12, %rdi
	call	extract_bit_field
.L7514:
	movq	-784(%rbp), %r10
	movq	-776(%rbp), %r12
	movq	%rax, (%r12,%r10,8)
.L7012:
	incl	-1340(%rbp)
	movq	8(%r13), %rcx
	movl	-1340(%rbp), %r9d
	cmpl	(%rcx), %r9d
	jl	.L7041
.L7397:
	movq	cfun(%rip), %r8
	movq	16(%r8), %rdx
	movq	40(%rdx), %rbx
	testq	%rbx, %rbx
	je	.L7399
.L7047:
	movq	32(%rbx), %rdi
	cmpw	$24, (%rdi)
	je	.L7660
	call	emit_insn
	movq	%rax, 16(%rbx)
.L7046:
	movq	cfun(%rip), %rdi
	movq	40(%rbx), %r15
	movq	16(%rdi), %rsi
	testq	%r15, %r15
	movq	%r15, %rbx
	movq	%r15, 40(%rsi)
	jne	.L7047
	movq	8(%r13), %rcx
.L7399:
	movl	-1348(%rbp), %ebx
	cmpl	(%rcx), %ebx
	jge	.L6445
.L7053:
	movslq	-1348(%rbp),%r9
	movq	-776(%rbp), %r10
	salq	$3, %r9
	movq	8(%r9,%rcx), %r8
	movq	(%r10,%r9), %rsi
	movq	8(%r8), %rdi
	call	emit_move_insn
	incl	-1348(%rbp)
	movq	8(%r13), %r12
	movl	-1348(%rbp), %eax
	cmpl	(%r12), %eax
	movq	%r12, %rcx
	jl	.L7053
	jmp	.L6445
.L7660:
	movq	8(%rdi), %rcx
	movq	8(%rcx), %r11
	movq	%r11, 16(%rbx)
	call	emit_insn
	jmp	.L7046
.L7659:
	movzbl	2(%r12), %ecx
	cmpl	%r15d, %ecx
	jne	.L7037
.L7038:
	movq	-784(%rbp), %rsi
	movq	-776(%rbp), %r15
	movq	%r12, (%r15,%rsi,8)
	jmp	.L7012
.L7658:
	cmpq	$0, -792(%rbp)
	jne	.L7437
	movq	8(%r12), %rdx
	movzbq	2(%rdx), %r9
	movzbl	mode_size(%r9), %ebx
	cmpl	%ebx, -1344(%rbp)
	je	.L7027
.L7028:
	movzbq	2(%rdx), %r8
	movzbq	mode_size(%r8), %rdx
	cmpq	%rdx, -792(%rbp)
	je	.L7661
.L7026:
	cmpq	$0, -792(%rbp)
	jne	.L7034
	movzbl	2(%r12), %edi
	xorl	%edx, %edx
	movslq	%edi,%rbx
	movzbq	mode_size(%rbx), %rsi
	call	assign_stack_temp
	movq	%r12, %rsi
	movq	%rax, %rbx
	movq	%rax, %rdi
	call	emit_move_insn
	movl	$1, %r8d
	movl	$1, %ecx
	movq	%rbx, %rdi
	movl	%r15d, %esi
	xorl	%edx, %edx
	call	adjust_address_1
	jmp	.L7514
.L7034:
	movl	$.LC0, %edi
	movl	$2028, %esi
.L7582:
	movl	$.LC12, %edx
	jmp	.L7528
	.p2align 6,,7
.L7661:
	movq	16(%r12), %rsi
	movzbq	2(%rsi), %rcx
	movzbl	mode_size(%rcx), %r11d
	cmpl	%r11d, -1344(%rbp)
	jne	.L7026
.L7027:
	xorl	%edi, %edi
	movq	-784(%rbp), %r10
	movq	-776(%rbp), %rax
	cmpq	$0, -792(%rbp)
	setne	%dil
	leaq	(%rax,%r10,8), %rbx
	movq	8(%r12,%rdi,8), %rcx
	movq	%rcx, (%rbx)
	movzwl	(%rcx), %edx
	leal	-67(%rdx), %r12d
	cmpw	$1, %r12w
	jbe	.L7012
	cmpw	$54, %dx
	je	.L7012
	cmpw	$55, %dx
	je	.L7012
	cmpw	$58, %dx
	je	.L7012
	cmpw	$134, %dx
	je	.L7012
	cmpw	$56, %dx
	je	.L7012
	cmpw	$140, %dx
	je	.L7012
	cmpw	$61, %dx
	je	.L7662
.L7032:
	movslq	-764(%rbp),%rdx
	movl	-1344(%rbp), %r8d
	movl	%r15d, (%rsp)
	movl	$1, %ecx
	movl	%r15d, %r9d
	sall	$3, %r8d
	movq	%rdx, 8(%rsp)
	mov	%r8d, %esi
	xorl	%edx, %edx
	movq	(%rbx), %rdi
	xorl	%r8d, %r8d
	call	extract_bit_field
	movq	%rax, (%rbx)
	jmp	.L7012
.L7662:
	movzbl	2(%rcx), %r9d
	cmpl	%r15d, %r9d
	jne	.L7032
	jmp	.L7012
	.p2align 6,,7
.L7437:
	movq	8(%r12), %rdx
	jmp	.L7028
.L7448:
	movl	%r15d, %edi
	call	get_mode_alignment
	movq	16(%r12), %rdx
	testq	%rdx, %rdx
	je	.L7022
	cmpl	%eax, 32(%rdx)
	jae	.L7023
.L7436:
	movzwl	(%r12), %edx
	jmp	.L7021
.L7023:
	movq	-792(%rbp), %rbx
	movl	%r15d, %edi
	call	get_mode_alignment
	mov	%eax, %ecx
	salq	$3, %rbx
	movq	%rbx, %rax
	cqto
	idivq	%rcx
	testq	%rdx, %rdx
	jne	.L7436
	movq	-800(%rbp), %rax
	movzbl	mode_size(%rax), %esi
	cmpl	%esi, -1344(%rbp)
	jne	.L7436
	movl	%r15d, %edi
	call	gen_reg_rtx
	movl	$1, %r8d
	movl	$1, %ecx
	movq	-776(%rbp), %rdi
	movq	-784(%rbp), %r10
	movl	%r15d, %esi
	movq	-792(%rbp), %rdx
	leaq	(%rdi,%r10,8), %rbx
	movq	%r12, %rdi
	movq	%rax, (%rbx)
	call	adjust_address_1
	movq	(%rbx), %rdi
	movq	%rax, %rsi
	call	emit_move_insn
	jmp	.L7012
	.p2align 6,,7
.L7022:
	cmpl	$8, %eax
	ja	.L7436
	jmp	.L7023
.L7018:
	movzbl	2(%r14), %ecx
	movzbl	%cl, %r8d
	cmpl	%r15d, %r8d
	je	.L7016
	testb	%cl, %cl
	je	.L7016
	jmp	.L7017
.L7592:
	movl	$.LC0, %edi
	movl	$1978, %esi
	jmp	.L7582
.L7593:
	movl	$.LC0, %edi
	movl	$1953, %esi
	jmp	.L7582
	.p2align 6,,7
.L7636:
	cmpb	$29, 16(%r15)
	jne	.L6469
	movq	%r15, %rdi
	call	expr_size
	cmpw	$54, (%rax)
	movq	%rax, -1160(%rbp)
	je	.L7663
.L6470:
	movq	sizetype_tab(%rip), %rdi
	movq	-1160(%rbp), %rsi
	call	make_tree
	xorl	%esi, %esi
	movslq	32(%r15),%rdi
	movq	%rax, %r12
	call	size_int_wide
	movq	%r12, %rsi
	movl	$78, %edi
	movq	%rax, %rdx
	call	size_binop
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, -656(%rbp)
	call	expand_expr
	xorl	%edx, %edx
	movl	ptr_mode(%rip), %edi
	movq	%rax, %rsi
	movq	$0, -1288(%rbp)
	call	convert_to_mode
	movl	$8, %edx
	movq	%r14, -1232(%rbp)
	movq	%rax, -1208(%rbp)
	movq	%r13, -1224(%rbp)
	movq	%rax, -1240(%rbp)
	movq	16(%r13), %rax
	testq	%rax, %rax
	movq	%rax, %rsi
	je	.L6673
	movl	32(%rax), %edx
.L6673:
	movq	16(%r14), %rax
	testq	%rax, %rax
	movq	%rax, %rcx
	je	.L6674
	cmpl	32(%rax), %edx
	jb	.L6675
.L6670:
	testq	%rcx, %rcx
	movl	$8, -1212(%rbp)
	je	.L6671
	movl	32(%rcx), %r15d
	movl	%r15d, -1212(%rbp)
.L6671:
	cmpb	$51, 2(%r13)
	jne	.L7598
	cmpb	$51, 2(%r14)
	jne	.L7597
	movzwl	(%r13), %eax
	cmpl	$71, %eax
	je	.L6682
	cmpl	$66, %eax
	je	.L7664
.L6686:
	cmpl	$75, %eax
	je	.L6690
	cmpl	$78, %eax
	je	.L6690
.L6685:
	movzwl	(%r14), %eax
	cmpl	$71, %eax
	je	.L6695
	cmpl	$66, %eax
	je	.L7665
.L6699:
	cmpl	$75, %eax
	je	.L6703
	cmpl	$78, %eax
	je	.L6703
.L6698:
	movq	-1208(%rbp), %rdx
	movzwl	(%rdx), %eax
	cmpl	$71, %eax
	je	.L6708
	cmpl	$66, %eax
	je	.L7666
.L6712:
	cmpl	$75, %eax
	je	.L6716
	cmpl	$78, %eax
	je	.L6716
.L6711:
	movq	-1224(%rbp), %rsi
	cmpw	$66, (%rsi)
	jne	.L7596
	movq	-1232(%rbp), %r8
	cmpw	$66, (%r8)
	jne	.L7595
	cmpq	$0, -1240(%rbp)
	je	.L7594
	movq	-1240(%rbp), %rcx
	cmpw	$54, (%rcx)
	je	.L7667
.L6724:
	shrl	$3, -1212(%rbp)
	xorl	%edi, %edi
	mov	-1212(%rbp), %esi
	call	gen_rtx_CONST_INT
	movl	class_narrowest_mode+4(%rip), %r12d
	movl	$1, volatile_ok(%rip)
	movq	%rax, -680(%rbp)
	testl	%r12d, %r12d
	je	.L7381
.L6857:
	movslq	%r12d,%rax
	movl	movstr_optab(,%rax,4), %edx
	movq	%rax, -688(%rbp)
	cmpl	$1317, %edx
	je	.L6843
	movq	-1240(%rbp), %rcx
	cmpw	$54, (%rcx)
	je	.L7668
.L6847:
	testb	$2, target_flags+3(%rip)
	je	.L6848
	movq	-688(%rbp), %rcx
	cmpw	$63, mode_bitsize(%rcx,%rcx)
.L7506:
	jbe	.L6843
.L6846:
	movslq	%edx,%rax
	leaq	(%rax,%rax,4), %rdi
	movq	%rax, -696(%rbp)
	movq	insn_data+24(,%rdi,8), %r15
	movq	(%r15), %rax
	testq	%rax, %rax
	je	.L6850
	movq	-1224(%rbp), %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L6843
.L6850:
	movq	24(%r15), %rax
	testq	%rax, %rax
	jne	.L7669
.L6851:
	movq	72(%r15), %rax
	testq	%rax, %rax
	je	.L6852
	xorl	%esi, %esi
	movq	-680(%rbp), %rdi
	call	*%rax
	testl	%eax, %eax
	je	.L6843
.L6852:
	call	get_last_insn
	movl	$1, %edx
	movq	-1240(%rbp), %rsi
	movl	%r12d, %edi
	movq	%rax, -704(%rbp)
	call	convert_to_mode
	movq	%rax, %rbx
	movq	48(%r15), %rax
	testq	%rax, %rax
	jne	.L7670
.L6853:
	movq	-696(%rbp), %r9
	movq	-1224(%rbp), %rdi
	xorl	%eax, %eax
	movq	-1232(%rbp), %rsi
	movq	%rbx, %rdx
	movq	-680(%rbp), %rcx
	leaq	(%r9,%r9,4), %r10
	call	*insn_data+16(,%r10,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L7444
	movq	-704(%rbp), %rdi
	call	delete_insns_since
.L6843:
	movq	-688(%rbp), %rdx
	movzbl	mode_wider_mode(%rdx), %r12d
	testl	%r12d, %r12d
	jne	.L6857
.L7381:
	testb	$2, target_flags+3(%rip)
	movq	-1224(%rbp), %r15
	movl	$0, volatile_ok(%rip)
	setne	%cl
	movq	8(%r15), %rsi
	movzbl	%cl, %edi
	addl	$4, %edi
	call	copy_to_mode_reg
	movq	-1232(%rbp), %r11
	testb	$2, target_flags+3(%rip)
	setne	%sil
	movq	%rax, %r15
	movzbl	%sil, %edi
	movq	8(%r11), %rsi
	addl	$4, %edi
	call	copy_to_mode_reg
	movq	-1240(%rbp), %rsi
	movq	sizetype_tab(%rip), %r12
	movq	%rax, %rbx
	movzbl	61(%r12), %r8d
	shrb	$1, %r8b
	movzbl	%r8b, %edi
	call	copy_to_mode_reg
	cmpq	$0, fn.1(%rip)
	movq	%rax, -1280(%rbp)
	je	.L7671
.L6866:
	movq	global_trees+216(%rip), %rdi
	call	build_pointer_type
	movq	%r15, %rsi
	movq	%rax, %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	global_trees+216(%rip), %rdi
	movq	%rax, %r12
	call	build_pointer_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	%rax, (%r12)
	movq	%rax, %rbx
	movq	-1280(%rbp), %rsi
	movq	sizetype_tab(%rip), %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	fn.1(%rip), %r11
	movq	%rax, (%rbx)
	movq	(%r12), %rcx
	movq	8(%r11), %rdi
	movq	(%rcx), %rsi
	movq	$0, (%rsi)
	call	build_pointer_type
	movq	fn.1(%rip), %rdx
	movl	$121, %edi
	movq	%rax, %rsi
	call	build1
	movq	%r12, %rcx
	movl	$53, %edi
	movq	fn.1(%rip), %r8
	movq	%rax, %rdx
	xorl	%eax, %eax
	movq	8(%r8), %rbx
	xorl	%r8d, %r8d
	movq	8(%rbx), %rsi
	call	build
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	orb	$1, 17(%rax)
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	expand_expr
	testb	$4, 3(%r15)
	jne	.L7672
.L6855:
	movq	-1208(%rbp), %rdx
	cmpw	$54, (%rdx)
	je	.L7673
	movq	sizetype_tab(%rip), %r15
	movq	-1208(%rbp), %rcx
	xorl	%r8d, %r8d
	movq	optab_table+16(%rip), %rsi
	movq	-1160(%rbp), %rdx
	xorl	%r9d, %r9d
	movzbl	61(%r15), %r12d
	movl	$3, (%rsp)
	shrb	$1, %r12b
	movzbl	%r12b, %edi
	call	expand_binop
	movq	-656(%rbp), %rdi
	movq	%rax, %rbx
	call	highest_pow2_factor
	movq	-1208(%rbp), %rsi
	movq	%r13, %rdi
	movq	%rax, %rdx
	call	offset_address
	movq	%rax, %r13
	call	gen_label_rtx
	xorl	%r9d, %r9d
	movq	%rax, -1288(%rbp)
	movq	const_int_rtx+512(%rip), %rsi
	movq	%rbx, %rdi
	movzbl	2(%rbx), %r8d
	movl	$107, %edx
	xorl	%ecx, %ecx
	movq	%rax, (%rsp)
	call	emit_cmp_and_jump_insns
.L6869:
	cmpq	const_int_rtx+512(%rip), %rbx
	je	.L6870
	cmpw	$66, (%r13)
	movq	%r13, -1304(%rbp)
	je	.L7674
	movzbl	2(%r13), %edi
	call	get_mode_alignment
.L7507:
	movl	%eax, -1292(%rbp)
.L6872:
	movzbl	2(%r13), %eax
	cmpb	$51, %al
	je	.L6875
	cmpw	$54, (%rbx)
	je	.L7675
.L6875:
	movzwl	(%r13), %eax
	cmpl	$71, %eax
	je	.L6877
	cmpl	$66, %eax
	je	.L7676
.L6881:
	cmpl	$75, %eax
	je	.L6885
	cmpl	$78, %eax
	je	.L6885
.L6880:
	movzwl	(%rbx), %eax
	cmpl	$71, %eax
	je	.L6890
	cmpl	$66, %eax
	je	.L7677
.L6894:
	cmpl	$75, %eax
	je	.L6898
	cmpl	$78, %eax
	je	.L6898
.L6893:
	cmpw	$54, (%rbx)
	je	.L7678
.L6903:
	shrl	$3, -1292(%rbp)
	xorl	%edi, %edi
	mov	-1292(%rbp), %esi
	call	gen_rtx_CONST_INT
	movl	class_narrowest_mode+4(%rip), %r15d
	movq	%rax, -728(%rbp)
	testl	%r15d, %r15d
	je	.L7395
.L6997:
	movslq	%r15d,%rsi
	movl	clrstr_optab(,%rsi,4), %edx
	movq	%rsi, -736(%rbp)
	cmpl	$1317, %edx
	je	.L6984
	cmpw	$54, (%rbx)
	je	.L7679
.L6988:
	testb	$2, target_flags+3(%rip)
	je	.L6989
	movq	-736(%rbp), %rcx
	cmpw	$63, mode_bitsize(%rcx,%rcx)
.L7511:
	jbe	.L6984
.L6987:
	movslq	%edx,%rax
	leaq	(%rax,%rax,4), %rsi
	movq	%rax, -744(%rbp)
	movq	insn_data+24(,%rsi,8), %r11
	movq	(%r11), %rax
	movq	%r11, -752(%rbp)
	testq	%rax, %rax
	je	.L6991
	movq	-1304(%rbp), %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L6984
.L6991:
	movq	-752(%rbp), %r10
	movq	48(%r10), %rax
	testq	%rax, %rax
	je	.L6992
	xorl	%esi, %esi
	movq	-728(%rbp), %rdi
	call	*%rax
	testl	%eax, %eax
	je	.L6984
.L6992:
	call	get_last_insn
	movl	$1, %edx
	movq	%rbx, %rsi
	movl	%r15d, %edi
	movq	%rax, -760(%rbp)
	call	convert_to_mode
	movq	-752(%rbp), %rdx
	movq	%rax, %r12
	movq	24(%rdx), %rax
	testq	%rax, %rax
	jne	.L7680
.L6993:
	movq	-744(%rbp), %r9
	movq	-1304(%rbp), %rdi
	xorl	%eax, %eax
	movq	%r12, %rsi
	movq	-728(%rbp), %rdx
	leaq	(%r9,%r9,4), %r15
	call	*insn_data+16(,%r15,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L7512
	movq	-760(%rbp), %rdi
	call	delete_insns_since
.L6984:
	movq	-736(%rbp), %r12
	movzbl	mode_wider_mode(%r12), %r15d
	testl	%r15d, %r15d
	jne	.L6997
.L7395:
	testb	$2, target_flags+3(%rip)
	movq	-1304(%rbp), %r11
	setne	%sil
	movzbl	%sil, %edi
	movq	8(%r11), %rsi
	addl	$4, %edi
	call	copy_to_mode_reg
	movq	%rbx, %rsi
	movq	sizetype_tab(%rip), %r8
	movq	%rax, %r15
	movzbl	61(%r8), %ecx
	shrb	$1, %cl
	movzbl	%cl, %edi
	call	copy_to_mode_reg
	cmpq	$0, fn.0(%rip)
	movq	%rax, -1336(%rbp)
	je	.L7681
.L7002:
	movq	global_trees+216(%rip), %rdi
	call	build_pointer_type
	movq	%r15, %rsi
	movq	%rax, %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	const_int_rtx+512(%rip), %rsi
	movq	integer_types+40(%rip), %rdi
	movq	%rax, %r12
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	%rax, (%r12)
	movq	%rax, %rbx
	movq	-1336(%rbp), %rsi
	movq	sizetype_tab(%rip), %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	fn.0(%rip), %r8
	movq	%rax, (%rbx)
	movq	(%r12), %rsi
	movq	8(%r8), %rdi
	movq	(%rsi), %r11
	movq	$0, (%r11)
	call	build_pointer_type
	movq	fn.0(%rip), %rdx
	movl	$121, %edi
	movq	%rax, %rsi
	call	build1
	xorl	%r8d, %r8d
	movl	$53, %edi
	movq	fn.0(%rip), %rcx
	movq	%rax, %rdx
	xorl	%eax, %eax
	movq	8(%rcx), %r9
	movq	%r12, %rcx
	movq	8(%r9), %rsi
	call	build
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	orb	$1, 17(%rax)
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	expand_expr
	testb	$4, 3(%r15)
	jne	.L7682
.L6870:
	cmpq	$0, -1288(%rbp)
	je	.L6445
	movq	-1288(%rbp), %rdi
	call	emit_label
	jmp	.L6445
.L7682:
	movl	$49, %edi
	xorl	%esi, %esi
	movq	%r15, %rdx
	call	gen_rtx_fmt_e
	movq	%rax, %rdi
.L7512:
	call	emit_insn
	jmp	.L6870
.L7681:
	movl	$.LC7, %edi
	call	get_identifier
	movq	global_trees+216(%rip), %rdi
	movq	%rax, fn.0(%rip)
	call	build_pointer_type
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	build_function_type
	movq	fn.0(%rip), %rsi
	movl	$30, %edi
	movq	%rax, %rdx
	call	build_decl
	movl	$1, %esi
	movl	$fn.0, %edi
	movq	%rax, fn.0(%rip)
	call	ggc_add_tree_root
	movq	fn.0(%rip), %rdx
	xorl	%esi, %esi
	orb	$1, 49(%rdx)
	movq	fn.0(%rip), %r10
	orb	$8, 18(%r10)
	movq	fn.0(%rip), %rdi
	orb	$64, 50(%rdi)
	movq	fn.0(%rip), %rbx
	orb	$2, 18(%rbx)
	movq	fn.0(%rip), %rdi
	call	make_decl_rtl
	movq	fn.0(%rip), %rdi
	call	assemble_external
	jmp	.L7002
.L7680:
	movq	%r12, %rdi
	movl	%r15d, %esi
	call	*%rax
	testl	%eax, %eax
	jne	.L6993
	movq	%r12, %rsi
	movl	%r15d, %edi
	call	copy_to_mode_reg
	movq	%rax, %r12
	jmp	.L6993
	.p2align 6,,7
.L6989:
	movq	-736(%rbp), %r8
	cmpw	$31, mode_bitsize(%r8,%r8)
	jmp	.L7511
.L7679:
	movq	mode_mask_array(,%rsi,8), %r12
	shrq	$1, %r12
	cmpq	%r12, 8(%rbx)
	jbe	.L6987
	jmp	.L6988
.L7678:
	movq	8(%rbx), %r15
	xorl	%r8d, %r8d
	movl	$17, %esi
.L6916:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L7384
.L6913:
	movslq	%ecx,%r11
	movzbq	mode_size(%r11), %r12
	cmpq	%rsi, %r12
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r11), %ecx
	testl	%ecx, %ecx
	jne	.L6913
.L7384:
	testl	%edi, %edi
	je	.L6906
	movslq	%edi,%r12
	movq	%r12, %rsi
	salq	$4, %rsi
	addq	optab_table+240(%rip), %rsi
	cmpl	$1317, 8(%rsi)
	je	.L6915
	movq	%r8, -1464(%rbp)
	call	get_mode_alignment
	movl	$128, %r8d
	cmpl	%eax, %r8d
	movq	-1464(%rbp), %r8
	jb	.L6915
	movzbq	mode_size(%r12), %rdi
	movq	%r15, %rax
	xorl	%edx, %edx
	divq	%rdi
	addq	%rax, %r8
	movq	%rdx, %r15
.L6915:
	movzbq	mode_size(%r12), %rsi
	cmpq	$1, %rsi
	ja	.L6916
.L6906:
	testq	%r15, %r15
	jne	.L7587
	movl	optimize_size(%rip), %eax
	testl	%eax, %eax
	jne	.L6919
	movq	ix86_cost(%rip), %r9
	mov	40(%r9), %r10d
	cmpq	%r10, %r8
	jae	.L6903
.L6920:
	movq	8(%rbx), %r12
	movq	-1304(%rbp), %rsi
	xorl	%edx, %edx
	testb	$2, target_flags+3(%rip)
	movq	$clear_by_pieces_1, -232(%rbp)
	movq	$0, -224(%rbp)
	setne	%dl
	movq	%r12, -248(%rbp)
	movq	%rsi, -272(%rbp)
	leaq	-272(%rbp), %r12
	movq	8(%rsi), %r8
	leaq	16(%r12), %rcx
	xorl	%esi, %esi
	movq	$0, -240(%rbp)
	movl	$0, -1316(%rbp)
	leaq	5(,%rdx,4), %r11
	movq	%r8, -264(%rbp)
	movq	%r11, -1328(%rbp)
	movzwl	(%r8), %edx
	leal	-96(%rdx), %ebx
	cmpw	$1, %bx
	jbe	.L6924
	cmpw	$99, %dx
	je	.L6924
	cmpw	$98, %dx
	je	.L6924
.L6923:
	movl	%esi, (%rcx)
	movl	$0, 20(%r12)
	leaq	56(%r12), %rdx
	movzwl	(%r8), %eax
	xorl	%ecx, %ecx
	cmpw	$96, %ax
	je	.L6926
	cmpw	$98, %ax
	je	.L6926
.L6925:
	movl	%ecx, (%rdx)
	movl	56(%r12), %eax
	testl	%eax, %eax
	je	.L6927
	movq	24(%r12), %r15
	movq	%r15, 32(%r12)
.L6927:
	movl	16(%r12), %eax
	testl	%eax, %eax
	jne	.L6928
	movq	24(%r12), %r15
	movq	$0, -1312(%rbp)
	movl	$17, %esi
.L6941:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L7387
.L6938:
	movslq	%ecx,%r10
	movzbq	mode_size(%r10), %r9
	cmpq	%rsi, %r9
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r10), %ecx
	testl	%ecx, %ecx
	jne	.L6938
.L7387:
	testl	%edi, %edi
	je	.L6931
	movslq	%edi,%rbx
	movq	%rbx, %rcx
	salq	$4, %rcx
	addq	optab_table+240(%rip), %rcx
	cmpl	$1317, 8(%rcx)
	je	.L6940
	movq	%r8, -1464(%rbp)
	call	get_mode_alignment
	movl	$128, %r8d
	cmpl	%eax, %r8d
	movq	-1464(%rbp), %r8
	jb	.L6940
	movzbq	mode_size(%rbx), %rsi
	movq	%r15, %rax
	xorl	%edx, %edx
	divq	%rsi
	addq	%rax, -1312(%rbp)
	movq	%rdx, %r15
.L6940:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L6941
.L6931:
	testq	%r15, %r15
	jne	.L7587
	cmpq	$2, -1312(%rbp)
	jbe	.L6928
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L7389
.L6949:
	movslq	%ecx,%rbx
	movzbq	mode_size(%rbx), %rdx
	cmpq	-1328(%rbp), %rdx
	cmovae	-1316(%rbp), %ecx
	movl	%ecx, -1316(%rbp)
	movzbl	mode_wider_mode(%rbx), %ecx
	testl	%ecx, %ecx
	jne	.L6949
.L7389:
	movl	16(%r12), %eax
	testl	%eax, %eax
	jne	.L6928
	movzwl	(%r8), %edx
	leal	-67(%rdx), %r15d
	cmpw	$1, %r15w
	jbe	.L6953
	cmpw	$54, %dx
	je	.L6953
	cmpw	$55, %dx
	je	.L6953
	cmpw	$58, %dx
	je	.L6953
	cmpw	$134, %dx
	je	.L6953
	cmpw	$56, %dx
	je	.L6953
	cmpw	$140, %dx
	je	.L6953
.L6928:
	cmpq	$1, -1328(%rbp)
	jbe	.L6956
.L6977:
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L7392
.L6963:
	movslq	%ecx,%r10
	movzbq	mode_size(%r10), %r9
	cmpq	-1328(%rbp), %r9
	cmovae	-1316(%rbp), %ecx
	movl	%ecx, -1316(%rbp)
	movzbl	mode_wider_mode(%r10), %ecx
	testl	%ecx, %ecx
	jne	.L6963
.L7392:
	movl	-1316(%rbp), %ecx
	testl	%ecx, %ecx
	je	.L6956
	movslq	-1316(%rbp),%r8
	movq	%r8, -712(%rbp)
	salq	$4, %r8
	addq	optab_table+240(%rip), %r8
	movl	8(%r8), %ebx
	cmpl	$1317, %ebx
	je	.L6965
	movl	-1316(%rbp), %edi
	call	get_mode_alignment
	movl	$128, %edi
	cmpl	%eax, %edi
	jb	.L6965
	movq	-712(%rbp), %r11
	movslq	%ebx,%rdx
	leaq	(%rdx,%rdx,4), %rbx
	movq	insn_data+16(,%rbx,8), %rsi
	movzbq	mode_size(%r11), %rdx
	cmpq	%rdx, 24(%r12)
	movq	%rsi, -720(%rbp)
	movq	%rdx, %r15
	jb	.L6965
	movl	56(%r12), %ecx
.L6975:
	testl	%ecx, %ecx
	je	.L6969
	subq	%rdx, 32(%r12)
.L6969:
	movl	16(%r12), %eax
	testl	%eax, %eax
	je	.L6970
	movq	(%r12), %rdi
	movl	-1316(%rbp), %esi
	movl	$1, %r8d
	movq	8(%r12), %rdx
	movq	32(%r12), %rcx
	call	adjust_automodify_address_1
.L7510:
	movl	-1316(%rbp), %edx
	movq	%rax, %rbx
	movq	48(%r12), %rdi
	movq	32(%r12), %rsi
	call	*40(%r12)
	movq	%rbx, %rdi
	movq	%rax, %rsi
	xorl	%eax, %eax
	call	*-720(%rbp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%r12), %eax
	testl	%eax, %eax
	movl	%eax, %ecx
	jne	.L6974
	addq	%r15, 32(%r12)
.L6974:
	movq	24(%r12), %r10
	movq	%r15, %rdx
	subq	%r15, %r10
	cmpq	%r15, %r10
	movq	%r10, 24(%r12)
	jae	.L6975
.L6965:
	movq	-712(%rbp), %r9
	movzbq	mode_size(%r9), %r15
	cmpq	$1, %r15
	movq	%r15, -1328(%rbp)
	ja	.L6977
.L6956:
	cmpq	$0, 24(%r12)
	je	.L6870
.L7547:
	movl	$.LC0, %edi
	movl	$2524, %esi
	movl	$.LC6, %edx
	jmp	.L7528
	.p2align 6,,7
.L6970:
	movq	(%r12), %rdi
	movl	-1316(%rbp), %esi
	movl	$1, %ecx
	movq	32(%r12), %rdx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L7510
.L6953:
	movq	%r8, %rdi
	call	copy_addr_to_reg
	movq	%rax, 8(%r12)
	jmp	.L6928
.L6926:
	movl	$1, %ecx
	jmp	.L6925
.L6924:
	movl	$1, %esi
	jmp	.L6923
.L6919:
	cmpq	$2, %r8
	ja	.L6903
	jmp	.L6920
.L6898:
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%rbx), %rdi
	movq	%rax, %r15
	call	protect_from_queue
	cmpq	8(%rbx), %r15
	movq	%rax, %r12
	je	.L7683
.L6900:
	movq	%rbx, %rdi
	call	copy_rtx
	movq	%rax, %rbx
	movq	%r15, 8(%rax)
	movq	%r12, 16(%rax)
	jmp	.L6893
.L7683:
	cmpq	16(%rbx), %rax
	jne	.L6900
	jmp	.L6893
.L7677:
	cmpb	$51, 2(%rbx)
	je	.L6891
	movq	8(%rbx), %r15
	cmpw	$71, (%r15)
	je	.L7684
.L6891:
	cmpl	$66, %eax
	jne	.L6894
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%rbx), %rax
	movq	%rax, %r12
	je	.L6893
	movq	%rbx, %rdi
	call	copy_rtx
	movq	%rax, %rbx
	movq	%r12, 8(%rax)
	jmp	.L6893
.L7684:
	movq	8(%r15), %rsi
	movq	%rbx, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%r15)
	movq	%rax, %r12
	je	.L6892
	movzbl	2(%rbx), %edi
	call	gen_reg_rtx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	gen_move_insn
	movq	16(%r15), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L6893
.L6892:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%r12, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L7509:
	movq	%rax, %rbx
	jmp	.L6893
.L6890:
	cmpq	$0, 16(%rbx)
	je	.L7685
	movq	24(%rbx), %rax
	testq	%rax, %rax
	jne	.L7509
	movq	8(%rbx), %rdx
	movzbl	2(%rdx), %edi
	call	gen_reg_rtx
	movq	8(%rbx), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%rbx)
	call	gen_move_insn
	movq	16(%rbx), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%rbx), %rbx
	jmp	.L6893
.L7685:
	movq	8(%rbx), %rdi
	call	copy_to_reg
	jmp	.L7509
.L6885:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, %r15
	call	protect_from_queue
	cmpq	8(%r13), %r15
	movq	%rax, %r12
	je	.L7686
.L6887:
	movq	%r13, %rdi
	call	copy_rtx
	movq	%rax, -1304(%rbp)
	movq	%r15, 8(%rax)
	movq	-1304(%rbp), %rax
	movq	%r12, 16(%rax)
	jmp	.L6880
.L7686:
	cmpq	16(%r13), %rax
	jne	.L6887
	jmp	.L6880
.L7676:
	jne	.L6881
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%r13), %rax
	movq	%rax, %r12
	je	.L6880
	movq	%r13, %rdi
	call	copy_rtx
	movq	%rax, -1304(%rbp)
	movq	%r12, 8(%rax)
	jmp	.L6880
.L6877:
	cmpq	$0, 16(%r13)
	je	.L7687
	movq	24(%r13), %r10
	testq	%r10, %r10
	movq	%r10, -1304(%rbp)
	jne	.L6880
	movq	8(%r13), %r9
	movzbl	2(%r9), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %rax
.L7508:
	movq	%rax, -1304(%rbp)
	jmp	.L6880
.L7687:
	movq	8(%r13), %rdi
	call	copy_to_reg
	jmp	.L7508
.L7675:
	movzbl	%al, %edx 
	movzbl	mode_size(%rdx), %edi
	cmpl	8(%rbx), %edi
	jne	.L6875
	movq	const_tiny_rtx(,%rdx,8), %rsi
	movq	%r13, %rdi
	call	emit_move_insn
	jmp	.L6870
.L7674:
	movq	16(%r13), %rax
	movl	$8, -1292(%rbp)
	testq	%rax, %rax
	je	.L6872
	movl	32(%rax), %eax
	jmp	.L7507
.L7673:
	movq	8(%rdx), %rsi
	movq	-1160(%rbp), %rdi
	negq	%rsi
	call	plus_constant_wide
	movl	$1, %r8d
	movl	$1, %ecx
	movq	%r13, %rdi
	movl	$51, %esi
	movq	%rax, %rbx
	movq	-1208(%rbp), %r13
	movq	8(%r13), %rdx
	call	adjust_address_1
	movq	%rax, %r13
	jmp	.L6869
.L7672:
	movl	$49, %edi
	xorl	%esi, %esi
	movq	%r15, %rdx
	call	gen_rtx_fmt_e
	movq	%rax, %rdi
	call	emit_insn
	jmp	.L6855
.L7671:
	movl	$.LC11, %edi
	call	get_identifier
	movq	global_trees+216(%rip), %rdi
	movq	%rax, fn.1(%rip)
	call	build_pointer_type
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	build_function_type
	movq	fn.1(%rip), %rsi
	movl	$30, %edi
	movq	%rax, %rdx
	call	build_decl
	movl	$1, %esi
	movl	$fn.1, %edi
	movq	%rax, fn.1(%rip)
	call	ggc_add_tree_root
	movq	fn.1(%rip), %rdx
	xorl	%esi, %esi
	orb	$1, 49(%rdx)
	movq	fn.1(%rip), %r9
	orb	$8, 18(%r9)
	movq	fn.1(%rip), %r10
	orb	$64, 50(%r10)
	movq	fn.1(%rip), %rdi
	orb	$2, 18(%rdi)
	movq	fn.1(%rip), %rdi
	call	make_decl_rtl
	movq	fn.1(%rip), %rdi
	call	assemble_external
	jmp	.L6866
.L7444:
	call	emit_insn
	movl	$0, volatile_ok(%rip)
	jmp	.L6855
.L7670:
	movq	%rbx, %rdi
	movl	%r12d, %esi
	call	*%rax
	testl	%eax, %eax
	jne	.L6853
	movq	%rbx, %rsi
	movl	%r12d, %edi
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L6853
	.p2align 6,,7
.L7669:
	movq	-1232(%rbp), %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L6843
	jmp	.L6851
.L6848:
	movq	-688(%rbp), %rbx
	cmpw	$31, mode_bitsize(%rbx,%rbx)
	jmp	.L7506
.L7668:
	movq	mode_mask_array(,%rax,8), %r11
	shrq	$1, %r11
	cmpq	%r11, 8(%rcx)
	jbe	.L6846
	jmp	.L6847
.L7667:
	movq	8(%rcx), %r12
	xorl	%r15d, %r15d
	movl	$17, %esi
.L6737:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L7370
.L6734:
	movslq	%ecx,%r9
	movzbq	mode_size(%r9), %rbx
	cmpq	%rsi, %rbx
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r9), %ecx
	testl	%ecx, %ecx
	jne	.L6734
.L7370:
	testl	%edi, %edi
	je	.L6727
	movslq	%edi,%rbx
	movq	%rbx, %r11
	salq	$4, %r11
	addq	optab_table+240(%rip), %r11
	cmpl	$1317, 8(%r11)
	je	.L6736
	call	get_mode_alignment
	movl	$128, %ecx
	cmpl	%eax, %ecx
	jb	.L6736
	movzbq	mode_size(%rbx), %r10
	movq	%r12, %rax
	xorl	%edx, %edx
	divq	%r10
	addq	%rax, %r15
	movq	%rdx, %r12
.L6736:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L6737
.L6727:
	testq	%r12, %r12
	jne	.L7587
	movl	optimize_size(%rip), %eax
	testl	%eax, %eax
	jne	.L6740
	movq	ix86_cost(%rip), %rsi
	mov	40(%rsi), %edx
	cmpq	%rdx, %r15
	jae	.L6724
.L6741:
	movq	-1240(%rbp), %r8
	movq	-1232(%rbp), %rax
	movq	-1224(%rbp), %r10
	movq	-1224(%rbp), %r11
	testb	$2, target_flags+3(%rip)
	movq	8(%r8), %r12
	setne	%r15b
	movq	8(%rax), %r8
	movq	$0, -296(%rbp)
	movl	$0, -1260(%rbp)
	movq	%r8, -320(%rbp)
	movzbl	%r15b, %ecx
	movq	8(%r10), %rdi
	movq	%r11, -352(%rbp)
	leal	5(,%rcx,4), %r15d
	xorl	%ecx, %ecx
	movq	%rdi, -1248(%rbp)
	movq	-1248(%rbp), %rbx
	movzwl	(%rbx), %edx
	leal	-96(%rdx), %r9d
	cmpw	$1, %r9w
	jbe	.L6746
	cmpw	$99, %dx
	je	.L6746
	cmpw	$98, %dx
	je	.L6746
.L6745:
	movq	-1248(%rbp), %rsi
	movl	%ecx, -336(%rbp)
	xorl	%edx, %edx
	movzwl	(%rsi), %eax
	cmpw	$96, %ax
	je	.L6748
	cmpw	$98, %ax
	je	.L6748
.L6747:
	movl	%edx, -288(%rbp)
	movq	-1248(%rbp), %r11
	xorl	%ecx, %ecx
	movq	-1232(%rbp), %rdx
	movq	%r11, -344(%rbp)
	movq	%rdx, -328(%rbp)
	movzwl	(%r8), %edx
	leal	-96(%rdx), %r9d
	cmpw	$1, %r9w
	jbe	.L6751
	cmpw	$99, %dx
	je	.L6751
	cmpw	$98, %dx
	je	.L6751
.L6750:
	movl	-288(%rbp), %ebx
	movl	%ecx, -312(%rbp)
	movl	$0, -308(%rbp)
	movl	$0, -332(%rbp)
	testl	%ebx, %ebx
	je	.L6752
	movq	%r12, -296(%rbp)
.L6752:
	movl	-312(%rbp), %edi
	movq	%r12, -304(%rbp)
	testl	%edi, %edi
	je	.L6754
	movl	-336(%rbp), %r10d
	testl	%r10d, %r10d
	jne	.L6753
.L6754:
	movq	$0, -1256(%rbp)
	movl	$17, %esi
.L6767:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L7373
.L6764:
	movslq	%ecx,%r9
	movzbq	mode_size(%r9), %rdx
	cmpq	%rsi, %rdx
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r9), %ecx
	testl	%ecx, %ecx
	jne	.L6764
.L7373:
	testl	%edi, %edi
	je	.L6757
	movslq	%edi,%rbx
	movq	%rbx, %rcx
	salq	$4, %rcx
	addq	optab_table+240(%rip), %rcx
	cmpl	$1317, 8(%rcx)
	je	.L6766
	movq	%r8, -1464(%rbp)
	call	get_mode_alignment
	movl	$128, %r8d
	cmpl	%eax, %r8d
	movq	-1464(%rbp), %r8
	jb	.L6766
	movzbq	mode_size(%rbx), %rsi
	movq	%r12, %rax
	xorl	%edx, %edx
	divq	%rsi
	addq	%rax, -1256(%rbp)
	movq	%rdx, %r12
.L6766:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L6767
.L6757:
	testq	%r12, %r12
	jne	.L7587
	cmpq	$2, -1256(%rbp)
	jbe	.L6753
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L7375
.L6775:
	movslq	%ecx,%rbx
	movzbl	mode_size(%rbx), %edi
	cmpl	%r15d, %edi
	cmovae	-1260(%rbp), %ecx
	movl	%ecx, -1260(%rbp)
	movzbl	mode_wider_mode(%rbx), %ecx
	testl	%ecx, %ecx
	jne	.L6775
.L7375:
	movl	-312(%rbp), %eax
	testl	%eax, %eax
	jne	.L6781
	movzwl	(%r8), %edx
	leal	-67(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L6779
	cmpw	$54, %dx
	je	.L6779
	cmpw	$55, %dx
	je	.L6779
	cmpw	$58, %dx
	je	.L6779
	cmpw	$134, %dx
	je	.L6779
	cmpw	$56, %dx
	je	.L6779
	cmpw	$140, %dx
	je	.L6779
.L6781:
	movl	-336(%rbp), %r9d
	testl	%r9d, %r9d
	jne	.L6753
	movq	-1248(%rbp), %r8
	movzwl	(%r8), %edx
	leal	-67(%rdx), %ecx
	cmpw	$1, %cx
	jbe	.L6783
	cmpw	$54, %dx
	je	.L6783
	cmpw	$55, %dx
	je	.L6783
	cmpw	$58, %dx
	je	.L6783
	cmpw	$134, %dx
	je	.L6783
	cmpw	$56, %dx
	je	.L6783
	cmpw	$140, %dx
	je	.L6783
.L6753:
	cmpl	$1, %r15d
	jbe	.L6786
.L6837:
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L7378
.L6793:
	movslq	%ecx,%r12
	movzbl	mode_size(%r12), %edx
	cmpl	%r15d, %edx
	cmovae	-1260(%rbp), %ecx
	movl	%ecx, -1260(%rbp)
	movzbl	mode_wider_mode(%r12), %ecx
	testl	%ecx, %ecx
	jne	.L6793
.L7378:
	movl	-1260(%rbp), %r15d
	testl	%r15d, %r15d
	je	.L6786
	movslq	-1260(%rbp),%rsi
	movq	%rsi, %r11
	movq	%rsi, -664(%rbp)
	salq	$4, %r11
	addq	optab_table+240(%rip), %r11
	movl	8(%r11), %ebx
	cmpl	$1317, %ebx
	je	.L6795
	movl	-1260(%rbp), %edi
	call	get_mode_alignment
	movl	$128, %edi
	cmpl	%eax, %edi
	jb	.L6795
	movq	-664(%rbp), %rax
	movslq	%ebx,%r9
	leaq	-352(%rbp), %r12
	leaq	(%r9,%r9,4), %r10
	movq	$0, -1272(%rbp)
	movq	insn_data+16(,%r10,8), %rbx
	movzbq	mode_size(%rax), %rdx
	cmpq	%rdx, -304(%rbp)
	movq	%rbx, -672(%rbp)
	movq	%rdx, -904(%rbp)
	jb	.L6795
	movl	-288(%rbp), %ecx
.L6835:
	testl	%ecx, %ecx
	je	.L6799
	subq	%rdx, 56(%r12)
.L6799:
	movq	(%r12), %rdi
	testq	%rdi, %rdi
	je	.L6800
	movl	16(%r12), %eax
	testl	%eax, %eax
	je	.L6801
	movl	-1260(%rbp), %esi
	movq	8(%r12), %rdx
	movl	$1, %r8d
	movq	56(%r12), %rcx
	call	adjust_automodify_address_1
.L7502:
	movq	%rax, -1272(%rbp)
.L6800:
	movl	40(%r12), %eax
	testl	%eax, %eax
	je	.L6803
	movq	24(%r12), %rdi
	movl	-1260(%rbp), %esi
	movl	$1, %r8d
	movq	32(%r12), %rdx
	movq	56(%r12), %rcx
	call	adjust_automodify_address_1
.L7503:
	cmpq	$0, (%r12)
	movq	%rax, %r15
	jne	.L7688
	movl	target_flags(%rip), %eax
	testl	$33554432, %eax
	movl	%eax, %esi
	je	.L6809
	movq	-664(%rbp), %r8
	movzbl	mode_size(%r8), %ecx
	leal	7(%rcx), %edx
	andl	$-8, %edx
.L6810:
	movq	cfun(%rip), %rdi
	andl	$33554432, %esi
	movq	16(%rdi), %rbx
	leaq	8(%rbx), %rdi
	movl	8(%rbx), %ecx
	je	.L6811
	movq	-664(%rbp), %rsi
	movzbl	mode_size(%rsi), %eax
	addl	$7, %eax
	andl	$-8, %eax
.L7504:
	movq	-664(%rbp), %r9
	leal	(%rax,%rcx), %r8d
	movl	%r8d, (%rdi)
	salq	$4, %r9
	addq	optab_table+384(%rip), %r9
	movl	8(%r9), %eax
	cmpl	$1317, %eax
	je	.L6813
	movslq	%eax,%rbx
	leaq	(%rbx,%rbx,4), %r11
	movq	insn_data+24(,%r11,8), %rcx
	movq	(%rcx), %rax
	testq	%rax, %rax
	je	.L6814
	movq	%r15, %rdi
	movl	-1260(%rbp), %esi
	call	*%rax
	testl	%eax, %eax
	je	.L7689
.L6814:
	leaq	(%rbx,%rbx,4), %rsi
	movq	%r15, %rdi
	xorl	%eax, %eax
	call	*insn_data+16(,%rsi,8)
.L7505:
	movq	%rax, %rdi
	call	emit_insn
.L6833:
	movl	64(%r12), %eax
	testl	%eax, %eax
	movl	%eax, %ecx
	jne	.L6834
	movq	-904(%rbp), %r15
	addq	%r15, 56(%r12)
.L6834:
	movq	48(%r12), %r8
	movq	-904(%rbp), %rdx
	subq	-904(%rbp), %r8
	cmpq	%rdx, %r8
	movq	%r8, 48(%r12)
	jae	.L6835
.L6795:
	movq	-664(%rbp), %r12
	movzbl	mode_size(%r12), %r15d
	cmpl	$1, %r15d
	ja	.L6837
.L6786:
	cmpq	$0, -304(%rbp)
	je	.L6855
	jmp	.L7537
.L7689:
	movl	-1260(%rbp), %edi
	movq	%r15, %rsi
	call	force_reg
	movq	%rax, %r15
	jmp	.L6814
.L6813:
	movq	-664(%rbp), %rax
	movzbl	mode_size(%rax), %ebx
	cmpl	%edx, %ebx
	je	.L7690
	mov	%edx, %esi
	xorl	%edi, %edi
	negq	%rsi
	call	gen_rtx_CONST_INT
	movq	global_rtl+16(%rip), %rdx
	movl	$75, %edi
	testb	$2, target_flags+3(%rip)
	movq	%rax, %rcx
	setne	%r10b
	movzbl	%r10b, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_ee
	movq	global_rtl+16(%rip), %rdx
	testb	$2, target_flags+3(%rip)
	setne	%dil
	movq	%rax, %rcx
	movzbl	%dil, %esi
	movl	$100, %edi
	addl	$4, %esi
	call	gen_rtx_fmt_ee
.L6821:
	movl	-1260(%rbp), %edi
	movq	%rax, %rsi
	call	gen_rtx_MEM
	xorl	%r9d, %r9d
	testq	%r9, %r9
	movq	%rax, %rbx
	je	.L6830
	movq	%rax, %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	call	set_mem_attributes
	movl	flag_optimize_sibling_calls(%rip), %eax
	testl	%eax, %eax
	jne	.L7691
.L6830:
	movq	%rbx, %rdi
	movq	%r15, %rsi
	call	emit_move_insn
	jmp	.L6833
.L7691:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	call	set_mem_alias_set
	jmp	.L6830
.L7690:
	testb	$2, target_flags+3(%rip)
	movl	$96, %edi
	setne	%dl
	movzbl	%dl, %esi
	movq	global_rtl+16(%rip), %rdx
	addl	$4, %esi
	call	gen_rtx_fmt_e
	jmp	.L6821
	.p2align 6,,7
.L6811:
	movq	-664(%rbp), %r10
	movzbl	mode_size(%r10), %eax
	incl	%eax
	andl	$-2, %eax
	jmp	.L7504
.L6809:
	movq	-664(%rbp), %rdx
	movzbl	mode_size(%rdx), %r11d
	leal	1(%r11), %edx
	andl	$-2, %edx
	jmp	.L6810
.L7688:
	movq	%rax, %rsi
	movq	-1272(%rbp), %rdi
	xorl	%eax, %eax
	call	*-672(%rbp)
	jmp	.L7505
.L6803:
	movq	24(%r12), %rdi
	movl	-1260(%rbp), %esi
	movl	$1, %ecx
	movq	56(%r12), %rdx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L7503
.L6801:
	movl	-1260(%rbp), %esi
	movq	56(%r12), %rdx
	movl	$1, %ecx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L7502
.L6783:
	movq	-1248(%rbp), %rdi
	call	copy_addr_to_reg
	movq	%rax, -344(%rbp)
	jmp	.L6753
.L6779:
	movq	%r8, %rdi
	call	copy_addr_to_reg
	movq	%rax, -320(%rbp)
	jmp	.L6781
.L6751:
	movl	$1, %ecx
	jmp	.L6750
.L6748:
	movl	$1, %edx
	jmp	.L6747
.L6746:
	movl	$1, %ecx
	jmp	.L6745
.L6740:
	cmpq	$2, %r15
	ja	.L6724
	jmp	.L6741
.L6716:
	movq	-1208(%rbp), %r15
	xorl	%esi, %esi
	movq	8(%r15), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	-1208(%rbp), %rbx
	movq	%rax, %r12
	movq	16(%rbx), %rdi
	call	protect_from_queue
	movq	-1208(%rbp), %rcx
	movq	%rax, %rbx
	cmpq	8(%rcx), %r12
	je	.L7692
.L6718:
	movq	-1208(%rbp), %rdi
	call	copy_rtx
	movq	%rax, -1240(%rbp)
	movq	%r12, 8(%rax)
	movq	-1240(%rbp), %rax
	movq	%rbx, 16(%rax)
	jmp	.L6711
.L7692:
	cmpq	16(%rcx), %rax
	jne	.L6718
	jmp	.L6711
.L7666:
	cmpb	$51, 2(%rdx)
	je	.L6709
	movq	8(%rdx), %r12
	cmpw	$71, (%r12)
	je	.L7693
.L6709:
	cmpl	$66, %eax
	jne	.L6712
	movq	-1208(%rbp), %r12
	xorl	%esi, %esi
	movq	8(%r12), %rdi
	call	protect_from_queue
	movq	-1208(%rbp), %rsi
	movq	%rax, %rbx
	cmpq	8(%rsi), %rax
	je	.L6711
	movq	%rsi, %rdi
	call	copy_rtx
	movq	%rax, -1240(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L6711
.L7693:
	movq	8(%r12), %rsi
	movq	%rdx, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%r12)
	movq	%rax, %rbx
	je	.L6710
	movq	-1208(%rbp), %r9
	movzbl	2(%r9), %edi
	call	gen_reg_rtx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, -1240(%rbp)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L6711
.L6710:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L7501:
	movq	%rax, -1240(%rbp)
	jmp	.L6711
.L6708:
	movq	-1208(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.L7694
	movq	-1208(%rbp), %rcx
	movq	24(%rcx), %r11
	testq	%r11, %r11
	movq	%r11, -1240(%rbp)
	jne	.L6711
	movq	-1208(%rbp), %r10
	movq	8(%r10), %rdx
	movzbl	2(%rdx), %edi
	call	gen_reg_rtx
	movq	-1208(%rbp), %r12
	movq	%rax, %rdi
	movq	8(%r12), %rsi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %rdi
	movq	%rdi, -1240(%rbp)
	jmp	.L6711
.L7694:
	movq	8(%rax), %rdi
	call	copy_to_reg
	jmp	.L7501
.L6703:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r14), %rdi
	movq	%rax, %r12
	call	protect_from_queue
	cmpq	8(%r14), %r12
	movq	%rax, %rbx
	je	.L7695
.L6705:
	movq	%r14, %rdi
	call	copy_rtx
	movq	%rax, -1232(%rbp)
	movq	%r12, 8(%rax)
	movq	-1232(%rbp), %r10
	movq	%rbx, 16(%r10)
	jmp	.L6698
.L7695:
	cmpq	16(%r14), %rax
	jne	.L6705
	jmp	.L6698
.L7665:
	cmpb	$51, 2(%r14)
	je	.L6696
	movq	8(%r14), %r12
	cmpw	$71, (%r12)
	je	.L7696
.L6696:
	cmpl	$66, %eax
	jne	.L6699
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%r14), %rax
	movq	%rax, %rbx
	je	.L6698
	movq	%r14, %rdi
	call	copy_rtx
	movq	%rax, -1232(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L6698
.L7696:
	movq	8(%r12), %rsi
	movq	%r14, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%r12)
	movq	%rax, %rbx
	je	.L6697
	movzbl	2(%r14), %edi
	call	gen_reg_rtx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, -1232(%rbp)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L6698
.L6697:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L7500:
	movq	%rax, -1232(%rbp)
	jmp	.L6698
.L6695:
	cmpq	$0, 16(%r14)
	je	.L7697
	movq	24(%r14), %rsi
	testq	%rsi, %rsi
	movq	%rsi, -1232(%rbp)
	jne	.L6698
	movq	8(%r14), %r8
	movzbl	2(%r8), %edi
	call	gen_reg_rtx
	movq	8(%r14), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r14), %rax
	jmp	.L7500
.L7697:
	movq	8(%r14), %rdi
	call	copy_to_reg
	jmp	.L7500
.L6690:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, %r12
	call	protect_from_queue
	cmpq	8(%r13), %r12
	movq	%rax, %rbx
	je	.L7698
.L6692:
	movq	%r13, %rdi
	call	copy_rtx
	movq	%rax, -1224(%rbp)
	movq	%r12, 8(%rax)
	movq	-1224(%rbp), %r11
	movq	%rbx, 16(%r11)
	jmp	.L6685
.L7698:
	cmpq	16(%r13), %rax
	jne	.L6692
	jmp	.L6685
.L7664:
	jne	.L6686
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%r13), %rax
	movq	%rax, %rbx
	je	.L6685
	movq	%r13, %rdi
	call	copy_rtx
	movq	%rax, -1224(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L6685
.L6682:
	testq	%rsi, %rsi
	je	.L7699
	movq	24(%r13), %rcx
	testq	%rcx, %rcx
	movq	%rcx, -1224(%rbp)
	jne	.L6685
	movq	8(%r13), %rdx
	movzbl	2(%rdx), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %rdi
	movq	%rdi, -1224(%rbp)
	jmp	.L6685
.L7699:
	movq	8(%r13), %rdi
	call	copy_to_reg
	movq	%rax, -1224(%rbp)
	jmp	.L6685
	.p2align 6,,7
.L6675:
	testq	%rsi, %rsi
	movl	$8, -1212(%rbp)
	je	.L6671
	movl	32(%rsi), %eax
	movl	%eax, -1212(%rbp)
	jmp	.L6671
	.p2align 6,,7
.L6674:
	cmpl	$7, %edx
	ja	.L6670
	jmp	.L6675
.L7663:
	movq	-1160(%rbp), %rax
	movslq	32(%r15),%rcx
	cmpq	%rcx, 8(%rax)
	jge	.L6470
	movq	%r13, -1144(%rbp)
	movq	%r14, -1152(%rbp)
	movl	$8, %edx
	movq	16(%r13), %rax
	testq	%rax, %rax
	movq	%rax, %rsi
	je	.L6474
	movl	32(%rax), %edx
.L6474:
	movq	16(%r14), %rax
	testq	%rax, %rax
	movq	%rax, %rcx
	je	.L6475
	cmpl	32(%rax), %edx
	jb	.L6476
.L6471:
	testq	%rcx, %rcx
	movl	$8, -1136(%rbp)
	je	.L6472
	movl	32(%rcx), %ecx
.L7491:
	movl	%ecx, -1136(%rbp)
.L6472:
	cmpb	$51, 2(%r13)
	jne	.L7598
	cmpb	$51, 2(%r14)
	jne	.L7597
	movzwl	(%r13), %eax
	cmpl	$71, %eax
	je	.L6483
	cmpl	$66, %eax
	je	.L7700
.L6487:
	cmpl	$75, %eax
	je	.L6491
	cmpl	$78, %eax
	je	.L6491
.L6486:
	movzwl	(%r14), %eax
	cmpl	$71, %eax
	je	.L6496
	cmpl	$66, %eax
	je	.L7701
.L6500:
	cmpl	$75, %eax
	je	.L6504
	cmpl	$78, %eax
	je	.L6504
.L6499:
	movq	-1160(%rbp), %rbx
	movzwl	(%rbx), %eax
	cmpl	$71, %eax
	je	.L6509
	cmpl	$66, %eax
	je	.L7702
.L6513:
	cmpl	$75, %eax
	je	.L6517
	cmpl	$78, %eax
	je	.L6517
.L6512:
	movq	-1144(%rbp), %rsi
	cmpw	$66, (%rsi)
	jne	.L7596
	movq	-1152(%rbp), %rbx
	cmpw	$66, (%rbx)
	jne	.L7595
	cmpq	$0, -1160(%rbp)
	je	.L7594
	movq	-1160(%rbp), %rcx
	cmpw	$54, (%rcx)
	je	.L7703
.L6525:
	shrl	$3, -1136(%rbp)
	xorl	%edi, %edi
	mov	-1136(%rbp), %esi
	call	gen_rtx_CONST_INT
	movl	class_narrowest_mode+4(%rip), %r12d
	movl	$1, volatile_ok(%rip)
	movq	%rax, -624(%rbp)
	testl	%r12d, %r12d
	je	.L7367
.L6658:
	movslq	%r12d,%rax
	movl	movstr_optab(,%rax,4), %edx
	movq	%rax, -632(%rbp)
	cmpl	$1317, %edx
	je	.L6644
	movq	-1160(%rbp), %rcx
	cmpw	$54, (%rcx)
	je	.L7704
.L6648:
	testb	$2, target_flags+3(%rip)
	je	.L6649
	movq	-632(%rbp), %rbx
	cmpw	$63, mode_bitsize(%rbx,%rbx)
.L7499:
	jbe	.L6644
.L6647:
	movslq	%edx,%rax
	leaq	(%rax,%rax,4), %r11
	movq	%rax, -640(%rbp)
	movq	insn_data+24(,%r11,8), %r15
	movq	(%r15), %rax
	testq	%rax, %rax
	je	.L6651
	movq	-1144(%rbp), %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L6644
.L6651:
	movq	24(%r15), %rax
	testq	%rax, %rax
	jne	.L7705
.L6652:
	movq	72(%r15), %rax
	testq	%rax, %rax
	je	.L6653
	xorl	%esi, %esi
	movq	-624(%rbp), %rdi
	call	*%rax
	testl	%eax, %eax
	je	.L6644
.L6653:
	call	get_last_insn
	movl	$1, %edx
	movq	-1160(%rbp), %rsi
	movl	%r12d, %edi
	movq	%rax, -648(%rbp)
	call	convert_to_mode
	movq	%rax, %rbx
	movq	48(%r15), %rax
	testq	%rax, %rax
	jne	.L7706
.L6654:
	movq	-640(%rbp), %rdi
	xorl	%eax, %eax
	movq	-1152(%rbp), %rsi
	movq	%rbx, %rdx
	movq	-624(%rbp), %rcx
	leaq	(%rdi,%rdi,4), %r15
	movq	-1144(%rbp), %rdi
	call	*insn_data+16(,%r15,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L7446
	movq	-648(%rbp), %rdi
	call	delete_insns_since
.L6644:
	movq	-632(%rbp), %rdx
	movzbl	mode_wider_mode(%rdx), %r12d
	testl	%r12d, %r12d
	jne	.L6658
.L7367:
	testb	$2, target_flags+3(%rip)
	movq	-1144(%rbp), %r9
	movl	$0, volatile_ok(%rip)
	setne	%bl
	movq	8(%r9), %rsi
	movzbl	%bl, %edi
	addl	$4, %edi
	call	copy_to_mode_reg
	movq	-1152(%rbp), %r12
	testb	$2, target_flags+3(%rip)
	setne	%r8b
	movq	%rax, %r15
	movq	8(%r12), %rsi
	movzbl	%r8b, %edi
	addl	$4, %edi
	call	copy_to_mode_reg
	movq	sizetype_tab(%rip), %r10
	movq	%rax, %rbx
	movzbl	61(%r10), %esi
	shrb	$1, %sil
	movzbl	%sil, %edi
	movq	-1160(%rbp), %rsi
	call	copy_to_mode_reg
	cmpq	$0, fn.1(%rip)
	movq	%rax, -1200(%rbp)
	je	.L7707
.L6667:
	movq	global_trees+216(%rip), %rdi
	call	build_pointer_type
	movq	%r15, %rsi
	movq	%rax, %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	global_trees+216(%rip), %rdi
	movq	%rax, %r12
	call	build_pointer_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	%rax, (%r12)
	movq	%rax, %rbx
	movq	-1200(%rbp), %rsi
	movq	sizetype_tab(%rip), %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	fn.1(%rip), %r8
	movq	%rax, (%rbx)
	movq	(%r12), %rbx
	movq	8(%r8), %rdi
	movq	(%rbx), %r9
	movq	$0, (%r9)
	call	build_pointer_type
	movq	fn.1(%rip), %rdx
	movl	$121, %edi
	movq	%rax, %rsi
	call	build1
	xorl	%r8d, %r8d
	movq	%r12, %rcx
	movq	fn.1(%rip), %rsi
	movq	%rax, %rdx
	movl	$53, %edi
	xorl	%eax, %eax
	movq	8(%rsi), %r10
	movq	8(%r10), %rsi
	call	build
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	orb	$1, 17(%rax)
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	expand_expr
	testb	$4, 3(%r15)
	je	.L6445
	movl	$49, %edi
	xorl	%esi, %esi
	movq	%r15, %rdx
	jmp	.L7522
.L7707:
	movl	$.LC11, %edi
	call	get_identifier
	movq	global_trees+216(%rip), %rdi
	movq	%rax, fn.1(%rip)
	call	build_pointer_type
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	build_function_type
	movq	fn.1(%rip), %rsi
	movl	$30, %edi
	movq	%rax, %rdx
	call	build_decl
	movl	$1, %esi
	movl	$fn.1, %edi
	movq	%rax, fn.1(%rip)
	call	ggc_add_tree_root
	movq	fn.1(%rip), %rdx
	xorl	%esi, %esi
	orb	$1, 49(%rdx)
	movq	fn.1(%rip), %rdi
	orb	$8, 18(%rdi)
	movq	fn.1(%rip), %r11
	orb	$64, 50(%r11)
	movq	fn.1(%rip), %rcx
	orb	$2, 18(%rcx)
	movq	fn.1(%rip), %rdi
	call	make_decl_rtl
	movq	fn.1(%rip), %rdi
	call	assemble_external
	jmp	.L6667
.L7706:
	movq	%rbx, %rdi
	movl	%r12d, %esi
	call	*%rax
	testl	%eax, %eax
	jne	.L6654
	movq	%rbx, %rsi
	movl	%r12d, %edi
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L6654
.L7705:
	movq	-1152(%rbp), %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L6644
	jmp	.L6652
	.p2align 6,,7
.L6649:
	movq	-632(%rbp), %rcx
	cmpw	$31, mode_bitsize(%rcx,%rcx)
	jmp	.L7499
.L7704:
	movq	mode_mask_array(,%rax,8), %r8
	shrq	$1, %r8
	cmpq	%r8, 8(%rcx)
	jbe	.L6647
	jmp	.L6648
.L7703:
	movq	8(%rcx), %r12
	xorl	%r15d, %r15d
	movl	$17, %esi
.L6538:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L7356
.L6535:
	movslq	%ecx,%r9
	movzbq	mode_size(%r9), %rdx
	cmpq	%rsi, %rdx
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r9), %ecx
	testl	%ecx, %ecx
	jne	.L6535
.L7356:
	testl	%edi, %edi
	je	.L6528
	movslq	%edi,%rbx
	movq	%rbx, %rcx
	salq	$4, %rcx
	addq	optab_table+240(%rip), %rcx
	cmpl	$1317, 8(%rcx)
	je	.L6537
	call	get_mode_alignment
	movl	$128, %edi
	cmpl	%eax, %edi
	jb	.L6537
	movzbq	mode_size(%rbx), %r10
	movq	%r12, %rax
	xorl	%edx, %edx
	divq	%r10
	addq	%rax, %r15
	movq	%rdx, %r12
.L6537:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L6538
.L6528:
	testq	%r12, %r12
	jne	.L7587
	movl	optimize_size(%rip), %eax
	testl	%eax, %eax
	jne	.L6541
	movq	ix86_cost(%rip), %rsi
	mov	40(%rsi), %r12d
	cmpq	%r12, %r15
	jae	.L6525
.L6542:
	movq	-1160(%rbp), %r8
	movq	-1152(%rbp), %r10
	movq	-1144(%rbp), %r11
	movq	-1144(%rbp), %rdx
	testb	$2, target_flags+3(%rip)
	movq	8(%r8), %r12
	setne	%r15b
	movq	8(%r10), %r8
	movq	$0, -72(%rbp)
	movl	$0, -1180(%rbp)
	movq	%r8, -96(%rbp)
	movzbl	%r15b, %ecx
	movq	8(%r11), %rdi
	movq	%rdx, -128(%rbp)
	leal	5(,%rcx,4), %r15d
	xorl	%ecx, %ecx
	movq	%rdi, -1168(%rbp)
	movq	-1168(%rbp), %r9
	movzwl	(%r9), %edx
	leal	-96(%rdx), %ebx
	cmpw	$1, %bx
	jbe	.L6547
	cmpw	$99, %dx
	je	.L6547
	cmpw	$98, %dx
	je	.L6547
.L6546:
	movq	-1168(%rbp), %rsi
	movl	%ecx, -112(%rbp)
	xorl	%edx, %edx
	movzwl	(%rsi), %eax
	cmpw	$96, %ax
	je	.L6549
	cmpw	$98, %ax
	je	.L6549
.L6548:
	movq	-1168(%rbp), %r9
	movq	-1152(%rbp), %rax
	movl	%edx, -64(%rbp)
	xorl	%ecx, %ecx
	movq	%r9, -120(%rbp)
	movq	%rax, -104(%rbp)
	movzwl	(%r8), %edx
	leal	-96(%rdx), %ebx
	cmpw	$1, %bx
	jbe	.L6552
	cmpw	$99, %dx
	je	.L6552
	cmpw	$98, %dx
	je	.L6552
.L6551:
	movl	-64(%rbp), %edx
	movl	%ecx, -88(%rbp)
	movl	$0, -84(%rbp)
	movl	$0, -108(%rbp)
	testl	%edx, %edx
	je	.L6553
	movq	%r12, -72(%rbp)
.L6553:
	movl	-88(%rbp), %edi
	movq	%r12, -80(%rbp)
	testl	%edi, %edi
	je	.L6555
	movl	-112(%rbp), %r11d
	testl	%r11d, %r11d
	jne	.L6554
.L6555:
	movq	$0, -1176(%rbp)
	movl	$17, %esi
.L6568:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L7359
.L6565:
	movslq	%ecx,%r10
	movzbq	mode_size(%r10), %rbx
	cmpq	%rsi, %rbx
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r10), %ecx
	testl	%ecx, %ecx
	jne	.L6565
.L7359:
	testl	%edi, %edi
	je	.L6558
	movslq	%edi,%rbx
	movq	%rbx, %rcx
	salq	$4, %rcx
	addq	optab_table+240(%rip), %rcx
	cmpl	$1317, 8(%rcx)
	je	.L6567
	movq	%r8, -1464(%rbp)
	call	get_mode_alignment
	movl	$128, %r8d
	cmpl	%eax, %r8d
	movq	-1464(%rbp), %r8
	jb	.L6567
	movzbq	mode_size(%rbx), %rsi
	movq	%r12, %rax
	xorl	%edx, %edx
	divq	%rsi
	addq	%rax, -1176(%rbp)
	movq	%rdx, %r12
.L6567:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L6568
.L6558:
	testq	%r12, %r12
	jne	.L7587
	cmpq	$2, -1176(%rbp)
	jbe	.L6554
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L7361
.L6576:
	movslq	%ecx,%rdi
	movzbl	mode_size(%rdi), %edx
	cmpl	%r15d, %edx
	cmovae	-1180(%rbp), %ecx
	movl	%ecx, -1180(%rbp)
	movzbl	mode_wider_mode(%rdi), %ecx
	testl	%ecx, %ecx
	jne	.L6576
.L7361:
	movl	-88(%rbp), %eax
	testl	%eax, %eax
	jne	.L6582
	movzwl	(%r8), %edx
	leal	-67(%rdx), %r11d
	cmpw	$1, %r11w
	jbe	.L6580
	cmpw	$54, %dx
	je	.L6580
	cmpw	$55, %dx
	je	.L6580
	cmpw	$58, %dx
	je	.L6580
	cmpw	$134, %dx
	je	.L6580
	cmpw	$56, %dx
	je	.L6580
	cmpw	$140, %dx
	je	.L6580
.L6582:
	movl	-112(%rbp), %eax
	testl	%eax, %eax
	jne	.L6554
	movq	-1168(%rbp), %rbx
	movzwl	(%rbx), %edx
	leal	-67(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L6584
	cmpw	$54, %dx
	je	.L6584
	cmpw	$55, %dx
	je	.L6584
	cmpw	$58, %dx
	je	.L6584
	cmpw	$134, %dx
	je	.L6584
	cmpw	$56, %dx
	je	.L6584
	cmpw	$140, %dx
	je	.L6584
.L6554:
	cmpl	$1, %r15d
	jbe	.L6587
.L6638:
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L7364
.L6594:
	movslq	%ecx,%r8
	movzbl	mode_size(%r8), %r12d
	cmpl	%r15d, %r12d
	cmovae	-1180(%rbp), %ecx
	movl	%ecx, -1180(%rbp)
	movzbl	mode_wider_mode(%r8), %ecx
	testl	%ecx, %ecx
	jne	.L6594
.L7364:
	movl	-1180(%rbp), %eax
	testl	%eax, %eax
	je	.L6587
	movslq	-1180(%rbp),%rax
	movq	%rax, %r15
	movq	%rax, -608(%rbp)
	salq	$4, %r15
	addq	optab_table+240(%rip), %r15
	movl	8(%r15), %ebx
	cmpl	$1317, %ebx
	je	.L6596
	movl	-1180(%rbp), %edi
	call	get_mode_alignment
	movl	$128, %r9d
	cmpl	%eax, %r9d
	jb	.L6596
	movq	-608(%rbp), %rcx
	movslq	%ebx,%rdx
	leaq	-128(%rbp), %r12
	leaq	(%rdx,%rdx,4), %rdi
	movq	$0, -1192(%rbp)
	movq	insn_data+16(,%rdi,8), %rsi
	movzbq	mode_size(%rcx), %rdx
	cmpq	%rdx, -80(%rbp)
	movq	%rsi, -616(%rbp)
	movq	%rdx, -896(%rbp)
	jb	.L6596
	movl	-64(%rbp), %ecx
.L6636:
	testl	%ecx, %ecx
	je	.L6600
	subq	%rdx, 56(%r12)
.L6600:
	movq	(%r12), %rdi
	testq	%rdi, %rdi
	je	.L6601
	movl	16(%r12), %eax
	testl	%eax, %eax
	je	.L6602
	movl	-1180(%rbp), %esi
	movq	8(%r12), %rdx
	movl	$1, %r8d
	movq	56(%r12), %rcx
	call	adjust_automodify_address_1
.L7495:
	movq	%rax, -1192(%rbp)
.L6601:
	movl	40(%r12), %eax
	testl	%eax, %eax
	je	.L6604
	movq	24(%r12), %rdi
	movl	-1180(%rbp), %esi
	movl	$1, %r8d
	movq	32(%r12), %rdx
	movq	56(%r12), %rcx
	call	adjust_automodify_address_1
.L7496:
	cmpq	$0, (%r12)
	movq	%rax, %r15
	jne	.L7708
	movl	target_flags(%rip), %eax
	testl	$33554432, %eax
	movl	%eax, %esi
	je	.L6610
	movq	-608(%rbp), %r10
	movzbl	mode_size(%r10), %r11d
	leal	7(%r11), %edx
	andl	$-8, %edx
.L6611:
	movq	cfun(%rip), %rcx
	andl	$33554432, %esi
	movq	16(%rcx), %r9
	leaq	8(%r9), %rdi
	movl	8(%r9), %ecx
	je	.L6612
	movq	-608(%rbp), %rsi
	movzbl	mode_size(%rsi), %eax
	addl	$7, %eax
	andl	$-8, %eax
.L7497:
	leal	(%rax,%rcx), %r10d
	movl	%r10d, (%rdi)
	movq	-608(%rbp), %rdi
	salq	$4, %rdi
	addq	optab_table+384(%rip), %rdi
	movl	8(%rdi), %eax
	cmpl	$1317, %eax
	je	.L6614
	movslq	%eax,%rbx
	leaq	(%rbx,%rbx,4), %r8
	movq	insn_data+24(,%r8,8), %rdx
	movq	(%rdx), %rax
	testq	%rax, %rax
	je	.L6615
	movq	%r15, %rdi
	movl	-1180(%rbp), %esi
	call	*%rax
	testl	%eax, %eax
	je	.L7709
.L6615:
	leaq	(%rbx,%rbx,4), %r9
	movq	%r15, %rdi
	xorl	%eax, %eax
	call	*insn_data+16(,%r9,8)
.L7498:
	movq	%rax, %rdi
	call	emit_insn
.L6634:
	movl	64(%r12), %eax
	testl	%eax, %eax
	movl	%eax, %ecx
	jne	.L6635
	movq	-896(%rbp), %r15
	addq	%r15, 56(%r12)
.L6635:
	movq	48(%r12), %r10
	movq	-896(%rbp), %rdx
	subq	-896(%rbp), %r10
	cmpq	%rdx, %r10
	movq	%r10, 48(%r12)
	jae	.L6636
.L6596:
	movq	-608(%rbp), %r12
	movzbl	mode_size(%r12), %r15d
	cmpl	$1, %r15d
	ja	.L6638
.L6587:
	cmpq	$0, -80(%rbp)
	jmp	.L7588
.L7709:
	movl	-1180(%rbp), %edi
	movq	%r15, %rsi
	call	force_reg
	movq	%rax, %r15
	jmp	.L6615
.L6614:
	movq	-608(%rbp), %rax
	movzbl	mode_size(%rax), %ebx
	cmpl	%edx, %ebx
	je	.L7710
	mov	%edx, %esi
	xorl	%edi, %edi
	negq	%rsi
	call	gen_rtx_CONST_INT
	movq	global_rtl+16(%rip), %rdx
	testb	$2, target_flags+3(%rip)
	setne	%dil
	movq	%rax, %rcx
	movzbl	%dil, %esi
	movl	$75, %edi
	addl	$4, %esi
	call	gen_rtx_fmt_ee
	movq	global_rtl+16(%rip), %rdx
	movl	$100, %edi
	testb	$2, target_flags+3(%rip)
	movq	%rax, %rcx
	setne	%r11b
	movzbl	%r11b, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_ee
.L6622:
	movl	-1180(%rbp), %edi
	movq	%rax, %rsi
	call	gen_rtx_MEM
	xorl	%esi, %esi
	testq	%rsi, %rsi
	movq	%rax, %rbx
	je	.L6631
	movq	%rax, %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	call	set_mem_attributes
	movl	flag_optimize_sibling_calls(%rip), %eax
	testl	%eax, %eax
	jne	.L7711
.L6631:
	movq	%rbx, %rdi
	movq	%r15, %rsi
	call	emit_move_insn
	jmp	.L6634
.L7711:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	call	set_mem_alias_set
	jmp	.L6631
.L7710:
	testb	$2, target_flags+3(%rip)
	movq	global_rtl+16(%rip), %rdx
	movl	$96, %edi
	setne	%cl
	movzbl	%cl, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_e
	jmp	.L6622
.L6612:
	movq	-608(%rbp), %r11
	movzbl	mode_size(%r11), %eax
	incl	%eax
	andl	$-2, %eax
	jmp	.L7497
.L6610:
	movq	-608(%rbp), %r8
	movzbl	mode_size(%r8), %ebx
	leal	1(%rbx), %edx
	andl	$-2, %edx
	jmp	.L6611
.L7708:
	movq	%rax, %rsi
	movq	-1192(%rbp), %rdi
	xorl	%eax, %eax
	call	*-616(%rbp)
	jmp	.L7498
.L6604:
	movq	24(%r12), %rdi
	movl	-1180(%rbp), %esi
	movl	$1, %ecx
	movq	56(%r12), %rdx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L7496
.L6602:
	movl	-1180(%rbp), %esi
	movq	56(%r12), %rdx
	movl	$1, %ecx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L7495
.L6584:
	movq	-1168(%rbp), %rdi
	call	copy_addr_to_reg
	movq	%rax, -120(%rbp)
	jmp	.L6554
.L6580:
	movq	%r8, %rdi
	call	copy_addr_to_reg
	movq	%rax, -96(%rbp)
	jmp	.L6582
.L6552:
	movl	$1, %ecx
	jmp	.L6551
.L6549:
	movl	$1, %edx
	jmp	.L6548
.L6547:
	movl	$1, %ecx
	jmp	.L6546
.L6541:
	cmpq	$2, %r15
	ja	.L6525
	jmp	.L6542
.L6517:
	movq	-1160(%rbp), %rax
	xorl	%esi, %esi
	movq	8(%rax), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	-1160(%rbp), %rcx
	movq	%rax, %r12
	movq	16(%rcx), %rdi
	call	protect_from_queue
	movq	-1160(%rbp), %rsi
	movq	%rax, %rbx
	cmpq	8(%rsi), %r12
	je	.L7712
.L6519:
	movq	-1160(%rbp), %rdi
	call	copy_rtx
	movq	%rax, -1160(%rbp)
	movq	%r12, 8(%rax)
	movq	-1160(%rbp), %rdi
	movq	%rbx, 16(%rdi)
	jmp	.L6512
.L7712:
	cmpq	16(%rsi), %rax
	jne	.L6519
	jmp	.L6512
.L7702:
	cmpb	$51, 2(%rbx)
	je	.L6510
	movq	8(%rbx), %r12
	cmpw	$71, (%r12)
	je	.L7713
.L6510:
	cmpl	$66, %eax
	jne	.L6513
	movq	-1160(%rbp), %r9
	xorl	%esi, %esi
	movq	8(%r9), %rdi
	call	protect_from_queue
	movq	-1160(%rbp), %rdx
	movq	%rax, %rbx
	cmpq	8(%rdx), %rax
	je	.L6512
	movq	%rdx, %rdi
	call	copy_rtx
	movq	%rax, -1160(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L6512
.L7713:
	movq	8(%r12), %rsi
	movq	%rbx, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%r12)
	movq	%rax, %rbx
	je	.L6511
	movq	-1160(%rbp), %r15
	movzbl	2(%r15), %edi
	call	gen_reg_rtx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, -1160(%rbp)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L6512
.L6511:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L7494:
	movq	%rax, -1160(%rbp)
	jmp	.L6512
.L6509:
	movq	-1160(%rbp), %rdx
	cmpq	$0, 16(%rdx)
	je	.L7714
	movq	-1160(%rbp), %r11
	movq	24(%r11), %rax
	testq	%rax, %rax
	jne	.L7494
	movq	-1160(%rbp), %r12
	movq	8(%r12), %r10
	movzbl	2(%r10), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %r8
	movq	%r8, -1160(%rbp)
	jmp	.L6512
.L7714:
	movq	8(%rdx), %rdi
	call	copy_to_reg
	jmp	.L7494
.L6504:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r14), %rdi
	movq	%rax, %r12
	call	protect_from_queue
	cmpq	8(%r14), %r12
	movq	%rax, %rbx
	je	.L7715
.L6506:
	movq	%r14, %rdi
	call	copy_rtx
	movq	%rax, -1152(%rbp)
	movq	%r12, 8(%rax)
	movq	-1152(%rbp), %rsi
	movq	%rbx, 16(%rsi)
	jmp	.L6499
.L7715:
	cmpq	16(%r14), %rax
	jne	.L6506
	jmp	.L6499
.L7701:
	cmpb	$51, 2(%r14)
	je	.L6497
	movq	8(%r14), %r12
	cmpw	$71, (%r12)
	je	.L7716
.L6497:
	cmpl	$66, %eax
	jne	.L6500
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%r14), %rax
	movq	%rax, %rbx
	je	.L6499
	movq	%r14, %rdi
	call	copy_rtx
	movq	%rax, -1152(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L6499
.L7716:
	movq	8(%r12), %rsi
	movq	%r14, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%r12)
	movq	%rax, %rbx
	je	.L6498
	movzbl	2(%r14), %edi
	call	gen_reg_rtx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, -1152(%rbp)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L6499
.L6498:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L7493:
	movq	%rax, -1152(%rbp)
	jmp	.L6499
.L6496:
	cmpq	$0, 16(%r14)
	je	.L7717
	movq	24(%r14), %rbx
	testq	%rbx, %rbx
	movq	%rbx, -1152(%rbp)
	jne	.L6499
	movq	8(%r14), %rdx
	movzbl	2(%rdx), %edi
	call	gen_reg_rtx
	movq	8(%r14), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r14), %r12
	movq	%r12, -1152(%rbp)
	jmp	.L6499
.L7717:
	movq	8(%r14), %rdi
	call	copy_to_reg
	jmp	.L7493
.L6491:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, %r12
	call	protect_from_queue
	cmpq	8(%r13), %r12
	movq	%rax, %rbx
	je	.L7718
.L6493:
	movq	%r13, %rdi
	call	copy_rtx
	movq	%rax, -1144(%rbp)
	movq	%r12, 8(%rax)
	movq	-1144(%rbp), %r11
	movq	%rbx, 16(%r11)
	jmp	.L6486
.L7718:
	cmpq	16(%r13), %rax
	jne	.L6493
	jmp	.L6486
.L7700:
	jne	.L6487
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%r13), %rax
	movq	%rax, %rbx
	je	.L6486
	movq	%r13, %rdi
	call	copy_rtx
	movq	%rax, -1144(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L6486
.L6483:
	testq	%rsi, %rsi
	je	.L7719
	movq	24(%r13), %r8
	testq	%r8, %r8
	movq	%r8, -1144(%rbp)
	jne	.L6486
	movq	8(%r13), %r10
	movzbl	2(%r10), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %rax
.L7492:
	movq	%rax, -1144(%rbp)
	jmp	.L6486
.L7719:
	movq	8(%r13), %rdi
	call	copy_to_reg
	jmp	.L7492
.L6476:
	testq	%rsi, %rsi
	movl	$8, -1136(%rbp)
	je	.L6472
	movl	32(%rsi), %ecx
	jmp	.L7491
.L6475:
	cmpl	$7, %edx
	ja	.L6471
	jmp	.L6476
	.p2align 6,,7
.L6460:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, %r12
	call	protect_from_queue
	cmpq	8(%r13), %r12
	movq	%rax, %rbx
	je	.L7720
.L6462:
	movq	%r13, %rdi
	call	copy_rtx
	movq	%rax, %r13
	movq	%r12, 8(%rax)
	movq	%rbx, 16(%rax)
	jmp	.L6455
.L7720:
	cmpq	16(%r13), %rax
	jne	.L6462
	jmp	.L6455
	.p2align 6,,7
.L7634:
	jne	.L6456
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%r13), %rax
	movq	%rax, %rbx
	je	.L6455
	movq	%r13, %rdi
	call	copy_rtx
	movq	%rax, %r13
	movq	%rbx, 8(%rax)
	jmp	.L6455
	.p2align 6,,7
.L6452:
	cmpq	$0, 16(%r13)
	je	.L7721
	movq	24(%r13), %rax
	testq	%rax, %rax
	je	.L6464
.L7490:
	movq	%rax, %r13
	jmp	.L6455
.L6464:
	movq	8(%r13), %rdx
	movzbl	2(%rdx), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %r13
	jmp	.L6455
.L7721:
	movq	8(%r13), %rdi
	call	copy_to_reg
	jmp	.L7490
.L7633:
	movq	144(%r15), %rax
	testq	%rax, %rax
	je	.L6447
	cmpq	%rax, %r13
	jne	.L6447
	jmp	.L6445
.L7632:
	movq	%r13, %rdi
	call	side_effects_p
	testl	%eax, %eax
	je	.L6445
	jmp	.L6446
	.p2align 6,,7
.L6444:
	cmpb	$0, 2(%r14)
	jne	.L6443
	cmpb	$0, 16(%r15)
	je	.L6443
	movq	8(%r15), %rdx
	movzbl	2(%r13), %edi
	movzbl	61(%rdx), %ebx
	shrb	$1, %bl
	movzbl	%bl, %esi
	cmpl	%esi, %edi
	je	.L6443
	movzbl	17(%rdx), %ecx
	movq	%r14, %rdx
	shrb	$5, %cl
	andl	$1, %ecx
	call	convert_modes
	movq	%rax, %r14
	jmp	.L6443
.L7631:
	movzbl	%al, %edi
	call	gen_reg_rtx
	movq	%r15, %rdi
	movzbl	2(%r13), %edx
	movq	%rax, %rsi
	jmp	.L7489
.L6405:
	movl	-580(%rbp), %eax
	testl	%eax, %eax
	je	.L7429
	movl	(%r13), %ecx
	movl	%ecx, %edi
	andl	$134283263, %edi
	cmpl	$66, %edi
	je	.L7722
.L6421:
	andl	$268500991, %ecx
	cmpl	$268435519, %ecx
	je	.L7723
	movzbl	2(%r13), %edx
	xorl	%ecx, %ecx
	movq	%r15, %rdi
	movq	%r13, %rsi
	call	expand_expr
	cmpw	$61, (%r13)
	movq	%rax, %r14
	je	.L7724
.L6441:
	movl	(%r13), %eax
	andl	$134283263, %eax
	cmpl	$134217794, %eax
	je	.L7433
	movq	%r14, %rdi
	movq	%r13, %rsi
	call	rtx_equal_p
	testl	%eax, %eax
	jne	.L7433
	movzwl	(%r14), %edx
	leal	-67(%rdx), %r8d
	cmpw	$1, %r8w
	jbe	.L6442
	cmpw	$54, %dx
	je	.L6442
	cmpw	$55, %dx
	je	.L6442
	cmpw	$58, %dx
	je	.L6442
	cmpw	$134, %dx
	je	.L6442
	cmpw	$56, %dx
	je	.L6442
	cmpw	$140, %dx
	je	.L6442
	movl	-580(%rbp), %r10d
	testl	%r10d, %r10d
	je	.L6366
.L6442:
	movl	$1, -1132(%rbp)
	jmp	.L6366
.L7724:
	cmpl	$52, 8(%r13)
	jbe	.L7433
	jmp	.L6441
.L7723:
	movl	-580(%rbp), %r11d
	xorl	%edx, %edx
	testl	%r11d, %r11d
	jne	.L6427
	movq	8(%r15), %rsi
	movzbl	16(%rsi), %eax
	cmpb	$6, %al
	je	.L6428
	cmpb	$10, %al
	je	.L6428
	cmpb	$11, %al
	je	.L6428
	cmpb	$12, %al
	je	.L6428
.L6427:
	movq	%rdx, %rsi
	xorl	%ecx, %ecx
	movq	%r15, %rdi
	xorl	%edx, %edx
	call	expand_expr
	movzwl	(%rax), %edx
	movq	%rax, %r14
	cmpw	$66, %dx
	je	.L7725
.L6430:
	leal	-67(%rdx), %esi
	cmpw	$1, %si
	jbe	.L6433
	cmpw	$54, %dx
	je	.L6433
	cmpw	$55, %dx
	je	.L6433
	cmpw	$58, %dx
	je	.L6433
	cmpw	$134, %dx
	je	.L6433
	cmpw	$56, %dx
	je	.L6433
	cmpw	$140, %dx
	je	.L6433
.L6432:
	movzbl	3(%r13), %edx
	movq	8(%r13), %rdi
	movq	%r14, %rsi
	shrb	$2, %dl
	andl	$1, %edx
	call	convert_move
	movl	-580(%rbp), %ecx
	testl	%ecx, %ecx
	je	.L7523
	movzbl	2(%r14), %edx
	movzbl	2(%r13), %eax
	cmpb	%al, %dl
	je	.L6434
	testb	%dl, %dl
	je	.L6435
	movzbl	%al, %edi
	movq	%r14, %rsi
	call	gen_lowpart_SUBREG
	movzbl	3(%rax), %edi
	movq	%rax, %r14
	orb	$16, %dil
	movb	%dil, 3(%rax)
	andb	$-5, %dil
	movzbl	3(%r13), %eax
	andb	$4, %al
	orb	%al, %dil
	movb	%dil, 3(%r14)
.L6434:
	movl	-580(%rbp), %r13d
	testl	%r13d, %r13d
.L7590:
	jne	.L5210
	jmp	.L7523
.L6435:
	movq	8(%r13), %r11
	movzbl	3(%r13), %ecx
	movq	%r14, %rdx
	movzbl	%al, %edi
	movzbl	2(%r11), %esi
	shrb	$2, %cl
	andl	$1, %ecx
	call	convert_modes
	movq	%rax, %r14
	jmp	.L6434
.L6433:
	cmpb	$0, 2(%r14)
	jne	.L6432
	movq	8(%r15), %r9
	movzbl	3(%r13), %ecx
	movq	%r14, %rdx
	movzbl	2(%r13), %edi
	movzbl	61(%r9), %ebx
	shrb	$2, %cl
	andl	$1, %ecx
	shrb	$1, %bl
	movzbl	%bl, %esi
	call	convert_modes
	movzbl	3(%r13), %ecx
	movzbl	2(%r13), %esi
	movq	8(%r13), %r15
	movq	%rax, %rdx
	movzbl	2(%r15), %edi
	shrb	$2, %cl
	andl	$1, %ecx
	call	convert_modes
	movq	%rax, %r14
	jmp	.L6432
.L7725:
	movl	-580(%rbp), %r10d
	testl	%r10d, %r10d
	je	.L6430
	testb	$8, 3(%rax)
	jne	.L6431
	movq	8(%r13), %rdi
	movq	8(%rax), %rsi
	call	reg_mentioned_p
	testl	%eax, %eax
	je	.L7430
.L6431:
	movq	%r14, %rdi
	call	copy_to_reg
	movq	%rax, %r14
.L7430:
	movzwl	(%r14), %edx
	jmp	.L6430
.L6428:
	cmpq	$0, 8(%rsi)
	jne	.L6427
	movzbl	3(%r13), %ecx
	movzbl	17(%rsi), %r12d
	movl	$1, %edi
	movl	%ecx, %edx
	shrb	$5, %r12b
	shrb	$2, %dl
	andl	$1, %r12d
	andl	%edx, %edi
	cmpl	%edi, %r12d
	je	.L6429
	call	signed_or_unsigned_type
	movq	%r15, %rsi
	movq	%rax, %rdi
	call	convert
	movzbl	3(%r13), %ecx
	movq	%rax, %r15
.L6429:
	movq	8(%r13), %r8
	shrb	$2, %cl
	movl	$1, %esi
	andl	%ecx, %esi
	movzbl	2(%r8), %edi
	call	type_for_mode
	movq	%r15, %rsi
	movq	%rax, %rdi
	call	convert
	movq	8(%r13), %rdx
	movq	%rax, %r15
	jmp	.L6427
.L7722:
	movzbl	2(%r13), %eax
	cmpb	$51, %al
	je	.L6421
	xorl	%ecx, %ecx
	movzbl	%al, %edx
	movq	%r15, %rdi
	movq	%r13, %rsi
	call	expand_expr
	movq	%rax, %r14
	movzbl	2(%rax), %eax
	cmpb	$51, %al
	je	.L6422
	testb	%al, %al
	je	.L6422
	cmpq	%r13, %r14
	je	.L6424
	movq	%r14, %rdi
	movq	%r13, %rsi
	call	rtx_equal_p
	testl	%eax, %eax
	jne	.L7726
.L6423:
	movq	%r14, %rdi
	call	copy_to_reg
	movq	%rax, %r14
	jmp	.L6422
.L7726:
	movq	%r14, %rdi
	call	side_effects_p
	testl	%eax, %eax
	jne	.L6423
	movq	%r13, %rdi
	call	side_effects_p
	testl	%eax, %eax
	jne	.L6423
.L6424:
	movl	$1, %r12d
	jmp	.L6423
	.p2align 6,,7
.L7429:
	movl	(%r13), %ecx
	jmp	.L6421
.L6414:
	movl	$1, %ebx
	jmp	.L6408
.L6415:
	xorl	%ebx, %ebx
	jmp	.L6408
.L6412:
	movq	8(%r13), %rdi
	xorl	%ebx, %ebx
	call	queued_subexp_p
	testl	%eax, %eax
	jne	.L6414
	movq	16(%r13), %rdi
	call	queued_subexp_p
	testl	%eax, %eax
	je	.L6408
	jmp	.L6414
	.p2align 6,,7
.L7630:
	cmpb	$51, 2(%r13)
	jne	.L6367
	call	gen_label_rtx
	movq	%rax, -592(%rbp)
	call	gen_label_rtx
	movq	cfun(%rip), %r9
	movq	%rax, -600(%rbp)
	movq	16(%r9), %rsi
	movq	40(%rsi), %rbx
	testq	%rbx, %rbx
	je	.L7349
.L6373:
	movq	32(%rbx), %rdi
	cmpw	$24, (%rdi)
	je	.L7727
	call	emit_insn
	movq	%rax, 16(%rbx)
.L6372:
	movq	cfun(%rip), %rdx
	movq	40(%rbx), %rdi
	movq	16(%rdx), %r12
	testq	%rdi, %rdi
	movq	%rdi, %rbx
	movq	%rdi, 40(%r12)
	jne	.L6373
.L7349:
	movzwl	(%r13), %eax
	movq	%r13, %r14
	cmpl	$71, %eax
	je	.L6375
	cmpl	$66, %eax
	je	.L7728
.L6379:
	cmpl	$75, %eax
	je	.L6383
	cmpl	$78, %eax
	je	.L6383
.L6378:
	call	do_pending_stack_adjust
	movq	cfun(%rip), %r10
	movq	-592(%rbp), %rsi
	movq	16(%r10), %r8
	incl	4(%r8)
	movq	32(%r15), %rdi
	call	jumpifnot
	call	start_cleanup_deferral
	movq	40(%r15), %rdi
	xorl	%edx, %edx
	movq	%r14, %rsi
	call	store_expr
	call	end_cleanup_deferral
	movq	cfun(%rip), %rbx
	movq	16(%rbx), %r11
	movq	40(%r11), %rbx
	testq	%rbx, %rbx
	je	.L7351
.L6393:
	movq	32(%rbx), %rdi
	cmpw	$24, (%rdi)
	je	.L7729
	call	emit_insn
	movq	%rax, 16(%rbx)
.L6392:
	movq	cfun(%rip), %r12
	movq	40(%rbx), %rcx
	movq	16(%r12), %rdi
	testq	%rcx, %rcx
	movq	%rcx, %rbx
	movq	%rcx, 40(%rdi)
	jne	.L6393
.L7351:
	movq	-600(%rbp), %rdi
	call	gen_jump
	movq	%rax, %rdi
	call	emit_jump_insn
	call	emit_barrier
	movq	-592(%rbp), %rdi
	call	emit_label
	call	start_cleanup_deferral
	movq	48(%r15), %rdi
	xorl	%edx, %edx
	movq	%r14, %rsi
	call	store_expr
	call	end_cleanup_deferral
	movq	cfun(%rip), %rdx
	movq	16(%rdx), %r15
	movq	40(%r15), %rbx
	testq	%rbx, %rbx
	je	.L7353
.L6400:
	movq	32(%rbx), %rdi
	cmpw	$24, (%rdi)
	je	.L7730
	call	emit_insn
	movq	%rax, 16(%rbx)
.L6399:
	movq	cfun(%rip), %rsi
	movq	40(%rbx), %r8
	movq	16(%rsi), %r10
	testq	%r8, %r8
	movq	%r8, %rbx
	movq	%r8, 40(%r10)
	jne	.L6400
.L7353:
	movq	-600(%rbp), %rdi
	call	emit_label
	movl	-580(%rbp), %eax
	movq	cfun(%rip), %r9
	movq	16(%r9), %rbx
	decl	4(%rbx)
	testl	%eax, %eax
.L7525:
	movl	$0, %ecx
	cmove	%rcx, %r14
	jmp	.L5210
.L7730:
	movq	8(%rdi), %r11
	movq	8(%r11), %r13
	movq	%r13, 16(%rbx)
	call	emit_insn
	jmp	.L6399
.L7729:
	movq	8(%rdi), %r9
	movq	8(%r9), %rsi
	movq	%rsi, 16(%rbx)
	call	emit_insn
	jmp	.L6392
.L6383:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, %r12
	call	protect_from_queue
	cmpq	8(%r13), %r12
	movq	%rax, %rbx
	je	.L7731
.L6385:
	movq	%r13, %rdi
	call	copy_rtx
	movq	%rax, %r14
	movq	%r12, 8(%rax)
	movq	%rbx, 16(%rax)
	jmp	.L6378
.L7731:
	cmpq	16(%r13), %rax
	jne	.L6385
	jmp	.L6378
	.p2align 6,,7
.L7728:
	jne	.L6379
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%r13), %rax
	movq	%rax, %rbx
	je	.L6378
	movq	%r13, %rdi
	call	copy_rtx
	movq	%rax, %r14
	movq	%rbx, 8(%rax)
	jmp	.L6378
	.p2align 6,,7
.L6375:
	cmpq	$0, 16(%r13)
	je	.L7732
	movq	24(%r13), %rax
	testq	%rax, %rax
	je	.L6387
.L7488:
	movq	%rax, %r14
	jmp	.L6378
.L6387:
	movq	8(%r13), %r13
	movzbl	2(%r13), %edi
	call	gen_reg_rtx
	movq	8(%r14), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r14), %r14
	jmp	.L6378
.L7732:
	movq	8(%r13), %rdi
	call	copy_to_reg
	jmp	.L7488
	.p2align 6,,7
.L7727:
	movq	8(%rdi), %rcx
	movq	8(%rcx), %r14
	movq	%r14, 16(%rbx)
	call	emit_insn
	jmp	.L6372
.L7629:
	movq	32(%r15), %rdi
	movq	const_int_rtx+512(%rip), %rsi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	call	expand_expr
	movq	cfun(%rip), %rcx
	movq	16(%rcx), %r14
	movq	40(%r14), %rbx
	testq	%rbx, %rbx
	je	.L7347
.L6363:
	movq	32(%rbx), %rdi
	cmpw	$24, (%rdi)
	je	.L7733
	call	emit_insn
	movq	%rax, 16(%rbx)
.L6362:
	movq	cfun(%rip), %r10
	movq	40(%rbx), %r11
	movq	16(%r10), %r8
	testq	%r11, %r11
	movq	%r11, %rbx
	movq	%r11, 40(%r8)
	jne	.L6363
.L7347:
	movq	40(%r15), %rdi
	movq	%r13, %rsi
	movl	-580(%rbp), %edx
.L7526:
	call	store_expr
	jmp	.L7524
.L7733:
	movq	8(%rdi), %r12
	movq	8(%r12), %rdx
	movq	%rdx, 16(%rbx)
	call	emit_insn
	jmp	.L6362
.L7628:
	movslq	32(%rbp),%rsi
	movq	%r13, %rdi
	call	set_mem_alias_set
	jmp	.L6354
.L7627:
	movq	%rax, %rdi
	call	copy_rtx
	movq	%rax, %r13
	jmp	.L6350
.L7626:
	movq	16(%rdi), %r9
	cmpw	$54, (%r9)
	jne	.L6347
	movq	8(%rdi), %rax
	cmpq	global_rtl+48(%rip), %rax
	je	.L6346
	cmpq	global_rtl+56(%rip), %rax
	jne	.L6347
	jmp	.L6346
	.p2align 6,,7
.L7625:
	movq	%r12, %rsi
	call	compare_tree_int
	testl	%eax, %eax
	je	.L6129
	jmp	.L6130
	.p2align 6,,7
.L7602:
	testq	%r13, %r13
	jne	.L7734
	xorl	%r12d, %r12d
	movl	$0, -916(%rbp)
	cmpb	$47, %dl
	je	.L7735
	cmpb	$51, %dl
	je	.L7736
.L5233:
	movq	-1128(%rbp), %r14
	movzwl	(%r14), %eax
	subl	$66, %eax
	cmpl	$12, %eax
	ja	.L5281
	mov	%eax, %ecx
	jmp	*.L5282(,%rcx,8)
	.section	.rodata
	.align 8
	.align 4
.L5282:
	.quad	.L5275
	.quad	.L5281
	.quad	.L5281
	.quad	.L5281
	.quad	.L5281
	.quad	.L5280
	.quad	.L5281
	.quad	.L5281
	.quad	.L5281
	.quad	.L5278
	.quad	.L5278
	.quad	.L5281
	.quad	.L5278
	.text
.L5275:
	movq	-1128(%rbp), %r8
	movq	8(%r8), %rdi
	call	queued_subexp_p
	movl	%eax, %ebx
.L5274:
	testl	%ebx, %ebx
	je	.L5271
	movq	-1128(%rbp), %rdx
	movzbl	2(%rdx), %eax
	cmpb	$51, %al
	je	.L5283
	testb	%al, %al
	jne	.L7737
.L5283:
	movq	-1128(%rbp), %r10
	movq	%r15, %rdi
	xorl	%esi, %esi
	movzbl	2(%r10), %edx
.L7450:
	xorl	%ecx, %ecx
	call	expand_expr
	movq	-1128(%rbp), %r11
	movq	%rax, %r14
	testb	$8, 3(%r11)
	jne	.L7422
	xorl	%eax, %eax
	testl	%eax, %eax
	je	.L7422
.L5288:
	movl	$1, -916(%rbp)
.L7422:
	movzwl	(%r14), %edx
.L5232:
	leal	-67(%rdx), %ecx
	cmpw	$1, %cx
	jbe	.L5310
	cmpw	$54, %dx
	je	.L5310
	cmpw	$55, %dx
	je	.L5310
	cmpw	$58, %dx
	je	.L5310
	cmpw	$134, %dx
	je	.L5310
	cmpw	$56, %dx
	je	.L5310
	cmpw	$140, %dx
	je	.L5310
.L5309:
	movq	-1128(%rbp), %rsi
	movq	%r14, %rdi
	call	rtx_equal_p
	testl	%eax, %eax
	je	.L5312
	cmpq	-1128(%rbp), %r14
	je	.L5311
	movq	%r14, %rdi
	call	side_effects_p
	testl	%eax, %eax
	je	.L7738
.L5312:
	movzbl	16(%r15), %eax
	testb	%al, %al
	je	.L5311
	testl	%r12d, %r12d
	jne	.L5311
	movzbl	%al, %edi 
	cmpb	$100, tree_code_type(%rdi)
	je	.L7739
.L5313:
	movq	-1128(%rbp), %rcx
	movzwl	(%rcx), %eax
	cmpl	$71, %eax
	je	.L5318
	cmpl	$66, %eax
	je	.L7740
.L5322:
	cmpl	$75, %eax
	je	.L5326
	cmpl	$78, %eax
	je	.L5326
.L5321:
	movq	-1128(%rbp), %r9
	movzbl	2(%r14), %eax
	movzbl	2(%r9), %ecx
	cmpb	%cl, %al
	je	.L5331
	testb	%al, %al
	je	.L5331
	movq	8(%r15), %rdi
	movl	-916(%rbp), %eax
	movzbl	17(%rdi), %r15d
	shrb	$5, %r15b
	movl	%r15d, %edx
	andl	$1, %edx
	testl	%eax, %eax
	je	.L5332
	movq	%r14, %rsi
	movzbl	%cl, %edi
	call	convert_to_mode
	movq	%rax, %r14
.L5922:
	movq	-1128(%rbp), %rdi
	movq	%r14, %rsi
	call	emit_move_insn
.L5311:
	xorl	%r12d, %r12d
	testl	%r12d, %r12d
	je	.L7523
	movl	-916(%rbp), %eax
	testl	%eax, %eax
	je	.L6124
	cmpw	$66, (%r14)
	jne	.L5210
.L6124:
	xorl	%r14d, %r14d
	testl	%r14d, %r14d
	je	.L6126
	movq	-1128(%rbp), %rax
	cmpb	$51, 2(%rax)
	je	.L6126
	cmpw	$61, (%rax)
	je	.L7741
.L6127:
	movq	-1128(%rbp), %rdi
	jmp	.L7527
.L7741:
	cmpl	$52, 8(%rax)
	ja	.L6127
.L6126:
	movq	-1128(%rbp), %r14
	jmp	.L5210
.L5332:
	movq	-1128(%rbp), %rdi
	movq	%r14, %rsi
	call	convert_move
	jmp	.L5311
.L5331:
	cmpb	$51, %al
	je	.L7742
.L5335:
	movq	-1128(%rbp), %rcx
	cmpw	$39, (%rcx)
	je	.L7743
	cmpb	$51, %al
	jne	.L5922
	movq	-1128(%rbp), %r10
	movq	%r15, %rdi
	movq	%r14, -1096(%rbp)
	movq	%r10, -1088(%rbp)
	call	expr_size
	movl	$8, %edx
	movq	-1128(%rbp), %rsi
	movq	%rax, %r15
	movq	16(%rsi), %rcx
	testq	%rcx, %rcx
	je	.L5926
	movl	32(%rcx), %edx
.L5926:
	movq	16(%r14), %rax
	testq	%rax, %rax
	je	.L5927
	cmpl	32(%rax), %edx
	jb	.L5928
.L5923:
	testq	%rax, %rax
	movl	$8, -1076(%rbp)
	je	.L5924
	movl	32(%rax), %eax
	movl	%eax, -1076(%rbp)
.L5924:
	movq	-1128(%rbp), %rdi
	cmpb	$51, 2(%rdi)
	jne	.L7598
	cmpb	$51, 2(%r14)
	jne	.L7597
	movq	-1128(%rbp), %rdx
	movzwl	(%rdx), %eax
	cmpl	$71, %eax
	je	.L5935
	cmpl	$66, %eax
	je	.L7744
.L5939:
	cmpl	$75, %eax
	je	.L5943
	cmpl	$78, %eax
	je	.L5943
.L5938:
	movzwl	(%r14), %eax
	cmpl	$71, %eax
	je	.L5948
	cmpl	$66, %eax
	je	.L7745
.L5952:
	cmpl	$75, %eax
	je	.L5956
	cmpl	$78, %eax
	je	.L5956
.L5951:
	movzwl	(%r15), %eax
	cmpl	$71, %eax
	je	.L5961
	cmpl	$66, %eax
	je	.L7746
.L5965:
	cmpl	$75, %eax
	je	.L5969
	cmpl	$78, %eax
	je	.L5969
.L5964:
	movq	-1088(%rbp), %rdi
	cmpw	$66, (%rdi)
	jne	.L7596
	movq	-1096(%rbp), %r11
	cmpw	$66, (%r11)
	jne	.L7595
	testq	%r15, %r15
	je	.L7594
	cmpw	$54, (%r15)
	je	.L7747
.L5977:
	shrl	$3, -1076(%rbp)
	xorl	%edi, %edi
	mov	-1076(%rbp), %esi
	call	gen_rtx_CONST_INT
	movl	class_narrowest_mode+4(%rip), %ebx
	movl	$1, volatile_ok(%rip)
	movq	%rax, -528(%rbp)
	testl	%ebx, %ebx
	je	.L7331
.L6110:
	movslq	%ebx,%r12
	movl	movstr_optab(,%r12,4), %edx
	cmpl	$1317, %edx
	je	.L6096
	cmpw	$54, (%r15)
	je	.L7748
.L6100:
	testb	$2, target_flags+3(%rip)
	je	.L6101
	cmpw	$63, mode_bitsize(%r12,%r12)
.L7478:
	jbe	.L6096
.L6099:
	movslq	%edx,%rdi
	leaq	(%rdi,%rdi,4), %r11
	movq	%rdi, -536(%rbp)
	movq	insn_data+24(,%r11,8), %rcx
	movq	(%rcx), %rax
	movq	%rcx, -544(%rbp)
	testq	%rax, %rax
	je	.L6103
	movq	-1088(%rbp), %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L6096
.L6103:
	movq	-544(%rbp), %r9
	movq	24(%r9), %rax
	testq	%rax, %rax
	jne	.L7749
.L6104:
	movq	-544(%rbp), %r10
	movq	72(%r10), %rax
	testq	%rax, %rax
	je	.L6105
	xorl	%esi, %esi
	movq	-528(%rbp), %rdi
	call	*%rax
	testl	%eax, %eax
	je	.L6096
.L6105:
	call	get_last_insn
	movl	$1, %edx
	movq	%r15, %rsi
	movl	%ebx, %edi
	movq	%rax, -552(%rbp)
	call	convert_to_mode
	movq	-544(%rbp), %r8
	movq	%rax, %r13
	movq	48(%r8), %rax
	testq	%rax, %rax
	jne	.L7750
.L6106:
	movq	-536(%rbp), %rsi
	movq	-1088(%rbp), %rdi
	xorl	%eax, %eax
	movq	%r13, %rdx
	movq	-528(%rbp), %rcx
	leaq	(%rsi,%rsi,4), %rbx
	movq	-1096(%rbp), %rsi
	call	*insn_data+16(,%rbx,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L7441
	movq	-552(%rbp), %rdi
	call	delete_insns_since
.L6096:
	movzbl	mode_wider_mode(%r12), %ebx
	testl	%ebx, %ebx
	jne	.L6110
.L7331:
	testb	$2, target_flags+3(%rip)
	movq	-1088(%rbp), %r13
	movl	$0, volatile_ok(%rip)
	setne	%r11b
	movq	8(%r13), %rsi
	movzbl	%r11b, %edi
	addl	$4, %edi
	call	copy_to_mode_reg
	testb	$2, target_flags+3(%rip)
	setne	%cl
	movq	%rax, %r13
	movq	-1096(%rbp), %rax
	movq	8(%rax), %rsi
	movzbl	%cl, %edi
	addl	$4, %edi
	call	copy_to_mode_reg
	movq	%r15, %rsi
	movq	sizetype_tab(%rip), %rdx
	movq	%rax, %rbx
	movzbl	61(%rdx), %r12d
	shrb	$1, %r12b
	movzbl	%r12b, %edi
.L7599:
	call	copy_to_mode_reg
	cmpq	$0, fn.1(%rip)
	movq	%rax, %r15
	je	.L7751
.L6119:
	movq	global_trees+216(%rip), %rdi
	call	build_pointer_type
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	global_trees+216(%rip), %rdi
	movq	%rax, %r12
	call	build_pointer_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	%r15, %rsi
	movq	%rax, (%r12)
	movq	%rax, %rbx
	movq	sizetype_tab(%rip), %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	fn.1(%rip), %rsi
	movq	%rax, (%rbx)
	movq	(%r12), %rcx
	movq	8(%rsi), %rdi
	movq	(%rcx), %rdx
	movq	$0, (%rdx)
	call	build_pointer_type
	movq	fn.1(%rip), %rdx
	movl	$121, %edi
	movq	%rax, %rsi
	call	build1
	xorl	%r8d, %r8d
	movq	%r12, %rcx
	movq	fn.1(%rip), %rbx
	movq	%rax, %rdx
	movl	$53, %edi
	xorl	%eax, %eax
	movq	8(%rbx), %r15
	movq	8(%r15), %rsi
	call	build
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	orb	$1, 17(%rax)
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	expand_expr
	testb	$4, 3(%r13)
	je	.L5311
	movl	$49, %edi
	xorl	%esi, %esi
	movq	%r13, %rdx
	call	gen_rtx_fmt_e
	movq	%rax, %rdi
	call	emit_insn
	jmp	.L5311
.L7751:
	movl	$.LC11, %edi
	call	get_identifier
	movq	global_trees+216(%rip), %rdi
	movq	%rax, fn.1(%rip)
	call	build_pointer_type
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	build_function_type
	movq	fn.1(%rip), %rsi
	movl	$30, %edi
	movq	%rax, %rdx
	call	build_decl
	movl	$1, %esi
	movl	$fn.1, %edi
	movq	%rax, fn.1(%rip)
	call	ggc_add_tree_root
	movq	fn.1(%rip), %r8
	xorl	%esi, %esi
	orb	$1, 49(%r8)
	movq	fn.1(%rip), %r10
	orb	$8, 18(%r10)
	movq	fn.1(%rip), %r9
	orb	$64, 50(%r9)
	movq	fn.1(%rip), %rdi
	orb	$2, 18(%rdi)
	movq	fn.1(%rip), %rdi
	call	make_decl_rtl
	movq	fn.1(%rip), %rdi
	call	assemble_external
	jmp	.L6119
.L7441:
	call	emit_insn
	movl	$0, volatile_ok(%rip)
	jmp	.L5311
.L7750:
	movq	%r13, %rdi
	movl	%ebx, %esi
	call	*%rax
	testl	%eax, %eax
	jne	.L6106
	movq	%r13, %rsi
	movl	%ebx, %edi
	call	copy_to_mode_reg
	movq	%rax, %r13
	jmp	.L6106
.L7749:
	movq	-1096(%rbp), %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L6096
	jmp	.L6104
.L6101:
	cmpw	$31, mode_bitsize(%r12,%r12)
	jmp	.L7478
.L7748:
	movq	mode_mask_array(,%r12,8), %r8
	shrq	$1, %r8
	cmpq	%r8, 8(%r15)
	jbe	.L6099
	jmp	.L6100
.L7747:
	movq	8(%r15), %r12
	xorl	%r13d, %r13d
	movl	$17, %esi
.L5990:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L7320
.L5987:
	movslq	%ecx,%rbx
	movzbq	mode_size(%rbx), %rdx
	cmpq	%rsi, %rdx
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%rbx), %ecx
	testl	%ecx, %ecx
	jne	.L5987
.L7320:
	testl	%edi, %edi
	je	.L5980
	movslq	%edi,%rbx
	movq	%rbx, %r9
	salq	$4, %r9
	addq	optab_table+240(%rip), %r9
	cmpl	$1317, 8(%r9)
	je	.L5989
	call	get_mode_alignment
	movl	$128, %r8d
	cmpl	%eax, %r8d
	jb	.L5989
	movzbq	mode_size(%rbx), %rsi
	movq	%r12, %rax
	xorl	%edx, %edx
	divq	%rsi
	addq	%rax, %r13
	movq	%rdx, %r12
.L5989:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L5990
.L5980:
	testq	%r12, %r12
	jne	.L7587
	movl	optimize_size(%rip), %eax
	testl	%eax, %eax
	jne	.L5993
	movq	ix86_cost(%rip), %rdi
	mov	40(%rdi), %ecx
	cmpq	%rcx, %r13
	jae	.L5977
.L5994:
	movq	-1096(%rbp), %rsi
	testb	$2, target_flags+3(%rip)
	movq	-1088(%rbp), %r10
	setne	%r12b
	xorl	%ecx, %ecx
	movq	8(%r15), %r13
	movq	-1088(%rbp), %r9
	movq	8(%rsi), %r8
	movq	$0, -152(%rbp)
	movl	$0, -1108(%rbp)
	movzbl	%r12b, %edx
	movq	%r8, -176(%rbp)
	leal	5(,%rdx,4), %r12d
	movq	8(%r10), %rbx
	movq	%r9, -208(%rbp)
	movzwl	(%rbx), %edx
	movq	%rbx, -1104(%rbp)
	leal	-96(%rdx), %r15d
	cmpw	$1, %r15w
	jbe	.L5999
	cmpw	$99, %dx
	je	.L5999
	cmpw	$98, %dx
	je	.L5999
.L5998:
	movl	%ecx, -192(%rbp)
	xorl	%edx, %edx
	movq	-1104(%rbp), %rcx
	movzwl	(%rcx), %eax
	cmpw	$96, %ax
	je	.L6001
	cmpw	$98, %ax
	je	.L6001
.L6000:
	movq	-1104(%rbp), %r15
	movq	-1096(%rbp), %rax
	movl	%edx, -144(%rbp)
	xorl	%ecx, %ecx
	movq	%r15, -200(%rbp)
	movq	%rax, -184(%rbp)
	movzwl	(%r8), %edx
	leal	-96(%rdx), %edi
	cmpw	$1, %di
	jbe	.L6004
	cmpw	$99, %dx
	je	.L6004
	cmpw	$98, %dx
	je	.L6004
.L6003:
	movl	-144(%rbp), %r11d
	movl	%ecx, -168(%rbp)
	movl	$0, -164(%rbp)
	movl	$0, -188(%rbp)
	testl	%r11d, %r11d
	je	.L6005
	movq	%r13, -152(%rbp)
.L6005:
	movl	-168(%rbp), %ebx
	movq	%r13, -160(%rbp)
	testl	%ebx, %ebx
	je	.L6007
	movl	-192(%rbp), %r9d
	testl	%r9d, %r9d
	jne	.L6006
.L6007:
	xorl	%r15d, %r15d
	movl	$17, %esi
.L6020:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L7323
.L6017:
	movslq	%ecx,%r10
	movzbq	mode_size(%r10), %rdx
	cmpq	%rsi, %rdx
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r10), %ecx
	testl	%ecx, %ecx
	jne	.L6017
.L7323:
	testl	%edi, %edi
	je	.L6010
	movslq	%edi,%rbx
	movq	%rbx, %rsi
	salq	$4, %rsi
	addq	optab_table+240(%rip), %rsi
	cmpl	$1317, 8(%rsi)
	je	.L6019
	movq	%r8, -1464(%rbp)
	call	get_mode_alignment
	movl	$128, %r8d
	cmpl	%eax, %r8d
	movq	-1464(%rbp), %r8
	jb	.L6019
	movzbq	mode_size(%rbx), %rdi
	movq	%r13, %rax
	xorl	%edx, %edx
	divq	%rdi
	addq	%rax, %r15
	movq	%rdx, %r13
.L6019:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L6020
.L6010:
	testq	%r13, %r13
	jne	.L7587
	cmpq	$2, %r15
	jbe	.L6006
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L7325
.L6028:
	movslq	%ecx,%r15
	movzbl	mode_size(%r15), %r11d
	cmpl	%r12d, %r11d
	cmovae	-1108(%rbp), %ecx
	movl	%ecx, -1108(%rbp)
	movzbl	mode_wider_mode(%r15), %ecx
	testl	%ecx, %ecx
	jne	.L6028
.L7325:
	movl	-168(%rbp), %eax
	testl	%eax, %eax
	jne	.L6034
	movzwl	(%r8), %edx
	leal	-67(%rdx), %ebx
	cmpw	$1, %bx
	jbe	.L6032
	cmpw	$54, %dx
	je	.L6032
	cmpw	$55, %dx
	je	.L6032
	cmpw	$58, %dx
	je	.L6032
	cmpw	$134, %dx
	je	.L6032
	cmpw	$56, %dx
	je	.L6032
	cmpw	$140, %dx
	je	.L6032
.L6034:
	movl	-192(%rbp), %eax
	testl	%eax, %eax
	jne	.L6006
	movq	-1104(%rbp), %r10
	movzwl	(%r10), %edx
	leal	-67(%rdx), %r9d
	cmpw	$1, %r9w
	jbe	.L6036
	cmpw	$54, %dx
	je	.L6036
	cmpw	$55, %dx
	je	.L6036
	cmpw	$58, %dx
	je	.L6036
	cmpw	$134, %dx
	je	.L6036
	cmpw	$56, %dx
	je	.L6036
	cmpw	$140, %dx
	je	.L6036
.L6006:
	cmpl	$1, %r12d
	jbe	.L6039
.L6090:
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L7328
.L6046:
	movslq	%ecx,%rsi
	movzbl	mode_size(%rsi), %edx
	cmpl	%r12d, %edx
	cmovae	-1108(%rbp), %ecx
	movl	%ecx, -1108(%rbp)
	movzbl	mode_wider_mode(%rsi), %ecx
	testl	%ecx, %ecx
	jne	.L6046
.L7328:
	movl	-1108(%rbp), %eax
	testl	%eax, %eax
	je	.L6039
	movslq	-1108(%rbp),%r15
	movq	%r15, %r12
	salq	$4, %r12
	addq	optab_table+240(%rip), %r12
	movl	8(%r12), %ebx
	cmpl	$1317, %ebx
	je	.L6048
	movl	-1108(%rbp), %edi
	call	get_mode_alignment
	movl	$128, %r8d
	cmpl	%eax, %r8d
	jb	.L6048
	movzbq	mode_size(%r15), %rdx
	movslq	%ebx,%rdi
	leaq	-208(%rbp), %r12
	leaq	(%rdi,%rdi,4), %rcx
	cmpq	%rdx, -160(%rbp)
	movq	$0, -1120(%rbp)
	movq	insn_data+16(,%rcx,8), %r13
	movq	%rdx, -880(%rbp)
	movq	%r13, -520(%rbp)
	jb	.L6048
	movl	-144(%rbp), %ecx
.L6088:
	testl	%ecx, %ecx
	je	.L6052
	subq	%rdx, 56(%r12)
.L6052:
	movq	(%r12), %rdi
	testq	%rdi, %rdi
	je	.L6053
	movl	16(%r12), %eax
	testl	%eax, %eax
	je	.L6054
	movl	-1108(%rbp), %esi
	movq	8(%r12), %rdx
	movl	$1, %r8d
	movq	56(%r12), %rcx
	call	adjust_automodify_address_1
.L7474:
	movq	%rax, -1120(%rbp)
.L6053:
	movl	40(%r12), %eax
	testl	%eax, %eax
	je	.L6056
	movq	24(%r12), %rdi
	movl	-1108(%rbp), %esi
	movl	$1, %r8d
	movq	32(%r12), %rdx
	movq	56(%r12), %rcx
	call	adjust_automodify_address_1
.L7475:
	cmpq	$0, (%r12)
	movq	%rax, %r13
	jne	.L7752
	movl	target_flags(%rip), %eax
	testl	$33554432, %eax
	movl	%eax, %esi
	je	.L6062
	movzbl	mode_size(%r15), %r11d
	leal	7(%r11), %edx
	andl	$-8, %edx
.L6063:
	movq	cfun(%rip), %r10
	andl	$33554432, %esi
	movq	16(%r10), %r9
	leaq	8(%r9), %rdi
	movl	8(%r9), %ecx
	je	.L6064
	movzbl	mode_size(%r15), %eax
	addl	$7, %eax
	andl	$-8, %eax
.L7476:
	movq	%r15, %rsi
	leal	(%rax,%rcx), %r8d
	salq	$4, %rsi
	movl	%r8d, (%rdi)
	addq	optab_table+384(%rip), %rsi
	movl	8(%rsi), %eax
	cmpl	$1317, %eax
	je	.L6066
	movslq	%eax,%rbx
	leaq	(%rbx,%rbx,4), %rcx
	movq	insn_data+24(,%rcx,8), %rdx
	movq	(%rdx), %rax
	testq	%rax, %rax
	je	.L6067
	movq	%r13, %rdi
	movl	-1108(%rbp), %esi
	call	*%rax
	testl	%eax, %eax
	je	.L7753
.L6067:
	leaq	(%rbx,%rbx,4), %r11
	movq	%r13, %rdi
	xorl	%eax, %eax
	call	*insn_data+16(,%r11,8)
.L7477:
	movq	%rax, %rdi
	call	emit_insn
.L6086:
	movl	64(%r12), %eax
	testl	%eax, %eax
	movl	%eax, %ecx
	jne	.L6087
	movq	-880(%rbp), %r13
	addq	%r13, 56(%r12)
.L6087:
	movq	48(%r12), %rsi
	movq	-880(%rbp), %rdx
	subq	-880(%rbp), %rsi
	cmpq	%rdx, %rsi
	movq	%rsi, 48(%r12)
	jae	.L6088
.L6048:
	movzbl	mode_size(%r15), %r12d
	cmpl	$1, %r12d
	ja	.L6090
.L6039:
	cmpq	$0, -160(%rbp)
.L7589:
	je	.L5311
	jmp	.L7537
	.p2align 6,,7
.L7753:
	movl	-1108(%rbp), %edi
	movq	%r13, %rsi
	call	force_reg
	movq	%rax, %r13
	jmp	.L6067
.L6066:
	movzbl	mode_size(%r15), %edi
	cmpl	%edx, %edi
	je	.L7754
	mov	%edx, %esi
	xorl	%edi, %edi
	negq	%rsi
	call	gen_rtx_CONST_INT
	movq	global_rtl+16(%rip), %rdx
	movl	$75, %edi
	testb	$2, target_flags+3(%rip)
	movq	%rax, %rcx
	setne	%r9b
	movzbl	%r9b, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_ee
	movq	global_rtl+16(%rip), %rdx
	movl	$100, %edi
	testb	$2, target_flags+3(%rip)
	movq	%rax, %rcx
	setne	%bl
	movzbl	%bl, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_ee
.L6074:
	movl	-1108(%rbp), %edi
	movq	%rax, %rsi
	call	gen_rtx_MEM
	xorl	%r10d, %r10d
	testq	%r10, %r10
	movq	%rax, %rbx
	je	.L6083
	movq	%rax, %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	call	set_mem_attributes
	movl	flag_optimize_sibling_calls(%rip), %eax
	testl	%eax, %eax
	jne	.L7755
.L6083:
	movq	%rbx, %rdi
	movq	%r13, %rsi
	call	emit_move_insn
	jmp	.L6086
.L7755:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	call	set_mem_alias_set
	jmp	.L6083
.L7754:
	testb	$2, target_flags+3(%rip)
	movq	global_rtl+16(%rip), %rdx
	movl	$96, %edi
	setne	%al
	movzbl	%al, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_e
	jmp	.L6074
.L6064:
	movzbl	mode_size(%r15), %eax
	incl	%eax
	andl	$-2, %eax
	jmp	.L7476
.L6062:
	movzbl	mode_size(%r15), %ebx
	leal	1(%rbx), %edx
	andl	$-2, %edx
	jmp	.L6063
.L7752:
	movq	%rax, %rsi
	movq	-1120(%rbp), %rdi
	xorl	%eax, %eax
	call	*-520(%rbp)
	jmp	.L7477
.L6056:
	movq	24(%r12), %rdi
	movl	-1108(%rbp), %esi
	movl	$1, %ecx
	movq	56(%r12), %rdx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L7475
.L6054:
	movl	-1108(%rbp), %esi
	movq	56(%r12), %rdx
	movl	$1, %ecx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L7474
.L6036:
	movq	-1104(%rbp), %rdi
	call	copy_addr_to_reg
	movq	%rax, -200(%rbp)
	jmp	.L6006
.L6032:
	movq	%r8, %rdi
	call	copy_addr_to_reg
	movq	%rax, -176(%rbp)
	jmp	.L6034
.L6004:
	movl	$1, %ecx
	jmp	.L6003
.L6001:
	movl	$1, %edx
	jmp	.L6000
.L5999:
	movl	$1, %ecx
	jmp	.L5998
.L5993:
	cmpq	$2, %r13
	ja	.L5977
	jmp	.L5994
.L5969:
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r15), %rdi
	movq	%rax, %r12
	call	protect_from_queue
	cmpq	8(%r15), %r12
	movq	%rax, %rbx
	je	.L7756
.L5971:
	movq	%r15, %rdi
	call	copy_rtx
	movq	%rax, %r15
	movq	%r12, 8(%rax)
	movq	%rbx, 16(%rax)
	jmp	.L5964
.L7756:
	cmpq	16(%r15), %rax
	jne	.L5971
	jmp	.L5964
	.p2align 6,,7
.L7746:
	cmpb	$51, 2(%r15)
	je	.L5962
	movq	8(%r15), %r12
	cmpw	$71, (%r12)
	je	.L7757
.L5962:
	cmpl	$66, %eax
	jne	.L5965
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%r15), %rax
	movq	%rax, %rbx
	je	.L5964
	movq	%r15, %rdi
	call	copy_rtx
	movq	%rax, %r15
	movq	%rbx, 8(%rax)
	jmp	.L5964
.L7757:
	movq	8(%r12), %rsi
	movq	%r15, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%r12)
	movq	%rax, %rbx
	je	.L5963
	movzbl	2(%r15), %edi
	call	gen_reg_rtx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, %r15
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L5964
.L5963:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L7473:
	movq	%rax, %r15
	jmp	.L5964
.L5961:
	cmpq	$0, 16(%r15)
	je	.L7758
	movq	24(%r15), %rax
	testq	%rax, %rax
	jne	.L7473
	movq	8(%r15), %rcx
	movzbl	2(%rcx), %edi
	call	gen_reg_rtx
	movq	8(%r15), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r15)
	call	gen_move_insn
	movq	16(%r15), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r15), %r15
	jmp	.L5964
.L7758:
	movq	8(%r15), %rdi
	call	copy_to_reg
	jmp	.L7473
.L5956:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r14), %rdi
	movq	%rax, %r12
	call	protect_from_queue
	cmpq	8(%r14), %r12
	movq	%rax, %rbx
	je	.L7759
.L5958:
	movq	%r14, %rdi
	call	copy_rtx
	movq	%rax, -1096(%rbp)
	movq	%r12, 8(%rax)
	movq	-1096(%rbp), %r8
	movq	%rbx, 16(%r8)
	jmp	.L5951
.L7759:
	cmpq	16(%r14), %rax
	jne	.L5958
	jmp	.L5951
	.p2align 6,,7
.L7745:
	cmpb	$51, 2(%r14)
	je	.L5949
	movq	8(%r14), %r12
	cmpw	$71, (%r12)
	je	.L7760
.L5949:
	cmpl	$66, %eax
	jne	.L5952
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%r14), %rax
	movq	%rax, %rbx
	je	.L5951
	movq	%r14, %rdi
	call	copy_rtx
	movq	%rax, -1096(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L5951
.L7760:
	movq	8(%r12), %rsi
	movq	%r14, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%r12)
	movq	%rax, %rbx
	je	.L5950
	movzbl	2(%r14), %edi
	call	gen_reg_rtx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, -1096(%rbp)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L5951
.L5950:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L7472:
	movq	%rax, -1096(%rbp)
	jmp	.L5951
.L5948:
	cmpq	$0, 16(%r14)
	je	.L7761
	movq	24(%r14), %rsi
	testq	%rsi, %rsi
	movq	%rsi, -1096(%rbp)
	jne	.L5951
	movq	8(%r14), %r10
	movzbl	2(%r10), %edi
	call	gen_reg_rtx
	movq	8(%r14), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r14), %rax
	movq	%rax, -1096(%rbp)
	jmp	.L5951
.L7761:
	movq	8(%r14), %rdi
	call	copy_to_reg
	jmp	.L7472
.L5943:
	movq	-1128(%rbp), %r13
	xorl	%esi, %esi
	movq	8(%r13), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, %r12
	call	protect_from_queue
	movq	-1128(%rbp), %rsi
	movq	%rax, %rbx
	cmpq	8(%rsi), %r12
	je	.L7762
.L5945:
	movq	-1128(%rbp), %rdi
	call	copy_rtx
	movq	%rax, -1088(%rbp)
	movq	%r12, 8(%rax)
	movq	-1088(%rbp), %rcx
	movq	%rbx, 16(%rcx)
	jmp	.L5938
.L7762:
	cmpq	16(%rsi), %rax
	jne	.L5945
	jmp	.L5938
	.p2align 6,,7
.L7744:
	jne	.L5939
	movq	8(%rdx), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	-1128(%rbp), %rcx
	movq	%rax, %rbx
	cmpq	8(%rcx), %rax
	je	.L5938
	movq	%rcx, %rdi
	call	copy_rtx
	movq	%rax, -1088(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L5938
	.p2align 6,,7
.L5935:
	testq	%rcx, %rcx
	je	.L7763
	movq	-1128(%rbp), %rdx
	movq	24(%rdx), %r11
	testq	%r11, %r11
	movq	%r11, -1088(%rbp)
	jne	.L5938
	movq	-1128(%rbp), %r13
	movq	8(%r13), %r9
	movzbl	2(%r9), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %r12
	movq	%r12, -1088(%rbp)
	jmp	.L5938
.L7763:
	movq	-1128(%rbp), %rbx
	movq	8(%rbx), %rdi
	call	copy_to_reg
	movq	%rax, -1088(%rbp)
	jmp	.L5938
.L5928:
	testq	%rcx, %rcx
	movl	$8, -1076(%rbp)
	je	.L5924
	movl	32(%rcx), %r13d
	movl	%r13d, -1076(%rbp)
	jmp	.L5924
.L5927:
	cmpl	$7, %edx
	ja	.L5923
	jmp	.L5928
.L7743:
	movq	8(%r15), %rdi
	call	int_size_in_bytes
	movl	%eax, -484(%rbp)
	movq	-1128(%rbp), %rax
	cmpw	$39, (%rax)
	jne	.L7593
	movq	-1128(%rbp), %r8
	movq	8(%r8), %rcx
	movq	8(%rcx), %r15
	movl	(%rcx), %r13d
	cmpq	$0, 8(%r15)
	movslq	%r13d,%rdi
	sete	%r9b
	leaq	15(,%rdi,8), %rbx
	andq	$-16, %rbx
	subq	%rbx, %rsp
	leaq	24(%rsp), %r12
	movzbl	%r9b, %r11d
	movq	%r12, -496(%rbp)
	movl	%r11d, -1072(%rbp)
	movl	-1072(%rbp), %eax
	cmpl	%r13d, %eax
	movl	%eax, -1064(%rbp)
	jge	.L7314
.L5907:
	movslq	-1064(%rbp),%rax
	movl	-484(%rbp), %esi
	testl	%esi, %esi
	movq	8(%rcx,%rax,8), %r12
	movq	%rax, -504(%rbp)
	movq	8(%r12), %rcx
	movq	16(%r12), %r10
	movzbl	2(%rcx), %r13d
	movq	8(%r10), %r15
	movslq	%r13d,%rdx
	movzbl	mode_size(%rdx), %ebx
	movq	%rdx, -512(%rbp)
	movl	%ebx, -1068(%rbp)
	js	.L5880
	mov	%ebx, %r11d
	movslq	-484(%rbp),%rbx
	leaq	(%r11,%r15), %rdi
	cmpq	%rbx, %rdi
	jle	.L5880
	movl	-484(%rbp), %r9d
	subl	%r15d, %r9d
	movl	%r9d, -1068(%rbp)
	je	.L7592
.L5880:
	movzwl	(%r14), %edx
	movq	%r14, %r12
	cmpw	$66, %dx
	je	.L7447
	leal	-67(%rdx), %r8d
	cmpw	$1, %r8w
	jbe	.L5884
	cmpw	$54, %dx
	je	.L5884
	cmpw	$55, %dx
	je	.L5884
	cmpw	$58, %dx
	je	.L5884
	cmpw	$134, %dx
	je	.L5884
	cmpw	$56, %dx
	je	.L5884
	cmpw	$140, %dx
	je	.L5884
.L5883:
	movzbl	2(%r14), %eax
	movl	%r13d, %edi
	testb	%al, %al
	je	.L7470
	movzbl	%al, %edi
.L7470:
	call	gen_reg_rtx
	movq	%r14, %rsi
	movq	%rax, %r12
	movq	%rax, %rdi
	call	emit_move_insn
	movzwl	(%r12), %edx
.L5882:
	cmpw	$66, %dx
	je	.L7447
.L5887:
	cmpw	$65, %dx
	je	.L7764
	leal	-67(%rdx), %esi
	cmpw	$1, %si
	jbe	.L5904
	cmpw	$54, %dx
	je	.L5904
	cmpw	$55, %dx
	je	.L5904
	cmpw	$58, %dx
	je	.L5904
	cmpw	$134, %dx
	je	.L5904
	cmpw	$56, %dx
	je	.L5904
	cmpw	$140, %dx
	je	.L5904
	cmpw	$61, %dx
	je	.L7765
.L5903:
	movslq	-484(%rbp),%rdi
	movl	-1068(%rbp), %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	%r13d, %r9d
	movl	%r13d, (%rsp)
	sall	$3, %edx
	mov	%edx, %esi
	movq	%rdi, 8(%rsp)
	leaq	0(,%r15,8), %rdx
	movq	%r12, %rdi
	call	extract_bit_field
.L7471:
	movq	-504(%rbp), %r12
	movq	-496(%rbp), %r11
	movq	%rax, (%r11,%r12,8)
.L5878:
	movq	-1128(%rbp), %r9
	incl	-1064(%rbp)
	movl	-1064(%rbp), %eax
	movq	8(%r9), %rcx
	cmpl	(%rcx), %eax
	jl	.L5907
.L7314:
	movq	cfun(%rip), %r15
	movq	16(%r15), %r8
	movq	40(%r8), %rbx
	testq	%rbx, %rbx
	je	.L7316
.L5913:
	movq	32(%rbx), %rdi
	cmpw	$24, (%rdi)
	je	.L7766
	call	emit_insn
	movq	%rax, 16(%rbx)
.L5912:
	movq	cfun(%rip), %rdi
	movq	40(%rbx), %r13
	movq	16(%rdi), %rcx
	testq	%r13, %r13
	movq	%r13, %rbx
	movq	%r13, 40(%rcx)
	jne	.L5913
	movq	-1128(%rbp), %rbx
	movq	8(%rbx), %rcx
.L7316:
	movl	-1072(%rbp), %r11d
	cmpl	(%rcx), %r11d
	jge	.L5311
.L5919:
	movslq	-1072(%rbp),%r8
	movq	-496(%rbp), %r9
	salq	$3, %r8
	movq	8(%r8,%rcx), %r15
	movq	(%r9,%r8), %rsi
	movq	8(%r15), %rdi
	call	emit_move_insn
	movq	-1128(%rbp), %rax
	incl	-1072(%rbp)
	movl	-1072(%rbp), %edx
	movq	8(%rax), %r12
	cmpl	(%r12), %edx
	movq	%r12, %rcx
	jl	.L5919
	jmp	.L5311
.L7766:
	movq	8(%rdi), %r10
	movq	8(%r10), %rsi
	movq	%rsi, 16(%rbx)
	call	emit_insn
	jmp	.L5912
.L7765:
	movzbl	2(%r12), %r10d
	cmpl	%r13d, %r10d
	jne	.L5903
.L5904:
	movq	-504(%rbp), %rcx
	movq	-496(%rbp), %r13
	movq	%r12, (%r13,%rcx,8)
	jmp	.L5878
.L7764:
	testq	%r15, %r15
	jne	.L7426
	movq	8(%r12), %rdx
	movzbq	2(%rdx), %r9
	movzbl	mode_size(%r9), %ebx
	cmpl	%ebx, -1068(%rbp)
	je	.L5893
.L5894:
	movzbq	2(%rdx), %rsi
	movzbq	mode_size(%rsi), %r8
	cmpq	%r8, %r15
	je	.L7767
.L5892:
	testq	%r15, %r15
	jne	.L7034
	movzbl	2(%r12), %edi
	xorl	%edx, %edx
	movslq	%edi,%rbx
	movzbq	mode_size(%rbx), %rsi
	call	assign_stack_temp
	movq	%r12, %rsi
	movq	%rax, %r15
	movq	%rax, %rdi
	call	emit_move_insn
	movl	$1, %r8d
	movl	$1, %ecx
	movq	%r15, %rdi
	movl	%r13d, %esi
	xorl	%edx, %edx
	call	adjust_address_1
	jmp	.L7471
.L7767:
	movq	16(%r12), %rdx
	movzbq	2(%rdx), %rcx
	movzbl	mode_size(%rcx), %r10d
	cmpl	%r10d, -1068(%rbp)
	jne	.L5892
.L5893:
	xorl	%edi, %edi
	movq	-504(%rbp), %r11
	movq	-496(%rbp), %rax
	testq	%r15, %r15
	setne	%dil
	leaq	(%rax,%r11,8), %rbx
	movq	8(%r12,%rdi,8), %rcx
	movq	%rcx, (%rbx)
	movzwl	(%rcx), %edx
	leal	-67(%rdx), %r15d
	cmpw	$1, %r15w
	jbe	.L5878
	cmpw	$54, %dx
	je	.L5878
	cmpw	$55, %dx
	je	.L5878
	cmpw	$58, %dx
	je	.L5878
	cmpw	$134, %dx
	je	.L5878
	cmpw	$56, %dx
	je	.L5878
	cmpw	$140, %dx
	je	.L5878
	cmpw	$61, %dx
	je	.L7768
.L5898:
	movslq	-484(%rbp),%r9
	movl	-1068(%rbp), %r8d
	movl	%r13d, (%rsp)
	xorl	%edx, %edx
	movl	$1, %ecx
	sall	$3, %r8d
	movq	%r9, 8(%rsp)
	mov	%r8d, %esi
	movl	%r13d, %r9d
	movq	(%rbx), %rdi
	xorl	%r8d, %r8d
	call	extract_bit_field
	movq	%rax, (%rbx)
	jmp	.L5878
.L7768:
	movzbl	2(%rcx), %r12d
	cmpl	%r13d, %r12d
	jne	.L5898
	jmp	.L5878
	.p2align 6,,7
.L7426:
	movq	8(%r12), %rdx
	jmp	.L5894
.L7447:
	movl	%r13d, %edi
	call	get_mode_alignment
	movq	16(%r12), %rdx
	testq	%rdx, %rdx
	je	.L5888
	cmpl	%eax, 32(%rdx)
	jae	.L5889
.L7425:
	movzwl	(%r12), %edx
	jmp	.L5887
.L5889:
	movl	%r13d, %edi
	leaq	0(,%r15,8), %rbx
	call	get_mode_alignment
	mov	%eax, %ecx
	movq	%rbx, %rax
	cqto
	idivq	%rcx
	testq	%rdx, %rdx
	jne	.L7425
	movq	-512(%rbp), %rax
	movzbl	mode_size(%rax), %edx
	cmpl	%edx, -1068(%rbp)
	jne	.L7425
	movl	%r13d, %edi
	call	gen_reg_rtx
	movl	$1, %r8d
	movl	$1, %ecx
	movq	-496(%rbp), %rdi
	movq	-504(%rbp), %r11
	movl	%r13d, %esi
	movq	%r15, %rdx
	leaq	(%rdi,%r11,8), %rbx
	movq	%r12, %rdi
	movq	%rax, (%rbx)
	call	adjust_address_1
	movq	(%rbx), %rdi
	movq	%rax, %rsi
	call	emit_move_insn
	jmp	.L5878
.L5888:
	cmpl	$8, %eax
	ja	.L7425
	jmp	.L5889
.L5884:
	movzbl	2(%r14), %ecx
	movzbl	%cl, %esi
	cmpl	%r13d, %esi
	je	.L5882
	testb	%cl, %cl
	je	.L5882
	jmp	.L5883
.L7742:
	cmpb	$29, 16(%r15)
	jne	.L5335
	movq	%r15, %rdi
	call	expr_size
	cmpw	$54, (%rax)
	movq	%rax, -944(%rbp)
	je	.L7769
.L5336:
	movq	sizetype_tab(%rip), %rdi
	movq	-944(%rbp), %rsi
	call	make_tree
	xorl	%esi, %esi
	movslq	32(%r15),%rdi
	movq	%rax, %r12
	call	size_int_wide
	movq	%r12, %rsi
	movl	$78, %edi
	movq	%rax, %rdx
	call	size_binop
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, -408(%rbp)
	call	expand_expr
	xorl	%edx, %edx
	movl	ptr_mode(%rip), %edi
	movq	%rax, %rsi
	movq	$0, -1032(%rbp)
	call	convert_to_mode
	movl	$8, %edx
	movq	%r14, -992(%rbp)
	movq	-1128(%rbp), %r13
	movq	%rax, -976(%rbp)
	movq	%rax, -1000(%rbp)
	movq	%r13, -984(%rbp)
	movq	16(%r13), %rax
	testq	%rax, %rax
	movq	%rax, %rsi
	je	.L5539
	movl	32(%rax), %edx
.L5539:
	movq	16(%r14), %rax
	testq	%rax, %rax
	movq	%rax, %rcx
	je	.L5540
	cmpl	32(%rax), %edx
	jb	.L5541
.L5536:
	testq	%rcx, %rcx
	movl	$8, %r15d
	je	.L5537
	movl	32(%rcx), %r15d
.L5537:
	movq	-1128(%rbp), %rbx
	cmpb	$51, 2(%rbx)
	jne	.L7598
	cmpb	$51, 2(%r14)
	jne	.L7597
	movq	-1128(%rbp), %rdx
	movzwl	(%rdx), %eax
	cmpl	$71, %eax
	je	.L5548
	cmpl	$66, %eax
	je	.L7770
.L5552:
	cmpl	$75, %eax
	je	.L5556
	cmpl	$78, %eax
	je	.L5556
.L5551:
	movzwl	(%r14), %eax
	cmpl	$71, %eax
	je	.L5561
	cmpl	$66, %eax
	je	.L7771
.L5565:
	cmpl	$75, %eax
	je	.L5569
	cmpl	$78, %eax
	je	.L5569
.L5564:
	movq	-976(%rbp), %rcx
	movzwl	(%rcx), %eax
	cmpl	$71, %eax
	je	.L5574
	cmpl	$66, %eax
	je	.L7772
.L5578:
	cmpl	$75, %eax
	je	.L5582
	cmpl	$78, %eax
	je	.L5582
.L5577:
	movq	-984(%rbp), %rsi
	cmpw	$66, (%rsi)
	jne	.L7596
	movq	-992(%rbp), %rax
	cmpw	$66, (%rax)
	jne	.L7595
	cmpq	$0, -1000(%rbp)
	je	.L7594
	movq	-1000(%rbp), %rcx
	cmpw	$54, (%rcx)
	je	.L7773
.L5590:
	shrl	$3, %r15d
	xorl	%edi, %edi
	mov	%r15d, %esi
	call	gen_rtx_CONST_INT
	movl	class_narrowest_mode+4(%rip), %r12d
	movl	$1, volatile_ok(%rip)
	movq	%rax, -424(%rbp)
	testl	%r12d, %r12d
	je	.L7298
.L5723:
	movslq	%r12d,%r15
	movl	movstr_optab(,%r15,4), %edx
	cmpl	$1317, %edx
	je	.L5709
	movq	-1000(%rbp), %rsi
	cmpw	$54, (%rsi)
	je	.L7774
.L5713:
	testb	$2, target_flags+3(%rip)
	je	.L5714
	cmpw	$63, mode_bitsize(%r15,%r15)
.L7464:
	jbe	.L5709
.L5712:
	movslq	%edx,%rcx
	leaq	(%rcx,%rcx,4), %rsi
	movq	%rcx, -432(%rbp)
	movq	insn_data+24(,%rsi,8), %r13
	movq	(%r13), %rax
	testq	%rax, %rax
	je	.L5716
	movq	-984(%rbp), %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L5709
.L5716:
	movq	24(%r13), %rax
	testq	%rax, %rax
	jne	.L7775
.L5717:
	movq	72(%r13), %rax
	testq	%rax, %rax
	je	.L5718
	xorl	%esi, %esi
	movq	-424(%rbp), %rdi
	call	*%rax
	testl	%eax, %eax
	je	.L5709
.L5718:
	call	get_last_insn
	movl	$1, %edx
	movq	-1000(%rbp), %rsi
	movl	%r12d, %edi
	movq	%rax, -440(%rbp)
	call	convert_to_mode
	movq	%rax, %rbx
	movq	48(%r13), %rax
	testq	%rax, %rax
	jne	.L7776
.L5719:
	movq	-432(%rbp), %rdx
	movq	-984(%rbp), %rdi
	xorl	%eax, %eax
	movq	-992(%rbp), %rsi
	movq	-424(%rbp), %rcx
	leaq	(%rdx,%rdx,4), %r12
	movq	%rbx, %rdx
	call	*insn_data+16(,%r12,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L7439
	movq	-440(%rbp), %rdi
	call	delete_insns_since
.L5709:
	movzbl	mode_wider_mode(%r15), %r12d
	testl	%r12d, %r12d
	jne	.L5723
.L7298:
	testb	$2, target_flags+3(%rip)
	movq	-984(%rbp), %r8
	movl	$0, volatile_ok(%rip)
	setne	%r11b
	movq	8(%r8), %rsi
	movzbl	%r11b, %edi
	addl	$4, %edi
	call	copy_to_mode_reg
	testb	$2, target_flags+3(%rip)
	setne	%bl
	movq	%rax, %r13
	movq	-992(%rbp), %rax
	movq	8(%rax), %rsi
	movzbl	%bl, %edi
	addl	$4, %edi
	call	copy_to_mode_reg
	movq	-1000(%rbp), %rsi
	movq	sizetype_tab(%rip), %r10
	movq	%rax, %rbx
	movzbl	61(%r10), %r15d
	shrb	$1, %r15b
	movzbl	%r15b, %edi
	call	copy_to_mode_reg
	cmpq	$0, fn.1(%rip)
	movq	%rax, %r15
	je	.L7777
.L5732:
	movq	global_trees+216(%rip), %rdi
	call	build_pointer_type
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	global_trees+216(%rip), %rdi
	movq	%rax, %r12
	call	build_pointer_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	%r15, %rsi
	movq	%rax, (%r12)
	movq	%rax, %rbx
	movq	sizetype_tab(%rip), %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	fn.1(%rip), %rdx
	movq	%rax, (%rbx)
	movq	(%r12), %r8
	movq	8(%rdx), %rdi
	movq	(%r8), %rbx
	movq	$0, (%rbx)
	call	build_pointer_type
	movq	fn.1(%rip), %rdx
	movl	$121, %edi
	movq	%rax, %rsi
	call	build1
	xorl	%r8d, %r8d
	movq	%r12, %rcx
	movq	fn.1(%rip), %r10
	movq	%rax, %rdx
	movl	$53, %edi
	xorl	%eax, %eax
	movq	8(%r10), %r15
	movq	8(%r15), %rsi
	call	build
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	orb	$1, 17(%rax)
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	expand_expr
	testb	$4, 3(%r13)
	jne	.L7778
.L5721:
	movq	-976(%rbp), %rbx
	cmpw	$54, (%rbx)
	je	.L7779
	movq	sizetype_tab(%rip), %r11
	movq	-976(%rbp), %rcx
	xorl	%r8d, %r8d
	movq	optab_table+16(%rip), %rsi
	movq	-944(%rbp), %rdx
	xorl	%r9d, %r9d
	movzbl	61(%r11), %r12d
	movl	$3, (%rsp)
	shrb	$1, %r12b
	movzbl	%r12b, %edi
	call	expand_binop
	movq	-408(%rbp), %rdi
	movq	%rax, %rbx
	call	highest_pow2_factor
	movq	-976(%rbp), %rsi
	movq	-1128(%rbp), %rdi
	movq	%rax, %rdx
	call	offset_address
	movq	%rax, -1128(%rbp)
	call	gen_label_rtx
	xorl	%r9d, %r9d
	movq	%rax, -1032(%rbp)
	movq	const_int_rtx+512(%rip), %rsi
	movq	%rbx, %rdi
	movzbl	2(%rbx), %r8d
	movl	$107, %edx
	xorl	%ecx, %ecx
	movq	%rax, (%rsp)
	call	emit_cmp_and_jump_insns
.L5735:
	cmpq	const_int_rtx+512(%rip), %rbx
	je	.L5736
	movq	-1128(%rbp), %rdx
	cmpw	$66, (%rdx)
	movq	%rdx, -1048(%rbp)
	je	.L7780
	movq	-1128(%rbp), %rax
	movzbl	2(%rax), %edi
	call	get_mode_alignment
.L7465:
	movl	%eax, -1036(%rbp)
.L5738:
	movq	-1128(%rbp), %rsi
	movzbl	2(%rsi), %eax
	cmpb	$51, %al
	je	.L5741
	cmpw	$54, (%rbx)
	je	.L7781
.L5741:
	movq	-1128(%rbp), %rdx
	movzwl	(%rdx), %eax
	cmpl	$71, %eax
	je	.L5743
	cmpl	$66, %eax
	je	.L7782
.L5747:
	cmpl	$75, %eax
	je	.L5751
	cmpl	$78, %eax
	je	.L5751
.L5746:
	movzwl	(%rbx), %eax
	cmpl	$71, %eax
	je	.L5756
	cmpl	$66, %eax
	je	.L7783
.L5760:
	cmpl	$75, %eax
	je	.L5764
	cmpl	$78, %eax
	je	.L5764
.L5759:
	cmpw	$54, (%rbx)
	je	.L7784
.L5769:
	shrl	$3, -1036(%rbp)
	xorl	%edi, %edi
	mov	-1036(%rbp), %esi
	call	gen_rtx_CONST_INT
	movl	class_narrowest_mode+4(%rip), %r13d
	movq	%rax, -456(%rbp)
	testl	%r13d, %r13d
	je	.L7312
.L5863:
	movslq	%r13d,%rcx
	movl	clrstr_optab(,%rcx,4), %edx
	movq	%rcx, -464(%rbp)
	cmpl	$1317, %edx
	je	.L5850
	cmpw	$54, (%rbx)
	je	.L7785
.L5854:
	testb	$2, target_flags+3(%rip)
	je	.L5855
	movq	-464(%rbp), %rax
	cmpw	$63, mode_bitsize(%rax,%rax)
.L7468:
	jbe	.L5850
.L5853:
	movslq	%edx,%r15
	leaq	(%r15,%r15,4), %r9
	movq	%r15, -472(%rbp)
	movq	insn_data+24(,%r9,8), %r15
	movq	(%r15), %rax
	testq	%rax, %rax
	je	.L5857
	movq	-1048(%rbp), %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L5850
.L5857:
	movq	48(%r15), %rax
	testq	%rax, %rax
	je	.L5858
	xorl	%esi, %esi
	movq	-456(%rbp), %rdi
	call	*%rax
	testl	%eax, %eax
	je	.L5850
.L5858:
	call	get_last_insn
	movl	$1, %edx
	movq	%rbx, %rsi
	movl	%r13d, %edi
	movq	%rax, -480(%rbp)
	call	convert_to_mode
	movq	%rax, %r12
	movq	24(%r15), %rax
	testq	%rax, %rax
	jne	.L7786
.L5859:
	movq	-472(%rbp), %rsi
	movq	-1048(%rbp), %rdi
	xorl	%eax, %eax
	movq	-456(%rbp), %rdx
	leaq	(%rsi,%rsi,4), %r8
	movq	%r12, %rsi
	call	*insn_data+16(,%r8,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L7469
	movq	-480(%rbp), %rdi
	call	delete_insns_since
.L5850:
	movq	-464(%rbp), %rdx
	movzbl	mode_wider_mode(%rdx), %r13d
	testl	%r13d, %r13d
	jne	.L5863
.L7312:
	testb	$2, target_flags+3(%rip)
	movq	-1048(%rbp), %r13
	setne	%r12b
	movq	8(%r13), %rsi
	movzbl	%r12b, %edi
	addl	$4, %edi
	call	copy_to_mode_reg
	movq	%rbx, %rsi
	movq	sizetype_tab(%rip), %rcx
	movq	%rax, %r13
	movzbl	61(%rcx), %r10d
	shrb	$1, %r10b
	movzbl	%r10b, %edi
	call	copy_to_mode_reg
	cmpq	$0, fn.0(%rip)
	movq	%rax, %r15
	je	.L7787
.L5868:
	movq	global_trees+216(%rip), %rdi
	call	build_pointer_type
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	const_int_rtx+512(%rip), %rsi
	movq	integer_types+40(%rip), %rdi
	movq	%rax, %r12
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	%r15, %rsi
	movq	%rax, (%r12)
	movq	%rax, %rbx
	movq	sizetype_tab(%rip), %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	fn.0(%rip), %rsi
	movq	%rax, (%rbx)
	movq	(%r12), %r10
	movq	8(%rsi), %rdi
	movq	(%r10), %rdx
	movq	$0, (%rdx)
	call	build_pointer_type
	movq	fn.0(%rip), %rdx
	movl	$121, %edi
	movq	%rax, %rsi
	call	build1
	movq	%r12, %rcx
	movl	$53, %edi
	movq	fn.0(%rip), %r8
	movq	%rax, %rdx
	xorl	%eax, %eax
	movq	8(%r8), %r15
	xorl	%r8d, %r8d
	movq	8(%r15), %rsi
	call	build
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	orb	$1, 17(%rax)
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	expand_expr
	testb	$4, 3(%r13)
	jne	.L7788
.L5736:
	cmpq	$0, -1032(%rbp)
	je	.L5311
	movq	-1032(%rbp), %rdi
	call	emit_label
	jmp	.L5311
.L7788:
	movl	$49, %edi
	xorl	%esi, %esi
	movq	%r13, %rdx
	call	gen_rtx_fmt_e
	movq	%rax, %rdi
.L7469:
	call	emit_insn
	jmp	.L5736
.L7787:
	movl	$.LC7, %edi
	call	get_identifier
	movq	global_trees+216(%rip), %rdi
	movq	%rax, fn.0(%rip)
	call	build_pointer_type
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	build_function_type
	movq	fn.0(%rip), %rsi
	movl	$30, %edi
	movq	%rax, %rdx
	call	build_decl
	movl	$1, %esi
	movl	$fn.0, %edi
	movq	%rax, fn.0(%rip)
	call	ggc_add_tree_root
	movq	fn.0(%rip), %r9
	xorl	%esi, %esi
	orb	$1, 49(%r9)
	movq	fn.0(%rip), %r11
	orb	$8, 18(%r11)
	movq	fn.0(%rip), %rdi
	orb	$64, 50(%rdi)
	movq	fn.0(%rip), %rbx
	orb	$2, 18(%rbx)
	movq	fn.0(%rip), %rdi
	call	make_decl_rtl
	movq	fn.0(%rip), %rdi
	call	assemble_external
	jmp	.L5868
.L7786:
	movq	%r12, %rdi
	movl	%r13d, %esi
	call	*%rax
	testl	%eax, %eax
	jne	.L5859
	movq	%r12, %rsi
	movl	%r13d, %edi
	call	copy_to_mode_reg
	movq	%rax, %r12
	jmp	.L5859
	.p2align 6,,7
.L5855:
	movq	-464(%rbp), %r11
	cmpw	$31, mode_bitsize(%r11,%r11)
	jmp	.L7468
.L7785:
	movq	mode_mask_array(,%rcx,8), %r12
	shrq	$1, %r12
	cmpq	%r12, 8(%rbx)
	jbe	.L5853
	jmp	.L5854
.L7784:
	movq	8(%rbx), %r13
	xorl	%r15d, %r15d
	movl	$17, %esi
.L5782:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L7301
.L5779:
	movslq	%ecx,%r10
	movzbq	mode_size(%r10), %rdx
	cmpq	%rsi, %rdx
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r10), %ecx
	testl	%ecx, %ecx
	jne	.L5779
.L7301:
	testl	%edi, %edi
	je	.L5772
	movslq	%edi,%r12
	movq	%r12, %rcx
	salq	$4, %rcx
	addq	optab_table+240(%rip), %rcx
	cmpl	$1317, 8(%rcx)
	je	.L5781
	call	get_mode_alignment
	movl	$128, %edi
	cmpl	%eax, %edi
	jb	.L5781
	movzbq	mode_size(%r12), %r11
	movq	%r13, %rax
	xorl	%edx, %edx
	divq	%r11
	addq	%rax, %r15
	movq	%rdx, %r13
.L5781:
	movzbq	mode_size(%r12), %rsi
	cmpq	$1, %rsi
	ja	.L5782
.L5772:
	testq	%r13, %r13
	jne	.L7587
	movl	optimize_size(%rip), %eax
	testl	%eax, %eax
	jne	.L5785
	movq	ix86_cost(%rip), %r9
	mov	40(%r9), %r12d
	cmpq	%r12, %r15
	jae	.L5769
.L5786:
	movq	8(%rbx), %r10
	movq	-1048(%rbp), %r15
	leaq	-272(%rbp), %r12
	testb	$2, target_flags+3(%rip)
	movq	$clear_by_pieces_1, -232(%rbp)
	movq	$0, -224(%rbp)
	setne	%dl
	leaq	16(%r12), %rcx
	movq	%r15, -272(%rbp)
	movq	%r10, -248(%rbp)
	movq	8(%r15), %r8
	movq	$0, -240(%rbp)
	movl	$0, -1060(%rbp)
	movzbl	%dl, %esi 
	movq	%r8, -264(%rbp)
	movzwl	(%r8), %edx
	leaq	5(,%rsi,4), %r15
	xorl	%esi, %esi
	leal	-96(%rdx), %ebx
	cmpw	$1, %bx
	jbe	.L5790
	cmpw	$99, %dx
	je	.L5790
	cmpw	$98, %dx
	je	.L5790
.L5789:
	movl	%esi, (%rcx)
	movl	$0, 20(%r12)
	leaq	56(%r12), %rdx
	movzwl	(%r8), %eax
	xorl	%ecx, %ecx
	cmpw	$96, %ax
	je	.L5792
	cmpw	$98, %ax
	je	.L5792
.L5791:
	movl	%ecx, (%rdx)
	movl	56(%r12), %eax
	testl	%eax, %eax
	je	.L5793
	movq	24(%r12), %rcx
	movq	%rcx, 32(%r12)
.L5793:
	movl	16(%r12), %edi
	testl	%edi, %edi
	jne	.L5794
	movq	24(%r12), %r13
	movq	$0, -1056(%rbp)
	movl	$17, %esi
.L5807:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L7304
.L5804:
	movslq	%ecx,%r11
	movzbq	mode_size(%r11), %r9
	cmpq	%rsi, %r9
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r11), %ecx
	testl	%ecx, %ecx
	jne	.L5804
.L7304:
	testl	%edi, %edi
	je	.L5797
	movslq	%edi,%rbx
	movq	%rbx, %rsi
	salq	$4, %rsi
	addq	optab_table+240(%rip), %rsi
	cmpl	$1317, 8(%rsi)
	je	.L5806
	movq	%r8, -1464(%rbp)
	call	get_mode_alignment
	movl	$128, %r8d
	cmpl	%eax, %r8d
	movq	-1464(%rbp), %r8
	jb	.L5806
	movzbq	mode_size(%rbx), %rcx
	movq	%r13, %rax
	xorl	%edx, %edx
	divq	%rcx
	addq	%rax, -1056(%rbp)
	movq	%rdx, %r13
.L5806:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L5807
.L5797:
	testq	%r13, %r13
	jne	.L7587
	cmpq	$2, -1056(%rbp)
	jbe	.L5794
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L7306
.L5815:
	movslq	%ecx,%rbx
	movzbq	mode_size(%rbx), %rdx
	cmpq	%r15, %rdx
	cmovae	-1060(%rbp), %ecx
	movl	%ecx, -1060(%rbp)
	movzbl	mode_wider_mode(%rbx), %ecx
	testl	%ecx, %ecx
	jne	.L5815
.L7306:
	movl	16(%r12), %eax
	testl	%eax, %eax
	jne	.L5794
	movzwl	(%r8), %edx
	leal	-67(%rdx), %edi
	cmpw	$1, %di
	jbe	.L5819
	cmpw	$54, %dx
	je	.L5819
	cmpw	$55, %dx
	je	.L5819
	cmpw	$58, %dx
	je	.L5819
	cmpw	$134, %dx
	je	.L5819
	cmpw	$56, %dx
	je	.L5819
	cmpw	$140, %dx
	je	.L5819
.L5794:
	cmpq	$1, %r15
	jbe	.L5822
.L5843:
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L7309
.L5829:
	movslq	%ecx,%r11
	movzbq	mode_size(%r11), %r9
	cmpq	%r15, %r9
	cmovae	-1060(%rbp), %ecx
	movl	%ecx, -1060(%rbp)
	movzbl	mode_wider_mode(%r11), %ecx
	testl	%ecx, %ecx
	jne	.L5829
.L7309:
	movl	-1060(%rbp), %r15d
	testl	%r15d, %r15d
	je	.L5822
	movslq	-1060(%rbp),%r15
	movq	%r15, %rsi
	salq	$4, %rsi
	addq	optab_table+240(%rip), %rsi
	movl	8(%rsi), %ebx
	cmpl	$1317, %ebx
	je	.L5831
	movl	-1060(%rbp), %edi
	call	get_mode_alignment
	movl	$128, %r8d
	cmpl	%eax, %r8d
	jb	.L5831
	movzbq	mode_size(%r15), %rdx
	movslq	%ebx,%rcx
	leaq	(%rcx,%rcx,4), %r10
	cmpq	%rdx, 24(%r12)
	movq	insn_data+16(,%r10,8), %r13
	movq	%r13, -448(%rbp)
	movq	%rdx, %r13
	jb	.L5831
	movl	56(%r12), %ecx
.L5841:
	testl	%ecx, %ecx
	je	.L5835
	subq	%rdx, 32(%r12)
.L5835:
	movl	16(%r12), %ebx
	testl	%ebx, %ebx
	je	.L5836
	movq	(%r12), %rdi
	movl	-1060(%rbp), %esi
	movl	$1, %r8d
	movq	8(%r12), %rdx
	movq	32(%r12), %rcx
	call	adjust_automodify_address_1
.L7467:
	movl	-1060(%rbp), %edx
	movq	%rax, %rbx
	movq	48(%r12), %rdi
	movq	32(%r12), %rsi
	call	*40(%r12)
	movq	%rbx, %rdi
	movq	%rax, %rsi
	xorl	%eax, %eax
	call	*-448(%rbp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%r12), %eax
	testl	%eax, %eax
	movl	%eax, %ecx
	jne	.L5840
	addq	%r13, 32(%r12)
.L5840:
	movq	24(%r12), %rdi
	movq	%r13, %rdx
	subq	%r13, %rdi
	cmpq	%r13, %rdi
	movq	%rdi, 24(%r12)
	jae	.L5841
.L5831:
	movzbq	mode_size(%r15), %r15
	cmpq	$1, %r15
	ja	.L5843
.L5822:
	cmpq	$0, 24(%r12)
	je	.L5736
	jmp	.L7547
	.p2align 6,,7
.L5836:
	movq	(%r12), %rdi
	movl	-1060(%rbp), %esi
	movl	$1, %ecx
	movq	32(%r12), %rdx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L7467
.L5819:
	movq	%r8, %rdi
	call	copy_addr_to_reg
	movq	%rax, 8(%r12)
	jmp	.L5794
.L5792:
	movl	$1, %ecx
	jmp	.L5791
.L5790:
	movl	$1, %esi
	jmp	.L5789
.L5785:
	cmpq	$2, %r15
	ja	.L5769
	jmp	.L5786
.L5764:
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%rbx), %rdi
	movq	%rax, %r13
	call	protect_from_queue
	cmpq	8(%rbx), %r13
	movq	%rax, %r12
	je	.L7789
.L5766:
	movq	%rbx, %rdi
	call	copy_rtx
	movq	%rax, %rbx
	movq	%r13, 8(%rax)
	movq	%r12, 16(%rax)
	jmp	.L5759
.L7789:
	cmpq	16(%rbx), %rax
	jne	.L5766
	jmp	.L5759
.L7783:
	cmpb	$51, 2(%rbx)
	je	.L5757
	movq	8(%rbx), %r13
	cmpw	$71, (%r13)
	je	.L7790
.L5757:
	cmpl	$66, %eax
	jne	.L5760
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%rbx), %rax
	movq	%rax, %r12
	je	.L5759
	movq	%rbx, %rdi
	call	copy_rtx
	movq	%rax, %rbx
	movq	%r12, 8(%rax)
	jmp	.L5759
.L7790:
	movq	8(%r13), %rsi
	movq	%rbx, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%r13)
	movq	%rax, %r12
	je	.L5758
	movzbl	2(%rbx), %edi
	call	gen_reg_rtx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L5759
.L5758:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%r12, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L7466:
	movq	%rax, %rbx
	jmp	.L5759
.L5756:
	cmpq	$0, 16(%rbx)
	je	.L7791
	movq	24(%rbx), %rax
	testq	%rax, %rax
	jne	.L7466
	movq	8(%rbx), %rsi
	movzbl	2(%rsi), %edi
	call	gen_reg_rtx
	movq	8(%rbx), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%rbx)
	call	gen_move_insn
	movq	16(%rbx), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%rbx), %rbx
	jmp	.L5759
.L7791:
	movq	8(%rbx), %rdi
	call	copy_to_reg
	jmp	.L7466
.L5751:
	movq	-1128(%rbp), %rcx
	xorl	%esi, %esi
	movq	8(%rcx), %rdi
	call	protect_from_queue
	movq	-1128(%rbp), %rsi
	movq	%rax, %r13
	movq	16(%rsi), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	-1128(%rbp), %rdx
	movq	%rax, %r12
	cmpq	8(%rdx), %r13
	je	.L7792
.L5753:
	movq	-1128(%rbp), %rdi
	call	copy_rtx
	movq	%rax, -1048(%rbp)
	movq	%r13, 8(%rax)
	movq	-1048(%rbp), %rdi
	movq	%r12, 16(%rdi)
	jmp	.L5746
.L7792:
	cmpq	16(%rdx), %rax
	jne	.L5753
	jmp	.L5746
.L7782:
	jne	.L5747
	movq	8(%rdx), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	-1128(%rbp), %rcx
	movq	%rax, %r12
	cmpq	8(%rcx), %rax
	je	.L5746
	movq	%rcx, %rdi
	call	copy_rtx
	movq	%rax, -1048(%rbp)
	movq	%r12, 8(%rax)
	jmp	.L5746
.L5743:
	movq	-1128(%rbp), %rsi
	cmpq	$0, 16(%rsi)
	je	.L7793
	movq	-1128(%rbp), %r10
	movq	24(%r10), %r15
	testq	%r15, %r15
	movq	%r15, -1048(%rbp)
	jne	.L5746
	movq	-1128(%rbp), %rax
	movq	8(%rax), %r9
	movzbl	2(%r9), %edi
	call	gen_reg_rtx
	movq	-1128(%rbp), %r11
	movq	%rax, %rdi
	movq	%rax, 24(%r11)
	movq	-1128(%rbp), %r12
	movq	8(%r12), %rsi
	call	gen_move_insn
	movq	-1128(%rbp), %r13
	movq	%rax, %rdi
	movq	16(%r13), %rsi
	call	emit_insn_before
	movq	-1128(%rbp), %r8
	movq	24(%r8), %rdx
	movq	%rdx, -1048(%rbp)
	jmp	.L5746
.L7793:
	movq	8(%rsi), %rdi
	call	copy_to_reg
	movq	%rax, -1048(%rbp)
	jmp	.L5746
.L7781:
	movzbl	%al, %edx 
	movzbl	mode_size(%rdx), %r9d
	cmpl	8(%rbx), %r9d
	jne	.L5741
	movq	%rsi, %rdi
	movq	const_tiny_rtx(,%rdx,8), %rsi
	call	emit_move_insn
	jmp	.L5736
	.p2align 6,,7
.L7780:
	movq	16(%rdx), %rax
	movl	$8, -1036(%rbp)
	testq	%rax, %rax
	je	.L5738
	movl	32(%rax), %eax
	jmp	.L7465
	.p2align 6,,7
.L7779:
	movq	8(%rbx), %rsi
	movq	-944(%rbp), %rdi
	negq	%rsi
	call	plus_constant_wide
	movl	$1, %r8d
	movl	$1, %ecx
	movq	-976(%rbp), %r13
	movq	-1128(%rbp), %rdi
	movl	$51, %esi
	movq	%rax, %rbx
	movq	8(%r13), %rdx
	call	adjust_address_1
	movq	%rax, -1128(%rbp)
	jmp	.L5735
.L7778:
	movl	$49, %edi
	xorl	%esi, %esi
	movq	%r13, %rdx
	call	gen_rtx_fmt_e
	movq	%rax, %rdi
	call	emit_insn
	jmp	.L5721
.L7777:
	movl	$.LC11, %edi
	call	get_identifier
	movq	global_trees+216(%rip), %rdi
	movq	%rax, fn.1(%rip)
	call	build_pointer_type
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	build_function_type
	movq	fn.1(%rip), %rsi
	movl	$30, %edi
	movq	%rax, %rdx
	call	build_decl
	movl	$1, %esi
	movl	$fn.1, %edi
	movq	%rax, fn.1(%rip)
	call	ggc_add_tree_root
	movq	fn.1(%rip), %rcx
	orb	$1, 49(%rcx)
	movq	fn.1(%rip), %rsi
	orb	$8, 18(%rsi)
	xorl	%esi, %esi
	movq	fn.1(%rip), %rdi
	orb	$64, 50(%rdi)
	movq	fn.1(%rip), %r9
	orb	$2, 18(%r9)
	movq	fn.1(%rip), %rdi
	call	make_decl_rtl
	movq	fn.1(%rip), %rdi
	call	assemble_external
	jmp	.L5732
.L7439:
	call	emit_insn
	movl	$0, volatile_ok(%rip)
	jmp	.L5721
	.p2align 6,,7
.L7776:
	movq	%rbx, %rdi
	movl	%r12d, %esi
	call	*%rax
	testl	%eax, %eax
	jne	.L5719
	movq	%rbx, %rsi
	movl	%r12d, %edi
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L5719
	.p2align 6,,7
.L7775:
	movq	-992(%rbp), %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L5709
	jmp	.L5717
.L5714:
	cmpw	$31, mode_bitsize(%r15,%r15)
	jmp	.L7464
.L7774:
	movq	mode_mask_array(,%r15,8), %rdi
	shrq	$1, %rdi
	cmpq	%rdi, 8(%rsi)
	jbe	.L5712
	jmp	.L5713
.L7773:
	movq	8(%rcx), %r12
	xorl	%r13d, %r13d
	movl	$17, %esi
.L5603:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L7287
.L5600:
	movslq	%ecx,%rbx
	movzbq	mode_size(%rbx), %r8
	cmpq	%rsi, %r8
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%rbx), %ecx
	testl	%ecx, %ecx
	jne	.L5600
.L7287:
	testl	%edi, %edi
	je	.L5593
	movslq	%edi,%rbx
	movq	%rbx, %r10
	salq	$4, %r10
	addq	optab_table+240(%rip), %r10
	cmpl	$1317, 8(%r10)
	je	.L5602
	call	get_mode_alignment
	movl	$128, %edx
	cmpl	%eax, %edx
	jb	.L5602
	movzbq	mode_size(%rbx), %r9
	movq	%r12, %rax
	xorl	%edx, %edx
	divq	%r9
	addq	%rax, %r13
	movq	%rdx, %r12
.L5602:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L5603
.L5593:
	testq	%r12, %r12
	jne	.L7587
	movl	optimize_size(%rip), %r12d
	testl	%r12d, %r12d
	jne	.L5606
	movq	ix86_cost(%rip), %rsi
	mov	40(%rsi), %ecx
	cmpq	%rcx, %r13
	jae	.L5590
.L5607:
	movq	-1000(%rbp), %r8
	movq	-992(%rbp), %r11
	movq	-984(%rbp), %rdx
	movq	-984(%rbp), %r10
	testb	$2, target_flags+3(%rip)
	movq	8(%r8), %r12
	setne	%r13b
	xorl	%ecx, %ecx
	movq	8(%r11), %r8
	movq	$0, -152(%rbp)
	movl	$0, -1012(%rbp)
	movq	%r8, -176(%rbp)
	movzbl	%r13b, %edi
	movq	8(%rdx), %rbx
	movq	%r10, -208(%rbp)
	leal	5(,%rdi,4), %r13d
	movq	%rbx, -1008(%rbp)
	movq	-1008(%rbp), %rax
	movzwl	(%rax), %edx
	leal	-96(%rdx), %r15d
	cmpw	$1, %r15w
	jbe	.L5612
	cmpw	$99, %dx
	je	.L5612
	cmpw	$98, %dx
	je	.L5612
.L5611:
	movq	-1008(%rbp), %r9
	movl	%ecx, -192(%rbp)
	xorl	%edx, %edx
	movzwl	(%r9), %eax
	cmpw	$96, %ax
	je	.L5614
	cmpw	$98, %ax
	je	.L5614
.L5613:
	movq	-992(%rbp), %rcx
	movq	-1008(%rbp), %r15
	movl	%edx, -144(%rbp)
	movq	%rcx, -184(%rbp)
	movq	%r15, -200(%rbp)
	xorl	%ecx, %ecx
	movzwl	(%r8), %edx
	leal	-96(%rdx), %esi
	cmpw	$1, %si
	jbe	.L5617
	cmpw	$99, %dx
	je	.L5617
	cmpw	$98, %dx
	je	.L5617
.L5616:
	movl	-144(%rbp), %eax
	movl	%ecx, -168(%rbp)
	movl	$0, -164(%rbp)
	movl	$0, -188(%rbp)
	testl	%eax, %eax
	je	.L5618
	movq	%r12, -152(%rbp)
.L5618:
	movl	-168(%rbp), %r10d
	movq	%r12, -160(%rbp)
	testl	%r10d, %r10d
	je	.L5620
	movl	-192(%rbp), %ebx
	testl	%ebx, %ebx
	jne	.L5619
.L5620:
	xorl	%r15d, %r15d
	movl	$17, %esi
.L5633:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L7290
.L5630:
	movslq	%ecx,%r11
	movzbq	mode_size(%r11), %rdx
	cmpq	%rsi, %rdx
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r11), %ecx
	testl	%ecx, %ecx
	jne	.L5630
.L7290:
	testl	%edi, %edi
	je	.L5623
	movslq	%edi,%rbx
	movq	%rbx, %r9
	salq	$4, %r9
	addq	optab_table+240(%rip), %r9
	cmpl	$1317, 8(%r9)
	je	.L5632
	movq	%r8, -1464(%rbp)
	call	get_mode_alignment
	movq	-1464(%rbp), %r8
	movl	$128, %edi
	cmpl	%eax, %edi
	jb	.L5632
	movzbq	mode_size(%rbx), %rsi
	movq	%r12, %rax
	xorl	%edx, %edx
	divq	%rsi
	addq	%rax, %r15
	movq	%rdx, %r12
.L5632:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L5633
.L5623:
	testq	%r12, %r12
	jne	.L7587
	cmpq	$2, %r15
	jbe	.L5619
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L7292
.L5641:
	movslq	%ecx,%r15
	movzbl	mode_size(%r15), %r10d
	cmpl	%r13d, %r10d
	cmovae	-1012(%rbp), %ecx
	movl	%ecx, -1012(%rbp)
	movzbl	mode_wider_mode(%r15), %ecx
	testl	%ecx, %ecx
	jne	.L5641
.L7292:
	movl	-168(%rbp), %eax
	testl	%eax, %eax
	jne	.L5647
	movzwl	(%r8), %edx
	leal	-67(%rdx), %ebx
	cmpw	$1, %bx
	jbe	.L5645
	cmpw	$54, %dx
	je	.L5645
	cmpw	$55, %dx
	je	.L5645
	cmpw	$58, %dx
	je	.L5645
	cmpw	$134, %dx
	je	.L5645
	cmpw	$56, %dx
	je	.L5645
	cmpw	$140, %dx
	je	.L5645
.L5647:
	movl	-192(%rbp), %eax
	testl	%eax, %eax
	jne	.L5619
	movq	-1008(%rbp), %r11
	movzwl	(%r11), %edx
	leal	-67(%rdx), %r8d
	cmpw	$1, %r8w
	jbe	.L5649
	cmpw	$54, %dx
	je	.L5649
	cmpw	$55, %dx
	je	.L5649
	cmpw	$58, %dx
	je	.L5649
	cmpw	$134, %dx
	je	.L5649
	cmpw	$56, %dx
	je	.L5649
	cmpw	$140, %dx
	je	.L5649
.L5619:
	cmpl	$1, %r13d
	jbe	.L5652
.L5703:
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L7295
.L5659:
	movslq	%ecx,%r9
	movzbl	mode_size(%r9), %edx
	cmpl	%r13d, %edx
	cmovae	-1012(%rbp), %ecx
	movl	%ecx, -1012(%rbp)
	movzbl	mode_wider_mode(%r9), %ecx
	testl	%ecx, %ecx
	jne	.L5659
.L7295:
	movl	-1012(%rbp), %eax
	testl	%eax, %eax
	je	.L5652
	movslq	-1012(%rbp),%r15
	movq	%r15, %r13
	salq	$4, %r13
	addq	optab_table+240(%rip), %r13
	movl	8(%r13), %ebx
	cmpl	$1317, %ebx
	je	.L5661
	movl	-1012(%rbp), %edi
	call	get_mode_alignment
	movl	$128, %edi
	cmpl	%eax, %edi
	jb	.L5661
	movzbq	mode_size(%r15), %rdx
	movslq	%ebx,%rsi
	movq	$0, -1024(%rbp)
	leaq	(%rsi,%rsi,4), %rcx
	cmpq	%rdx, -160(%rbp)
	movq	insn_data+16(,%rcx,8), %r12
	movq	%rdx, -872(%rbp)
	movq	%r12, -416(%rbp)
	leaq	-208(%rbp), %r12
	jb	.L5661
	movl	-144(%rbp), %ecx
.L5701:
	testl	%ecx, %ecx
	je	.L5665
	subq	%rdx, 56(%r12)
.L5665:
	movq	(%r12), %rdi
	testq	%rdi, %rdi
	je	.L5666
	movl	16(%r12), %eax
	testl	%eax, %eax
	je	.L5667
	movl	-1012(%rbp), %esi
	movq	8(%r12), %rdx
	movl	$1, %r8d
	movq	56(%r12), %rcx
	call	adjust_automodify_address_1
.L7460:
	movq	%rax, -1024(%rbp)
.L5666:
	movl	40(%r12), %eax
	testl	%eax, %eax
	je	.L5669
	movq	24(%r12), %rdi
	movl	-1012(%rbp), %esi
	movl	$1, %r8d
	movq	32(%r12), %rdx
	movq	56(%r12), %rcx
	call	adjust_automodify_address_1
.L7461:
	cmpq	$0, (%r12)
	movq	%rax, %r13
	jne	.L7794
	movl	target_flags(%rip), %eax
	testl	$33554432, %eax
	movl	%eax, %esi
	je	.L5675
	movzbl	mode_size(%r15), %r10d
	leal	7(%r10), %edx
	andl	$-8, %edx
.L5676:
	movq	cfun(%rip), %r11
	andl	$33554432, %esi
	movq	16(%r11), %r8
	leaq	8(%r8), %rdi
	movl	8(%r8), %ecx
	je	.L5677
	movzbl	mode_size(%r15), %eax
	addl	$7, %eax
	andl	$-8, %eax
.L7462:
	movq	%r15, %r9
	leal	(%rax,%rcx), %esi
	salq	$4, %r9
	movl	%esi, (%rdi)
	addq	optab_table+384(%rip), %r9
	movl	8(%r9), %eax
	cmpl	$1317, %eax
	je	.L5679
	movslq	%eax,%rbx
	leaq	(%rbx,%rbx,4), %rdi
	movq	insn_data+24(,%rdi,8), %rdx
	movq	(%rdx), %rax
	testq	%rax, %rax
	je	.L5680
	movq	%r13, %rdi
	movl	-1012(%rbp), %esi
	call	*%rax
	testl	%eax, %eax
	je	.L7795
.L5680:
	leaq	(%rbx,%rbx,4), %rcx
	movq	%r13, %rdi
	xorl	%eax, %eax
	call	*insn_data+16(,%rcx,8)
.L7463:
	movq	%rax, %rdi
	call	emit_insn
.L5699:
	movl	64(%r12), %eax
	testl	%eax, %eax
	movl	%eax, %ecx
	jne	.L5700
	movq	-872(%rbp), %r13
	addq	%r13, 56(%r12)
.L5700:
	movq	48(%r12), %r9
	movq	-872(%rbp), %rdx
	subq	-872(%rbp), %r9
	cmpq	%rdx, %r9
	movq	%r9, 48(%r12)
	jae	.L5701
.L5661:
	movzbl	mode_size(%r15), %r13d
	cmpl	$1, %r13d
	ja	.L5703
.L5652:
	cmpq	$0, -160(%rbp)
	je	.L5721
	jmp	.L7537
.L7795:
	movl	-1012(%rbp), %edi
	movq	%r13, %rsi
	call	force_reg
	movq	%rax, %r13
	jmp	.L5680
	.p2align 6,,7
.L5679:
	movzbl	mode_size(%r15), %r10d
	cmpl	%edx, %r10d
	je	.L7796
	mov	%edx, %esi
	xorl	%edi, %edi
	negq	%rsi
	call	gen_rtx_CONST_INT
	movq	global_rtl+16(%rip), %rdx
	movl	$75, %edi
	testb	$2, target_flags+3(%rip)
	movq	%rax, %rcx
	setne	%r8b
	movzbl	%r8b, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_ee
	movq	global_rtl+16(%rip), %rdx
	movl	$100, %edi
	testb	$2, target_flags+3(%rip)
	movq	%rax, %rcx
	setne	%bl
	movzbl	%bl, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_ee
.L5687:
	movl	-1012(%rbp), %edi
	movq	%rax, %rsi
	call	gen_rtx_MEM
	xorl	%r11d, %r11d
	testq	%r11, %r11
	movq	%rax, %rbx
	je	.L5696
	movq	%rax, %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	call	set_mem_attributes
	movl	flag_optimize_sibling_calls(%rip), %eax
	testl	%eax, %eax
	jne	.L7797
.L5696:
	movq	%rbx, %rdi
	movq	%r13, %rsi
	call	emit_move_insn
	jmp	.L5699
.L7797:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	call	set_mem_alias_set
	jmp	.L5696
.L7796:
	testb	$2, target_flags+3(%rip)
	movq	global_rtl+16(%rip), %rdx
	movl	$96, %edi
	setne	%al
	movzbl	%al, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_e
	jmp	.L5687
	.p2align 6,,7
.L5677:
	movzbl	mode_size(%r15), %eax
	incl	%eax
	andl	$-2, %eax
	jmp	.L7462
.L5675:
	movzbl	mode_size(%r15), %ebx
	leal	1(%rbx), %edx
	andl	$-2, %edx
	jmp	.L5676
.L7794:
	movq	%rax, %rsi
	movq	-1024(%rbp), %rdi
	xorl	%eax, %eax
	call	*-416(%rbp)
	jmp	.L7463
.L5669:
	movq	24(%r12), %rdi
	movl	-1012(%rbp), %esi
	movl	$1, %ecx
	movq	56(%r12), %rdx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L7461
.L5667:
	movl	-1012(%rbp), %esi
	movq	56(%r12), %rdx
	movl	$1, %ecx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L7460
.L5649:
	movq	-1008(%rbp), %rdi
	call	copy_addr_to_reg
	movq	%rax, -200(%rbp)
	jmp	.L5619
.L5645:
	movq	%r8, %rdi
	call	copy_addr_to_reg
	movq	%rax, -176(%rbp)
	jmp	.L5647
.L5617:
	movl	$1, %ecx
	jmp	.L5616
.L5614:
	movl	$1, %edx
	jmp	.L5613
.L5612:
	movl	$1, %ecx
	jmp	.L5611
.L5606:
	cmpq	$2, %r13
	ja	.L5590
	jmp	.L5607
	.p2align 6,,7
.L5582:
	movq	-976(%rbp), %rdx
	xorl	%esi, %esi
	movq	8(%rdx), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	-976(%rbp), %r10
	movq	%rax, %r12
	movq	16(%r10), %rdi
	call	protect_from_queue
	movq	-976(%rbp), %rsi
	movq	%rax, %rbx
	cmpq	8(%rsi), %r12
	je	.L7798
.L5584:
	movq	-976(%rbp), %rdi
	call	copy_rtx
	movq	%rax, -1000(%rbp)
	movq	%r12, 8(%rax)
	movq	-1000(%rbp), %rdi
	movq	%rbx, 16(%rdi)
	jmp	.L5577
.L7798:
	cmpq	16(%rsi), %rax
	jne	.L5584
	jmp	.L5577
.L7772:
	cmpb	$51, 2(%rcx)
	je	.L5575
	movq	8(%rcx), %r12
	cmpw	$71, (%r12)
	je	.L7799
.L5575:
	cmpl	$66, %eax
	jne	.L5578
	movq	-976(%rbp), %r8
	xorl	%esi, %esi
	movq	8(%r8), %rdi
	call	protect_from_queue
	movq	-976(%rbp), %rdx
	movq	%rax, %rbx
	cmpq	8(%rdx), %rax
	je	.L5577
	movq	%rdx, %rdi
	call	copy_rtx
	movq	%rax, -1000(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L5577
.L7799:
	movq	8(%r12), %rsi
	movq	%rcx, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%r12)
	movq	%rax, %rbx
	je	.L5576
	movq	-976(%rbp), %r13
	movzbl	2(%r13), %edi
	call	gen_reg_rtx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, -1000(%rbp)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L5577
.L5576:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L7459:
	movq	%rax, -1000(%rbp)
	jmp	.L5577
	.p2align 6,,7
.L5574:
	movq	-976(%rbp), %rdx
	cmpq	$0, 16(%rdx)
	je	.L7800
	movq	-976(%rbp), %r12
	movq	24(%r12), %r11
	testq	%r11, %r11
	movq	%r11, -1000(%rbp)
	jne	.L5577
	movq	-976(%rbp), %r13
	movq	8(%r13), %rcx
	movzbl	2(%rcx), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %r9
	movq	%r9, -1000(%rbp)
	jmp	.L5577
.L7800:
	movq	8(%rdx), %rdi
	call	copy_to_reg
	jmp	.L7459
	.p2align 6,,7
.L5569:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r14), %rdi
	movq	%rax, %r12
	call	protect_from_queue
	cmpq	8(%r14), %r12
	movq	%rax, %rbx
	je	.L7801
.L5571:
	movq	%r14, %rdi
	call	copy_rtx
	movq	%rax, -992(%rbp)
	movq	%r12, 8(%rax)
	movq	-992(%rbp), %rcx
	movq	%rbx, 16(%rcx)
	jmp	.L5564
.L7801:
	cmpq	16(%r14), %rax
	jne	.L5571
	jmp	.L5564
.L7771:
	cmpb	$51, 2(%r14)
	je	.L5562
	movq	8(%r14), %r12
	cmpw	$71, (%r12)
	je	.L7802
.L5562:
	cmpl	$66, %eax
	jne	.L5565
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%r14), %rax
	movq	%rax, %rbx
	je	.L5564
	movq	%r14, %rdi
	call	copy_rtx
	movq	%rax, -992(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L5564
.L7802:
	movq	8(%r12), %rsi
	movq	%r14, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%r12)
	movq	%rax, %rbx
	je	.L5563
	movzbl	2(%r14), %edi
	call	gen_reg_rtx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, -992(%rbp)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L5564
.L5563:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L7458:
	movq	%rax, -992(%rbp)
	jmp	.L5564
	.p2align 6,,7
.L5561:
	cmpq	$0, 16(%r14)
	je	.L7803
	movq	24(%r14), %rsi
	testq	%rsi, %rsi
	movq	%rsi, -992(%rbp)
	jne	.L5564
	movq	8(%r14), %rbx
	movzbl	2(%rbx), %edi
	call	gen_reg_rtx
	movq	8(%r14), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r14), %rax
	movq	%rax, -992(%rbp)
	jmp	.L5564
.L7803:
	movq	8(%r14), %rdi
	call	copy_to_reg
	jmp	.L7458
	.p2align 6,,7
.L5556:
	movq	-1128(%rbp), %r13
	xorl	%esi, %esi
	movq	8(%r13), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, %r12
	call	protect_from_queue
	movq	-1128(%rbp), %rsi
	movq	%rax, %rbx
	cmpq	8(%rsi), %r12
	je	.L7804
.L5558:
	movq	-1128(%rbp), %rdi
	call	copy_rtx
	movq	%rax, -984(%rbp)
	movq	%r12, 8(%rax)
	movq	-984(%rbp), %rdi
	movq	%rbx, 16(%rdi)
	jmp	.L5551
.L7804:
	cmpq	16(%rsi), %rax
	jne	.L5558
	jmp	.L5551
.L7770:
	jne	.L5552
	movq	8(%rdx), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	-1128(%rbp), %rcx
	movq	%rax, %rbx
	cmpq	8(%rcx), %rax
	je	.L5551
	movq	%rcx, %rdi
	call	copy_rtx
	movq	%rax, -984(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L5551
	.p2align 6,,7
.L5548:
	testq	%rsi, %rsi
	je	.L7805
	movq	-1128(%rbp), %rdx
	movq	24(%rdx), %r10
	testq	%r10, %r10
	movq	%r10, -984(%rbp)
	jne	.L5551
	movq	-1128(%rbp), %r12
	movq	8(%r12), %r9
	movzbl	2(%r9), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %r11
	movq	%r11, -984(%rbp)
	jmp	.L5551
.L7805:
	movq	-1128(%rbp), %r8
	movq	8(%r8), %rdi
	call	copy_to_reg
	movq	%rax, -984(%rbp)
	jmp	.L5551
	.p2align 6,,7
.L5541:
	testq	%rsi, %rsi
	movl	$8, %r15d
	je	.L5537
	movl	32(%rsi), %r15d
	jmp	.L5537
	.p2align 6,,7
.L5540:
	cmpl	$7, %edx
	ja	.L5536
	jmp	.L5541
.L7769:
	movq	-944(%rbp), %rax
	movslq	32(%r15),%r10
	cmpq	%r10, 8(%rax)
	jge	.L5336
	movq	-1128(%rbp), %rcx
	movq	%r14, -936(%rbp)
	movl	$8, %edx
	movq	%rcx, -928(%rbp)
	movq	16(%rcx), %rax
	testq	%rax, %rax
	movq	%rax, %rsi
	je	.L5340
	movl	32(%rax), %edx
.L5340:
	movq	16(%r14), %rax
	testq	%rax, %rax
	movq	%rax, %rcx
	je	.L5341
	cmpl	32(%rax), %edx
	jb	.L5342
.L5337:
	testq	%rcx, %rcx
	movl	$8, %r15d
	je	.L5338
	movl	32(%rcx), %r15d
.L5338:
	movq	-1128(%rbp), %r11
	cmpb	$51, 2(%r11)
	jne	.L7598
	cmpb	$51, 2(%r14)
	jne	.L7597
	movq	-1128(%rbp), %rdx
	movzwl	(%rdx), %eax
	cmpl	$71, %eax
	je	.L5349
	cmpl	$66, %eax
	je	.L7806
.L5353:
	cmpl	$75, %eax
	je	.L5357
	cmpl	$78, %eax
	je	.L5357
.L5352:
	movzwl	(%r14), %eax
	cmpl	$71, %eax
	je	.L5362
	cmpl	$66, %eax
	je	.L7807
.L5366:
	cmpl	$75, %eax
	je	.L5370
	cmpl	$78, %eax
	je	.L5370
.L5365:
	movq	-944(%rbp), %rcx
	movzwl	(%rcx), %eax
	cmpl	$71, %eax
	je	.L5375
	cmpl	$66, %eax
	je	.L7808
.L5379:
	cmpl	$75, %eax
	je	.L5383
	cmpl	$78, %eax
	je	.L5383
.L5378:
	movq	-928(%rbp), %rdi
	cmpw	$66, (%rdi)
	jne	.L7596
	movq	-936(%rbp), %r10
	cmpw	$66, (%r10)
	jne	.L7595
	cmpq	$0, -944(%rbp)
	je	.L7594
	movq	-944(%rbp), %rcx
	cmpw	$54, (%rcx)
	je	.L7809
.L5391:
	shrl	$3, %r15d
	xorl	%edi, %edi
	mov	%r15d, %esi
	call	gen_rtx_CONST_INT
	movl	class_narrowest_mode+4(%rip), %r12d
	movl	$1, volatile_ok(%rip)
	movq	%rax, -384(%rbp)
	testl	%r12d, %r12d
	je	.L7284
.L5524:
	movslq	%r12d,%r15
	movl	movstr_optab(,%r15,4), %edx
	cmpl	$1317, %edx
	je	.L5510
	movq	-944(%rbp), %rsi
	cmpw	$54, (%rsi)
	je	.L7810
.L5514:
	testb	$2, target_flags+3(%rip)
	je	.L5515
	cmpw	$63, mode_bitsize(%r15,%r15)
.L7457:
	jbe	.L5510
.L5513:
	movslq	%edx,%r10
	leaq	(%r10,%r10,4), %r8
	movq	%r10, -392(%rbp)
	movq	insn_data+24(,%r8,8), %r13
	movq	(%r13), %rax
	testq	%rax, %rax
	je	.L5517
	movq	-928(%rbp), %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L5510
.L5517:
	movq	24(%r13), %rax
	testq	%rax, %rax
	jne	.L7811
.L5518:
	movq	72(%r13), %rax
	testq	%rax, %rax
	je	.L5519
	xorl	%esi, %esi
	movq	-384(%rbp), %rdi
	call	*%rax
	testl	%eax, %eax
	je	.L5510
.L5519:
	call	get_last_insn
	movl	$1, %edx
	movq	-944(%rbp), %rsi
	movl	%r12d, %edi
	movq	%rax, -400(%rbp)
	call	convert_to_mode
	movq	%rax, %rbx
	movq	48(%r13), %rax
	testq	%rax, %rax
	jne	.L7812
.L5520:
	movq	-392(%rbp), %rdx
	movq	-928(%rbp), %rdi
	xorl	%eax, %eax
	movq	-936(%rbp), %rsi
	movq	-384(%rbp), %rcx
	leaq	(%rdx,%rdx,4), %r12
	movq	%rbx, %rdx
	call	*insn_data+16(,%r12,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L7441
	movq	-400(%rbp), %rdi
	call	delete_insns_since
.L5510:
	movzbl	mode_wider_mode(%r15), %r12d
	testl	%r12d, %r12d
	jne	.L5524
.L7284:
	testb	$2, target_flags+3(%rip)
	movq	-928(%rbp), %rcx
	movl	$0, volatile_ok(%rip)
	setne	%sil
	movzbl	%sil, %edi
	movq	8(%rcx), %rsi
	addl	$4, %edi
	call	copy_to_mode_reg
	testb	$2, target_flags+3(%rip)
	setne	%r9b
	movq	%rax, %r13
	movq	-936(%rbp), %rax
	movq	8(%rax), %rsi
	movzbl	%r9b, %edi
	addl	$4, %edi
	call	copy_to_mode_reg
	movq	-944(%rbp), %rsi
	movq	sizetype_tab(%rip), %r11
	movq	%rax, %rbx
	movzbl	61(%r11), %r15d
	shrb	$1, %r15b
	movzbl	%r15b, %edi
	jmp	.L7599
.L7812:
	movq	%rbx, %rdi
	movl	%r12d, %esi
	call	*%rax
	testl	%eax, %eax
	jne	.L5520
	movq	%rbx, %rsi
	movl	%r12d, %edi
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L5520
.L7811:
	movq	-936(%rbp), %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L5510
	jmp	.L5518
	.p2align 6,,7
.L5515:
	cmpw	$31, mode_bitsize(%r15,%r15)
	jmp	.L7457
.L7810:
	movq	mode_mask_array(,%r15,8), %rdi
	shrq	$1, %rdi
	cmpq	%rdi, 8(%rsi)
	jbe	.L5513
	jmp	.L5514
.L7809:
	movq	8(%rcx), %r12
	xorl	%r13d, %r13d
	movl	$17, %esi
.L5404:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L7273
.L5401:
	movslq	%ecx,%r11
	movzbq	mode_size(%r11), %rdx
	cmpq	%rsi, %rdx
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r11), %ecx
	testl	%ecx, %ecx
	jne	.L5401
.L7273:
	testl	%edi, %edi
	je	.L5394
	movslq	%edi,%rbx
	movq	%rbx, %rcx
	salq	$4, %rcx
	addq	optab_table+240(%rip), %rcx
	cmpl	$1317, 8(%rcx)
	je	.L5403
	call	get_mode_alignment
	movl	$128, %r8d
	cmpl	%eax, %r8d
	jb	.L5403
	movzbq	mode_size(%rbx), %r9
	movq	%r12, %rax
	xorl	%edx, %edx
	divq	%r9
	addq	%rax, %r13
	movq	%rdx, %r12
.L5403:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L5404
.L5394:
	testq	%r12, %r12
	jne	.L7587
	movl	optimize_size(%rip), %eax
	testl	%eax, %eax
	jne	.L5407
	movq	ix86_cost(%rip), %rdi
	mov	40(%rdi), %ebx
	cmpq	%rbx, %r13
	jae	.L5391
.L5408:
	movq	-944(%rbp), %r8
	movq	-936(%rbp), %rsi
	movq	-928(%rbp), %rdx
	movq	-928(%rbp), %r10
	testb	$2, target_flags+3(%rip)
	movq	8(%r8), %r12
	setne	%r13b
	movq	8(%rsi), %r8
	movq	$0, -72(%rbp)
	movl	$0, -956(%rbp)
	movq	%r8, -96(%rbp)
	movzbl	%r13b, %ecx
	movq	8(%rdx), %r11
	movq	%r10, -128(%rbp)
	leal	5(,%rcx,4), %r13d
	xorl	%ecx, %ecx
	movq	%r11, -952(%rbp)
	movq	-952(%rbp), %rax
	movzwl	(%rax), %edx
	leal	-96(%rdx), %r15d
	cmpw	$1, %r15w
	jbe	.L5413
	cmpw	$99, %dx
	je	.L5413
	cmpw	$98, %dx
	je	.L5413
.L5412:
	movq	-952(%rbp), %r9
	movl	%ecx, -112(%rbp)
	xorl	%edx, %edx
	movzwl	(%r9), %eax
	cmpw	$96, %ax
	je	.L5415
	cmpw	$98, %ax
	je	.L5415
.L5414:
	movq	-952(%rbp), %r15
	movq	-936(%rbp), %rdi
	movl	%edx, -64(%rbp)
	xorl	%ecx, %ecx
	movq	%r15, -120(%rbp)
	movq	%rdi, -104(%rbp)
	movzwl	(%r8), %edx
	leal	-96(%rdx), %ebx
	cmpw	$1, %bx
	jbe	.L5418
	cmpw	$99, %dx
	je	.L5418
	cmpw	$98, %dx
	je	.L5418
.L5417:
	movl	-64(%rbp), %eax
	movl	%ecx, -88(%rbp)
	movl	$0, -84(%rbp)
	movl	$0, -108(%rbp)
	testl	%eax, %eax
	je	.L5419
	movq	%r12, -72(%rbp)
.L5419:
	movl	-88(%rbp), %eax
	movq	%r12, -80(%rbp)
	testl	%eax, %eax
	je	.L5421
	movl	-112(%rbp), %eax
	testl	%eax, %eax
	jne	.L5420
.L5421:
	xorl	%r15d, %r15d
	movl	$17, %esi
.L5434:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L7276
.L5431:
	movslq	%ecx,%r10
	movzbq	mode_size(%r10), %r11
	cmpq	%rsi, %r11
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r10), %ecx
	testl	%ecx, %ecx
	jne	.L5431
.L7276:
	testl	%edi, %edi
	je	.L5424
	movslq	%edi,%rbx
	movq	%rbx, %rdx
	salq	$4, %rdx
	addq	optab_table+240(%rip), %rdx
	cmpl	$1317, 8(%rdx)
	je	.L5433
	movq	%r8, -1464(%rbp)
	call	get_mode_alignment
	movq	-1464(%rbp), %r8
	movl	$128, %ecx
	cmpl	%eax, %ecx
	jb	.L5433
	movzbq	mode_size(%rbx), %rsi
	movq	%r12, %rax
	xorl	%edx, %edx
	divq	%rsi
	addq	%rax, %r15
	movq	%rdx, %r12
.L5433:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L5434
.L5424:
	testq	%r12, %r12
	jne	.L7587
	cmpq	$2, %r15
	jbe	.L5420
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L7278
.L5442:
	movslq	%ecx,%rbx
	movzbl	mode_size(%rbx), %edi
	cmpl	%r13d, %edi
	cmovae	-956(%rbp), %ecx
	movl	%ecx, -956(%rbp)
	movzbl	mode_wider_mode(%rbx), %ecx
	testl	%ecx, %ecx
	jne	.L5442
.L7278:
	movl	-88(%rbp), %eax
	testl	%eax, %eax
	jne	.L5448
	movzwl	(%r8), %edx
	leal	-67(%rdx), %r15d
	cmpw	$1, %r15w
	jbe	.L5446
	cmpw	$54, %dx
	je	.L5446
	cmpw	$55, %dx
	je	.L5446
	cmpw	$58, %dx
	je	.L5446
	cmpw	$134, %dx
	je	.L5446
	cmpw	$56, %dx
	je	.L5446
	cmpw	$140, %dx
	je	.L5446
.L5448:
	movl	-112(%rbp), %r8d
	testl	%r8d, %r8d
	jne	.L5420
	movq	-952(%rbp), %r11
	movzwl	(%r11), %edx
	leal	-67(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L5450
	cmpw	$54, %dx
	je	.L5450
	cmpw	$55, %dx
	je	.L5450
	cmpw	$58, %dx
	je	.L5450
	cmpw	$134, %dx
	je	.L5450
	cmpw	$56, %dx
	je	.L5450
	cmpw	$140, %dx
	je	.L5450
.L5420:
	cmpl	$1, %r13d
	jbe	.L5453
.L5504:
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L7281
.L5460:
	movslq	%ecx,%r12
	movzbl	mode_size(%r12), %edx
	cmpl	%r13d, %edx
	cmovae	-956(%rbp), %ecx
	movl	%ecx, -956(%rbp)
	movzbl	mode_wider_mode(%r12), %ecx
	testl	%ecx, %ecx
	jne	.L5460
.L7281:
	movl	-956(%rbp), %r13d
	testl	%r13d, %r13d
	je	.L5453
	movslq	-956(%rbp),%r15
	movq	%r15, %rcx
	salq	$4, %rcx
	addq	optab_table+240(%rip), %rcx
	movl	8(%rcx), %ebx
	cmpl	$1317, %ebx
	je	.L5462
	movl	-956(%rbp), %edi
	call	get_mode_alignment
	movl	$128, %r9d
	cmpl	%eax, %r9d
	jb	.L5462
	movzbq	mode_size(%r15), %rdx
	movslq	%ebx,%rdi
	leaq	-128(%rbp), %r12
	leaq	(%rdi,%rdi,4), %rbx
	cmpq	%rdx, -80(%rbp)
	movq	$0, -968(%rbp)
	movq	insn_data+16(,%rbx,8), %rsi
	movq	%rdx, -864(%rbp)
	movq	%rsi, -376(%rbp)
	jb	.L5462
	movl	-64(%rbp), %ecx
.L5502:
	testl	%ecx, %ecx
	je	.L5466
	subq	%rdx, 56(%r12)
.L5466:
	movq	(%r12), %rdi
	testq	%rdi, %rdi
	je	.L5467
	movl	16(%r12), %eax
	testl	%eax, %eax
	je	.L5468
	movl	-956(%rbp), %esi
	movq	8(%r12), %rdx
	movl	$1, %r8d
	movq	56(%r12), %rcx
	call	adjust_automodify_address_1
.L7453:
	movq	%rax, -968(%rbp)
.L5467:
	movl	40(%r12), %r8d
	testl	%r8d, %r8d
	je	.L5470
	movq	24(%r12), %rdi
	movl	-956(%rbp), %esi
	movl	$1, %r8d
	movq	32(%r12), %rdx
	movq	56(%r12), %rcx
	call	adjust_automodify_address_1
.L7454:
	cmpq	$0, (%r12)
	movq	%rax, %r13
	jne	.L7813
	movl	target_flags(%rip), %eax
	testl	$33554432, %eax
	movl	%eax, %esi
	je	.L5476
	movzbl	mode_size(%r15), %r10d
	leal	7(%r10), %edx
	andl	$-8, %edx
.L5477:
	movq	cfun(%rip), %rcx
	andl	$33554432, %esi
	movq	16(%rcx), %r9
	leaq	8(%r9), %rdi
	movl	8(%r9), %ecx
	je	.L5478
	movzbl	mode_size(%r15), %eax
	addl	$7, %eax
	andl	$-8, %eax
.L7455:
	movq	%r15, %rsi
	leal	(%rax,%rcx), %ebx
	salq	$4, %rsi
	movl	%ebx, (%rdi)
	addq	optab_table+384(%rip), %rsi
	movl	8(%rsi), %eax
	cmpl	$1317, %eax
	je	.L5480
	movslq	%eax,%rbx
	leaq	(%rbx,%rbx,4), %rdi
	movq	insn_data+24(,%rdi,8), %rdx
	movq	(%rdx), %rax
	testq	%rax, %rax
	je	.L5481
	movq	%r13, %rdi
	movl	-956(%rbp), %esi
	call	*%rax
	testl	%eax, %eax
	je	.L7814
.L5481:
	leaq	(%rbx,%rbx,4), %r8
	movq	%r13, %rdi
	xorl	%eax, %eax
	call	*insn_data+16(,%r8,8)
.L7456:
	movq	%rax, %rdi
	call	emit_insn
.L5500:
	movl	64(%r12), %eax
	testl	%eax, %eax
	movl	%eax, %ecx
	jne	.L5501
	movq	-864(%rbp), %r13
	addq	%r13, 56(%r12)
.L5501:
	movq	48(%r12), %rbx
	movq	-864(%rbp), %rdx
	subq	-864(%rbp), %rbx
	cmpq	%rdx, %rbx
	movq	%rbx, 48(%r12)
	jae	.L5502
.L5462:
	movzbl	mode_size(%r15), %r13d
	cmpl	$1, %r13d
	ja	.L5504
.L5453:
	cmpq	$0, -80(%rbp)
	jmp	.L7589
.L7814:
	movl	-956(%rbp), %edi
	movq	%r13, %rsi
	call	force_reg
	movq	%rax, %r13
	jmp	.L5481
.L5480:
	movzbl	mode_size(%r15), %r10d
	cmpl	%edx, %r10d
	je	.L7815
	mov	%edx, %esi
	xorl	%edi, %edi
	negq	%rsi
	call	gen_rtx_CONST_INT
	movq	global_rtl+16(%rip), %rdx
	movl	$75, %edi
	testb	$2, target_flags+3(%rip)
	movq	%rax, %rcx
	setne	%r9b
	movzbl	%r9b, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_ee
	movq	global_rtl+16(%rip), %rdx
	movl	$100, %edi
	testb	$2, target_flags+3(%rip)
	movq	%rax, %rcx
	setne	%r11b
	movzbl	%r11b, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_ee
.L5488:
	movl	-956(%rbp), %edi
	movq	%rax, %rsi
	call	gen_rtx_MEM
	xorl	%ecx, %ecx
	testq	%rcx, %rcx
	movq	%rax, %rbx
	je	.L5497
	xorl	%esi, %esi
	movq	%rax, %rdi
	movl	$1, %edx
	call	set_mem_attributes
	movl	flag_optimize_sibling_calls(%rip), %esi
	testl	%esi, %esi
	jne	.L7816
.L5497:
	movq	%rbx, %rdi
	movq	%r13, %rsi
	call	emit_move_insn
	jmp	.L5500
.L7816:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	call	set_mem_alias_set
	jmp	.L5497
.L7815:
	testb	$2, target_flags+3(%rip)
	movq	global_rtl+16(%rip), %rdx
	movl	$96, %edi
	setne	%al
	movzbl	%al, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_e
	jmp	.L5488
.L5478:
	movzbl	mode_size(%r15), %eax
	incl	%eax
	andl	$-2, %eax
	jmp	.L7455
.L5476:
	movzbl	mode_size(%r15), %r11d
	leal	1(%r11), %edx
	andl	$-2, %edx
	jmp	.L5477
.L7813:
	movq	%rax, %rsi
	movq	-968(%rbp), %rdi
	xorl	%eax, %eax
	call	*-376(%rbp)
	jmp	.L7456
.L5470:
	movq	24(%r12), %rdi
	movl	-956(%rbp), %esi
	movl	$1, %ecx
	movq	56(%r12), %rdx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L7454
.L5468:
	movl	-956(%rbp), %esi
	movq	56(%r12), %rdx
	movl	$1, %ecx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L7453
.L5450:
	movq	-952(%rbp), %rdi
	call	copy_addr_to_reg
	movq	%rax, -120(%rbp)
	jmp	.L5420
.L5446:
	movq	%r8, %rdi
	call	copy_addr_to_reg
	movq	%rax, -96(%rbp)
	jmp	.L5448
.L5418:
	movl	$1, %ecx
	jmp	.L5417
.L5415:
	movl	$1, %edx
	jmp	.L5414
.L5413:
	movl	$1, %ecx
	jmp	.L5412
.L5407:
	cmpq	$2, %r13
	ja	.L5391
	jmp	.L5408
.L5383:
	movq	-944(%rbp), %rbx
	xorl	%esi, %esi
	movq	8(%rbx), %rdi
	call	protect_from_queue
	movq	-944(%rbp), %rsi
	movq	%rax, %r12
	movq	16(%rsi), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	-944(%rbp), %rsi
	movq	%rax, %rbx
	cmpq	8(%rsi), %r12
	je	.L7817
.L5385:
	movq	-944(%rbp), %rdi
	call	copy_rtx
	movq	%rax, -944(%rbp)
	movq	%r12, 8(%rax)
	movq	-944(%rbp), %r12
	movq	%rbx, 16(%r12)
	jmp	.L5378
.L7817:
	cmpq	16(%rsi), %rax
	jne	.L5385
	jmp	.L5378
.L7808:
	cmpb	$51, 2(%rcx)
	je	.L5376
	movq	8(%rcx), %r12
	cmpw	$71, (%r12)
	je	.L7818
.L5376:
	cmpl	$66, %eax
	jne	.L5379
	movq	-944(%rbp), %rdx
	xorl	%esi, %esi
	movq	8(%rdx), %rdi
	call	protect_from_queue
	movq	-944(%rbp), %rdx
	movq	%rax, %rbx
	cmpq	8(%rdx), %rax
	je	.L5378
	movq	%rdx, %rdi
	call	copy_rtx
	movq	%rax, -944(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L5378
.L7818:
	movq	8(%r12), %rsi
	movq	%rcx, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%r12)
	movq	%rax, %rbx
	je	.L5377
	movq	-944(%rbp), %r11
	movzbl	2(%r11), %edi
	call	gen_reg_rtx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, -944(%rbp)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L5378
.L5377:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L7452:
	movq	%rax, -944(%rbp)
	jmp	.L5378
.L5375:
	movq	-944(%rbp), %rdx
	cmpq	$0, 16(%rdx)
	je	.L7819
	movq	-944(%rbp), %r8
	movq	24(%r8), %rax
	testq	%rax, %rax
	jne	.L7452
	movq	-944(%rbp), %r12
	movq	8(%r12), %r9
	movzbl	2(%r9), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %r13
	movq	%r13, -944(%rbp)
	jmp	.L5378
.L7819:
	movq	8(%rdx), %rdi
	call	copy_to_reg
	jmp	.L7452
.L5370:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r14), %rdi
	movq	%rax, %r12
	call	protect_from_queue
	cmpq	8(%r14), %r12
	movq	%rax, %rbx
	je	.L7820
.L5372:
	movq	%r14, %rdi
	call	copy_rtx
	movq	%rax, -936(%rbp)
	movq	%r12, 8(%rax)
	movq	-936(%rbp), %rdi
	movq	%rbx, 16(%rdi)
	jmp	.L5365
.L7820:
	cmpq	16(%r14), %rax
	jne	.L5372
	jmp	.L5365
.L7807:
	cmpb	$51, 2(%r14)
	je	.L5363
	movq	8(%r14), %r12
	cmpw	$71, (%r12)
	je	.L7821
.L5363:
	cmpl	$66, %eax
	jne	.L5366
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%r14), %rax
	movq	%rax, %rbx
	je	.L5365
	movq	%r14, %rdi
	call	copy_rtx
	movq	%rax, -936(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L5365
.L7821:
	movq	8(%r12), %rsi
	movq	%r14, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%r12)
	movq	%rax, %rbx
	je	.L5364
	movzbl	2(%r14), %edi
	call	gen_reg_rtx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, -936(%rbp)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L5365
.L5364:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L7451:
	movq	%rax, -936(%rbp)
	jmp	.L5365
.L5362:
	cmpq	$0, 16(%r14)
	je	.L7822
	movq	24(%r14), %r10
	testq	%r10, %r10
	movq	%r10, -936(%rbp)
	jne	.L5365
	movq	8(%r14), %rcx
	movzbl	2(%rcx), %edi
	call	gen_reg_rtx
	movq	8(%r14), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r14), %rax
	movq	%rax, -936(%rbp)
	jmp	.L5365
.L7822:
	movq	8(%r14), %rdi
	call	copy_to_reg
	jmp	.L7451
.L5357:
	movq	-1128(%rbp), %r13
	xorl	%esi, %esi
	movq	8(%r13), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, %r12
	call	protect_from_queue
	movq	-1128(%rbp), %rsi
	movq	%rax, %rbx
	cmpq	8(%rsi), %r12
	je	.L7823
.L5359:
	movq	-1128(%rbp), %rdi
	call	copy_rtx
	movq	%rax, -928(%rbp)
	movq	%r12, 8(%rax)
	movq	-928(%rbp), %rdx
	movq	%rbx, 16(%rdx)
	jmp	.L5352
.L7823:
	cmpq	16(%rsi), %rax
	jne	.L5359
	jmp	.L5352
.L7806:
	jne	.L5353
	movq	8(%rdx), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	-1128(%rbp), %rcx
	movq	%rax, %rbx
	cmpq	8(%rcx), %rax
	je	.L5352
	movq	%rcx, %rdi
	call	copy_rtx
	movq	%rax, -928(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L5352
.L5349:
	testq	%rsi, %rsi
	je	.L7824
	movq	-1128(%rbp), %rsi
	movq	24(%rsi), %r12
	testq	%r12, %r12
	movq	%r12, -928(%rbp)
	jne	.L5352
	movq	-1128(%rbp), %r13
	movq	8(%r13), %r9
	movzbl	2(%r9), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %r8
	movq	%r8, -928(%rbp)
	jmp	.L5352
.L7824:
	movq	-1128(%rbp), %rbx
	movq	8(%rbx), %rdi
	call	copy_to_reg
	movq	%rax, -928(%rbp)
	jmp	.L5352
.L5342:
	testq	%rsi, %rsi
	movl	$8, %r15d
	je	.L5338
	movl	32(%rsi), %r15d
	jmp	.L5338
.L5341:
	cmpl	$7, %edx
	ja	.L5337
	jmp	.L5342
	.p2align 6,,7
.L5326:
	movq	-1128(%rbp), %r11
	xorl	%esi, %esi
	movq	8(%r11), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	-1128(%rbp), %r10
	movq	%rax, %r12
	movq	16(%r10), %rdi
	call	protect_from_queue
	movq	-1128(%rbp), %rcx
	movq	%rax, %rbx
	cmpq	8(%rcx), %r12
	je	.L7825
.L5328:
	movq	-1128(%rbp), %rdi
	call	copy_rtx
	movq	%rax, -1128(%rbp)
	movq	%r12, 8(%rax)
	movq	-1128(%rbp), %rdx
	movq	%rbx, 16(%rdx)
	jmp	.L5321
.L7825:
	cmpq	16(%rcx), %rax
	jne	.L5328
	jmp	.L5321
.L7740:
	jne	.L5322
	movq	8(%rcx), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	-1128(%rbp), %rsi
	movq	%rax, %rbx
	cmpq	8(%rsi), %rax
	je	.L5321
	movq	%rsi, %rdi
	call	copy_rtx
	movq	%rax, -1128(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L5321
	.p2align 6,,7
.L5318:
	movq	-1128(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.L7826
	movq	-1128(%rbp), %rbx
	movq	24(%rbx), %rdi
	testq	%rdi, %rdi
	je	.L5330
	movq	%rdi, -1128(%rbp)
	jmp	.L5321
.L5330:
	movq	-1128(%rbp), %r8
	movq	8(%r8), %rsi
	movzbl	2(%rsi), %edi
	call	gen_reg_rtx
	movq	-1128(%rbp), %r13
	movq	%rax, %rdi
	movq	8(%r13), %rsi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %r12
	movq	%r12, -1128(%rbp)
	jmp	.L5321
.L7826:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%rax, -1128(%rbp)
	jmp	.L5321
.L7739:
	movq	144(%r15), %rax
	testq	%rax, %rax
	je	.L5313
	cmpq	%rax, -1128(%rbp)
	jne	.L5313
	jmp	.L5311
	.p2align 6,,7
.L7738:
	movq	-1128(%rbp), %rdi
	call	side_effects_p
	testl	%eax, %eax
	je	.L5311
	jmp	.L5312
	.p2align 6,,7
.L5310:
	cmpb	$0, 2(%r14)
	jne	.L5309
	cmpb	$0, 16(%r15)
	je	.L5309
	movq	8(%r15), %rdx
	movq	-1128(%rbp), %rax
	movzbl	61(%rdx), %r9d
	movzbl	2(%rax), %edi
	shrb	$1, %r9b
	movzbl	%r9b, %esi
	cmpl	%esi, %edi
	je	.L5309
	movzbl	17(%rdx), %ecx
	movq	%r14, %rdx
	shrb	$5, %cl
	andl	$1, %ecx
	call	convert_modes
	movq	%rax, %r14
	jmp	.L5309
.L7737:
	movzbl	%al, %edi
	call	gen_reg_rtx
	movq	-1128(%rbp), %rdi
	movq	%rax, %rsi
	movzbl	2(%rdi), %edx
	movq	%r15, %rdi
	jmp	.L7450
.L5271:
	xorl	%ebx, %ebx
	testl	%ebx, %ebx
	je	.L7418
	movq	-1128(%rbp), %rbx
	movl	(%rbx), %ecx
	movl	%ecx, %esi
	andl	$134283263, %esi
	cmpl	$66, %esi
	je	.L7827
.L5287:
	andl	$268500991, %ecx
	cmpl	$268435519, %ecx
	je	.L7828
	movq	-1128(%rbp), %r14
	xorl	%ecx, %ecx
	movq	%r15, %rdi
	movzbl	2(%r14), %edx
	movq	%r14, %rsi
	call	expand_expr
	movq	-1128(%rbp), %rbx
	movq	%rax, %r14
	cmpw	$61, (%rbx)
	je	.L7829
.L5307:
	movq	-1128(%rbp), %rsi
	movl	(%rsi), %eax
	andl	$134283263, %eax
	cmpl	$134217794, %eax
	je	.L7422
	movq	%r14, %rdi
	call	rtx_equal_p
	testl	%eax, %eax
	jne	.L7422
	movzwl	(%r14), %edx
	leal	-67(%rdx), %r8d
	cmpw	$1, %r8w
	jbe	.L5308
	cmpw	$54, %dx
	je	.L5308
	cmpw	$55, %dx
	je	.L5308
	cmpw	$58, %dx
	je	.L5308
	cmpw	$134, %dx
	je	.L5308
	cmpw	$56, %dx
	je	.L5308
	cmpw	$140, %dx
	je	.L5308
	xorl	%r13d, %r13d
	testl	%r13d, %r13d
	je	.L5232
.L5308:
	movl	$1, -916(%rbp)
	jmp	.L5232
.L7829:
	cmpl	$52, 8(%rbx)
	jbe	.L7422
	jmp	.L5307
.L7828:
	xorl	%r12d, %r12d
	xorl	%edx, %edx
	testl	%r12d, %r12d
	jne	.L5293
	movq	8(%r15), %rsi
	movzbl	16(%rsi), %eax
	cmpb	$6, %al
	je	.L5294
	cmpb	$10, %al
	je	.L5294
	cmpb	$11, %al
	je	.L5294
	cmpb	$12, %al
	je	.L5294
.L5293:
	movq	%rdx, %rsi
	xorl	%ecx, %ecx
	movq	%r15, %rdi
	xorl	%edx, %edx
	call	expand_expr
	movzwl	(%rax), %edx
	movq	%rax, %r14
	cmpw	$66, %dx
	je	.L7830
.L5296:
	leal	-67(%rdx), %r11d
	cmpw	$1, %r11w
	jbe	.L5299
	cmpw	$54, %dx
	je	.L5299
	cmpw	$55, %dx
	je	.L5299
	cmpw	$58, %dx
	je	.L5299
	cmpw	$134, %dx
	je	.L5299
	cmpw	$56, %dx
	je	.L5299
	cmpw	$140, %dx
	je	.L5299
.L5298:
	movq	-1128(%rbp), %r9
	movq	%r14, %rsi
	movzbl	3(%r9), %edx
	movq	8(%r9), %rdi
	shrb	$2, %dl
	andl	$1, %edx
	call	convert_move
	xorl	%ecx, %ecx
	testl	%ecx, %ecx
	je	.L7523
	movq	-1128(%rbp), %rdi
	movzbl	2(%r14), %edx
	movzbl	2(%rdi), %eax
	cmpb	%al, %dl
	je	.L5300
	testb	%dl, %dl
	je	.L5301
	movq	%r14, %rsi
	movzbl	%al, %edi
	call	gen_lowpart_SUBREG
	movzbl	3(%rax), %r10d
	movq	%rax, %r14
	orb	$16, %r10b
	movb	%r10b, 3(%rax)
	andb	$-5, %r10b
	movq	-1128(%rbp), %rdx
	movzbl	3(%rdx), %r11d
	andb	$4, %r11b
	orb	%r11b, %r10b
	movb	%r10b, 3(%rax)
.L5300:
	xorl	%esi, %esi
	testl	%esi, %esi
	jmp	.L7590
.L5301:
	movq	-1128(%rbp), %r12
	movq	-1128(%rbp), %r15
	movq	%r14, %rdx
	movzbl	%al, %edi
	movq	8(%r12), %rbx
	movzbl	3(%r15), %ecx
	movzbl	2(%rbx), %esi
	shrb	$2, %cl
	andl	$1, %ecx
	call	convert_modes
	movq	%rax, %r14
	jmp	.L5300
.L5299:
	cmpb	$0, 2(%r14)
	jne	.L5298
	movq	8(%r15), %r13
	movq	-1128(%rbp), %r12
	movq	%r14, %rdx
	movq	-1128(%rbp), %rax
	movzbl	61(%r13), %r8d
	movzbl	3(%r12), %ecx
	movzbl	2(%rax), %edi
	shrb	$1, %r8b
	shrb	$2, %cl
	movzbl	%r8b, %esi
	andl	$1, %ecx
	call	convert_modes
	movq	-1128(%rbp), %rbx
	movq	%rax, %rdx
	movq	8(%rbx), %rsi
	movzbl	3(%rbx), %ecx
	movzbl	2(%rsi), %edi
	movzbl	2(%rbx), %esi
	shrb	$2, %cl
	andl	$1, %ecx
	call	convert_modes
	movq	%rax, %r14
	jmp	.L5298
.L7830:
	xorl	%edi, %edi
	testl	%edi, %edi
	je	.L5296
	testb	$8, 3(%rax)
	jne	.L5297
	movq	-1128(%rbp), %r10
	movq	8(%rax), %rsi
	movq	8(%r10), %rdi
	call	reg_mentioned_p
	testl	%eax, %eax
	je	.L7419
.L5297:
	movq	%r14, %rdi
	call	copy_to_reg
	movq	%rax, %r14
.L7419:
	movzwl	(%r14), %edx
	jmp	.L5296
.L5294:
	cmpq	$0, 8(%rsi)
	jne	.L5293
	movq	-1128(%rbp), %rbx
	movzbl	17(%rsi), %r8d
	movl	$1, %edi
	movzbl	3(%rbx), %ecx
	shrb	$5, %r8b
	andl	$1, %r8d
	movl	%ecx, %r13d
	shrb	$2, %r13b
	andl	%r13d, %edi
	cmpl	%edi, %r8d
	je	.L5295
	call	signed_or_unsigned_type
	movq	%r15, %rsi
	movq	%rax, %rdi
	call	convert
	movzbl	3(%rbx), %ecx
	movq	%rax, %r15
.L5295:
	movq	-1128(%rbp), %rdx
	shrb	$2, %cl
	movl	$1, %esi
	andl	%ecx, %esi
	movq	8(%rdx), %r9
	movzbl	2(%r9), %edi
	call	type_for_mode
	movq	%r15, %rsi
	movq	%rax, %rdi
	call	convert
	movq	-1128(%rbp), %rcx
	movq	%rax, %r15
	movq	8(%rcx), %rdx
	jmp	.L5293
.L7827:
	movzbl	2(%rbx), %eax
	cmpb	$51, %al
	je	.L5287
	xorl	%ecx, %ecx
	movzbl	%al, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	call	expand_expr
	movq	%rax, %r14
	movzbl	2(%rax), %eax
	cmpb	$51, %al
	je	.L5288
	testb	%al, %al
	je	.L5288
	cmpq	%rbx, %r14
	je	.L5290
	movq	%r14, %rdi
	movq	%rbx, %rsi
	call	rtx_equal_p
	testl	%eax, %eax
	jne	.L7831
.L5289:
	movq	%r14, %rdi
	call	copy_to_reg
	movq	%rax, %r14
	jmp	.L5288
.L7831:
	movq	%r14, %rdi
	call	side_effects_p
	testl	%eax, %eax
	jne	.L5289
	movq	%rbx, %rdi
	call	side_effects_p
	testl	%eax, %eax
	jne	.L5289
.L5290:
	movl	$1, %r12d
	jmp	.L5289
	.p2align 6,,7
.L7418:
	movq	-1128(%rbp), %r14
	movl	(%r14), %ecx
	jmp	.L5287
.L5280:
	movl	$1, %ebx
	jmp	.L5274
.L5281:
	xorl	%ebx, %ebx
	jmp	.L5274
.L5278:
	movq	-1128(%rbp), %r13
	xorl	%ebx, %ebx
	movq	8(%r13), %rdi
	call	queued_subexp_p
	testl	%eax, %eax
	jne	.L5280
	movq	-1128(%rbp), %r9
	movq	16(%r9), %rdi
	call	queued_subexp_p
	testl	%eax, %eax
	je	.L5274
	jmp	.L5280
	.p2align 6,,7
.L7736:
	movq	-1128(%rbp), %rax
	cmpb	$51, 2(%rax)
	jne	.L5233
	call	gen_label_rtx
	movq	%rax, %r13
	call	gen_label_rtx
	movq	cfun(%rip), %rbx
	movq	%rax, -368(%rbp)
	movq	16(%rbx), %r9
	movq	40(%r9), %rbx
	testq	%rbx, %rbx
	je	.L7266
.L5239:
	movq	32(%rbx), %rdi
	cmpw	$24, (%rdi)
	je	.L7832
	call	emit_insn
	movq	%rax, 16(%rbx)
.L5238:
	movq	cfun(%rip), %r14
	movq	40(%rbx), %rsi
	movq	16(%r14), %r12
	testq	%rsi, %rsi
	movq	%rsi, %rbx
	movq	%rsi, 40(%r12)
	jne	.L5239
.L7266:
	movq	-1128(%rbp), %r14
	movzwl	(%r14), %eax
	cmpl	$71, %eax
	je	.L5241
	cmpl	$66, %eax
	je	.L7833
.L5245:
	cmpl	$75, %eax
	je	.L5249
	cmpl	$78, %eax
	je	.L5249
.L5244:
	call	do_pending_stack_adjust
	movq	cfun(%rip), %r10
	movq	%r13, %rsi
	movq	16(%r10), %rbx
	incl	4(%rbx)
	movq	32(%r15), %rdi
	call	jumpifnot
	call	start_cleanup_deferral
	movq	40(%r15), %rdi
	xorl	%edx, %edx
	movq	%r14, %rsi
	call	store_expr
	call	end_cleanup_deferral
	movq	cfun(%rip), %r9
	movq	16(%r9), %rdi
	movq	40(%rdi), %rbx
	testq	%rbx, %rbx
	je	.L7268
.L5259:
	movq	32(%rbx), %rdi
	cmpw	$24, (%rdi)
	je	.L7834
	call	emit_insn
	movq	%rax, 16(%rbx)
.L5258:
	movq	cfun(%rip), %r8
	movq	40(%rbx), %r12
	movq	16(%r8), %rcx
	testq	%r12, %r12
	movq	%r12, %rbx
	movq	%r12, 40(%rcx)
	jne	.L5259
.L7268:
	movq	-368(%rbp), %rdi
	call	gen_jump
	movq	%rax, %rdi
	call	emit_jump_insn
	call	emit_barrier
	movq	%r13, %rdi
	call	emit_label
	call	start_cleanup_deferral
	movq	48(%r15), %rdi
	xorl	%edx, %edx
	movq	%r14, %rsi
	call	store_expr
	call	end_cleanup_deferral
	movq	cfun(%rip), %r13
	movq	16(%r13), %r15
	movq	40(%r15), %rbx
	testq	%rbx, %rbx
	je	.L7270
.L5266:
	movq	32(%rbx), %rdi
	cmpw	$24, (%rdi)
	je	.L7835
	call	emit_insn
	movq	%rax, 16(%rbx)
.L5265:
	movq	cfun(%rip), %r11
	movq	40(%rbx), %rdi
	movq	16(%r11), %r10
	testq	%rdi, %rdi
	movq	%rdi, %rbx
	movq	%rdi, 40(%r10)
	jne	.L5266
.L7270:
	movq	-368(%rbp), %rdi
	call	emit_label
	xorl	%eax, %eax
	movq	cfun(%rip), %rsi
	movq	16(%rsi), %rbx
	decl	4(%rbx)
	testl	%eax, %eax
	jmp	.L7525
.L7835:
	movq	8(%rdi), %r9
	movq	8(%r9), %rdx
	movq	%rdx, 16(%rbx)
	call	emit_insn
	jmp	.L5265
.L7834:
	movq	8(%rdi), %rsi
	movq	8(%rsi), %r11
	movq	%r11, 16(%rbx)
	call	emit_insn
	jmp	.L5258
.L5249:
	movq	-1128(%rbp), %r8
	xorl	%esi, %esi
	movq	8(%r8), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	-1128(%rbp), %rcx
	movq	%rax, %r12
	movq	16(%rcx), %rdi
	call	protect_from_queue
	movq	-1128(%rbp), %rdx
	movq	%rax, %rbx
	cmpq	8(%rdx), %r12
	je	.L7836
.L5251:
	movq	-1128(%rbp), %rdi
	call	copy_rtx
	movq	%rax, %r14
	movq	%r12, 8(%rax)
	movq	%rbx, 16(%rax)
	jmp	.L5244
.L7836:
	cmpq	16(%rdx), %rax
	jne	.L5251
	jmp	.L5244
.L7833:
	jne	.L5245
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	-1128(%rbp), %r14
	movq	%rax, %rbx
	cmpq	8(%r14), %rax
	je	.L5244
	movq	%r14, %rdi
	call	copy_rtx
	movq	%rax, %r14
	movq	%rbx, 8(%rax)
	jmp	.L5244
.L5241:
	cmpq	$0, 16(%r14)
	je	.L7837
	movq	24(%r14), %rax
	testq	%rax, %rax
	je	.L5253
.L7449:
	movq	%rax, %r14
	jmp	.L5244
.L5253:
	movq	8(%r14), %rdx
	movzbl	2(%rdx), %edi
	call	gen_reg_rtx
	movq	8(%r14), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r14), %r14
	jmp	.L5244
.L7837:
	movq	8(%r14), %rdi
	call	copy_to_reg
	jmp	.L7449
	.p2align 6,,7
.L7832:
	movq	8(%rdi), %r11
	movq	8(%r11), %r10
	movq	%r10, 16(%rbx)
	call	emit_insn
	jmp	.L5238
.L7735:
	movq	32(%r15), %rdi
	movq	const_int_rtx+512(%rip), %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	call	expand_expr
	movq	cfun(%rip), %r13
	movq	16(%r13), %r12
	movq	40(%r12), %rbx
	testq	%rbx, %rbx
	je	.L7264
.L5229:
	movq	32(%rbx), %rdi
	cmpw	$24, (%rdi)
	je	.L7838
	call	emit_insn
	movq	%rax, 16(%rbx)
.L5228:
	movq	cfun(%rip), %rdx
	movq	40(%rbx), %rdi
	movq	16(%rdx), %r8
	testq	%rdi, %rdi
	movq	%rdi, %rbx
	movq	%rdi, 40(%r8)
	jne	.L5229
.L7264:
	movq	40(%r15), %rdi
	movq	-1128(%rbp), %rsi
	xorl	%edx, %edx
	jmp	.L7526
.L7838:
	movq	8(%rdi), %rcx
	movq	8(%rcx), %r14
	movq	%r14, 16(%rbx)
	call	emit_insn
	jmp	.L5228
.L7734:
	movl	$.LC0, %edi
	movl	$5092, %esi
	jmp	.L7529
	.p2align 6,,7
.L7601:
	movq	-1128(%rbp), %rcx
	movzwl	(%rcx), %eax
	cmpw	$61, %ax
	je	.L5216
	cmpw	$63, %ax
	jne	.L5215
.L5216:
	movq	24(%rbp), %rsi
	movq	24(%rbp), %rcx
	movzbl	17(%rsi), %ebx
	movzbl	62(%rcx), %edx
	movl	$1, %esi
	movl	%ebx, %eax
	shrb	$5, %dl
	shrb	$3, %bl
	shrb	$4, %al
	andl	$1, %ebx
	andl	$1, %edx
	andl	%eax, %esi
	addl	%ebx, %ebx
	sall	$2, %edx
	orl	%ebx, %esi
	orl	%edx, %esi
	xorl	%edx, %edx
	cmpb	$20, 16(%rcx)
	je	.L7839
.L5218:
	leal	0(,%rdx,8), %r9d
	movq	24(%rbp), %rdi
	orl	%r9d, %esi
	orl	$1, %esi
	call	build_qualified_type
	movl	$1, %ecx
	movl	$1, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	assign_temp
	movl	$1, %r8d
	movl	$1, %ecx
	movq	%rax, %rdi
	movl	$51, %esi
	xorl	%edx, %edx
	movq	%rax, %rbx
	call	adjust_address_1
	movq	-1128(%rbp), %rsi
	movq	%rax, %r14
	movzbq	2(%rsi), %r8
	movzwq	mode_bitsize(%r8,%r8), %rdi
	cmpq	%rdi, %r12
	je	.L5219
	movq	%rbx, %rdi
	call	emit_move_insn
.L5219:
	movq	24(%rbp), %r11
	movl	32(%rbp), %r10d
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	movl	$51, %ecx
	movq	%r15, %r8
	xorl	%r9d, %r9d
	movl	$0, (%rsp)
	movq	%r11, 8(%rsp)
	movl	%r10d, 16(%rsp)
	call	store_field
	movq	-1128(%rbp), %rdi
	movq	%rbx, %rsi
	call	emit_move_insn
	jmp	.L5210
.L7839:
	cmpq	$0, 8(%rcx)
	movl	$1, %eax
	cmovne	%eax, %edx
	jmp	.L5218
	.p2align 6,,7
.L7600:
	movq	const_int_rtx+512(%rip), %rsi
	movq	%r8, %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	call	expand_expr
	jmp	.L7524
.LFE7:
.Lfe7:
	.size	store_field,.Lfe7-store_field
	.align 2
	.p2align 4,,15
	.type	highest_pow2_factor,@function
highest_pow2_factor:
.LFB8:
	subq	$24, %rsp
.LCFI40:
	movq	%rbp, 16(%rsp)
.LCFI41:
	movq	%rbx, 8(%rsp)
.LCFI42:
	movq	%rdi, %rbp
.L7850:
	movzbl	16(%rbp), %eax
	subl	$25, %eax
	cmpl	$93, %eax
	ja	.L7841
	mov	%eax, %edx
	jmp	*.L7868(,%rdx,8)
	.section	.rodata
	.align 8
	.align 4
.L7868:
	.quad	.L7842
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7864
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7865
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7863
	.quad	.L7849
	.quad	.L7849
	.quad	.L7852
	.quad	.L7856
	.quad	.L7856
	.quad	.L7856
	.quad	.L7856
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7849
	.quad	.L7849
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7841
	.quad	.L7863
	.quad	.L7863
	.quad	.L7863
	.quad	.L7841
	.quad	.L7863
	.text
	.p2align 6,,7
.L7842:
	testb	$4, 18(%rbp)
	je	.L7843
	movl	$128, %ecx
	.p2align 4,,7
.L7840:
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	%rcx, %rax
	addq	$24, %rsp
	ret
.L7843:
	movq	32(%rbp), %rsi
	movl	$128, %edx
	movq	%rsi, %rbx
	movq	%rsi, %rcx
	negq	%rbx
	andq	%rbx, %rcx 
	cmove	%rdx, %rcx
	jmp	.L7840
	.p2align 6,,7
.L7864:
	movq	40(%rbp), %rbp
	jmp	.L7850
	.p2align 6,,7
.L7865:
	movq	40(%rbp), %rdi
	call	highest_pow2_factor
	movq	48(%rbp), %rdi
	movq	%rax, %rbx
.L7869:
	call	highest_pow2_factor
	movq	%rax, %rcx
	cmpq	%rbx, %rax
	cmovg	%rbx, %rcx
	jmp	.L7840
	.p2align 6,,7
.L7852:
	movq	32(%rbp), %rdi
	call	highest_pow2_factor
	movq	40(%rbp), %rdi
	movq	%rax, %rbx
	call	highest_pow2_factor
	movq	%rbx, %rcx
	imulq	%rax, %rcx
	jmp	.L7840
	.p2align 6,,7
.L7856:
	movq	40(%rbp), %rdi
	call	integer_pow2p
	testl	%eax, %eax
	jne	.L7870
.L7841:
	movl	$1, %ecx
	jmp	.L7840
.L7870:
	movq	40(%rbp), %rdi
	movl	$1, %esi
	call	host_integerp
	testl	%eax, %eax
	je	.L7841
	movq	32(%rbp), %rdi
	call	highest_pow2_factor
	movl	$1, %esi
	movq	40(%rbp), %rdi
	movq	%rax, %rbx
	call	tree_low_cst
	movl	$1, %edi
	movq	%rax, %rbp
	movq	%rbx, %rax
	cqto
	idivq	%rbp
	movq	%rax, %rcx
	testq	%rax, %rax
	cmovle	%rdi, %rcx
	jmp	.L7840
	.p2align 6,,7
.L7849:
	movq	32(%rbp), %rdi
	call	highest_pow2_factor
	movq	40(%rbp), %rdi
	movq	%rax, %rbx
	jmp	.L7869
	.p2align 6,,7
.L7863:
	movq	32(%rbp), %rbp
	jmp	.L7850
.LFE8:
.Lfe8:
	.size	highest_pow2_factor,.Lfe8-highest_pow2_factor
	.local	save_expr_list.2
	.comm	save_expr_list.2,8,8
	.section	.rodata.str1.1
.LC16:
	.string	"expand_expr"
	.section	.rodata.str1.32
	.align 32
.LC15:
	.string	"prior parameter's size depends on `%s'"
	.section	.rodata.str1.1
.LC18:
	.string	"safe_from_p"
.LC19:
	.string	"expand_assignment"
.LC20:
	.string	"emit_group_store"
	.section	.rodata.str1.32
	.align 32
.LC17:
	.string	"returned value in block_exit_expr"
	.text
	.align 2
	.p2align 4,,15
.globl expand_expr
	.type	expand_expr,@function
expand_expr:
.LFB9:
	pushq	%rbp
.LCFI43:
	movq	%rsp, %rbp
.LCFI44:
	pushq	%r15
.LCFI45:
	movl	%edx, %r15d
	pushq	%r14
.LCFI46:
	movl	%ecx, %r14d
	pushq	%r13
.LCFI47:
	movq	%rsi, %r13
	pushq	%r12
.LCFI48:
	pushq	%rbx
.LCFI49:
	subq	$9592, %rsp
.LCFI50:
	movq	%rdi, -9552(%rbp)
	movq	8(%rdi), %rbx
	movzbl	17(%rbx), %ecx
	movq	%rbx, -2712(%rbp)
	movq	%rbx, %rdx
	movzbl	16(%rdi), %ebx
	shrb	$5, %cl
	andl	$1, %ecx
	movzbl	%bl, %r12d
	testb	%bl, %bl
	movl	%ecx, -2516(%rbp)
	je	.L7873
	cmpb	$0, 16(%rdx)
	jne	.L7872
.L7873:
	movslq	%r15d,%rdx
	movq	const_tiny_rtx(,%rdx,8), %r13
	testq	%r13, %r13
	jne	.L7871
.L25052:
	movq	const_int_rtx+512(%rip), %r13
.L7871:
	leaq	-40(%rbp), %rsp
	movq	%r13, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
	.p2align 6,,7
.L7872:
	movq	-2712(%rbp), %r8
	movzbl	61(%r8), %edi
	shrb	$1, %dil
	testq	%r13, %r13
	movzbl	%dil, %esi
	movl	%esi, -2716(%rbp)
	je	.L7875
	movl	(%r13), %eax
	andl	$67174399, %eax
	cmpl	$61, %eax
	je	.L25622
.L7875:
	movq	$0, -9560(%rbp)
.L7877:
	movq	const_int_rtx+512(%rip), %rdx
	movq	%r13, %rbx
	movl	$0, -6220(%rbp)
	cmpq	%rdx, %r13
	movq	%rdx, %rcx
	je	.L7879
	leal	-114(%r12), %r9d
	cmpl	$2, %r9d
	jbe	.L7880
	cmpl	$122, %r12d
	je	.L7880
	cmpl	$51, %r12d
	je	.L7880
	cmpl	$117, %r12d
	je	.L7880
	.p2align 4,,7
.L7878:
	movl	-6220(%rbp), %r11d
	testl	%r11d, %r11d
	je	.L7881
	movq	-9552(%rbp), %r13
	movzbl	17(%r13), %eax
	movq	%rdx, %r13
	testb	$1, %al
	je	.L7871
	testb	$8, %al
	je	.L7883
	movq	-9552(%rbp), %rax
	cmpb	$30, 16(%rax)
	je	.L7883
	movl	-2716(%rbp), %esi
	testl	%esi, %esi
	je	.L7883
	cmpl	$51, -2716(%rbp)
	je	.L7883
	cmpl	$2, %r14d
	je	.L7883
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%rax, %rdi
	movl	%r14d, %ecx
	call	expand_expr
	cmpw	$66, (%rax)
	jne	.L25052
	movq	%rax, %rdi
	call	copy_to_reg
	jmp	.L25052
	.p2align 6,,7
.L7883:
	movslq	%r12d,%rdi
	movzbl	tree_code_type(%rdi), %eax
	cmpb	$49, %al
	je	.L7887
	cmpl	$39, %r12d
	je	.L7887
	cmpl	$41, %r12d
	je	.L7887
	cmpl	$42, %r12d
	je	.L7887
	cmpb	$50, %al
	je	.L7890
	cmpb	$60, %al
	je	.L7890
	cmpl	$43, %r12d
	je	.L7890
	cmpl	$44, %r12d
	je	.L7890
	leal	-91(%r12), %r8d
	cmpl	$1, %r8d
	ja	.L7892
	movq	-9552(%rbp), %r10
	movq	40(%r10), %r9
	testb	$1, 17(%r9)
	je	.L25623
.L7892:
	cmpl	$40, %r12d
	je	.L25624
	xorl	%r13d, %r13d
	.p2align 4,,7
.L7881:
	movl	cse_not_expected(%rip), %esi
	testl	%esi, %esi
	jne	.L7895
	cmpl	$51, -2716(%rbp)
	je	.L7895
	testq	%r13, %r13
	je	.L7895
	cmpw	$61, (%r13)
	je	.L25625
.L7896:
	cmpl	$46, %r12d
	je	.L25626
.L7897:
	movq	-9560(%rbp), %r13
	.p2align 4,,7
.L7895:
	leal	-25(%r12), %eax
	cmpl	$121, %eax
	ja	.L23108
	mov	%eax, %r9d
	jmp	*.L23109(,%r9,8)
	.section	.rodata
	.align 8
	.align 4
.L23109:
	.quad	.L7973
	.quad	.L7976
	.quad	.L7978
	.quad	.L23108
	.quad	.L7978
	.quad	.L24269
	.quad	.L7901
	.quad	.L7975
	.quad	.L23108
	.quad	.L24268
	.quad	.L7910
	.quad	.L24269
	.quad	.L23108
	.quad	.L23108
	.quad	.L9231
	.quad	.L9231
	.quad	.L9198
	.quad	.L9597
	.quad	.L9201
	.quad	.L9231
	.quad	.L9591
	.quad	.L8966
	.quad	.L11653
	.quad	.L21780
	.quad	.L21344
	.quad	.L20422
	.quad	.L11667
	.quad	.L8956
	.quad	.L9619
	.quad	.L23108
	.quad	.L9615
	.quad	.L9617
	.quad	.L8909
	.quad	.L8946
	.quad	.L10784
	.quad	.L10944
	.quad	.L10955
	.quad	.L11080
	.quad	.L11080
	.quad	.L11080
	.quad	.L11080
	.quad	.L11167
	.quad	.L11167
	.quad	.L11167
	.quad	.L11167
	.quad	.L11162
	.quad	.L11080
	.quad	.L11252
	.quad	.L11251
	.quad	.L11251
	.quad	.L11251
	.quad	.L11254
	.quad	.L11257
	.quad	.L11345
	.quad	.L11345
	.quad	.L11263
	.quad	.L11445
	.quad	.L11456
	.quad	.L11456
	.quad	.L11456
	.quad	.L11456
	.quad	.L11450
	.quad	.L11452
	.quad	.L11448
	.quad	.L23108
	.quad	.L11443
	.quad	.L11562
	.quad	.L11562
	.quad	.L11448
	.quad	.L11450
	.quad	.L11452
	.quad	.L11651
	.quad	.L11550
	.quad	.L11550
	.quad	.L11550
	.quad	.L11550
	.quad	.L11550
	.quad	.L11550
	.quad	.L11550
	.quad	.L11550
	.quad	.L11550
	.quad	.L11550
	.quad	.L11550
	.quad	.L11550
	.quad	.L11550
	.quad	.L9598
	.quad	.L23108
	.quad	.L23108
	.quad	.L23108
	.quad	.L9626
	.quad	.L9626
	.quad	.L9626
	.quad	.L10557
	.quad	.L7984
	.quad	.L8908
	.quad	.L8963
	.quad	.L22672
	.quad	.L9626
	.quad	.L23078
	.quad	.L23107
	.quad	.L23079
	.quad	.L23085
	.quad	.L23083
	.quad	.L23084
	.quad	.L22669
	.quad	.L22669
	.quad	.L22671
	.quad	.L22671
	.quad	.L23105
	.quad	.L23094
	.quad	.L23095
	.quad	.L23100
	.quad	.L23108
	.quad	.L8947
	.quad	.L22665
	.quad	.L8950
	.quad	.L8955
	.quad	.L8951
	.quad	.L8953
	.quad	.L7982
	.quad	.L23108
	.quad	.L23106
	.text
.L7901:
	movq	-9552(%rbp), %rdi
	call	decl_function_context
	cmpq	current_function_decl(%rip), %rax
	movq	%rax, %r15
	je	.L7902
	cmpq	inline_function_decl(%rip), %rax
	je	.L7902
	testq	%rax, %rax
	je	.L7902
	movq	%rax, %rdi
	call	find_function_data
	movq	-9552(%rbp), %rdi
	movq	%rax, %r12
	movq	16(%rax), %r14
	call	label_rtx
	xorl	%esi, %esi
	movl	$3, %edi
	movq	16(%r12), %r13
	movq	%rax, %rdx
	movq	32(%r13), %rcx
	call	gen_rtx_fmt_ee
	movq	%rax, 32(%r14)
.L7903:
	movq	-9552(%rbp), %rdi
	call	label_rtx
	movl	$67, %edi
	testb	$2, target_flags+3(%rip)
	setne	%bl
	movq	%rax, %rdx
	movzbl	%bl, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_u00
	movl	$2, %edi
	movq	%rax, %rsi
	call	gen_rtx_MEM
	cmpq	current_function_decl(%rip), %r15
	movq	%rax, %r13
	je	.L7871
	cmpq	inline_function_decl(%rip), %r15
	je	.L7871
	testq	%r15, %r15
	je	.L7871
	movq	8(%rax), %r15
	orb	$8, 3(%r15)
	jmp	.L7871
.L7902:
	cmpl	$3, %r14d
	jne	.L7903
	movq	cfun(%rip), %rdx
	movq	-9552(%rbp), %rdi
	movq	16(%rdx), %r14
	call	label_rtx
	xorl	%esi, %esi
	movq	cfun(%rip), %rcx
	movl	$3, %edi
	movq	%rax, %rdx
	movq	16(%rcx), %r10
	movq	32(%r10), %rcx
	call	gen_rtx_fmt_ee
	movq	%rax, 32(%r14)
	jmp	.L7903
	.p2align 6,,7
.L7973:
	movq	-9552(%rbp), %r10
	movl	-2716(%rbp), %edx
	movq	32(%r10), %rdi
	movq	40(%r10), %rsi
	call	immed_double_const
	movq	-9552(%rbp), %r9
	movq	%rax, %r13
	testb	$4, 18(%r9)
	je	.L7871
	cmpl	$3, %r14d
	je	.L7871
	movl	-2716(%rbp), %edi
	movq	%rax, %rsi
	call	force_reg
	.p2align 4,,7
.L23191:
	movq	%rax, %r13
	jmp	.L7871
.L7976:
	movq	-9552(%rbp), %rdi
	call	immed_real_const
	jmp	.L23191
.L7978:
	movq	-9552(%rbp), %rbx
	movq	24(%rbx), %rdx
	testq	%rdx, %rdx
	je	.L25627
.L7979:
	cmpw	$66, (%rdx)
	je	.L25628
.L25062:
	movq	%rdx, %r13
	jmp	.L7871
.L25628:
	cmpl	$2, %r14d
	je	.L25062
	cmpl	$3, %r14d
	je	.L25062
	decl	%r14d
	je	.L25062
	movl	-2716(%rbp), %edi
	movq	8(%rdx), %rsi
	call	memory_address_p
	testl	%eax, %eax
	je	.L24275
	movl	flag_force_addr(%rip), %edi
	testl	%edi, %edi
	je	.L24276
	movq	-9552(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	8(%rdx), %r13
	cmpw	$61, (%r13)
	je	.L25062
.L7981:
	movq	8(%rdx), %rdi
	call	copy_rtx
	movq	%rax, %rsi
	movq	-9552(%rbp), %rax
	movq	24(%rax), %rdi
.L25071:
	call	replace_equiv_address
	jmp	.L23191
.L24276:
	movq	-9552(%rbp), %r14
	movq	24(%r14), %rdx
	jmp	.L25062
.L24275:
	movq	-9552(%rbp), %r11
	movq	24(%r11), %rdx
	jmp	.L7981
	.p2align 6,,7
.L25627:
	movq	%rbx, %rdi
	movl	$1, %esi
	call	output_constant_def
	movq	24(%rbx), %rdx
	jmp	.L7979
.L7975:
	movq	-9552(%rbp), %r15
	movq	%r13, %rsi
	movq	104(%r15), %rdi
.L25098:
	xorl	%edx, %edx
	xorl	%ecx, %ecx
.L25083:
	call	expand_expr
	jmp	.L23191
.L24268:
	movq	-9552(%rbp), %rax
	movq	144(%rax), %rdi
.L7914:
	movq	-9552(%rbp), %rcx
	cmpq	$0, 40(%rcx)
	jne	.L7922
	movq	8(%rcx), %rsi
	cmpq	$0, 32(%rsi)
	je	.L7922
	testb	$4, 18(%rcx)
	jne	.L7916
	testb	$1, 49(%rcx)
	je	.L7922
.L7916:
	xorl	%ebx, %ebx
	testq	%rdi, %rdi
	cmovne	%rdi, %rbx
	xorl	%esi, %esi
	movq	-9552(%rbp), %rdi
	call	layout_decl
	testq	%rbx, %rbx
	jne	.L25629
	movq	-9552(%rbp), %r12
	movq	144(%r12), %rdi
.L7922:
	testq	%rdi, %rdi
	je	.L25630
.L7923:
	movq	-9552(%rbp), %rsi
	testb	$1, 18(%rsi)
	je	.L25631
.L7926:
	movq	-9552(%rbp), %rdi
	xorl	%r13d, %r13d
	call	decl_function_context
	testq	%rax, %rax
	je	.L24271
	cmpq	current_function_decl(%rip), %rax
	je	.L24272
	cmpq	inline_function_decl(%rip), %rax
	je	.L24273
	movq	-9552(%rbp), %rdx
	movq	144(%rdx), %rdi
	testq	%rdi, %rdi
	movq	%rdi, %rax
	je	.L25632
.L7929:
	cmpw	$66, (%rax)
	je	.L25633
.L7928:
	movq	-9552(%rbp), %rdi
	orb	$2, 49(%rdi)
	movq	current_function_decl(%rip), %r14
	testb	$4, 49(%r14)
	jne	.L25634
	movq	-9552(%rbp), %rdi
	call	mark_addressable
	movq	-9552(%rbp), %rcx
	movq	144(%rcx), %r13
	testq	%r13, %r13
	movq	%r13, %rax
	je	.L25635
.L7940:
	cmpw	$66, (%rax)
	jne	.L25636
	testq	%rax, %rax
	je	.L25637
.L7941:
	movq	8(%rax), %rbx
	cmpw	$66, (%rbx)
	je	.L25638
	movq	-9552(%rbp), %rsi
	movq	%rbx, %rdi
	call	fix_lexical_addr
.L24545:
	movq	%rax, %rbx
	movq	-9552(%rbp), %rax
	movq	144(%rax), %rdi
	testq	%rdi, %rdi
	je	.L25639
.L7945:
	movq	%rbx, %rsi
.L24547:
	call	replace_equiv_address
.L24546:
	movq	%rax, %r13
.L7946:
	testq	%r13, %r13
	je	.L7963
	cmpw	$66, (%r13)
	jne	.L7871
	movq	8(%r13), %rdi
	cmpw	$61, (%rdi)
	jne	.L7871
	movq	-9552(%rbp), %rax
	movl	56(%rax), %esi
	andl	$16777215, %esi
.L25066:
	call	mark_reg_pointer
	jmp	.L7871
	.p2align 6,,7
.L7963:
	movq	-9552(%rbp), %rbx
	movq	144(%rbx), %rdi
	testq	%rdi, %rdi
	movq	%rdi, %rax
	je	.L25640
.L7966:
	cmpw	$61, (%rax)
	je	.L25641
.L7965:
	testq	%rdi, %rdi
	movq	%rdi, %r13
	jne	.L7871
	movq	-9552(%rbp), %rdi
	xorl	%esi, %esi
	call	make_decl_rtl
	movq	-9552(%rbp), %rsi
	movq	144(%rsi), %r13
	jmp	.L7871
.L25641:
	testq	%rax, %rax
	je	.L25642
.L7967:
	movq	-9552(%rbp), %rcx
	movzbl	48(%rcx), %edx
	cmpb	%dl, 2(%rax)
	je	.L7965
	testq	%rdi, %rdi
	movq	%rdi, %rax
	je	.L25643
.L7969:
	movq	-9552(%rbp), %rbx
	xorl	%ecx, %ecx
	movzbl	2(%rax), %r14d
	movq	-2712(%rbp), %rdi
	movzbl	%dl, %esi
	leaq	-2516(%rbp), %rdx
	cmpb	$36, 16(%rbx)
	sete	%cl
	call	promote_mode
	cmpl	%eax, %r14d
	jne	.L25644
	movq	-9552(%rbp), %rdx
	movq	144(%rdx), %rsi
	testq	%rsi, %rsi
	je	.L25645
.L7971:
	movl	-2716(%rbp), %edi
.L25065:
	call	gen_lowpart_SUBREG
	movzbl	3(%rax), %ecx
	movq	%rax, %r13
	orb	$16, %cl
	movb	%cl, 3(%rax)
	andb	$-5, %cl
	movzbl	-2516(%rbp), %edi
	andb	$1, %dil
	salb	$2, %dil
	orb	%dil, %cl
	movb	%cl, 3(%rax)
	jmp	.L7871
.L25645:
	xorl	%esi, %esi
	movq	%rdx, %rdi
	call	make_decl_rtl
	movq	-9552(%rbp), %r8
	movq	144(%r8), %rsi
	jmp	.L7971
.L25644:
	movl	$.LC0, %edi
	movl	$6332, %esi
.L25123:
	movl	$.LC16, %edx
.L25086:
	call	fancy_abort
.L25643:
	movq	%rcx, %rdi
	xorl	%esi, %esi
	call	make_decl_rtl
	movq	-9552(%rbp), %r11
	movq	144(%r11), %rax
	movzbl	48(%r11), %edx
	jmp	.L7969
.L25642:
	movq	-9552(%rbp), %rdi
	xorl	%esi, %esi
	call	make_decl_rtl
	movq	-9552(%rbp), %rdx
	movq	144(%rdx), %rdi
	movq	%rdi, %rax
	jmp	.L7967
.L25640:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	call	make_decl_rtl
	movq	144(%rbx), %rdi
	movq	%rdi, %rax
	jmp	.L7966
.L25639:
	movq	%rax, %rdi
	xorl	%esi, %esi
	call	make_decl_rtl
	movq	-9552(%rbp), %rax
	movq	144(%rax), %rdi
	jmp	.L7945
.L25638:
	movq	8(%rbx), %rdi
	movq	-9552(%rbp), %rsi
	call	fix_lexical_addr
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
	jmp	.L24545
.L25637:
	movq	-9552(%rbp), %rdi
	xorl	%esi, %esi
	call	make_decl_rtl
	movq	-9552(%rbp), %r12
	movq	144(%r12), %rax
	jmp	.L7941
.L25636:
	movl	$.LC0, %edi
	movl	$6275, %esi
	jmp	.L25123
	.p2align 6,,7
.L25635:
	movq	%rcx, %rdi
	xorl	%esi, %esi
	call	make_decl_rtl
	movq	-9552(%rbp), %r9
	movq	144(%r9), %rax
	jmp	.L7940
.L25634:
	movl	$.LC0, %edi
	movl	$6272, %esi
	jmp	.L25123
	.p2align 6,,7
.L25633:
	testq	%rax, %rax
	je	.L25646
.L7930:
	movq	8(%rax), %rbx
	cmpw	$67, (%rbx)
	je	.L7927
	testq	%rdi, %rdi
	movq	%rdi, %rax
	je	.L25647
.L7931:
	movq	8(%rax), %rsi
	cmpw	$68, (%rsi)
	je	.L7927
	testq	%rdi, %rdi
	movq	%rdi, %rax
	je	.L25648
.L7932:
	movq	8(%rax), %r9
	cmpw	$54, (%r9)
	je	.L7927
	testq	%rdi, %rdi
	movq	%rdi, %rax
	je	.L25649
.L7933:
	movq	8(%rax), %r12
	cmpw	$55, (%r12)
	je	.L7927
	testq	%rdi, %rdi
	movq	%rdi, %rax
	je	.L25650
.L7934:
	movq	8(%rax), %rcx
	cmpw	$58, (%rcx)
	je	.L7927
	testq	%rdi, %rdi
	movq	%rdi, %rax
	je	.L25651
.L7935:
	movq	8(%rax), %r15
	cmpw	$134, (%r15)
	je	.L7927
	testq	%rdi, %rdi
	movq	%rdi, %rax
	je	.L25652
.L7936:
	movq	8(%rax), %r11
	cmpw	$56, (%r11)
	je	.L7927
	testq	%rdi, %rdi
	movq	%rdi, %rax
	je	.L25653
.L7937:
	movq	8(%rax), %r8
	cmpw	$140, (%r8)
	jne	.L7928
.L7927:
	testq	%rdi, %rdi
	movq	%rdi, %rax
	je	.L25654
.L7948:
	cmpw	$66, (%rax)
	je	.L25655
.L7947:
	testq	%rdi, %rdi
	movq	%rdi, %rax
	je	.L25656
.L7954:
	cmpw	$66, (%rax)
	jne	.L7946
	cmpl	$2, %r14d
	je	.L7946
	cmpl	$1, %r14d
	je	.L7946
	cmpl	$3, %r14d
	je	.L7946
	testq	%rdi, %rdi
	movq	%rdi, %rax
	je	.L25657
.L7957:
	movq	-9552(%rbp), %r9
	movq	8(%rax), %rsi
	movzbl	48(%r9), %edi
	call	memory_address_p
	testl	%eax, %eax
	je	.L24274
	movl	flag_force_addr(%rip), %edi
	testl	%edi, %edi
	je	.L7946
	movq	-9552(%rbp), %rcx
	movq	144(%rcx), %rdi
	testq	%rdi, %rdi
	movq	%rdi, %rax
	je	.L25658
.L7958:
	movq	8(%rax), %r10
	cmpw	$61, (%r10)
	je	.L7946
.L7955:
	testq	%rdi, %rdi
	movq	%rdi, %rbx
	je	.L25659
.L7961:
	testq	%rdi, %rdi
	movq	%rdi, %rax
	je	.L25660
.L7962:
	movq	8(%rax), %rdi
	call	copy_rtx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	jmp	.L24547
.L25660:
	movq	-9552(%rbp), %rdi
	xorl	%esi, %esi
	call	make_decl_rtl
	movq	-9552(%rbp), %r15
	movq	144(%r15), %rax
	jmp	.L7962
.L25659:
	movq	-9552(%rbp), %rdi
	xorl	%esi, %esi
	call	make_decl_rtl
	movq	-9552(%rbp), %rcx
	movq	144(%rcx), %rdi
	movq	%rdi, %rbx
	jmp	.L7961
.L25658:
	movq	%rcx, %rdi
	xorl	%esi, %esi
	call	make_decl_rtl
	movq	-9552(%rbp), %r12
	movq	144(%r12), %rdi
	movq	%rdi, %rax
	jmp	.L7958
	.p2align 6,,7
.L24274:
	movq	-9552(%rbp), %r13
	movq	144(%r13), %rdi
	jmp	.L7955
.L25657:
	movq	-9552(%rbp), %rdi
	xorl	%esi, %esi
	call	make_decl_rtl
	movq	-9552(%rbp), %r14
	movq	144(%r14), %rax
	jmp	.L7957
.L25656:
	movq	-9552(%rbp), %rdi
	xorl	%esi, %esi
	call	make_decl_rtl
	movq	-9552(%rbp), %r8
	movq	144(%r8), %rdi
	movq	%rdi, %rax
	jmp	.L7954
.L25655:
	testq	%rdi, %rdi
	movq	%rdi, %rax
	je	.L25661
.L7949:
	movq	8(%rax), %r11
	cmpw	$61, (%r11)
	jne	.L7947
	testq	%rdi, %rdi
	je	.L25662
.L7951:
	call	validize_mem
	jmp	.L24546
.L25662:
	movq	-9552(%rbp), %rdi
	xorl	%esi, %esi
	call	make_decl_rtl
	movq	-9552(%rbp), %rsi
	movq	144(%rsi), %rdi
	jmp	.L7951
.L25661:
	movq	-9552(%rbp), %rdi
	xorl	%esi, %esi
	call	make_decl_rtl
	movq	-9552(%rbp), %rbx
	movq	144(%rbx), %rdi
	movq	%rdi, %rax
	jmp	.L7949
.L25654:
	movq	-9552(%rbp), %rdi
	xorl	%esi, %esi
	call	make_decl_rtl
	movq	-9552(%rbp), %r15
	movq	144(%r15), %rdi
	movq	%rdi, %rax
	jmp	.L7948
.L25653:
	movq	-9552(%rbp), %rdi
	xorl	%esi, %esi
	call	make_decl_rtl
	movq	-9552(%rbp), %rsi
	movq	144(%rsi), %rdi
	movq	%rdi, %rax
	jmp	.L7937
.L25652:
	movq	-9552(%rbp), %rdi
	xorl	%esi, %esi
	call	make_decl_rtl
	movq	-9552(%rbp), %rbx
	movq	144(%rbx), %rdi
	movq	%rdi, %rax
	jmp	.L7936
.L25651:
	movq	-9552(%rbp), %rdi
	xorl	%esi, %esi
	call	make_decl_rtl
	movq	-9552(%rbp), %rdx
	movq	144(%rdx), %rdi
	movq	%rdi, %rax
	jmp	.L7935
.L25650:
	movq	-9552(%rbp), %rdi
	xorl	%esi, %esi
	call	make_decl_rtl
	movq	-9552(%rbp), %r10
	movq	144(%r10), %rdi
	movq	%rdi, %rax
	jmp	.L7934
	.p2align 6,,7
.L25649:
	movq	-9552(%rbp), %rdi
	xorl	%esi, %esi
	call	make_decl_rtl
	movq	-9552(%rbp), %rax
	movq	144(%rax), %rdi
	movq	%rdi, %rax
	jmp	.L7933
.L25648:
	movq	-9552(%rbp), %rdi
	xorl	%esi, %esi
	call	make_decl_rtl
	movq	-9552(%rbp), %r8
	movq	144(%r8), %rdi
	movq	%rdi, %rax
	jmp	.L7932
.L25647:
	movq	-9552(%rbp), %rdi
	xorl	%esi, %esi
	call	make_decl_rtl
	movq	-9552(%rbp), %r11
	movq	144(%r11), %rdi
	movq	%rdi, %rax
	jmp	.L7931
.L25646:
	movq	-9552(%rbp), %rdi
	xorl	%esi, %esi
	call	make_decl_rtl
	movq	-9552(%rbp), %r15
	movq	144(%r15), %rdi
	movq	%rdi, %rax
	jmp	.L7930
.L25632:
	movq	%rdx, %rdi
	xorl	%esi, %esi
	call	make_decl_rtl
	movq	-9552(%rbp), %rdx
	movq	144(%rdx), %rdi
	movq	%rdi, %rax
	jmp	.L7929
.L24273:
	movq	-9552(%rbp), %rdx
	movq	144(%rdx), %rdi
	jmp	.L7927
.L24272:
	movq	-9552(%rbp), %rcx
	movq	144(%rcx), %rdi
	jmp	.L7927
.L24271:
	movq	-9552(%rbp), %r10
	movq	144(%r10), %rdi
	jmp	.L7927
.L25631:
	movq	%rsi, %rdi
	call	assemble_external
	movq	-9552(%rbp), %rcx
	orb	$1, 18(%rcx)
	jmp	.L7926
.L25630:
	movq	-9552(%rbp), %rdi
	xorl	%esi, %esi
	call	make_decl_rtl
	movq	-9552(%rbp), %r10
	cmpq	$0, 144(%r10)
	jne	.L7923
	movl	$.LC0, %edi
	movl	$6239, %esi
	jmp	.L25123
	.p2align 6,,7
.L25629:
	movq	-9552(%rbp), %r8
	movq	%rbx, %rdi
	movl	$1, %edx
	movzbl	48(%r8), %r9d
	movb	%r9b, 2(%rbx)
	movq	$0, 144(%r8)
	movq	-9552(%rbp), %rsi
	call	set_mem_attributes
	movq	-9552(%rbp), %rdi
	movq	%rbx, 144(%rdi)
	movq	%rbx, %rdi
	jmp	.L7922
	.p2align 6,,7
.L7910:
	movq	-9552(%rbp), %rsi
	movq	144(%rsi), %rdi
	testq	%rdi, %rdi
	jne	.L7914
	movq	%rsi, %rdi
	xorl	%esi, %esi
	call	make_decl_rtl
	movq	-9552(%rbp), %rax
	movq	144(%rax), %rdi
	testq	%rdi, %rdi
	jne	.L7914
	movq	%rax, %rdi
	movl	$.LC15, %esi
	xorl	%eax, %eax
	call	error_with_decl
	movslq	-2716(%rbp),%r11
	movq	const_tiny_rtx(,%r11,8), %r13
	jmp	.L7871
	.p2align 6,,7
.L24269:
	movq	-9552(%rbp), %r13
	movq	144(%r13), %rdi
	jmp	.L7922
.L9198:
	movq	-9552(%rbp), %rcx
	leaq	-2536(%rbp), %rsi
	movq	32(%rcx), %r12
	movq	%r12, %rdi
	call	string_constant
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L9199
	cmpb	$29, 16(%rax)
	je	.L25663
.L9199:
	xorl	%edx, %edx
	movl	$1, %ecx
	xorl	%esi, %esi
	movq	%r12, %rdi
	call	expand_expr
	movl	-2716(%rbp), %edi
	movq	%rax, %rsi
	call	memory_address
	movl	-2716(%rbp), %edi
	movq	%rax, %rsi
	call	gen_rtx_MEM
	xorl	%edx, %edx
	movq	-9552(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	set_mem_attributes
	cmpl	$4, %r14d
	jne	.L7871
	movq	-2712(%rbp), %rdi
	call	readonly_fields_p
	testl	%eax, %eax
	je	.L7871
	orb	$4, 3(%r13)
	jmp	.L7871
.L25663:
	movq	-2536(%rbp), %rdi
	cmpb	$25, 16(%rdi)
	jne	.L9199
	movslq	32(%rax),%rsi
	call	compare_tree_int
	testl	%eax, %eax
	jns	.L9199
	movslq	-2716(%rbp),%rax
	cmpl	$1, mode_class(,%rax,4)
	jne	.L9199
	cmpb	$1, mode_size(%rax)
	jne	.L9199
	cmpl	$4, %r14d
	je	.L9199
	movq	-2536(%rbp), %r8
	movq	32(%r8), %rax
.L25072:
	addq	40(%rbx), %rax
	movl	-2716(%rbp), %esi
	movsbq	(%rax),%rdi
.L25073:
	call	trunc_int_for_mode
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	gen_rtx_CONST_INT
	jmp	.L23191
	.p2align 6,,7
.L9597:
	movl	$.LC0, %edi
	movl	$7155, %esi
	jmp	.L25123
.L9201:
	movq	-9552(%rbp), %r10
	movq	32(%r10), %rdx
	movq	%rdx, -2928(%rbp)
	movq	8(%rdx), %rax
	cmpb	$18, 16(%rax)
	jne	.L25664
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L9203
	movq	104(%rax), %rbx
.L9204:
	movq	-9552(%rbp), %rax
	movq	sizetype_tab(%rip), %rdi
	movq	40(%rax), %rsi
	call	convert
	movq	%rbx, %rdi
	movq	%rax, -6456(%rbp)
	call	integer_zerop
	testl	%eax, %eax
	je	.L25665
.L9205:
	leal	-2(%r14), %r11d
	cmpl	$1, %r11d
	jbe	.L9206
	movq	-2928(%rbp), %rbx
	cmpb	$29, 16(%rbx)
	je	.L25666
.L9206:
	leal	-2(%r14), %esi
	cmpl	$1, %esi
	jbe	.L9207
	movq	-2928(%rbp), %rbx
	movzwl	16(%rbx), %eax
	andl	$511, %eax
	cmpw	$46, %ax
	je	.L25667
.L9207:
	movl	optimize(%rip), %edx
	testl	%edx, %edx
	jle	.L9231
	cmpl	$2, %r14d
	je	.L9231
	cmpl	$3, %r14d
	je	.L9231
	movq	-2928(%rbp), %rcx
	movzwl	16(%rcx), %eax
	andl	$4607, %eax
	cmpw	$4130, %ax
	je	.L25668
.L9231:
	cmpl	$39, %r12d
	je	.L25669
.L9232:
	movq	global_trees+136(%rip), %rax
	movq	-9552(%rbp), %r12
	movl	$0, -6460(%rbp)
	movq	global_trees+120(%rip), %r11
	xorl	%ebx, %ebx
	movl	$0, -2568(%rbp)
	movq	$0, -2576(%rbp)
	movq	%rax, -6472(%rbp)
	movq	%r11, -6480(%rbp)
	movzbl	16(%r12), %eax
	cmpb	$39, %al
	je	.L25670
	cmpb	$40, %al
	je	.L25671
	movq	-9552(%rbp), %rsi
	movq	8(%rsi), %r8
	movzbl	61(%r8), %r10d
	movzbl	17(%r8), %ecx
	shrb	$1, %r10b
	shrb	$5, %cl
	movzbl	%r10b, %edi
	andl	$1, %ecx
	movl	%edi, -6460(%rbp)
	movl	%ecx, -2516(%rbp)
	cmpl	$51, -6460(%rbp)
	je	.L25672
	movslq	-6460(%rbp),%r9
	movzwq	mode_bitsize(%r9,%r9), %rsi
	movq	%rsi, -2544(%rbp)
.L9245:
	testq	%rbx, %rbx
	jne	.L25673
	.p2align 4,,7
.L9312:
	movzbl	16(%r12), %edx
	cmpb	$40, %dl
	je	.L25674
	cmpb	$39, %dl
	je	.L25675
	leal	-43(%rdx), %ecx
	cmpb	$1, %cl
	jbe	.L25676
	cmpb	$57, %dl
	jne	.L9270
	movq	-2576(%rbp), %rax
	leaq	-2576(%rbp), %r8
	movq	8(%r12), %rdx
	testq	%rax, %rax
	je	.L9271
	movq	(%rax), %rdi
.L9272:
	testq	%rdi, %rdi
	je	.L23291
	movq	128(%rdx), %rsi
.L9305:
	movq	24(%rdi), %rcx
	testq	%rcx, %rcx
	movq	%rcx, %rdx
	je	.L23293
	.p2align 4,,7
.L9290:
	movq	8(%rcx), %r11
	cmpq	%rsi, 128(%r11)
	je	.L25677
	movzbl	16(%rcx), %eax
	cmpb	$47, %al
	je	.L9286
	cmpb	$51, %al
	je	.L9286
	movzbl	%al, %r9d 
	movzbl	tree_code_type(%r9), %eax
	cmpb	$114, %al
	je	.L9289
	cmpb	$49, %al
	je	.L9289
	cmpb	$50, %al
	je	.L9289
	cmpb	$101, %al
	je	.L9289
	xorl	%ecx, %ecx
	.p2align 4,,7
.L9285:
	testq	%rcx, %rcx
	jne	.L9290
.L23293:
	testq	%rdx, %rdx
	je	.L23295
	.p2align 4,,7
.L9304:
	movq	8(%rdx), %rcx
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L9296
	cmpb	$15, %al
	je	.L9296
.L9293:
	movzbl	16(%rdx), %eax
	cmpb	$47, %al
	je	.L9300
	cmpb	$51, %al
	je	.L9300
	movzbl	%al, %ecx 
	movzbl	tree_code_type(%rcx), %eax
	cmpb	$114, %al
	je	.L9303
	cmpb	$49, %al
	je	.L9303
	cmpb	$50, %al
	je	.L9303
	cmpb	$101, %al
	je	.L9303
	xorl	%edx, %edx
	.p2align 4,,7
.L9299:
	testq	%rdx, %rdx
	jne	.L9304
.L23295:
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	jne	.L9305
.L23291:
	xorl	%ecx, %ecx
.L9283:
	testq	%rcx, %rcx
	je	.L9254
	movq	%rcx, %r12
	jmp	.L9312
.L9254:
	movq	-6480(%rbp), %rdi
	xorl	%esi, %esi
	call	host_integerp
	testl	%eax, %eax
	je	.L9313
	movq	sizetype_tab+24(%rip), %rdi
	movq	-6480(%rbp), %rsi
	call	convert
	movq	global_trees+152(%rip), %rdx
	movl	$61, %edi
	movq	%rax, %rsi
	call	size_binop
	testq	%rax, %rax
	movq	%rax, %rsi
	je	.L9313
	movq	-6472(%rbp), %rdx
	movl	$59, %edi
	call	size_binop
	testq	%rax, %rax
	movq	%rax, %rbx
	jne	.L25678
.L9313:
	movq	-6472(%rbp), %rdi
	xorl	%esi, %esi
	call	tree_low_cst
	movq	%rax, -2552(%rbp)
	movq	-6480(%rbp), %rax
	movq	%rax, -2560(%rbp)
.L9314:
	cmpq	-9552(%rbp), %r12
	movl	-6460(%rbp), %ebx
	movl	%ebx, -2564(%rbp)
	je	.L25679
	movq	8(%r12), %rax
	cmpb	$21, 16(%rax)
	je	.L25680
.L9325:
	xorl	%esi, %esi
.L9326:
	leal	-2(%r14), %edi
	xorl	%ecx, %ecx
	cmpl	$1, %edi
	movq	%r12, %rdi
	cmovbe	%r14d, %ecx
	xorl	%edx, %edx
	call	expand_expr
	movzwl	(%rax), %edx
	movq	%rax, -2952(%rbp)
	movq	%rax, -6504(%rbp)
	leal	-67(%rdx), %r8d
	cmpw	$1, %r8w
	jbe	.L9330
	cmpw	$54, %dx
	je	.L9330
	cmpw	$55, %dx
	je	.L9330
	cmpw	$58, %dx
	je	.L9330
	cmpw	$134, %dx
	je	.L9330
	cmpw	$56, %dx
	je	.L9330
	cmpw	$140, %dx
	je	.L9330
.L9329:
	movq	-2560(%rbp), %rdi
	testq	%rdi, %rdi
	jne	.L25681
.L9333:
	movq	-6504(%rbp), %r10
	movzwl	(%r10), %edx
	cmpw	$66, %dx
	je	.L25682
.L9348:
	cmpw	$65, %dx
	je	.L25683
	movl	-2564(%rbp), %eax
	testl	%eax, %eax
	je	.L9354
	cmpw	$61, %dx
	je	.L9354
	cmpw	$63, %dx
	je	.L9354
	cmpl	$51, %eax
	je	.L9355
	cltq
	cmpb	$0, direct_load(%rax)
	jne	.L9355
	movslq	-2716(%rbp),%r9
	movl	mode_class(,%r9,4), %eax
	cmpl	$5, %eax
	je	.L9355
	cmpl	$6, %eax
	je	.L9355
	cmpl	$2, %r14d
	je	.L9355
	cmpl	$3, %r14d
	je	.L9355
.L9354:
	movl	-2716(%rbp), %r14d
	cmpl	$51, %r14d
	je	.L25684
.L9358:
	movq	-6504(%rbp), %rdi
	call	validize_mem
	cmpw	$66, (%rax)
	movq	%rax, %rbx
	je	.L25685
.L9565:
	movq	8(%r12), %rdi
	call	int_size_in_bytes
	movl	%r14d, %r9d
	movq	%r13, %r8
	movq	-2544(%rbp), %rsi
	movq	-2552(%rbp), %rdx
	movq	%rbx, %rdi
	movl	-2516(%rbp), %ecx
	movl	%r14d, (%rsp)
	movq	%rax, 8(%rsp)
	call	extract_bit_field
	cmpl	$51, -2716(%rbp)
	movq	%rax, %r13
	jne	.L7871
	movl	%r14d, %edi
	xorl	%esi, %esi
	call	type_for_mode
	movl	$1, %esi
	movq	%rax, %rdi
	call	build_qualified_type
	movl	$1, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	xorl	%esi, %esi
	call	assign_temp
	movq	%r13, %rsi
	movq	%rax, %r15
	movq	%rax, %rdi
	call	emit_move_insn
	movq	%r15, %rdi
	call	copy_rtx
	movl	$1, %edx
	movq	-9552(%rbp), %rsi
	movq	%rax, %r13
	movq	%rax, %rdi
	movb	$51, 2(%rax)
.L25063:
	call	set_mem_attributes
	jmp	.L7871
.L25685:
	movq	8(%rax), %rdx
	cmpw	$61, (%rdx)
	jne	.L9565
	leaq	8(%rax), %rdx
	movl	$8, %esi
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L9569
	movl	32(%rax), %esi
.L9569:
	movq	(%rdx), %rdi
	call	mark_reg_pointer
	jmp	.L9565
.L25684:
	testq	%r13, %r13
	je	.L9357
	movq	-6504(%rbp), %r15
	cmpw	$66, (%r15)
	je	.L25686
.L9357:
	movl	-2544(%rbp), %edi
	movl	$1, %esi
	movl	$1, %edx
	call	mode_for_size
	movl	%eax, %r14d
.L9356:
	cmpl	$51, %r14d
	jne	.L9358
	movq	-6504(%rbp), %rdx
	cmpw	$66, (%rdx)
	jne	.L9360
	testq	%r13, %r13
	je	.L9361
	cmpw	$66, (%r13)
	jne	.L9360
.L9361:
	movq	-2552(%rbp), %rdx
	testl	$7, %edx 
	jne	.L9360
	cmpq	$-1, %rdx
	leaq	7(%rdx), %rbx
	movq	-6504(%rbp), %rdi
	cmovle	%rbx, %rdx
	movl	$1, %ecx
	movl	$1, %r8d
	sarq	$3, %rdx
	xorl	%esi, %esi
	call	adjust_address_1
	testq	%r13, %r13
	movq	%rax, %r15
	je	.L25687
.L9364:
	movq	-2544(%rbp), %rsi
	movq	%r13, -6520(%rbp)
	leaq	14(%rsi), %r10
	addq	$7, %rsi
	cmovs	%r10, %rsi
	xorl	%edi, %edi
	sarq	$3, %rsi
	call	gen_rtx_CONST_INT
	movl	$8, %edx
	movq	%rax, %r14
	movq	16(%r13), %rax
	testq	%rax, %rax
	movq	%rax, %rcx
	je	.L9370
	movl	32(%rax), %edx
.L9370:
	movq	16(%r15), %rax
	testq	%rax, %rax
	je	.L9371
	cmpl	32(%rax), %edx
	jb	.L9372
.L9367:
	testq	%rax, %rax
	movl	$8, -6508(%rbp)
	je	.L9368
	movl	32(%rax), %eax
	movl	%eax, -6508(%rbp)
.L9368:
	cmpb	$51, 2(%r13)
	jne	.L25547
	cmpb	$51, 2(%r15)
	jne	.L25546
	movzwl	(%r13), %eax
	cmpl	$71, %eax
	je	.L9379
	cmpl	$66, %eax
	je	.L25688
.L9383:
	cmpl	$75, %eax
	je	.L9387
	cmpl	$78, %eax
	je	.L9387
.L9382:
	movzwl	(%r15), %eax
	cmpl	$71, %eax
	je	.L9392
	cmpl	$66, %eax
	je	.L25689
.L9396:
	cmpl	$75, %eax
	je	.L9400
	cmpl	$78, %eax
	je	.L9400
.L9395:
	movzwl	(%r14), %eax
	cmpl	$71, %eax
	je	.L9405
	cmpl	$66, %eax
	je	.L25690
.L9409:
	cmpl	$75, %eax
	je	.L9413
	cmpl	$78, %eax
	je	.L9413
.L9408:
	movq	-6520(%rbp), %rax
	cmpw	$66, (%rax)
	jne	.L25545
	cmpw	$66, (%r15)
	jne	.L25544
	testq	%r14, %r14
	je	.L25543
	cmpw	$54, (%r14)
	je	.L25691
.L9421:
	shrl	$3, -6508(%rbp)
	xorl	%edi, %edi
	mov	-6508(%rbp), %esi
	call	gen_rtx_CONST_INT
	movl	class_narrowest_mode+4(%rip), %r12d
	movl	$1, volatile_ok(%rip)
	movq	%rax, -2968(%rbp)
	testl	%r12d, %r12d
	je	.L23309
.L9554:
	movslq	%r12d,%rsi
	movl	movstr_optab(,%rsi,4), %edx
	movq	%rsi, -2976(%rbp)
	cmpl	$1317, %edx
	je	.L9540
	cmpw	$54, (%r14)
	je	.L25692
.L9544:
	testb	$2, target_flags+3(%rip)
	je	.L9545
	movq	-2976(%rbp), %rcx
	cmpw	$63, mode_bitsize(%rcx,%rcx)
.L24598:
	jbe	.L9540
.L9543:
	movslq	%edx,%rax
	leaq	(%rax,%rax,4), %rbx
	movq	%rax, -2984(%rbp)
	movq	insn_data+24(,%rbx,8), %rdi
	movq	(%rdi), %rax
	movq	%rdi, -2992(%rbp)
	testq	%rax, %rax
	je	.L9547
	movq	-6520(%rbp), %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L9540
.L9547:
	movq	-2992(%rbp), %r10
	movq	24(%r10), %rax
	testq	%rax, %rax
	jne	.L25693
.L9548:
	movq	-2992(%rbp), %r11
	movq	72(%r11), %rax
	testq	%rax, %rax
	je	.L9549
	xorl	%esi, %esi
	movq	-2968(%rbp), %rdi
	call	*%rax
	testl	%eax, %eax
	je	.L9540
.L9549:
	call	get_last_insn
	movl	$1, %edx
	movq	%r14, %rsi
	movl	%r12d, %edi
	movq	%rax, -3000(%rbp)
	call	convert_to_mode
	movq	-2992(%rbp), %rsi
	movq	%rax, %rbx
	movq	48(%rsi), %rax
	testq	%rax, %rax
	jne	.L25694
.L9550:
	movq	-2984(%rbp), %r8
	movq	-6520(%rbp), %rdi
	xorl	%eax, %eax
	movq	%r15, %rsi
	movq	%rbx, %rdx
	movq	-2968(%rbp), %rcx
	leaq	(%r8,%r8,4), %r12
	call	*insn_data+16(,%r12,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L24468
	movq	-3000(%rbp), %rdi
	call	delete_insns_since
.L9540:
	movq	-2976(%rbp), %rcx
	movzbl	mode_wider_mode(%rcx), %r12d
	testl	%r12d, %r12d
	jne	.L9554
.L23309:
	testb	$2, target_flags+3(%rip)
	movq	-6520(%rbp), %rbx
	movl	$0, volatile_ok(%rip)
	setne	%al
	movq	8(%rbx), %rsi
	movzbl	%al, %edi
	addl	$4, %edi
	call	copy_to_mode_reg
	testb	$2, target_flags+3(%rip)
	setne	%dl
	movq	%rax, -6552(%rbp)
	movq	8(%r15), %rsi
	movzbl	%dl, %edi
	addl	$4, %edi
	call	copy_to_mode_reg
	movq	%r14, %rsi
	movq	sizetype_tab(%rip), %r9
	movq	%rax, %rbx
	movzbl	61(%r9), %r15d
	shrb	$1, %r15b
	movzbl	%r15b, %edi
	call	copy_to_mode_reg
	cmpq	$0, fn.1(%rip)
	movq	%rax, %r14
	je	.L25695
.L9563:
	movq	global_trees+216(%rip), %rdi
	call	build_pointer_type
	movq	-6552(%rbp), %rsi
	movq	%rax, %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	global_trees+216(%rip), %rdi
	movq	%rax, %r15
	call	build_pointer_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	%r14, %rsi
	movq	%rax, (%r15)
	movq	%rax, %r12
	movq	sizetype_tab(%rip), %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	fn.1(%rip), %r8
	movq	%rax, (%r12)
	movq	(%r15), %r9
	movq	8(%r8), %rdi
	movq	(%r9), %rcx
	movq	$0, (%rcx)
	call	build_pointer_type
	movq	fn.1(%rip), %rdx
	movl	$121, %edi
	movq	%rax, %rsi
	call	build1
	xorl	%r8d, %r8d
	movq	%r15, %rcx
	movq	fn.1(%rip), %r12
	movq	%rax, %rdx
	movl	$53, %edi
	xorl	%eax, %eax
	movq	8(%r12), %r14
	movq	8(%r14), %rsi
	call	build
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	orb	$1, 17(%rax)
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	expand_expr
	movq	-6552(%rbp), %rcx
	testb	$4, 3(%rcx)
	je	.L7871
	movl	$49, %edi
	xorl	%esi, %esi
	movq	%rcx, %rdx
	call	gen_rtx_fmt_e
	movq	%rax, %rdi
	call	emit_insn
	jmp	.L7871
.L25695:
	movl	$.LC11, %edi
	call	get_identifier
	movq	global_trees+216(%rip), %rdi
	movq	%rax, fn.1(%rip)
	call	build_pointer_type
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	build_function_type
	movq	fn.1(%rip), %rsi
	movl	$30, %edi
	movq	%rax, %rdx
	call	build_decl
	movl	$1, %esi
	movl	$fn.1, %edi
	movq	%rax, fn.1(%rip)
	call	ggc_add_tree_root
	movq	fn.1(%rip), %rsi
	orb	$1, 49(%rsi)
	xorl	%esi, %esi
	movq	fn.1(%rip), %r11
	orb	$8, 18(%r11)
	movq	fn.1(%rip), %r10
	orb	$64, 50(%r10)
	movq	fn.1(%rip), %rdi
	orb	$2, 18(%rdi)
	movq	fn.1(%rip), %rdi
	call	make_decl_rtl
	movq	fn.1(%rip), %rdi
	call	assemble_external
	jmp	.L9563
.L24468:
	call	emit_insn
	movl	$0, volatile_ok(%rip)
	jmp	.L7871
.L25694:
	movq	%rbx, %rdi
	movl	%r12d, %esi
	call	*%rax
	testl	%eax, %eax
	jne	.L9550
	movq	%rbx, %rsi
	movl	%r12d, %edi
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L9550
	.p2align 6,,7
.L25693:
	movq	%r15, %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L9540
	jmp	.L9548
.L9545:
	movq	-2976(%rbp), %r9
	cmpw	$31, mode_bitsize(%r9,%r9)
	jmp	.L24598
.L25692:
	movq	mode_mask_array(,%rsi,8), %r8
	shrq	$1, %r8
	cmpq	%r8, 8(%r14)
	jbe	.L9543
	jmp	.L9544
.L25691:
	movq	8(%r14), %r12
	xorl	%r8d, %r8d
	movl	$17, %esi
.L9434:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L23298
.L9431:
	movslq	%ecx,%rbx
	movzbq	mode_size(%rbx), %rdx
	cmpq	%rsi, %rdx
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%rbx), %ecx
	testl	%ecx, %ecx
	jne	.L9431
.L23298:
	testl	%edi, %edi
	je	.L9424
	movslq	%edi,%rbx
	movq	%rbx, %r10
	salq	$4, %r10
	addq	optab_table+240(%rip), %r10
	cmpl	$1317, 8(%r10)
	je	.L9433
	movq	%r8, -9592(%rbp)
	call	get_mode_alignment
	movq	-9592(%rbp), %r8
	movl	$128, %r11d
	cmpl	%eax, %r11d
	jb	.L9433
	movzbq	mode_size(%rbx), %rdi
	movq	%r12, %rax
	xorl	%edx, %edx
	divq	%rdi
	addq	%rax, %r8
	movq	%rdx, %r12
.L9433:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L9434
.L9424:
	testq	%r12, %r12
	jne	.L25529
	movl	optimize_size(%rip), %r12d
	testl	%r12d, %r12d
	jne	.L9437
	movq	ix86_cost(%rip), %rbx
	mov	40(%rbx), %r9d
	cmpq	%r9, %r8
	jae	.L9421
.L9438:
	movq	8(%r15), %r8
	movq	-6520(%rbp), %rdx
	movq	8(%r14), %r12
	movq	-6520(%rbp), %rsi
	movq	$0, -296(%rbp)
	movl	$0, -6532(%rbp)
	testb	$2, target_flags+3(%rip)
	movq	%r8, -320(%rbp)
	setne	%r14b
	movq	8(%rdx), %r11
	movq	%rsi, -352(%rbp)
	movzwl	(%r11), %edx
	movq	%r11, -6528(%rbp)
	movzbl	%r14b, %ecx
	leal	5(,%rcx,4), %r14d
	xorl	%ecx, %ecx
	leal	-96(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L9443
	cmpw	$99, %dx
	je	.L9443
	cmpw	$98, %dx
	je	.L9443
.L9442:
	movq	-6528(%rbp), %rdi
	movl	%ecx, -336(%rbp)
	xorl	%edx, %edx
	movzwl	(%rdi), %eax
	cmpw	$96, %ax
	je	.L9445
	cmpw	$98, %ax
	je	.L9445
.L9444:
	movq	-6528(%rbp), %rax
	movq	%r15, -328(%rbp)
	movl	%edx, -288(%rbp)
	xorl	%ecx, %ecx
	movq	%rax, -344(%rbp)
	movzwl	(%r8), %edx
	leal	-96(%rdx), %r15d
	cmpw	$1, %r15w
	jbe	.L9448
	cmpw	$99, %dx
	je	.L9448
	cmpw	$98, %dx
	je	.L9448
.L9447:
	movl	-288(%rbp), %r9d
	movl	%ecx, -312(%rbp)
	movl	$0, -308(%rbp)
	movl	$0, -332(%rbp)
	testl	%r9d, %r9d
	je	.L9449
	movq	%r12, -296(%rbp)
.L9449:
	movl	-312(%rbp), %ebx
	movq	%r12, -304(%rbp)
	testl	%ebx, %ebx
	je	.L9451
	movl	-336(%rbp), %r10d
	testl	%r10d, %r10d
	jne	.L9450
.L9451:
	xorl	%r15d, %r15d
	movl	$17, %esi
.L9464:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L23301
.L9461:
	movslq	%ecx,%r11
	movzbq	mode_size(%r11), %rdx
	cmpq	%rsi, %rdx
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r11), %ecx
	testl	%ecx, %ecx
	jne	.L9461
.L23301:
	testl	%edi, %edi
	je	.L9454
	movslq	%edi,%rbx
	movq	%rbx, %rsi
	salq	$4, %rsi
	addq	optab_table+240(%rip), %rsi
	cmpl	$1317, 8(%rsi)
	je	.L9463
	movq	%r8, -9592(%rbp)
	call	get_mode_alignment
	movl	$128, %r8d
	cmpl	%eax, %r8d
	movq	-9592(%rbp), %r8
	jb	.L9463
	movzbq	mode_size(%rbx), %rdi
	movq	%r12, %rax
	xorl	%edx, %edx
	divq	%rdi
	addq	%rax, %r15
	movq	%rdx, %r12
.L9463:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L9464
.L9454:
	testq	%r12, %r12
	jne	.L25529
	cmpq	$2, %r15
	jbe	.L9450
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L23303
.L9472:
	movslq	%ecx,%r15
	movzbl	mode_size(%r15), %r9d
	cmpl	%r14d, %r9d
	cmovae	-6532(%rbp), %ecx
	movl	%ecx, -6532(%rbp)
	movzbl	mode_wider_mode(%r15), %ecx
	testl	%ecx, %ecx
	jne	.L9472
.L23303:
	movl	-312(%rbp), %eax
	testl	%eax, %eax
	jne	.L9478
	movzwl	(%r8), %edx
	leal	-67(%rdx), %ebx
	cmpw	$1, %bx
	jbe	.L9476
	cmpw	$54, %dx
	je	.L9476
	cmpw	$55, %dx
	je	.L9476
	cmpw	$58, %dx
	je	.L9476
	cmpw	$134, %dx
	je	.L9476
	cmpw	$56, %dx
	je	.L9476
	cmpw	$140, %dx
	je	.L9476
.L9478:
	movl	-336(%rbp), %eax
	testl	%eax, %eax
	jne	.L9450
	movq	-6528(%rbp), %r11
	movzwl	(%r11), %edx
	leal	-67(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L9480
	cmpw	$54, %dx
	je	.L9480
	cmpw	$55, %dx
	je	.L9480
	cmpw	$58, %dx
	je	.L9480
	cmpw	$134, %dx
	je	.L9480
	cmpw	$56, %dx
	je	.L9480
	cmpw	$140, %dx
	je	.L9480
.L9450:
	cmpl	$1, %r14d
	jbe	.L9483
.L9534:
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L23306
.L9490:
	movslq	%ecx,%rsi
	movzbl	mode_size(%rsi), %edx
	cmpl	%r14d, %edx
	cmovae	-6532(%rbp), %ecx
	movl	%ecx, -6532(%rbp)
	movzbl	mode_wider_mode(%rsi), %ecx
	testl	%ecx, %ecx
	jne	.L9490
.L23306:
	movl	-6532(%rbp), %eax
	testl	%eax, %eax
	je	.L9483
	movslq	-6532(%rbp),%r15
	movq	%r15, %r14
	salq	$4, %r14
	addq	optab_table+240(%rip), %r14
	movl	8(%r14), %ebx
	cmpl	$1317, %ebx
	je	.L9492
	movl	-6532(%rbp), %edi
	call	get_mode_alignment
	movl	$128, %r8d
	cmpl	%eax, %r8d
	jb	.L9492
	movzbq	mode_size(%r15), %rdx
	movslq	%ebx,%rdi
	movq	$0, -6544(%rbp)
	leaq	(%rdi,%rdi,4), %rcx
	cmpq	%rdx, -304(%rbp)
	movq	insn_data+16(,%rcx,8), %r12
	movq	%rdx, -5928(%rbp)
	movq	%r12, -2960(%rbp)
	leaq	-352(%rbp), %r12
	jb	.L9492
	movl	-288(%rbp), %ecx
.L9532:
	testl	%ecx, %ecx
	je	.L9496
	subq	%rdx, 56(%r12)
.L9496:
	movq	(%r12), %rdi
	testq	%rdi, %rdi
	je	.L9497
	movl	16(%r12), %eax
	testl	%eax, %eax
	je	.L9498
	movl	-6532(%rbp), %esi
	movq	8(%r12), %rdx
	movl	$1, %r8d
	movq	56(%r12), %rcx
	call	adjust_automodify_address_1
.L24594:
	movq	%rax, -6544(%rbp)
.L9497:
	movl	40(%r12), %eax
	testl	%eax, %eax
	je	.L9500
	movq	24(%r12), %rdi
	movl	-6532(%rbp), %esi
	movl	$1, %r8d
	movq	32(%r12), %rdx
	movq	56(%r12), %rcx
	call	adjust_automodify_address_1
.L24595:
	cmpq	$0, (%r12)
	movq	%rax, %r14
	jne	.L25696
	movl	target_flags(%rip), %eax
	testl	$33554432, %eax
	movl	%eax, %esi
	je	.L9506
	movzbl	mode_size(%r15), %r9d
	leal	7(%r9), %edx
	andl	$-8, %edx
.L9507:
	movq	cfun(%rip), %r11
	andl	$33554432, %esi
	movq	16(%r11), %r10
	leaq	8(%r10), %rdi
	movl	8(%r10), %ecx
	je	.L9508
	movzbl	mode_size(%r15), %eax
	addl	$7, %eax
	andl	$-8, %eax
.L24596:
	movq	%r15, %rsi
	leal	(%rax,%rcx), %r8d
	salq	$4, %rsi
	movl	%r8d, (%rdi)
	addq	optab_table+384(%rip), %rsi
	movl	8(%rsi), %eax
	cmpl	$1317, %eax
	je	.L9510
	movslq	%eax,%rbx
	leaq	(%rbx,%rbx,4), %rcx
	movq	insn_data+24(,%rcx,8), %rdx
	movq	(%rdx), %rax
	testq	%rax, %rax
	je	.L9511
	movq	%r14, %rdi
	movl	-6532(%rbp), %esi
	call	*%rax
	testl	%eax, %eax
	je	.L25697
.L9511:
	leaq	(%rbx,%rbx,4), %r9
	movq	%r14, %rdi
	xorl	%eax, %eax
	call	*insn_data+16(,%r9,8)
.L24597:
	movq	%rax, %rdi
	call	emit_insn
.L9530:
	movl	64(%r12), %eax
	testl	%eax, %eax
	movl	%eax, %ecx
	jne	.L9531
	movq	-5928(%rbp), %r14
	addq	%r14, 56(%r12)
.L9531:
	movq	48(%r12), %rsi
	movq	-5928(%rbp), %rdx
	subq	-5928(%rbp), %rsi
	cmpq	%rdx, %rsi
	movq	%rsi, 48(%r12)
	jae	.L9532
.L9492:
	movzbl	mode_size(%r15), %r14d
	cmpl	$1, %r14d
	ja	.L9534
.L9483:
	cmpq	$0, -304(%rbp)
	je	.L7871
.L25518:
	movl	$.LC0, %edi
	movl	$1503, %esi
	movl	$.LC10, %edx
	jmp	.L25086
.L25697:
	movl	-6532(%rbp), %edi
	movq	%r14, %rsi
	call	force_reg
	movq	%rax, %r14
	jmp	.L9511
.L9510:
	movzbl	mode_size(%r15), %edi
	cmpl	%edx, %edi
	je	.L25698
	mov	%edx, %esi
	xorl	%edi, %edi
	negq	%rsi
	call	gen_rtx_CONST_INT
	movq	global_rtl+16(%rip), %rdx
	movl	$75, %edi
	testb	$2, target_flags+3(%rip)
	movq	%rax, %rcx
	setne	%r10b
	movzbl	%r10b, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_ee
	movq	global_rtl+16(%rip), %rdx
	movl	$100, %edi
	testb	$2, target_flags+3(%rip)
	movq	%rax, %rcx
	setne	%bl
	movzbl	%bl, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_ee
.L9518:
	movl	-6532(%rbp), %edi
	movq	%rax, %rsi
	call	gen_rtx_MEM
	xorl	%r11d, %r11d
	testq	%r11, %r11
	movq	%rax, %rbx
	je	.L9527
	movq	%rax, %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	call	set_mem_attributes
	movl	flag_optimize_sibling_calls(%rip), %eax
	testl	%eax, %eax
	jne	.L25699
.L9527:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	call	emit_move_insn
	jmp	.L9530
.L25699:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	call	set_mem_alias_set
	jmp	.L9527
.L25698:
	testb	$2, target_flags+3(%rip)
	movq	global_rtl+16(%rip), %rdx
	movl	$96, %edi
	setne	%al
	movzbl	%al, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_e
	jmp	.L9518
	.p2align 6,,7
.L9508:
	movzbl	mode_size(%r15), %eax
	incl	%eax
	andl	$-2, %eax
	jmp	.L24596
.L9506:
	movzbl	mode_size(%r15), %ebx
	leal	1(%rbx), %edx
	andl	$-2, %edx
	jmp	.L9507
.L25696:
	movq	%rax, %rsi
	movq	-6544(%rbp), %rdi
	xorl	%eax, %eax
	call	*-2960(%rbp)
	jmp	.L24597
.L9500:
	movq	24(%r12), %rdi
	movl	-6532(%rbp), %esi
	movl	$1, %ecx
	movq	56(%r12), %rdx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L24595
.L9498:
	movl	-6532(%rbp), %esi
	movq	56(%r12), %rdx
	movl	$1, %ecx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L24594
.L9480:
	movq	-6528(%rbp), %rdi
	call	copy_addr_to_reg
	movq	%rax, -344(%rbp)
	jmp	.L9450
.L9476:
	movq	%r8, %rdi
	call	copy_addr_to_reg
	movq	%rax, -320(%rbp)
	jmp	.L9478
.L25529:
	movl	$.LC0, %edi
	movl	$1542, %esi
	movl	$.LC5, %edx
	jmp	.L25086
.L9448:
	movl	$1, %ecx
	jmp	.L9447
.L9445:
	movl	$1, %edx
	jmp	.L9444
.L9443:
	movl	$1, %ecx
	jmp	.L9442
.L9437:
	cmpq	$2, %r8
	ja	.L9421
	jmp	.L9438
.L25543:
	movl	$.LC0, %edi
	movl	$1648, %esi
.L25528:
	movl	$.LC9, %edx
	jmp	.L25086
.L25544:
	movl	$.LC0, %edi
	movl	$1646, %esi
	jmp	.L25528
.L25545:
	movl	$.LC0, %edi
	movl	$1644, %esi
	jmp	.L25528
.L9413:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r14), %rdi
	movq	%rax, %r12
	call	protect_from_queue
	cmpq	8(%r14), %r12
	movq	%rax, %rbx
	je	.L25700
.L9415:
	movq	%r14, %rdi
	call	copy_rtx
	movq	%rax, %r14
	movq	%r12, 8(%rax)
	movq	%rbx, 16(%rax)
	jmp	.L9408
.L25700:
	cmpq	16(%r14), %rax
	jne	.L9415
	jmp	.L9408
.L25690:
	cmpb	$51, 2(%r14)
	je	.L9406
	movq	8(%r14), %r12
	cmpw	$71, (%r12)
	je	.L25701
.L9406:
	cmpl	$66, %eax
	jne	.L9409
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%r14), %rax
	movq	%rax, %rbx
	je	.L9408
	movq	%r14, %rdi
	call	copy_rtx
	movq	%rax, %r14
	movq	%rbx, 8(%rax)
	jmp	.L9408
.L25701:
	movq	8(%r12), %rsi
	movq	%r14, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%r12)
	movq	%rax, %rbx
	je	.L9407
	movzbl	2(%r14), %edi
	call	gen_reg_rtx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L9408
.L9407:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L24593:
	movq	%rax, %r14
	jmp	.L9408
	.p2align 6,,7
.L9405:
	cmpq	$0, 16(%r14)
	je	.L25702
	movq	24(%r14), %rax
	testq	%rax, %rax
	jne	.L24593
	movq	8(%r14), %r8
	movzbl	2(%r8), %edi
	call	gen_reg_rtx
	movq	8(%r14), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r14), %r14
	jmp	.L9408
.L25702:
	movq	8(%r14), %rdi
	call	copy_to_reg
	jmp	.L24593
.L9400:
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r15), %rdi
	movq	%rax, %r12
	call	protect_from_queue
	cmpq	8(%r15), %r12
	movq	%rax, %rbx
	je	.L25703
.L9402:
	movq	%r15, %rdi
	call	copy_rtx
	movq	%rax, %r15
	movq	%r12, 8(%rax)
	movq	%rbx, 16(%rax)
	jmp	.L9395
.L25703:
	cmpq	16(%r15), %rax
	jne	.L9402
	jmp	.L9395
.L25689:
	cmpb	$51, 2(%r15)
	je	.L9393
	movq	8(%r15), %r12
	cmpw	$71, (%r12)
	je	.L25704
.L9393:
	cmpl	$66, %eax
	jne	.L9396
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%r15), %rax
	movq	%rax, %rbx
	je	.L9395
	movq	%r15, %rdi
	call	copy_rtx
	movq	%rax, %r15
	movq	%rbx, 8(%rax)
	jmp	.L9395
.L25704:
	movq	8(%r12), %rsi
	movq	%r15, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%r12)
	movq	%rax, %rbx
	je	.L9394
	movzbl	2(%r15), %edi
	call	gen_reg_rtx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, %r15
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L9395
.L9394:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L24592:
	movq	%rax, %r15
	jmp	.L9395
	.p2align 6,,7
.L9392:
	cmpq	$0, 16(%r15)
	je	.L25705
	movq	24(%r15), %rax
	testq	%rax, %rax
	jne	.L24592
	movq	8(%r15), %r9
	movzbl	2(%r9), %edi
	call	gen_reg_rtx
	movq	8(%r15), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r15)
	call	gen_move_insn
	movq	16(%r15), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r15), %r15
	jmp	.L9395
.L25705:
	movq	8(%r15), %rdi
	call	copy_to_reg
	jmp	.L24592
.L9387:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, %r12
	call	protect_from_queue
	cmpq	8(%r13), %r12
	movq	%rax, %rbx
	je	.L25706
.L9389:
	movq	%r13, %rdi
	call	copy_rtx
	movq	%rax, -6520(%rbp)
	movq	%r12, 8(%rax)
	movq	-6520(%rbp), %rcx
	movq	%rbx, 16(%rcx)
	jmp	.L9382
.L25706:
	cmpq	16(%r13), %rax
	jne	.L9389
	jmp	.L9382
.L25688:
	jne	.L9383
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%r13), %rax
	movq	%rax, %rbx
	je	.L9382
	movq	%r13, %rdi
	call	copy_rtx
	movq	%rax, -6520(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L9382
	.p2align 6,,7
.L9379:
	testq	%rcx, %rcx
	je	.L25707
	movq	24(%r13), %rsi
	testq	%rsi, %rsi
	movq	%rsi, -6520(%rbp)
	jne	.L9382
	movq	8(%r13), %r12
	movzbl	2(%r12), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %rdi
	movq	%rdi, -6520(%rbp)
	jmp	.L9382
.L25707:
	movq	8(%r13), %rdi
	call	copy_to_reg
	movq	%rax, -6520(%rbp)
	jmp	.L9382
.L25546:
	movl	$.LC0, %edi
	movl	$1637, %esi
	jmp	.L25528
.L25547:
	movl	$.LC0, %edi
	movl	$1634, %esi
	jmp	.L25528
	.p2align 6,,7
.L9372:
	testq	%rcx, %rcx
	movl	$8, -6508(%rbp)
	je	.L9368
	movl	32(%rcx), %r11d
	movl	%r11d, -6508(%rbp)
	jmp	.L9368
	.p2align 6,,7
.L9371:
	cmpl	$7, %edx
	ja	.L9367
	jmp	.L9372
.L25687:
	movq	-2712(%rbp), %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	movl	$1, %ecx
	call	assign_temp
	movq	%rax, %r13
	jmp	.L9364
.L9360:
	movl	$.LC0, %edi
	movl	$7035, %esi
	jmp	.L25123
	.p2align 6,,7
.L25686:
	cmpw	$66, (%r13)
	jne	.L9357
	testb	$7, -2552(%rbp)
	je	.L9356
	jmp	.L9357
	.p2align 6,,7
.L9355:
	movq	-2544(%rbp), %rsi
	testq	%rsi, %rsi
	js	.L9353
	movq	-9552(%rbp), %rax
	movq	8(%rax), %r8
	movq	32(%r8), %rdi
	cmpb	$25, 16(%rdi)
	je	.L25708
.L9353:
	cmpl	$51, -2716(%rbp)
	je	.L25709
.L9572:
	leal	-1(%r14), %ebx
	cmpl	$2, %ebx
	ja	.L9573
	movq	-2552(%rbp), %rdx
	movl	-2564(%rbp), %esi
	cmpq	$-1, %rdx
	leaq	7(%rdx), %rdi
	cmovle	%rdi, %rdx
	xorl	%ecx, %ecx
	movq	-6504(%rbp), %rdi
	sarq	$3, %rdx
.L24599:
	movl	$1, %r8d
	call	adjust_address_1
	cmpq	-2952(%rbp), %rax
	movq	%rax, %rbx
	je	.L25710
.L9579:
	movq	-9552(%rbp), %rsi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	call	set_mem_attributes
	movq	8(%rbx), %r11
	cmpw	$61, (%r11)
	je	.L25711
.L9580:
	movzbl	3(%rbx), %esi
	movl	%esi, %eax
	andb	$-9, %sil
	shrb	$3, %al
	andl	$1, %eax
	orl	-2568(%rbp), %eax
	andb	$1, %al
	salb	$3, %al
	orb	%al, %sil
	movb	%sil, 3(%rbx)
	movl	-2564(%rbp), %eax
	cmpl	%eax, -2716(%rbp)
	je	.L25059
	cmpl	$51, %eax
	je	.L25059
	cmpl	%r15d, %eax
	je	.L25059
	cmpl	$2, %r14d
	je	.L25059
	cmpl	$3, %r14d
	je	.L25059
	testq	%r13, %r13
	je	.L25712
.L11677:
	movl	-2516(%rbp), %edx
	movq	%r13, %rdi
	movq	%rbx, %rsi
.L25060:
	call	convert_move
	jmp	.L7871
.L25712:
	testl	%r15d, %r15d
	cmove	-2716(%rbp), %r15d
	movl	%r15d, %edi
	movl	%r15d, -2716(%rbp)
.L25538:
	call	gen_reg_rtx
	movq	%rax, %r13
	jmp	.L11677
	.p2align 6,,7
.L25059:
	movq	%rbx, %r13
	jmp	.L7871
.L25711:
	movq	16(%rbx), %rax
	leaq	8(%rbx), %rdx
	movl	$8, %esi
	testq	%rax, %rax
	je	.L9584
	movl	32(%rax), %esi
.L9584:
	movq	(%rdx), %rdi
	call	mark_reg_pointer
	jmp	.L9580
.L25710:
	movq	%rax, %rdi
	call	copy_rtx
	movq	%rax, %rbx
	jmp	.L9579
	.p2align 6,,7
.L9573:
	movq	-2552(%rbp), %rdx
	movl	-2564(%rbp), %esi
	movl	$1, %ecx
	movq	-6504(%rbp), %rdi
	cmpq	$-1, %rdx
	leaq	7(%rdx), %r10
	cmovle	%r10, %rdx
	sarq	$3, %rdx
	jmp	.L24599
.L25709:
	movl	$51, -2564(%rbp)
	jmp	.L9572
.L25708:
	call	compare_tree_int
	testl	%eax, %eax
	je	.L9353
	jmp	.L9354
	.p2align 6,,7
.L25683:
	cmpq	$0, -2552(%rbp)
	jne	.L9352
	movq	-6504(%rbp), %r12
	movzbq	2(%r12), %r14
	movzwq	mode_bitsize(%r14,%r14), %r13
	cmpq	%r13, -2544(%rbp)
	jne	.L9352
	movq	-6504(%rbp), %r13
	jmp	.L7871
.L9352:
	movl	$.LC0, %edi
	movl	$6987, %esi
	jmp	.L25123
	.p2align 6,,7
.L25682:
	cmpq	$0, -2552(%rbp)
	jne	.L9347
	movq	-2560(%rbp), %rdi
	testq	%rdi, %rdi
	jne	.L25713
.L9347:
	cmpw	$66, %dx
	jne	.L9348
	movl	-2568(%rbp), %esi
	testl	%esi, %esi
	je	.L9348
	movq	-6504(%rbp), %rax
	testb	$8, 3(%rax)
	jne	.L9348
	movq	-2952(%rbp), %rcx
	cmpq	%rcx, %rax
	je	.L25714
.L9349:
	movq	-6504(%rbp), %rdi
	orb	$8, 3(%rdi)
	jmp	.L9348
.L25714:
	movq	%rcx, %rdi
	call	copy_rtx
	movq	%rax, -6504(%rbp)
	movzwl	(%rax), %edx
	jmp	.L9349
	.p2align 6,,7
.L25713:
	movq	%r12, %rsi
	call	is_aligning_offset
	testl	%eax, %eax
	jne	.L25715
	movq	-6504(%rbp), %r11
	movzwl	(%r11), %edx
	jmp	.L9347
.L25715:
	movq	-6504(%rbp), %rdi
	movl	$128, %esi
	call	set_mem_align
	movq	-6504(%rbp), %rcx
	movzwl	(%rcx), %edx
	jmp	.L9347
	.p2align 6,,7
.L25681:
	xorl	%edx, %edx
	xorl	%esi, %esi
	movl	$1, %ecx
	call	expand_expr
	movq	-6504(%rbp), %r11
	movq	%rax, -6496(%rbp)
	movzwl	(%r11), %edx
	cmpw	$61, %dx
	je	.L9335
	cmpw	$63, %dx
	je	.L9335
	cmpw	$65, %dx
	je	.L9335
	cmpw	$70, %dx
	je	.L9335
.L9334:
	cmpw	$66, %dx
	jne	.L25716
	movq	-6496(%rbp), %rcx
	movl	ptr_mode(%rip), %edi
	movzbl	2(%rcx), %esi
	cmpl	%edi, %esi
	je	.L9341
	movq	%rcx, %rsi
	xorl	%edx, %edx
	call	convert_to_mode
	movq	%rax, -6496(%rbp)
.L9341:
	movq	-6504(%rbp), %rbx
	movl	(%rbx), %eax
	andl	$16777215, %eax
	cmpl	$3342402, %eax
	je	.L25717
.L9342:
	movq	-2560(%rbp), %rdi
	call	highest_pow2_factor
	movq	-6496(%rbp), %rsi
	movq	-6504(%rbp), %rdi
	movq	%rax, %rdx
	call	offset_address
	movq	%rax, -6504(%rbp)
	jmp	.L9333
.L25717:
	movq	8(%rbx), %rdi
	cmpb	$0, 2(%rdi)
	je	.L9342
	movq	-2544(%rbp), %rdx
	testq	%rdx, %rdx
	je	.L9342
	movq	-2552(%rbp), %rax
	movq	%rdx, %r9
	cqto
	idivq	%r9
	testq	%rdx, %rdx
	jne	.L9342
	movl	-2564(%rbp), %edi
	call	get_mode_alignment
	movq	-2544(%rbp), %rdx
	mov	%eax, %r8d
	movq	%rdx, %rax
	cqto
	idivq	%r8
	testq	%rdx, %rdx
	jne	.L9342
	movl	-2564(%rbp), %edi
	call	get_mode_alignment
	movq	16(%rbx), %rdx
	testq	%rdx, %rdx
	je	.L9343
	cmpl	%eax, 32(%rdx)
.L24591:
	jne	.L9342
	movq	-2552(%rbp), %rdx
	movl	-2564(%rbp), %esi
	movl	$1, %ecx
	movq	-6504(%rbp), %rdi
	movl	$1, %r8d
	cmpq	$-1, %rdx
	leaq	7(%rdx), %rbx
	cmovle	%rbx, %rdx
	sarq	$3, %rdx
	call	adjust_address_1
	movq	$0, -2552(%rbp)
	movq	%rax, -6504(%rbp)
	jmp	.L9342
.L9343:
	cmpl	$8, %eax
	jmp	.L24591
.L25716:
	movl	$.LC0, %edi
	movl	$6938, %esi
	jmp	.L25123
	.p2align 6,,7
.L9335:
	movq	-9552(%rbp), %rdx
	movq	32(%rdx), %rdi
	cmpb	$118, 16(%rdi)
	je	.L25718
	movq	8(%r12), %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	movzbl	17(%rdi), %r8d
	movzbl	62(%rdi), %ecx
	movl	%r8d, %r10d
	shrb	$5, %cl
	shrb	$3, %r8b
	shrb	$4, %r10b
	andl	$1, %r8d
	andl	$1, %ecx
	andl	%r10d, %esi
	addl	%r8d, %r8d
	sall	$2, %ecx
	orl	%r8d, %esi
	orl	%ecx, %esi
	cmpb	$20, 16(%rdi)
	je	.L25719
.L9339:
	leal	0(,%rdx,8), %r11d
	orl	%r11d, %esi
	orl	$1, %esi
	call	build_qualified_type
	movl	$1, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	movl	$1, %esi
	call	assign_temp
	movq	-6504(%rbp), %rsi
	movq	%rax, %rbx
	movq	%rax, %rdi
	call	emit_move_insn
	movzwl	(%rbx), %edx
	movq	%rbx, -6504(%rbp)
	jmp	.L9334
.L25719:
	cmpq	$0, 8(%rdi)
	movl	$1, %eax
	cmovne	%eax, %edx
	jmp	.L9339
.L25718:
	call	put_var_into_stack
	movq	-9552(%rbp), %rax
	movq	32(%rax), %rbx
	movq	48(%rbx), %r9
	movzwl	(%r9), %edx
	movq	%r9, -6504(%rbp)
	jmp	.L9334
	.p2align 6,,7
.L9330:
	movq	8(%r12), %r10
	movzbl	61(%r10), %esi
	shrb	$1, %sil
	movzbl	%sil, %edi
	cmpl	$51, %edi
	je	.L9331
	cmpq	$0, -2560(%rbp)
	je	.L25720
.L9331:
	movq	-2952(%rbp), %rsi
	call	force_const_mem
	movq	%rax, %rdi
	call	validize_mem
.L24590:
	movq	%rax, -6504(%rbp)
	jmp	.L9329
.L25720:
	movq	-2952(%rbp), %rsi
	call	force_reg
	jmp	.L24590
.L25680:
	movq	32(%rax), %rcx
	cmpb	$25, 16(%rcx)
	je	.L9325
	movq	%r13, %rsi
	jmp	.L9326
.L25679:
	movl	$.LC0, %edi
	movl	$6877, %esi
	jmp	.L25123
	.p2align 6,,7
.L25678:
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	host_integerp
	testl	%eax, %eax
	je	.L9313
	movq	%rbx, %rdi
	xorl	%esi, %esi
	call	tree_low_cst
	movq	$0, -2560(%rbp)
	movq	%rax, -2552(%rbp)
	jmp	.L9314
	.p2align 6,,7
.L9303:
	movq	32(%rdx), %rdx
	jmp	.L9299
	.p2align 6,,7
.L9300:
	movq	40(%rdx), %rdx
	jmp	.L9299
	.p2align 6,,7
.L9296:
	movq	8(%rcx), %rbx
	cmpq	%rsi, 128(%rbx)
	jne	.L9293
	testq	%r8, %r8
	je	.L9297
	movq	%rdi, (%r8)
.L9297:
	movl	$41, %edi
	call	build1
	movq	%rax, %rcx
	jmp	.L9283
	.p2align 6,,7
.L9289:
	movq	32(%rcx), %rcx
	jmp	.L9285
	.p2align 6,,7
.L9286:
	movq	40(%rcx), %rcx
	jmp	.L9285
.L25677:
	testq	%r8, %r8
	je	.L9283
	movq	%rdi, (%r8)
	jmp	.L9283
.L9271:
	movq	placeholder_list(%rip), %rdi
	jmp	.L9272
.L9270:
	leal	-116(%rdx), %r8d
	cmpb	$1, %r8b
	jbe	.L9257
	leal	-114(%rdx), %esi
	cmpb	$1, %sil
	ja	.L9254
	movq	32(%r12), %r11
	movq	8(%r12), %r9
	movq	8(%r11), %rdx
	movzbl	61(%r9), %r10d
	movzbl	61(%rdx), %edi
	andb	$-2, %r10b
	andb	$-2, %dil
	cmpb	%dil, %r10b
	jne	.L9254
.L9257:
	testb	$8, 17(%r12)
	je	.L9311
	movl	$1, -2568(%rbp)
.L9311:
	movq	32(%r12), %r12
	jmp	.L9312
.L25676:
	movq	32(%r12), %rax
	movq	40(%r12), %rbx
	xorl	%r8d, %r8d
	movq	%rax, -2944(%rbp)
	movq	8(%rax), %rdx
	movq	24(%rdx), %rax
	testq	%rax, %rax
	je	.L9265
	movq	104(%rax), %r8
.L9265:
	movq	8(%rdx), %r10
	testq	%r8, %r8
	movq	40(%r10), %rdi
	movq	%rdi, -6488(%rbp)
	jne	.L25721
.L9266:
	testb	$2, 17(%rbx)
	je	.L25722
.L9267:
	movq	-6488(%rbp), %rax
	testb	$2, 17(%rax)
	je	.L25723
.L9268:
	movq	sizetype_tab(%rip), %rdi
	movq	%rbx, %rsi
	call	convert
	movq	-6488(%rbp), %rdx
	movl	$61, %edi
	movq	%rax, %rsi
	call	size_binop
	movq	-6480(%rbp), %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	size_binop
	movq	%rax, -6480(%rbp)
	jmp	.L9257
.L25723:
	movq	%rax, %rdi
	call	contains_placeholder_p
	testl	%eax, %eax
	je	.L9268
	movq	sizetype_tab(%rip), %rsi
	movq	-6488(%rbp), %rdx
	movl	$58, %edi
	movq	-2944(%rbp), %rcx
	xorl	%eax, %eax
	call	build
	movq	%rax, -6488(%rbp)
	jmp	.L9268
.L25722:
	movq	%rbx, %rdi
	call	contains_placeholder_p
	testl	%eax, %eax
	je	.L9267
	movq	8(%rbx), %rsi
	movq	%rbx, %rdx
	movl	$58, %edi
	movq	%r12, %rcx
	xorl	%eax, %eax
	call	build
	movq	%rax, %rbx
	jmp	.L9267
.L25721:
	movq	%r8, %rdi
	movq	%r8, -9592(%rbp)
	call	integer_zerop
	movq	-9592(%rbp), %r8
	testl	%eax, %eax
	jne	.L9266
	movq	8(%rbx), %rsi
	movq	%rbx, %rdx
	movl	$60, %edi
	movq	%r8, %rcx
	xorl	%eax, %eax
	call	build
	movq	%rax, %rdi
	call	fold
	movq	%rax, %rbx
	jmp	.L9266
	.p2align 6,,7
.L25675:
	movq	40(%r12), %rdx
	movq	%rdx, -2936(%rbp)
	movq	88(%rdx), %rbx
	testq	%rbx, %rbx
	je	.L9254
	testb	$2, 17(%rbx)
	je	.L25724
.L9260:
	movq	-6480(%rbp), %rsi
	movq	%rbx, %rdx
	movl	$59, %edi
	call	size_binop
	movq	-2936(%rbp), %rbx
	movq	-6472(%rbp), %rsi
	movq	%rax, -6480(%rbp)
	movl	$59, %edi
	movq	160(%rbx), %rdx
.L24589:
	call	size_binop
	movq	%rax, -6472(%rbp)
	jmp	.L9257
.L25724:
	movq	%rbx, %rdi
	call	contains_placeholder_p
	testl	%eax, %eax
	je	.L9260
	movq	sizetype_tab(%rip), %rsi
	movq	%rbx, %rdx
	movl	$58, %edi
	movq	%r12, %rcx
	xorl	%eax, %eax
	call	build
	movq	%rax, %rbx
	jmp	.L9260
	.p2align 6,,7
.L25674:
	movq	-6472(%rbp), %rsi
	movq	48(%r12), %rdx
	movl	$59, %edi
	jmp	.L24589
.L25673:
	movq	%rbx, %rdi
	movl	$1, %esi
	call	host_integerp
	testl	%eax, %eax
	jne	.L9251
	movl	$51, -6460(%rbp)
	movq	$-1, -2544(%rbp)
	jmp	.L9312
.L9251:
	movq	%rbx, %rdi
	movl	$1, %esi
	call	tree_low_cst
	movq	%rax, -2544(%rbp)
	jmp	.L9312
.L25672:
	movq	8(%rsi), %r11
	movq	32(%r11), %rbx
	jmp	.L9245
.L25671:
	movq	-9552(%rbp), %rdx
	movq	40(%rdx), %rbx
	movzbl	17(%rdx), %eax
.L24588:
	shrb	$5, %al
	andl	$1, %eax
	movl	%eax, -2516(%rbp)
	jmp	.L9245
.L25670:
	movq	40(%r12), %rax
	testb	$16, 49(%rax)
	movq	40(%rax), %rbx
	jne	.L9244
	movzbl	48(%rax), %r9d
	movl	%r9d, -6460(%rbp)
.L9244:
	movzbl	17(%rax), %eax
	jmp	.L24588
.L25669:
	movq	-9552(%rbp), %rcx
	movq	32(%rcx), %rax
	cmpb	$46, 16(%rax)
	jne	.L9232
	cmpq	$0, 24(%rax)
	jne	.L9232
	movq	40(%rax), %rbx
	testq	%rbx, %rbx
	je	.L9232
	movq	40(%rcx), %r12
	movq	%r12, -9576(%rbp)
.L9242:
	movq	-9576(%rbp), %rax
	cmpq	%rax, 24(%rbx)
	je	.L25725
.L9235:
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L9242
	jmp	.L9232
.L25725:
	testb	$16, 49(%rax)
	je	.L9238
	movzbq	48(%rax), %rax
	cmpl	$1, mode_class(,%rax,4)
	jne	.L9235
	cmpw	$64, mode_bitsize(%rax,%rax)
	ja	.L9235
.L9238:
	movq	32(%rbx), %rdi
	movl	%r15d, %edx
	movl	%r14d, %ecx
	movq	%r13, %rsi
	call	expand_expr
	movq	24(%rbx), %rdx
	movq	%rax, %r14
	testb	$16, 49(%rdx)
	je	.L24238
	movq	8(%rdx), %rbx
	movq	40(%rdx), %rdi
	movzbl	61(%rbx), %r8d
	movq	32(%rdi), %rcx
	shrb	$1, %r8b
	testb	$32, 17(%rbx)
	movzbl	%r8b, %r12d
	jne	.L24467
	movslq	%r12d,%r10
	xorl	%esi, %esi
	movzwq	mode_bitsize(%r10,%r10), %rdi
	subq	%rcx, %rdi
	call	build_int_2_wide
	xorl	%r9d, %r9d
	movq	%r13, %r8
	movl	$82, %edi
	movl	%r12d, %esi
	movq	%r14, %rdx
	movq	%rax, %rcx
	movq	%rax, %r15
	call	expand_shift
	xorl	%r9d, %r9d
	movq	%r13, %r8
	movl	$83, %edi
	movl	%r12d, %esi
	movq	%rax, %rdx
	movq	%r15, %rcx
.L25076:
	call	expand_shift
	jmp	.L23191
.L24467:
	movl	$1, %esi
	xorl	%edi, %edi
	salq	%cl, %rsi
	decq	%rsi
	call	gen_rtx_CONST_INT
	movq	%r13, %rcx
	movq	%r14, %rsi
	movl	%r12d, %edi
	movq	%rax, %rdx
	call	expand_and
	jmp	.L23191
.L24238:
	movq	%rax, %r13
	jmp	.L7871
	.p2align 6,,7
.L25668:
	movq	104(%rcx), %rbx
	testq	%rbx, %rbx
	je	.L9231
	movzbl	16(%rbx), %eax
	testb	%al, %al
	je	.L9231
	movq	-6456(%rbp), %r11
	cmpb	$25, 16(%r11)
	jne	.L9231
	cmpb	$46, %al
	je	.L25726
	cmpb	$29, %al
	jne	.L9231
	movslq	32(%rbx),%rsi
	movq	-6456(%rbp), %rdi
	call	compare_tree_int
	testl	%eax, %eax
	jns	.L9231
	movq	8(%rbx), %rcx
	movq	8(%rcx), %rsi
	movzbl	61(%rsi), %r9d
	shrb	$1, %r9b
	movzbl	%r9b, %esi
	movslq	%esi,%rax
	cmpl	$1, mode_class(,%rax,4)
	jne	.L9231
	cmpb	$1, mode_size(%rax)
	jne	.L9231
	movq	-6456(%rbp), %r15
	movq	32(%r15), %r14
	addq	40(%rbx), %r14
	movsbq	(%r14),%rdi
	jmp	.L25073
.L25726:
	movq	40(%rbx), %rbx
.L9219:
	testq	%rbx, %rbx
	je	.L9231
	movq	24(%rbx), %rdi
	movq	-6456(%rbp), %rsi
	call	tree_int_cst_equal
	testl	%eax, %eax
	jne	.L25727
	movq	(%rbx), %rbx
	jmp	.L9219
.L25727:
	movq	32(%rbx), %rdi
	testb	$1, 17(%rdi)
	jne	.L9231
.L25100:
	call	fold
.L25097:
	movq	%rax, %rdi
	movq	%r13, %rsi
	movl	%r15d, %edx
.L25099:
	movl	%r14d, %ecx
	jmp	.L25083
.L25667:
	movq	-6456(%rbp), %rbx
	cmpb	$25, 16(%rbx)
	jne	.L9207
	movq	-9552(%rbp), %r8
	movq	32(%r8), %rcx
	movq	40(%rcx), %rdi
	call	list_length
	movq	%rbx, %rdi
	movslq	%eax,%rsi
	call	compare_tree_int
	testl	%eax, %eax
	jns	.L9207
	movq	-9552(%rbp), %r10
	movq	32(%rbx), %rax
	movq	32(%r10), %rdi
	movq	40(%rdi), %rdx
	testq	%rdx, %rdx
	je	.L9231
	testq	%rax, %rax
	je	.L9209
.L9213:
	movq	(%rdx), %rdx
	decq	%rax
	testq	%rdx, %rdx
	je	.L9231
	testq	%rax, %rax
	jne	.L9213
.L9209:
	testq	%rdx, %rdx
	je	.L9231
	movq	32(%rdx), %rdi
	jmp	.L25100
	.p2align 6,,7
.L25666:
	movq	-6456(%rbp), %r9
	cmpb	$25, 16(%r9)
	jne	.L9206
	movslq	32(%rbx),%rsi
	movq	-6456(%rbp), %rdi
	call	compare_tree_int
	testl	%eax, %eax
	jns	.L9206
	movslq	-2716(%rbp),%rax
	cmpl	$1, mode_class(,%rax,4)
	jne	.L9206
	cmpb	$1, mode_size(%rax)
	jne	.L9206
	movq	-6456(%rbp), %r13
	movq	32(%r13), %rax
	jmp	.L25072
	.p2align 6,,7
.L25665:
	movq	sizetype_tab(%rip), %rdi
	movq	%rbx, %rsi
	call	convert
	movq	-6456(%rbp), %rdi
	movq	%rax, %rsi
	call	size_diffop
	movq	%rax, -6456(%rbp)
	jmp	.L9205
.L9203:
	movq	global_trees+88(%rip), %rbx
	jmp	.L9204
.L25664:
	movl	$.LC0, %edi
	movl	$6703, %esi
	jmp	.L25123
	.p2align 6,,7
.L9591:
	call	get_last_insn
	movl	%r14d, %ecx
	movl	%r15d, %edx
	movq	-9552(%rbp), %r8
	movq	%rax, -3008(%rbp)
	movq	%r13, %rsi
	movq	32(%r8), %rdi
	call	expand_expr
	cmpw	$61, (%rax)
	movq	%rax, %rbx
	je	.L25728
	movzbl	2(%rax), %edi
	call	gen_reg_rtx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	emit_move_insn
.L24600:
	movq	%rax, %r12
.L9595:
	movq	-9552(%rbp), %rcx
	movq	40(%rcx), %rdi
	movq	144(%rdi), %rax
	testq	%rax, %rax
	je	.L25729
.L9596:
	movq	-9552(%rbp), %rdx
	movq	8(%rax), %r14
	xorl	%esi, %esi
	movq	48(%rdx), %rdi
	call	tree_low_cst
	movq	%r14, %rdi
	movq	%rax, %rsi
	call	plus_constant_wide
	movq	56(%r12), %rcx
	movl	$30, %esi
	movq	8(%rax), %rdx
	movl	$3, %edi
	call	gen_rtx_fmt_ee
	movq	%rax, 56(%r12)
	jmp	.L7871
.L25729:
	xorl	%esi, %esi
	call	make_decl_rtl
	movq	-9552(%rbp), %r15
	movq	40(%r15), %r9
	movq	144(%r9), %rax
	jmp	.L9596
.L25728:
	movq	%rax, %r13
	call	get_last_insn
	cmpq	-3008(%rbp), %rax
	movq	%rax, %r12
	je	.L25730
	movzwq	(%rax), %r14
	cmpb	$105, rtx_class(%r14)
	je	.L9595
	movq	%rax, %rdi
	call	prev_nonnote_insn
	jmp	.L24600
.L25730:
	movl	$.LC0, %edi
	movl	$7128, %esi
	jmp	.L25123
	.p2align 6,,7
.L8966:
	movl	-6220(%rbp), %r10d
	testl	%r10d, %r10d
	je	.L8967
	movq	-9552(%rbp), %r13
	movq	40(%r13), %rbx
	testq	%rbx, %rbx
	jne	.L8972
.L23270:
	movq	%rcx, %r13
	jmp	.L7871
.L8972:
	movq	32(%rbx), %rdi
	movq	const_int_rtx+512(%rip), %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	call	expand_expr
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L8972
	movq	const_int_rtx+512(%rip), %rcx
	jmp	.L23270
.L8967:
	movq	-9552(%rbp), %rax
	movzbl	18(%rax), %esi
	testb	$4, %sil
	je	.L8976
	cmpl	$51, -2716(%rbp)
	je	.L25731
.L8977:
	movq	-9552(%rbp), %rsi
	testb	$4, 17(%rsi)
	je	.L25732
.L8975:
	movq	-9552(%rbp), %rdi
	movl	$1, %esi
	call	output_constant_def
	leal	-1(%r14), %edx
	cmpl	$2, %edx
	movq	%rax, %r13
	jbe	.L7871
	movq	%rax, %rdi
	call	validize_mem
	jmp	.L23191
.L25732:
	movq	-2712(%rbp), %r8
	movl	$1, %esi
	movq	40(%r8), %rdi
	call	host_integerp
	testl	%eax, %eax
	jne	.L25733
.L8976:
	cmpl	$3, %r14d
	je	.L25734
.L8974:
	testq	%r13, %r13
	je	.L9115
	movq	-9552(%rbp), %r8
	xorl	%r14d, %r14d
	movq	%r13, %r12
	movq	%r8, -6448(%rbp)
	movq	8(%r8), %rax
	testq	%rax, %rax
	je	.L9118
	movq	32(%rax), %rdx
	testq	%rdx, %rdx
	je	.L9118
	cmpb	$25, 16(%rdx)
	je	.L9118
	cmpb	$18, 16(%rax)
	je	.L25735
.L9119:
	cmpb	$51, 2(%r13)
	je	.L9195
.L9118:
	movzwl	(%r13), %eax
	cmpw	$66, %ax
	movl	%eax, %ecx
	je	.L25736
.L9116:
	cmpw	$63, %cx
	je	.L25737
.L9121:
	movl	$1, %eax
	testl	%eax, %eax
	jne	.L25738
	movq	-9552(%rbp), %rbx
	movzbl	16(%rbx), %r11d
	movl	%r11d, %edx
	movzbl	%dl, %r10d 
	movsbl	tree_code_type(%r10),%eax
	subl	$49, %eax
	cmpl	$71, %eax
	ja	.L9129
	mov	%eax, %r15d
	jmp	*.L9189(,%r15,8)
	.section	.rodata
	.align 8
	.align 4
.L9189:
	.quad	.L9143
	.quad	.L9145
	.quad	.L9129
	.quad	.L9129
	.quad	.L9129
	.quad	.L9129
	.quad	.L9129
	.quad	.L9129
	.quad	.L9129
	.quad	.L9129
	.quad	.L9129
	.quad	.L9145
	.quad	.L9129
	.quad	.L9129
	.quad	.L9129
	.quad	.L9129
	.quad	.L9129
	.quad	.L9129
	.quad	.L9129
	.quad	.L9129
	.quad	.L9129
	.quad	.L9129
	.quad	.L9129
	.quad	.L9129
	.quad	.L9129
	.quad	.L9129
	.quad	.L9129
	.quad	.L9129
	.quad	.L9129
	.quad	.L9129
	.quad	.L9129
	.quad	.L9129
	.quad	.L9129
	.quad	.L9129
	.quad	.L9129
	.quad	.L9129
	.quad	.L9129
	.quad	.L9129
	.quad	.L9129
	.quad	.L9129
	.quad	.L9129
	.quad	.L9129
	.quad	.L9129
	.quad	.L9129
	.quad	.L9129
	.quad	.L9129
	.quad	.L9129
	.quad	.L9129
	.quad	.L9129
	.quad	.L9129
	.quad	.L9195
	.quad	.L9130
	.quad	.L9148
	.quad	.L9129
	.quad	.L9129
	.quad	.L9129
	.quad	.L9129
	.quad	.L9129
	.quad	.L9129
	.quad	.L9129
	.quad	.L9129
	.quad	.L9129
	.quad	.L9129
	.quad	.L9129
	.quad	.L9129
	.quad	.L9148
	.quad	.L9129
	.quad	.L9129
	.quad	.L9129
	.quad	.L9129
	.quad	.L9129
	.quad	.L9135
	.text
.L9130:
	movq	-9552(%rbp), %r9
	movq	144(%r9), %rcx
	testq	%rcx, %rcx
	movq	%rcx, %r14
	jne	.L24252
	xorl	%r14d, %r14d
.L9129:
	testq	%r14, %r14
	movl	$1, %ebx
	je	.L9120
.L24252:
	cmpw	$63, (%r14)
	je	.L25739
.L9192:
	movq	%r12, %rdi
	movq	%r14, %rsi
	xorl	%ebx, %ebx
	call	rtx_equal_p
	testl	%eax, %eax
	jne	.L9120
	cmpw	$66, (%r12)
	je	.L25740
.L9195:
	movl	$1, %ebx
.L9120:
	testl	%ebx, %ebx
	je	.L9115
	cmpw	$39, (%r13)
	je	.L9115
.L9114:
	movq	-9552(%rbp), %r12
	movq	8(%r12), %rdi
	call	int_size_in_bytes
	xorl	%edx, %edx
	movq	%r13, %rsi
	movq	%rax, %rcx
	movq	%r12, %rdi
	call	store_constructor
	jmp	.L7871
.L9115:
	movq	-2712(%rbp), %rbx
	movl	$1, %esi
	xorl	%edx, %edx
	movzbl	17(%rbx), %r12d
	movzbl	62(%rbx), %r13d
	movl	%r12d, %r14d
	shrb	$5, %r13b
	shrb	$3, %r12b
	shrb	$4, %r14b
	andl	$1, %r12d
	andl	$1, %r13d
	andl	%r14d, %esi
	addl	%r12d, %r12d
	sall	$2, %r13d
	orl	%r12d, %esi
	orl	%r13d, %esi
	cmpb	$20, 16(%rbx)
	je	.L25741
.L9197:
	movq	-9552(%rbp), %r15
	leal	0(,%rdx,8), %r9d
	movq	-2712(%rbp), %rdi
	orl	%r9d, %esi
	movzbl	17(%r15), %ebx
	shrb	$4, %bl
	andl	$1, %ebx
	orl	%ebx, %esi
	call	build_qualified_type
	movl	$1, %ecx
	movq	-9552(%rbp), %rsi
	movq	%rax, %rdi
	movzbl	17(%rsi), %edx
	xorl	%esi, %esi
	shrb	$2, %dl
	andl	$1, %edx
	call	assign_temp
	movq	%rax, %r13
	jmp	.L9114
.L25741:
	cmpq	$0, 8(%rbx)
	movl	$1, %eax
	cmovne	%eax, %edx
	jmp	.L9197
.L25740:
	cmpw	$66, (%r14)
	jne	.L9195
	xorl	%esi, %esi
	movq	%r14, %rdi
	movq	%r12, %rdx
	movl	$rtx_addr_varies_p, %ecx
	call	true_dependence
	testl	%eax, %eax
	jne	.L9120
	jmp	.L9195
.L25739:
	movq	8(%r14), %r14
	cmpw	$61, (%r14)
	jne	.L9192
	cmpl	$52, 8(%r14)
	ja	.L9192
.L24466:
	xorl	%ebx, %ebx
	jmp	.L9120
.L9143:
	movq	%r12, %rdi
	movq	-9552(%rbp), %r12
	movq	32(%r12), %rsi
.L24587:
	xorl	%edx, %edx
	call	safe_from_p
	movl	%eax, %ebx
	jmp	.L9120
.L9145:
	movq	-9552(%rbp), %rdx
	movq	%r12, %rdi
	xorl	%ebx, %ebx
	movq	32(%rdx), %rsi
	xorl	%edx, %edx
	call	safe_from_p
	testl	%eax, %eax
	je	.L9120
	movq	-9552(%rbp), %r8
	movq	%r12, %rdi
	movq	40(%r8), %rsi
.L25088:
	xorl	%edx, %edx
	call	safe_from_p
	testl	%eax, %eax
	je	.L9120
	jmp	.L9195
.L9148:
	movzbl	%r11b, %eax
	subl	$41, %eax
	cmpl	$80, %eax
	ja	.L9149
	mov	%eax, %esi
	jmp	*.L9180(,%rsi,8)
	.section	.rodata
	.align 8
	.align 4
.L9180:
	.quad	.L9159
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9177
	.quad	.L9165
	.quad	.L23173
	.quad	.L9171
	.quad	.L9172
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9149
	.quad	.L9173
	.quad	.L9149
	.quad	.L9169
	.quad	.L9150
	.text
.L9150:
	movq	-9552(%rbp), %r10
	movq	32(%r10), %rdi
	call	staticp
	testl	%eax, %eax
	jne	.L9195
	movq	-9552(%rbp), %rbx
	testb	$4, 18(%rbx)
	jne	.L9195
	movq	32(%rbx), %rsi
	xorl	%edx, %edx
	movq	%r12, %rdi
	call	safe_from_p
	testl	%eax, %eax
	jne	.L9195
	movq	-9552(%rbp), %rbx
	movq	32(%rbx), %rsi
	movq	%rsi, -6448(%rbp)
	movzbq	16(%rsi), %r11
	cmpb	$100, tree_code_type(%r11)
	je	.L25742
.L9149:
	testq	%r14, %r14
	jne	.L24252
	movq	-6448(%rbp), %rdx
	xorl	%ebx, %ebx
	movzbl	16(%rdx), %edi
	call	first_rtl_op
	cmpl	%eax, %ebx
	movl	%eax, %r15d
	jge	.L23287
.L9187:
	movq	-6448(%rbp), %r10
	movslq	%ebx,%r11
	movq	32(%r10,%r11,8), %rsi
	testq	%rsi, %rsi
	jne	.L25743
.L9184:
	incl	%ebx
	cmpl	%r15d, %ebx
	jl	.L9187
.L23287:
	movq	-6448(%rbp), %rcx
	cmpb	$-110, 16(%rcx)
	jbe	.L9129
	movq	%r12, %rdi
	movq	%rcx, %rsi
	xorl	%ebx, %ebx
	call	*lang_hooks+80(%rip)
	testl	%eax, %eax
	je	.L9120
	jmp	.L9129
.L25743:
	xorl	%edx, %edx
	movq	%r12, %rdi
	call	safe_from_p
	testl	%eax, %eax
	jne	.L9184
	jmp	.L24466
.L25742:
	movq	144(%rsi), %rax
	testq	%rax, %rax
	je	.L24466
	cmpw	$66, (%rax)
	jne	.L24466
	movq	8(%rax), %r14
	jmp	.L9149
.L9159:
	cmpw	$66, (%r12)
	jne	.L9149
	movq	-9552(%rbp), %rdi
	call	get_alias_set
	xorl	%edi, %edi
	movq	%rax, %rsi
	movq	16(%r12), %rax
	testq	%rax, %rax
	je	.L9164
	movq	(%rax), %rdi
.L9164:
	call	alias_sets_conflict_p
	xorl	%ebx, %ebx
	testl	%eax, %eax
	jne	.L9120
	jmp	.L9149
.L9177:
	movq	-9552(%rbp), %rax
	movq	%r12, %rdi
	movq	40(%rax), %rsi
	jmp	.L24587
.L9165:
	movzwl	(%r12), %eax
	cmpw	$61, %ax
	je	.L25744
.L9168:
	cmpw	$66, %ax
	jne	.L9149
	jmp	.L24466
.L25744:
	cmpl	$52, 8(%r12)
	jbe	.L24466
	jmp	.L9168
.L23173:
	movl	$.LC0, %edi
	movl	$5724, %esi
	movl	$.LC18, %edx
	jmp	.L25086
.L9171:
	movq	-9552(%rbp), %r9
	movq	48(%r9), %r14
	jmp	.L9149
.L9172:
	movq	-9552(%rbp), %rcx
	movq	%r12, %rdi
	movq	32(%rcx), %rsi
	jmp	.L24587
.L9173:
	movq	-9552(%rbp), %rsi
	movq	48(%rsi), %r14
	testq	%r14, %r14
	jne	.L24252
	movzbl	18(%rsi), %eax
	movl	$1, %ebx
	testb	$16, %al
	jne	.L9120
	movq	-9552(%rbp), %r8
	orb	$16, %al
	xorl	%edx, %edx
	movq	%r12, %rdi
	movq	32(%r8), %rsi
	movb	%al, 18(%r8)
	call	safe_from_p
	testl	%eax, %eax
	jne	.L9176
	movq	-9552(%rbp), %rdi
	andb	$-17, 18(%rdi)
	jmp	.L24466
.L9176:
	movq	-9552(%rbp), %rdi
	movq	save_expr_list.2(%rip), %rdx
	xorl	%esi, %esi
	call	tree_cons
	movq	%rax, save_expr_list.2(%rip)
	jmp	.L9195
.L9169:
	movq	-9552(%rbp), %r14
	cmpq	$0, 32(%r14)
	jne	.L24466
	movq	-9552(%rbp), %r15
	movq	40(%r15), %r14
	jmp	.L9149
.L9135:
	cmpb	$2, %r11b
	je	.L25745
	xorl	%ebx, %ebx
	testb	%r11b, %r11b
	sete	%bl
	jmp	.L9120
.L25745:
	movq	-9552(%rbp), %rdi
	xorl	%ebx, %ebx
	movq	32(%rdi), %rsi
	testq	%rsi, %rsi
	jne	.L25746
.L9138:
	movq	-9552(%rbp), %rax
	movq	%r12, %rdi
	movq	(%rax), %rsi
	testq	%rsi, %rsi
	jne	.L25088
	jmp	.L9195
.L25746:
	xorl	%edx, %edx
	movq	%r12, %rdi
	call	safe_from_p
	testl	%eax, %eax
	je	.L9120
	jmp	.L9138
.L25738:
	movq	-9552(%rbp), %rsi
	xorl	%edx, %edx
	movq	%r12, %rdi
	movq	$0, save_expr_list.2(%rip)
	call	safe_from_p
	movq	save_expr_list.2(%rip), %rdx
	movl	%eax, %ebx
	testq	%rdx, %rdx
	je	.L9120
.L9128:
	movq	24(%rdx), %r14
	andb	$-17, 18(%r14)
	movq	(%rdx), %rdx
	testq	%rdx, %rdx
	jne	.L9128
	jmp	.L9120
.L25737:
	movq	8(%r13), %r12
	cmpw	$61, (%r12)
	jne	.L9121
	cmpl	$52, 8(%r12)
	jbe	.L24466
	jmp	.L9121
.L25736:
	movq	8(%r13), %rax
	movq	global_rtl+72(%rip), %rdx
	cmpq	%rdx, %rax
	je	.L9195
	cmpw	$75, (%rax)
	jne	.L9116
	cmpq	%rdx, 8(%rax)
	jne	.L9116
	jmp	.L9195
.L25735:
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L9119
	cmpb	$25, 16(%rax)
	jne	.L9119
	jmp	.L9118
	.p2align 6,,7
.L25734:
	movq	-9552(%rbp), %rsi
	testb	$2, 17(%rsi)
	je	.L8974
	jmp	.L8975
.L25733:
	movq	-2712(%rbp), %r10
	movl	$1, %esi
	xorl	%r15d, %r15d
	movq	40(%r10), %rdi
	call	tree_low_cst
	movl	$17, %esi
	movq	%rax, %r12
.L9070:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L23277
.L9067:
	movslq	%ecx,%r11
	movzbq	mode_size(%r11), %rbx
	cmpq	%rsi, %rbx
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r11), %ecx
	testl	%ecx, %ecx
	jne	.L9067
.L23277:
	testl	%edi, %edi
	je	.L9060
	movslq	%edi,%rbx
	movq	%rbx, %rcx
	salq	$4, %rcx
	addq	optab_table+240(%rip), %rcx
	cmpl	$1317, 8(%rcx)
	je	.L9069
	call	get_mode_alignment
	movl	$128, %r9d
	cmpl	%eax, %r9d
	jb	.L9069
	movzbq	mode_size(%rbx), %rsi
	movq	%r12, %rax
	xorl	%edx, %edx
	divq	%rsi
	addq	%rax, %r15
	movq	%rdx, %r12
.L9069:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L9070
.L9060:
	testq	%r12, %r12
	jne	.L25529
	movl	optimize_size(%rip), %eax
	testl	%eax, %eax
	jne	.L9073
	movq	ix86_cost(%rip), %r8
	mov	40(%r8), %edx
	cmpq	%rdx, %r15
	jb	.L8976
.L9074:
	movq	-9552(%rbp), %rdx
	movzbl	16(%rdx), %eax
	cmpb	$46, %al
	je	.L25747
	movzbl	%al, %eax
	cmpl	$28, %eax
	je	.L9094
	cmpl	$28, %eax
	ja	.L9111
	cmpl	$26, %eax
	je	.L9093
	cmpl	$26, %eax
	ja	.L9091
	cmpl	$25, %eax
	je	.L9090
.L9109:
	xorl	%ebx, %ebx
.L9089:
	movl	%ebx, %eax
.L9077:
	testl	%eax, %eax
	je	.L8975
	jmp	.L8976
.L9090:
	movq	-9552(%rbp), %rdi
	call	integer_zerop
.L24585:
	movl	%eax, %ebx
	jmp	.L9089
.L9091:
	movq	-9552(%rbp), %rcx
	xorl	%ebx, %ebx
	movq	32(%rcx), %rdi
	call	is_zeros_p
	testl	%eax, %eax
	je	.L9089
	movq	-9552(%rbp), %r9
	movq	40(%r9), %rdi
	call	is_zeros_p
	testl	%eax, %eax
	je	.L9089
.L23283:
	movl	$1, %ebx
	jmp	.L9089
.L9093:
	movq	-9552(%rbp), %rsi
	movl	$dconst0, %edi
	movl	$24, %ecx
	cld
	addq	$32, %rsi
	repz
	cmpsb
.L24584:
	sete	%dil
	movzbl	%dil, %ebx
	jmp	.L9089
.L9111:
	cmpl	$46, %eax
	je	.L9101
	cmpl	$46, %eax
	jb	.L9109
	subl	$114, %eax
	cmpl	$3, %eax
	ja	.L9109
	movq	-9552(%rbp), %r15
	movq	32(%r15), %rdi
	call	is_zeros_p
	jmp	.L24585
.L9101:
	movq	-9552(%rbp), %rcx
	movq	8(%rcx), %rax
	testq	%rax, %rax
	je	.L9102
	cmpb	$19, 16(%rax)
	je	.L25748
.L9102:
	movq	-9552(%rbp), %rax
	movq	40(%rax), %rbx
	testq	%rbx, %rbx
	je	.L23283
.L9108:
	movq	32(%rbx), %rdi
	call	is_zeros_p
	testl	%eax, %eax
	je	.L9109
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L9108
	jmp	.L23283
.L25748:
	cmpq	$0, 40(%rcx)
	jmp	.L24584
.L9094:
	movq	-9552(%rbp), %r12
	movq	32(%r12), %rbx
	testq	%rbx, %rbx
	je	.L23283
.L9100:
	movq	32(%rbx), %rdi
	call	is_zeros_p
	testl	%eax, %eax
	je	.L9109
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L9100
	jmp	.L23283
.L25747:
	movq	8(%rdx), %rax
	xorl	%r15d, %r15d
	xorl	%r12d, %r12d
	movq	40(%rdx), %rbx
	testq	%rax, %rax
	je	.L9076
	cmpb	$19, 16(%rax)
	je	.L25749
.L9076:
	testq	%rbx, %rbx
	jne	.L9083
.L23279:
	leal	0(,%r12,4), %ebx
	leal	(%r15,%r15,2), %r11d
	cmpl	%r11d, %ebx
	setge	%al
.L24586:
	movzbl	%al, %eax
	jmp	.L9077
.L9083:
	movq	32(%rbx), %rdi
	call	mostly_zeros_p
	movq	(%rbx), %rbx
	leal	1(%r12), %r10d
	testl	%eax, %eax
	cmovne	%r10d, %r12d
	incl	%r15d
	testq	%rbx, %rbx
	jne	.L9083
	jmp	.L23279
.L25749:
	testq	%rbx, %rbx
	sete	%al
	jmp	.L24586
.L9073:
	cmpq	$2, %r15
	jbe	.L8976
	jmp	.L9074
	.p2align 6,,7
.L25731:
	testq	%r13, %r13
	je	.L8975
	movq	%rax, -6440(%rbp)
	xorl	%r15d, %r15d
	movq	%r13, %r12
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L8980
	movq	32(%rax), %rdx
	testq	%rdx, %rdx
	je	.L8980
	cmpb	$25, 16(%rdx)
	je	.L8980
	cmpb	$18, 16(%rax)
	je	.L25750
.L8981:
	cmpb	$51, 2(%r13)
	je	.L9057
.L8980:
	movzwl	(%r13), %eax
	cmpw	$66, %ax
	movl	%eax, %ecx
	je	.L25751
.L8978:
	cmpw	$63, %cx
	je	.L25752
.L8983:
	movl	$1, %eax
	testl	%eax, %eax
	jne	.L25753
	movq	-9552(%rbp), %rdx
	movzbl	16(%rdx), %r9d
	movl	%r9d, %edx
	movzbl	%dl, %ecx 
	movsbl	tree_code_type(%rcx),%eax
	subl	$49, %eax
	cmpl	$71, %eax
	ja	.L8991
	mov	%eax, %r8d
	jmp	*.L9051(,%r8,8)
	.section	.rodata
	.align 8
	.align 4
.L9051:
	.quad	.L9005
	.quad	.L9007
	.quad	.L8991
	.quad	.L8991
	.quad	.L8991
	.quad	.L8991
	.quad	.L8991
	.quad	.L8991
	.quad	.L8991
	.quad	.L8991
	.quad	.L8991
	.quad	.L9007
	.quad	.L8991
	.quad	.L8991
	.quad	.L8991
	.quad	.L8991
	.quad	.L8991
	.quad	.L8991
	.quad	.L8991
	.quad	.L8991
	.quad	.L8991
	.quad	.L8991
	.quad	.L8991
	.quad	.L8991
	.quad	.L8991
	.quad	.L8991
	.quad	.L8991
	.quad	.L8991
	.quad	.L8991
	.quad	.L8991
	.quad	.L8991
	.quad	.L8991
	.quad	.L8991
	.quad	.L8991
	.quad	.L8991
	.quad	.L8991
	.quad	.L8991
	.quad	.L8991
	.quad	.L8991
	.quad	.L8991
	.quad	.L8991
	.quad	.L8991
	.quad	.L8991
	.quad	.L8991
	.quad	.L8991
	.quad	.L8991
	.quad	.L8991
	.quad	.L8991
	.quad	.L8991
	.quad	.L8991
	.quad	.L9057
	.quad	.L8992
	.quad	.L9010
	.quad	.L8991
	.quad	.L8991
	.quad	.L8991
	.quad	.L8991
	.quad	.L8991
	.quad	.L8991
	.quad	.L8991
	.quad	.L8991
	.quad	.L8991
	.quad	.L8991
	.quad	.L8991
	.quad	.L8991
	.quad	.L9010
	.quad	.L8991
	.quad	.L8991
	.quad	.L8991
	.quad	.L8991
	.quad	.L8991
	.quad	.L8997
	.text
.L8992:
	movq	-9552(%rbp), %r15
	movq	144(%r15), %rax
	testq	%rax, %rax
	movq	%rax, %r15
	jne	.L24251
	xorl	%r15d, %r15d
.L8991:
	testq	%r15, %r15
	movl	$1, %ebx
	je	.L8982
.L24251:
	cmpw	$63, (%r15)
	je	.L25754
.L9054:
	movq	%r12, %rdi
	movq	%r15, %rsi
	xorl	%ebx, %ebx
	call	rtx_equal_p
	testl	%eax, %eax
	jne	.L8982
	cmpw	$66, (%r12)
	je	.L25755
.L9057:
	movl	$1, %ebx
.L8982:
	testl	%ebx, %ebx
	je	.L8975
	jmp	.L8977
.L25755:
	cmpw	$66, (%r15)
	jne	.L9057
	xorl	%esi, %esi
	movq	%r15, %rdi
	movq	%r12, %rdx
	movl	$rtx_addr_varies_p, %ecx
	call	true_dependence
	testl	%eax, %eax
	jne	.L8982
	jmp	.L9057
.L25754:
	movq	8(%r15), %r15
	cmpw	$61, (%r15)
	jne	.L9054
	cmpl	$52, 8(%r15)
	ja	.L9054
.L24463:
	xorl	%ebx, %ebx
	jmp	.L8982
.L9005:
	movq	-9552(%rbp), %rbx
	movq	%r12, %rdi
	movq	32(%rbx), %rsi
.L24583:
	xorl	%edx, %edx
	call	safe_from_p
	movl	%eax, %ebx
	jmp	.L8982
.L9007:
	movq	-9552(%rbp), %rcx
	xorl	%edx, %edx
	movq	%r12, %rdi
	xorl	%ebx, %ebx
	movq	32(%rcx), %rsi
	call	safe_from_p
	testl	%eax, %eax
	je	.L8982
	movq	%r12, %rdi
	movq	-9552(%rbp), %r12
	movq	40(%r12), %rsi
.L25087:
	xorl	%edx, %edx
	call	safe_from_p
	testl	%eax, %eax
	je	.L8982
	jmp	.L9057
.L9010:
	movzbl	%r9b, %eax
	subl	$41, %eax
	cmpl	$80, %eax
	ja	.L9011
	mov	%eax, %edi
	jmp	*.L9042(,%rdi,8)
	.section	.rodata
	.align 8
	.align 4
.L9042:
	.quad	.L9021
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9039
	.quad	.L9027
	.quad	.L23173
	.quad	.L9033
	.quad	.L9034
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9011
	.quad	.L9035
	.quad	.L9011
	.quad	.L9031
	.quad	.L9012
	.text
.L9012:
	movq	-9552(%rbp), %rsi
	movq	32(%rsi), %rdi
	call	staticp
	testl	%eax, %eax
	jne	.L9057
	movq	-9552(%rbp), %rbx
	testb	$4, 18(%rbx)
	jne	.L9057
	movq	32(%rbx), %rsi
	xorl	%edx, %edx
	movq	%r12, %rdi
	call	safe_from_p
	testl	%eax, %eax
	jne	.L9057
	movq	-9552(%rbp), %rdx
	movq	32(%rdx), %rsi
	movq	%rsi, -6440(%rbp)
	movzbq	16(%rsi), %r9
	cmpb	$100, tree_code_type(%r9)
	je	.L25756
.L9011:
	testq	%r15, %r15
	jne	.L24251
	movq	-6440(%rbp), %r9
	xorl	%ebx, %ebx
	movzbl	16(%r9), %edi
	call	first_rtl_op
	cmpl	%eax, %ebx
	movl	%eax, -2916(%rbp)
	jge	.L23274
.L9049:
	movq	-6440(%rbp), %rdi
	movslq	%ebx,%rdx
	movq	32(%rdi,%rdx,8), %rsi
	testq	%rsi, %rsi
	jne	.L25757
.L9046:
	incl	%ebx
	cmpl	-2916(%rbp), %ebx
	jl	.L9049
.L23274:
	movq	-6440(%rbp), %rcx
	cmpb	$-110, 16(%rcx)
	jbe	.L8991
	movq	%r12, %rdi
	movq	%rcx, %rsi
	xorl	%ebx, %ebx
	call	*lang_hooks+80(%rip)
	testl	%eax, %eax
	je	.L8982
	jmp	.L8991
.L25757:
	xorl	%edx, %edx
	movq	%r12, %rdi
	call	safe_from_p
	testl	%eax, %eax
	jne	.L9046
	jmp	.L24463
.L25756:
	movq	144(%rsi), %rax
	testq	%rax, %rax
	je	.L24463
	cmpw	$66, (%rax)
	jne	.L24463
	movq	8(%rax), %r15
	jmp	.L9011
.L9021:
	cmpw	$66, (%r12)
	jne	.L9011
	movq	-9552(%rbp), %rdi
	call	get_alias_set
	xorl	%edi, %edi
	movq	%rax, %rsi
	movq	16(%r12), %rax
	testq	%rax, %rax
	je	.L9026
	movq	(%rax), %rdi
.L9026:
	call	alias_sets_conflict_p
	xorl	%ebx, %ebx
	testl	%eax, %eax
	jne	.L8982
	jmp	.L9011
.L9039:
	movq	-9552(%rbp), %rcx
	movq	%r12, %rdi
	movq	40(%rcx), %rsi
	jmp	.L24583
.L9027:
	movzwl	(%r12), %eax
	cmpw	$61, %ax
	je	.L25758
.L9030:
	cmpw	$66, %ax
	jne	.L9011
	jmp	.L24463
.L25758:
	cmpl	$52, 8(%r12)
	jbe	.L24463
	jmp	.L9030
.L9033:
	movq	-9552(%rbp), %r10
	movq	48(%r10), %r15
	jmp	.L9011
.L9034:
	movq	-9552(%rbp), %r15
	movq	%r12, %rdi
	movq	32(%r15), %rsi
	jmp	.L24583
.L9035:
	movq	-9552(%rbp), %r11
	movq	48(%r11), %r15
	testq	%r15, %r15
	jne	.L24251
	testb	$16, %sil
	movl	$1, %ebx
	jne	.L8982
	movq	-9552(%rbp), %rbx
	orb	$16, %sil
	xorl	%edx, %edx
	movq	%r12, %rdi
	movb	%sil, 18(%rbx)
	movq	32(%rbx), %rsi
	call	safe_from_p
	testl	%eax, %eax
	jne	.L9038
	movq	-9552(%rbp), %r12
	andb	$-17, 18(%r12)
	jmp	.L24463
.L9038:
	movq	-9552(%rbp), %rdi
	movq	save_expr_list.2(%rip), %rdx
	xorl	%esi, %esi
	call	tree_cons
	movq	%rax, save_expr_list.2(%rip)
	jmp	.L9057
.L9031:
	movq	-9552(%rbp), %r8
	cmpq	$0, 32(%r8)
	jne	.L24463
	movq	-9552(%rbp), %rax
	movq	40(%rax), %r15
	jmp	.L9011
.L8997:
	cmpb	$2, %r9b
	je	.L25759
	xorl	%ebx, %ebx
	testb	%r9b, %r9b
	sete	%bl
	jmp	.L8982
.L25759:
	movq	-9552(%rbp), %r10
	xorl	%ebx, %ebx
	movq	32(%r10), %rsi
	testq	%rsi, %rsi
	jne	.L25760
.L9000:
	movq	-9552(%rbp), %r11
	movq	%r12, %rdi
	movq	(%r11), %rsi
	testq	%rsi, %rsi
	jne	.L25087
	jmp	.L9057
.L25760:
	xorl	%edx, %edx
	movq	%r12, %rdi
	call	safe_from_p
	testl	%eax, %eax
	je	.L8982
	jmp	.L9000
.L25753:
	movq	-9552(%rbp), %rsi
	xorl	%edx, %edx
	movq	%r12, %rdi
	movq	$0, save_expr_list.2(%rip)
	call	safe_from_p
	movq	save_expr_list.2(%rip), %rdx
	movl	%eax, %ebx
	testq	%rdx, %rdx
	je	.L8982
.L8990:
	movq	24(%rdx), %rdi
	andb	$-17, 18(%rdi)
	movq	(%rdx), %rdx
	testq	%rdx, %rdx
	jne	.L8990
	jmp	.L8982
.L25752:
	movq	8(%r13), %r12
	cmpw	$61, (%r12)
	jne	.L8983
	cmpl	$52, 8(%r12)
	jbe	.L24463
	jmp	.L8983
.L25751:
	movq	8(%r13), %rax
	movq	global_rtl+72(%rip), %rdx
	cmpq	%rdx, %rax
	je	.L9057
	cmpw	$75, (%rax)
	jne	.L8978
	cmpq	%rdx, 8(%rax)
	jne	.L8978
	jmp	.L9057
.L25750:
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L8981
	cmpb	$25, 16(%rax)
	jne	.L8981
	jmp	.L8980
	.p2align 6,,7
.L11653:
	movq	-9552(%rbp), %rdx
	movq	const_int_rtx+512(%rip), %rsi
	xorl	%ecx, %ecx
	movq	32(%rdx), %rdi
	xorl	%edx, %edx
	call	expand_expr
	movq	cfun(%rip), %rsi
	movq	16(%rsi), %rcx
	movq	40(%rcx), %rbx
	testq	%rbx, %rbx
	je	.L23412
.L11659:
	movq	32(%rbx), %rdi
	cmpw	$24, (%rdi)
	je	.L25761
	call	emit_insn
	movq	%rax, 16(%rbx)
.L11658:
	movq	cfun(%rip), %rdi
	movq	40(%rbx), %r11
	movq	16(%rdi), %r9
	testq	%r11, %r11
	movq	%r11, %rbx
	movq	%r11, 40(%r9)
	jne	.L11659
.L23412:
	movq	-9552(%rbp), %rax
	movq	%r13, %rsi
	movl	-6220(%rbp), %r13d
	addq	$40, %rax
	testl	%r13d, %r13d
	je	.L11666
	movq	const_int_rtx+512(%rip), %rsi
.L11666:
	movq	(%rax), %rdi
	jmp	.L25098
.L25761:
	movq	8(%rdi), %r10
	movq	8(%r10), %r14
	movq	%r14, 16(%rbx)
	call	emit_insn
	jmp	.L11658
.L21780:
	movq	-9552(%rbp), %r9
	movq	-9552(%rbp), %r11
	movl	-6220(%rbp), %r13d
	movq	32(%r9), %rax
	testl	%r13d, %r13d
	movq	%rax, -5464(%rbp)
	movq	40(%r11), %rdx
	movq	%rdx, -5472(%rbp)
	je	.L24435
	movzbl	16(%rax), %ecx
	cmpb	$39, %cl
	je	.L25762
.L21781:
	xorl	%r10d, %r10d
	cmpl	$0, -6220(%rbp)
	sete	%r10b
	xorl	%r13d, %r13d
	testb	%cl, %cl
	movl	%r10d, -5612(%rbp)
	je	.L25763
	leal	-39(%rcx), %edx
	cmpb	$1, %dl
	jbe	.L22235
	cmpb	$43, %cl
	je	.L22235
	cmpb	$44, %cl
	je	.L22235
	movq	-5472(%rbp), %rax
	cmpb	$53, 16(%rax)
	je	.L25764
.L22345:
	testq	%r13, %r13
	je	.L25765
.L22601:
	movq	-5464(%rbp), %rax
	movzbl	16(%rax), %edx
	cmpb	$36, %dl
	je	.L25766
.L22656:
	call	push_temp_slots
	movq	-5472(%rbp), %rdi
	movl	-5612(%rbp), %edx
	movq	%r13, %rsi
	call	store_expr
	movq	%rax, %r13
.L25053:
	movq	%r13, %rdi
	call	preserve_temp_slots
	call	free_temp_slots
	call	pop_temp_slots
.L25054:
	movl	-5612(%rbp), %r9d
	testl	%r9d, %r9d
.L25055:
	movl	$0, %ecx
	cmove	%rcx, %r13
	jmp	.L7871
.L25766:
	movzwl	(%r13), %eax
	cmpw	$61, %ax
	je	.L22603
	cmpw	$39, %ax
	je	.L22603
	cmpb	$36, %dl
	jne	.L22656
	movq	-5472(%rbp), %r9
	cmpb	$41, 16(%r9)
	jne	.L22656
	movq	cfun(%rip), %rcx
	movzbl	424(%rcx), %r15d
	andb	$3, %r15b
	decb	%r15b
	jne	.L22656
	call	push_temp_slots
	movq	-5472(%rbp), %rdi
	call	expr_size
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movq	-5472(%rbp), %rdi
	xorl	%esi, %esi
	movq	%rax, %r12
	call	expand_expr
	movq	%r12, %rsi
	movq	sizetype_tab(%rip), %r8
	movq	%rax, %r15
	movzbl	17(%r8), %edx
	movzbl	61(%r8), %eax
	shrb	$5, %dl
	shrb	$1, %al
	andl	$1, %edx
	movzbl	%al, %edi
	call	convert_to_mode
	movl	$3, %ecx
	movq	sizetype_tab(%rip), %r14
	movl	target_flags(%rip), %edx
	movq	8(%r15), %rbx
	movq	%rax, 16(%rsp)
	andl	$33554432, %edx
	movq	%rbx, (%rsp)
	setne	%r11b
	xorl	%edx, %edx
	xorl	%eax, %eax
	movzbl	%r11b, %r9d
	addl	$4, %r9d
	movl	%r9d, 8(%rsp)
	movzbl	61(%r14), %edi
	shrb	$1, %dil
	movzbl	%dil, %esi
	movq	libfunc_table+96(%rip), %rdi
	movl	%esi, 24(%rsp)
	movq	8(%r13), %r8
	xorl	%esi, %esi
	call	emit_library_call
	jmp	.L25053
	.p2align 6,,7
.L22603:
	call	push_temp_slots
	movzbl	2(%r13), %edx
	movq	-5472(%rbp), %rdi
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	call	expand_expr
	cmpw	$39, (%r13)
	movq	%rax, -5712(%rbp)
	je	.L25767
	movq	%r13, %rdi
	movq	-5712(%rbp), %rsi
.L25113:
	call	emit_move_insn
	jmp	.L25053
.L25767:
	movq	-5472(%rbp), %rdx
	movq	8(%rdx), %rdi
	call	int_size_in_bytes
	cmpw	$39, (%r13)
	movl	%eax, -5716(%rbp)
	jne	.L25561
	movq	8(%r13), %rcx
	movq	8(%rcx), %r8
	movl	(%rcx), %edi
	cmpq	$0, 8(%r8)
	movslq	%edi,%rsi
	sete	%r14b
	leaq	15(,%rsi,8), %r11
	andq	$-16, %r11
	subq	%r11, %rsp
	leaq	32(%rsp), %rbx
	movzbl	%r14b, %r15d
	movq	%rbx, -5728(%rbp)
	movl	%r15d, -9468(%rbp)
	movl	-9468(%rbp), %r10d
	cmpl	%edi, %r10d
	movl	%r10d, -9460(%rbp)
	jge	.L24217
.L22639:
	movslq	-9460(%rbp),%rdx
	movq	8(%rcx,%rdx,8), %rdi
	movq	%rdx, -5736(%rbp)
	movl	-5716(%rbp), %ecx
	movq	8(%rdi), %rax
	movq	16(%rdi), %r12
	testl	%ecx, %ecx
	movzbl	2(%rax), %r14d
	movq	8(%r12), %r15
	movslq	%r14d,%r9
	movzbl	mode_size(%r9), %edx
	movq	%r9, -5744(%rbp)
	movl	%edx, -9464(%rbp)
	js	.L22612
	movslq	-5716(%rbp),%r10
	mov	%edx, %r11d
	leaq	(%r11,%r15), %rbx
	cmpq	%r10, %rbx
	jle	.L22612
	movl	-5716(%rbp), %esi
	subl	%r15d, %esi
	movl	%esi, -9464(%rbp)
	je	.L25560
.L22612:
	movq	-5712(%rbp), %r12
	movzwl	(%r12), %edx
	cmpw	$66, %dx
	je	.L22614
	leal	-67(%rdx), %r8d
	cmpw	$1, %r8w
	jbe	.L22616
	cmpw	$54, %dx
	je	.L22616
	cmpw	$55, %dx
	je	.L22616
	cmpw	$58, %dx
	je	.L22616
	cmpw	$134, %dx
	je	.L22616
	cmpw	$56, %dx
	je	.L22616
	cmpw	$140, %dx
	je	.L22616
.L22615:
	movq	-5712(%rbp), %r12
	movl	%r14d, %edi
	movzbl	2(%r12), %eax
	testb	%al, %al
	je	.L25037
	movzbl	%al, %edi
.L25037:
	call	gen_reg_rtx
	movq	-5712(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rax, %r12
	call	emit_move_insn
.L22614:
	movzwl	(%r12), %edx
	cmpw	$66, %dx
	je	.L25768
.L22619:
	cmpw	$65, %dx
	je	.L25769
	leal	-67(%rdx), %esi
	cmpw	$1, %si
	jbe	.L22636
	cmpw	$54, %dx
	je	.L22636
	cmpw	$55, %dx
	je	.L22636
	cmpw	$58, %dx
	je	.L22636
	cmpw	$134, %dx
	je	.L22636
	cmpw	$56, %dx
	je	.L22636
	cmpw	$140, %dx
	je	.L22636
	cmpw	$61, %dx
	je	.L25770
.L22635:
	movl	-9464(%rbp), %edx
	movslq	-5716(%rbp),%r11
	movq	%r12, %rdi
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	%r14d, %r9d
	movl	%r14d, (%rsp)
	sall	$3, %edx
	mov	%edx, %esi
	movq	%r11, 8(%rsp)
	leaq	0(,%r15,8), %rdx
	call	extract_bit_field
.L25038:
	movq	-5736(%rbp), %r12
	movq	-5728(%rbp), %r8
	movq	%rax, (%r8,%r12,8)
.L22610:
	incl	-9460(%rbp)
	movq	8(%r13), %rcx
	movl	-9460(%rbp), %eax
	cmpl	(%rcx), %eax
	jl	.L22639
.L24217:
	movq	cfun(%rip), %r15
	movq	16(%r15), %r9
	movq	40(%r9), %rbx
	testq	%rbx, %rbx
	je	.L24219
.L22645:
	movq	32(%rbx), %rdi
	cmpw	$24, (%rdi)
	je	.L25771
	call	emit_insn
	movq	%rax, 16(%rbx)
.L22644:
	movq	cfun(%rip), %r10
	movq	40(%rbx), %rdi
	movq	16(%r10), %r14
	testq	%rdi, %rdi
	movq	%rdi, %rbx
	movq	%rdi, 40(%r14)
	jne	.L22645
	movq	8(%r13), %rcx
.L24219:
	movl	-9468(%rbp), %ebx
	cmpl	(%rcx), %ebx
	jge	.L25053
.L22651:
	movslq	-9468(%rbp),%r12
	movq	-5728(%rbp), %r8
	salq	$3, %r12
	movq	8(%r12,%rcx), %rax
	movq	(%r8,%r12), %rsi
	movq	8(%rax), %rdi
	call	emit_move_insn
	incl	-9468(%rbp)
	movq	8(%r13), %rdx
	movl	-9468(%rbp), %r11d
	cmpl	(%rdx), %r11d
	movq	%rdx, %rcx
	jl	.L22651
	jmp	.L25053
.L25771:
	movq	8(%rdi), %rsi
	movq	8(%rsi), %rcx
	movq	%rcx, 16(%rbx)
	call	emit_insn
	jmp	.L22644
.L25770:
	movzbl	2(%r12), %edi
	cmpl	%r14d, %edi
	jne	.L22635
.L22636:
	movq	-5736(%rbp), %r10
	movq	-5728(%rbp), %r14
	movq	%r12, (%r14,%r10,8)
	jmp	.L22610
.L25769:
	testq	%r15, %r15
	jne	.L24453
	movq	8(%r12), %rdx
	movzbq	2(%rdx), %rsi
	movzbl	mode_size(%rsi), %ebx
	cmpl	%ebx, -9464(%rbp)
	je	.L22625
.L22626:
	movzbq	2(%rdx), %r9
	movzbq	mode_size(%r9), %rcx
	cmpq	%rcx, %r15
	je	.L25772
.L22624:
	testq	%r15, %r15
	jne	.L22779
	movzbl	2(%r12), %edi
	xorl	%edx, %edx
	movslq	%edi,%rbx
	movzbq	mode_size(%rbx), %rsi
	call	assign_stack_temp
	movq	%r12, %rsi
	movq	%rax, %r15
	movq	%rax, %rdi
	call	emit_move_insn
	movl	$1, %r8d
	movl	$1, %ecx
	movq	%r15, %rdi
	movl	%r14d, %esi
	xorl	%edx, %edx
	call	adjust_address_1
	jmp	.L25038
.L22779:
	movl	$.LC0, %edi
	movl	$2028, %esi
.L25535:
	movl	$.LC12, %edx
	jmp	.L25086
.L25772:
	movq	16(%r12), %rdx
	movzbq	2(%rdx), %r10
	movzbl	mode_size(%r10), %edi
	cmpl	%edi, -9464(%rbp)
	jne	.L22624
.L22625:
	xorl	%r11d, %r11d
	movq	-5736(%rbp), %r8
	movq	-5728(%rbp), %rax
	testq	%r15, %r15
	setne	%r11b
	leaq	(%rax,%r8,8), %rbx
	movq	8(%r12,%r11,8), %rcx
	movq	%rcx, (%rbx)
	movzwl	(%rcx), %edx
	leal	-67(%rdx), %r15d
	cmpw	$1, %r15w
	jbe	.L22610
	cmpw	$54, %dx
	je	.L22610
	cmpw	$55, %dx
	je	.L22610
	cmpw	$58, %dx
	je	.L22610
	cmpw	$134, %dx
	je	.L22610
	cmpw	$56, %dx
	je	.L22610
	cmpw	$140, %dx
	je	.L22610
	cmpw	$61, %dx
	je	.L25773
.L22630:
	movslq	-5716(%rbp),%rcx
	movl	-9464(%rbp), %r9d
	movl	%r14d, (%rsp)
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	sall	$3, %r9d
	movq	%rcx, 8(%rsp)
	mov	%r9d, %esi
	movl	$1, %ecx
	movq	(%rbx), %rdi
	movl	%r14d, %r9d
	call	extract_bit_field
	movq	%rax, (%rbx)
	jmp	.L22610
.L25773:
	movzbl	2(%rcx), %r12d
	cmpl	%r14d, %r12d
	jne	.L22630
	jmp	.L22610
.L24453:
	movq	8(%r12), %rdx
	jmp	.L22626
.L25768:
	movl	%r14d, %edi
	call	get_mode_alignment
	movq	16(%r12), %rdx
	testq	%rdx, %rdx
	je	.L22620
	cmpl	%eax, 32(%rdx)
	jae	.L22621
.L24452:
	movzwl	(%r12), %edx
	jmp	.L22619
.L22621:
	movl	%r14d, %edi
	leaq	0(,%r15,8), %rbx
	call	get_mode_alignment
	mov	%eax, %r10d
	movq	%rbx, %rax
	cqto
	idivq	%r10
	testq	%rdx, %rdx
	jne	.L24452
	movq	-5744(%rbp), %rax
	movzbl	mode_size(%rax), %edx
	cmpl	%edx, -9464(%rbp)
	jne	.L24452
	movl	%r14d, %edi
	call	gen_reg_rtx
	movl	$1, %ecx
	movq	%r15, %rdx
	movq	-5736(%rbp), %r8
	movq	-5728(%rbp), %r11
	movq	%r12, %rdi
	movl	%r14d, %esi
	leaq	(%r11,%r8,8), %rbx
	movl	$1, %r8d
	movq	%rax, (%rbx)
	call	adjust_address_1
	movq	(%rbx), %rdi
	movq	%rax, %rsi
	call	emit_move_insn
	jmp	.L22610
.L22620:
	cmpl	$8, %eax
	ja	.L24452
	jmp	.L22621
	.p2align 6,,7
.L22616:
	movq	-5712(%rbp), %r9
	movzbl	2(%r9), %edx
	movzbl	%dl, %ecx
	cmpl	%r14d, %ecx
	je	.L22614
	testb	%dl, %dl
	je	.L22614
	jmp	.L22615
.L25560:
	movl	$.LC0, %edi
	movl	$1978, %esi
	jmp	.L25535
.L25561:
	movl	$.LC0, %edi
	movl	$1953, %esi
	jmp	.L25535
	.p2align 6,,7
.L25765:
	movq	-5464(%rbp), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$4, %ecx
	call	expand_expr
	movq	%rax, %r13
	jmp	.L22601
.L25764:
	movq	%rax, %rdi
	call	aggregate_value_p
	testl	%eax, %eax
	jne	.L22345
	movq	-5472(%rbp), %r10
	movq	8(%r10), %rsi
	movq	32(%rsi), %rdx
	cmpb	$25, 16(%rdx)
	jne	.L22345
	movq	-5464(%rbp), %rcx
	movzbl	16(%rcx), %r11d
	subb	$34, %r11b
	cmpb	$1, %r11b
	ja	.L22346
	movq	144(%rcx), %rax
	testq	%rax, %rax
	je	.L25774
.L22347:
	cmpw	$61, (%rax)
	je	.L22345
.L22346:
	call	push_temp_slots
	movq	-5472(%rbp), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	call	expand_expr
	testq	%r13, %r13
	movq	%rax, %r15
	je	.L25775
.L22348:
	cmpw	$39, (%r13)
	je	.L25776
	cmpb	$51, 2(%r13)
	je	.L25777
	movq	%r13, %rdi
	movq	%r15, %rsi
	jmp	.L25113
.L25777:
	movq	-5472(%rbp), %rdi
	movq	%r13, -9424(%rbp)
	call	expr_size
	movl	$8, %edx
	movq	16(%r13), %rcx
	movq	%rax, %r14
	testq	%rcx, %rcx
	je	.L22403
	movl	32(%rcx), %edx
.L22403:
	movq	16(%r15), %rax
	testq	%rax, %rax
	je	.L22404
	cmpl	32(%rax), %edx
	jb	.L22405
.L22400:
	testq	%rax, %rax
	movl	$8, -9416(%rbp)
	je	.L22401
	movl	32(%rax), %eax
	movl	%eax, -9416(%rbp)
.L22401:
	cmpb	$51, 2(%r13)
	jne	.L25547
	cmpb	$51, 2(%r15)
	jne	.L25546
	movzwl	(%r13), %eax
	cmpl	$71, %eax
	je	.L22412
	cmpl	$66, %eax
	je	.L25778
.L22416:
	cmpl	$75, %eax
	je	.L22420
	cmpl	$78, %eax
	je	.L22420
.L22415:
	movzwl	(%r15), %eax
	cmpl	$71, %eax
	je	.L22425
	cmpl	$66, %eax
	je	.L25779
.L22429:
	cmpl	$75, %eax
	je	.L22433
	cmpl	$78, %eax
	je	.L22433
.L22428:
	movzwl	(%r14), %eax
	cmpl	$71, %eax
	je	.L22438
	cmpl	$66, %eax
	je	.L25780
.L22442:
	cmpl	$75, %eax
	je	.L22446
	cmpl	$78, %eax
	je	.L22446
.L22441:
	movq	-9424(%rbp), %rdi
	cmpw	$66, (%rdi)
	jne	.L25545
	cmpw	$66, (%r15)
	jne	.L25544
	testq	%r14, %r14
	je	.L25543
	cmpw	$54, (%r14)
	je	.L25781
.L22454:
	shrl	$3, -9416(%rbp)
	xorl	%edi, %edi
	mov	-9416(%rbp), %esi
	call	gen_rtx_CONST_INT
	movl	class_narrowest_mode+4(%rip), %r12d
	movl	$1, volatile_ok(%rip)
	movq	%rax, -5672(%rbp)
	testl	%r12d, %r12d
	je	.L24215
.L22587:
	movslq	%r12d,%rsi
	movl	movstr_optab(,%rsi,4), %edx
	movq	%rsi, -5680(%rbp)
	cmpl	$1317, %edx
	je	.L22573
	cmpw	$54, (%r14)
	je	.L25782
.L22577:
	testb	$2, target_flags+3(%rip)
	je	.L22578
	movq	-5680(%rbp), %rcx
	cmpw	$63, mode_bitsize(%rcx,%rcx)
.L25036:
	jbe	.L22573
.L22576:
	movslq	%edx,%rax
	leaq	(%rax,%rax,4), %rbx
	movq	%rax, -5688(%rbp)
	movq	insn_data+24(,%rbx,8), %rdi
	movq	(%rdi), %rax
	movq	%rdi, -5696(%rbp)
	testq	%rax, %rax
	je	.L22580
	movq	-9424(%rbp), %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L22573
.L22580:
	movq	-5696(%rbp), %r10
	movq	24(%r10), %rax
	testq	%rax, %rax
	jne	.L25783
.L22581:
	movq	-5696(%rbp), %r11
	movq	72(%r11), %rax
	testq	%rax, %rax
	je	.L22582
	xorl	%esi, %esi
	movq	-5672(%rbp), %rdi
	call	*%rax
	testl	%eax, %eax
	je	.L22573
.L22582:
	call	get_last_insn
	movl	$1, %edx
	movq	%r14, %rsi
	movl	%r12d, %edi
	movq	%rax, -5704(%rbp)
	call	convert_to_mode
	movq	-5696(%rbp), %rsi
	movq	%rax, %rbx
	movq	48(%rsi), %rax
	testq	%rax, %rax
	jne	.L25784
.L22583:
	movq	-5688(%rbp), %r8
	movq	-9424(%rbp), %rdi
	xorl	%eax, %eax
	movq	%r15, %rsi
	movq	%rbx, %rdx
	movq	-5672(%rbp), %rcx
	leaq	(%r8,%r8,4), %r12
	call	*insn_data+16(,%r12,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L24529
	movq	-5704(%rbp), %rdi
	call	delete_insns_since
.L22573:
	movq	-5680(%rbp), %rcx
	movzbl	mode_wider_mode(%rcx), %r12d
	testl	%r12d, %r12d
	jne	.L22587
.L24215:
	testb	$2, target_flags+3(%rip)
	movq	-9424(%rbp), %rbx
	movl	$0, volatile_ok(%rip)
	setne	%al
	movq	8(%rbx), %rsi
	movzbl	%al, %edi
	addl	$4, %edi
	call	copy_to_mode_reg
	testb	$2, target_flags+3(%rip)
	setne	%dl
	movq	%rax, -9456(%rbp)
	movq	8(%r15), %rsi
	movzbl	%dl, %edi
	addl	$4, %edi
	call	copy_to_mode_reg
	movq	%r14, %rsi
	movq	sizetype_tab(%rip), %r9
	movq	%rax, %rbx
	movzbl	61(%r9), %r15d
	shrb	$1, %r15b
	movzbl	%r15b, %edi
	call	copy_to_mode_reg
	cmpq	$0, fn.1(%rip)
	movq	%rax, %r14
	je	.L25785
.L22596:
	movq	global_trees+216(%rip), %rdi
	call	build_pointer_type
	movq	-9456(%rbp), %rsi
	movq	%rax, %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	global_trees+216(%rip), %rdi
	movq	%rax, %r15
	call	build_pointer_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	%r14, %rsi
	movq	%rax, (%r15)
	movq	%rax, %r12
	movq	sizetype_tab(%rip), %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	fn.1(%rip), %r8
	movq	%rax, (%r12)
	movq	(%r15), %r9
	movq	8(%r8), %rdi
	movq	(%r9), %rcx
	movq	$0, (%rcx)
	call	build_pointer_type
	movq	fn.1(%rip), %rdx
	movl	$121, %edi
	movq	%rax, %rsi
	call	build1
	xorl	%r8d, %r8d
	movq	%r15, %rcx
	movq	fn.1(%rip), %r12
	movq	%rax, %rdx
	movl	$53, %edi
	xorl	%eax, %eax
	movq	8(%r12), %r14
	movq	8(%r14), %rsi
	call	build
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	orb	$1, 17(%rax)
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	expand_expr
	movq	-9456(%rbp), %rcx
	testb	$4, 3(%rcx)
	je	.L25053
	movl	$49, %edi
	xorl	%esi, %esi
	movq	%rcx, %rdx
	call	gen_rtx_fmt_e
	movq	%rax, %rdi
	call	emit_insn
	jmp	.L25053
.L25785:
	movl	$.LC11, %edi
	call	get_identifier
	movq	global_trees+216(%rip), %rdi
	movq	%rax, fn.1(%rip)
	call	build_pointer_type
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	build_function_type
	movq	fn.1(%rip), %rsi
	movl	$30, %edi
	movq	%rax, %rdx
	call	build_decl
	movl	$1, %esi
	movl	$fn.1, %edi
	movq	%rax, fn.1(%rip)
	call	ggc_add_tree_root
	movq	fn.1(%rip), %rsi
	orb	$1, 49(%rsi)
	xorl	%esi, %esi
	movq	fn.1(%rip), %r11
	orb	$8, 18(%r11)
	movq	fn.1(%rip), %r10
	orb	$64, 50(%r10)
	movq	fn.1(%rip), %rdi
	orb	$2, 18(%rdi)
	movq	fn.1(%rip), %rdi
	call	make_decl_rtl
	movq	fn.1(%rip), %rdi
	call	assemble_external
	jmp	.L22596
.L24529:
	call	emit_insn
	movl	$0, volatile_ok(%rip)
	jmp	.L25053
.L25784:
	movq	%rbx, %rdi
	movl	%r12d, %esi
	call	*%rax
	testl	%eax, %eax
	jne	.L22583
	movq	%rbx, %rsi
	movl	%r12d, %edi
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L22583
.L25783:
	movq	%r15, %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L22573
	jmp	.L22581
.L22578:
	movq	-5680(%rbp), %r9
	cmpw	$31, mode_bitsize(%r9,%r9)
	jmp	.L25036
.L25782:
	movq	mode_mask_array(,%rsi,8), %r8
	shrq	$1, %r8
	cmpq	%r8, 8(%r14)
	jbe	.L22576
	jmp	.L22577
.L25781:
	movq	8(%r14), %r12
	xorl	%r8d, %r8d
	movl	$17, %esi
.L22467:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L24204
.L22464:
	movslq	%ecx,%r9
	movzbq	mode_size(%r9), %r10
	cmpq	%rsi, %r10
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r9), %ecx
	testl	%ecx, %ecx
	jne	.L22464
.L24204:
	testl	%edi, %edi
	je	.L22457
	movslq	%edi,%rbx
	movq	%rbx, %rsi
	salq	$4, %rsi
	addq	optab_table+240(%rip), %rsi
	cmpl	$1317, 8(%rsi)
	je	.L22466
	movq	%r8, -9592(%rbp)
	call	get_mode_alignment
	movq	-9592(%rbp), %r8
	movl	$128, %ecx
	cmpl	%eax, %ecx
	jb	.L22466
	movzbq	mode_size(%rbx), %rdi
	movq	%r12, %rax
	xorl	%edx, %edx
	divq	%rdi
	addq	%rax, %r8
	movq	%rdx, %r12
.L22466:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L22467
.L22457:
	testq	%r12, %r12
	jne	.L25529
	movl	optimize_size(%rip), %eax
	testl	%eax, %eax
	jne	.L22470
	movq	ix86_cost(%rip), %rbx
	mov	40(%rbx), %edx
	cmpq	%rdx, %r8
	jae	.L22454
.L22471:
	movq	8(%r15), %r8
	movq	-9424(%rbp), %rcx
	movq	8(%r14), %r12
	movq	-9424(%rbp), %rsi
	movq	$0, -2376(%rbp)
	movl	$0, -9436(%rbp)
	testb	$2, target_flags+3(%rip)
	movq	%r8, -2400(%rbp)
	setne	%r14b
	movq	8(%rcx), %r10
	movq	%rsi, -2432(%rbp)
	xorl	%ecx, %ecx
	movzwl	(%r10), %edx
	movq	%r10, -9432(%rbp)
	movzbl	%r14b, %r11d
	leal	5(,%r11,4), %r14d
	leal	-96(%rdx), %r9d
	cmpw	$1, %r9w
	jbe	.L22476
	cmpw	$99, %dx
	je	.L22476
	cmpw	$98, %dx
	je	.L22476
.L22475:
	movq	-9432(%rbp), %rdi
	movl	%ecx, -2416(%rbp)
	xorl	%edx, %edx
	movzwl	(%rdi), %eax
	cmpw	$96, %ax
	je	.L22478
	cmpw	$98, %ax
	je	.L22478
.L22477:
	movq	-9432(%rbp), %rax
	movq	%r15, -2408(%rbp)
	movl	%edx, -2368(%rbp)
	xorl	%ecx, %ecx
	movq	%rax, -2424(%rbp)
	movzwl	(%r8), %edx
	leal	-96(%rdx), %r15d
	cmpw	$1, %r15w
	jbe	.L22481
	cmpw	$99, %dx
	je	.L22481
	cmpw	$98, %dx
	je	.L22481
.L22480:
	movl	-2368(%rbp), %edx
	movl	%ecx, -2392(%rbp)
	movl	$0, -2388(%rbp)
	movl	$0, -2412(%rbp)
	testl	%edx, %edx
	je	.L22482
	movq	%r12, -2376(%rbp)
.L22482:
	movl	-2392(%rbp), %ebx
	movq	%r12, -2384(%rbp)
	testl	%ebx, %ebx
	je	.L22484
	movl	-2416(%rbp), %r9d
	testl	%r9d, %r9d
	jne	.L22483
.L22484:
	xorl	%r15d, %r15d
	movl	$17, %esi
.L22497:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L24207
.L22494:
	movslq	%ecx,%r10
	movzbq	mode_size(%r10), %r11
	cmpq	%rsi, %r11
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r10), %ecx
	testl	%ecx, %ecx
	jne	.L22494
.L24207:
	testl	%edi, %edi
	je	.L22487
	movslq	%edi,%rbx
	movq	%rbx, %rsi
	salq	$4, %rsi
	addq	optab_table+240(%rip), %rsi
	cmpl	$1317, 8(%rsi)
	je	.L22496
	movq	%r8, -9592(%rbp)
	call	get_mode_alignment
	movl	$128, %r8d
	cmpl	%eax, %r8d
	movq	-9592(%rbp), %r8
	jb	.L22496
	movzbq	mode_size(%rbx), %rdi
	movq	%r12, %rax
	xorl	%edx, %edx
	divq	%rdi
	addq	%rax, %r15
	movq	%rdx, %r12
.L22496:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L22497
.L22487:
	testq	%r12, %r12
	jne	.L25529
	cmpq	$2, %r15
	jbe	.L22483
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L24209
.L22505:
	movslq	%ecx,%r15
	movzbl	mode_size(%r15), %edx
	cmpl	%r14d, %edx
	cmovae	-9436(%rbp), %ecx
	movl	%ecx, -9436(%rbp)
	movzbl	mode_wider_mode(%r15), %ecx
	testl	%ecx, %ecx
	jne	.L22505
.L24209:
	movl	-2392(%rbp), %eax
	testl	%eax, %eax
	jne	.L22511
	movzwl	(%r8), %edx
	leal	-67(%rdx), %ebx
	cmpw	$1, %bx
	jbe	.L22509
	cmpw	$54, %dx
	je	.L22509
	cmpw	$55, %dx
	je	.L22509
	cmpw	$58, %dx
	je	.L22509
	cmpw	$134, %dx
	je	.L22509
	cmpw	$56, %dx
	je	.L22509
	cmpw	$140, %dx
	je	.L22509
.L22511:
	movl	-2416(%rbp), %eax
	testl	%eax, %eax
	jne	.L22483
	movq	-9432(%rbp), %r10
	movzwl	(%r10), %edx
	leal	-67(%rdx), %r9d
	cmpw	$1, %r9w
	jbe	.L22513
	cmpw	$54, %dx
	je	.L22513
	cmpw	$55, %dx
	je	.L22513
	cmpw	$58, %dx
	je	.L22513
	cmpw	$134, %dx
	je	.L22513
	cmpw	$56, %dx
	je	.L22513
	cmpw	$140, %dx
	je	.L22513
.L22483:
	cmpl	$1, %r14d
	jbe	.L22516
.L22567:
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L24212
.L22523:
	movslq	%ecx,%r11
	movzbl	mode_size(%r11), %esi
	cmpl	%r14d, %esi
	cmovae	-9436(%rbp), %ecx
	movl	%ecx, -9436(%rbp)
	movzbl	mode_wider_mode(%r11), %ecx
	testl	%ecx, %ecx
	jne	.L22523
.L24212:
	movl	-9436(%rbp), %eax
	testl	%eax, %eax
	je	.L22516
	movslq	-9436(%rbp),%r15
	movq	%r15, %r14
	salq	$4, %r14
	addq	optab_table+240(%rip), %r14
	movl	8(%r14), %ebx
	cmpl	$1317, %ebx
	je	.L22525
	movl	-9436(%rbp), %edi
	call	get_mode_alignment
	movl	$128, %r8d
	cmpl	%eax, %r8d
	jb	.L22525
	movzbq	mode_size(%r15), %rdx
	movslq	%ebx,%rdi
	movq	$0, -9448(%rbp)
	leaq	(%rdi,%rdi,4), %rcx
	cmpq	%rdx, -2384(%rbp)
	movq	insn_data+16(,%rcx,8), %r12
	movq	%rdx, -6216(%rbp)
	movq	%r12, -5664(%rbp)
	leaq	-2432(%rbp), %r12
	jb	.L22525
	movl	-2368(%rbp), %ecx
.L22565:
	testl	%ecx, %ecx
	je	.L22529
	subq	%rdx, 56(%r12)
.L22529:
	movq	(%r12), %rdi
	testq	%rdi, %rdi
	je	.L22530
	movl	16(%r12), %eax
	testl	%eax, %eax
	je	.L22531
	movl	-9436(%rbp), %esi
	movq	8(%r12), %rdx
	movl	$1, %r8d
	movq	56(%r12), %rcx
	call	adjust_automodify_address_1
.L25032:
	movq	%rax, -9448(%rbp)
.L22530:
	movl	40(%r12), %eax
	testl	%eax, %eax
	je	.L22533
	movq	24(%r12), %rdi
	movl	-9436(%rbp), %esi
	movl	$1, %r8d
	movq	32(%r12), %rdx
	movq	56(%r12), %rcx
	call	adjust_automodify_address_1
.L25033:
	cmpq	$0, (%r12)
	movq	%rax, %r14
	jne	.L25786
	movl	target_flags(%rip), %esi
	testl	$33554432, %esi
	je	.L22539
	movzbl	mode_size(%r15), %ebx
	leal	7(%rbx), %edx
	andl	$-8, %edx
.L22540:
	movq	cfun(%rip), %r11
	andl	$33554432, %esi
	movq	16(%r11), %r10
	leaq	8(%r10), %rdi
	movl	8(%r10), %ecx
	je	.L22541
	movzbl	mode_size(%r15), %eax
	addl	$7, %eax
	andl	$-8, %eax
.L25034:
	movq	%r15, %rsi
	leal	(%rax,%rcx), %r8d
	salq	$4, %rsi
	movl	%r8d, (%rdi)
	addq	optab_table+384(%rip), %rsi
	movl	8(%rsi), %eax
	cmpl	$1317, %eax
	je	.L22543
	movslq	%eax,%rbx
	leaq	(%rbx,%rbx,4), %rcx
	movq	insn_data+24(,%rcx,8), %rdx
	movq	(%rdx), %rax
	testq	%rax, %rax
	je	.L22544
	movq	%r14, %rdi
	movl	-9436(%rbp), %esi
	call	*%rax
	testl	%eax, %eax
	je	.L25787
.L22544:
	leaq	(%rbx,%rbx,4), %r9
	movq	%r14, %rdi
	xorl	%eax, %eax
	call	*insn_data+16(,%r9,8)
.L25035:
	movq	%rax, %rdi
	call	emit_insn
.L22563:
	movl	64(%r12), %eax
	testl	%eax, %eax
	movl	%eax, %ecx
	jne	.L22564
	movq	-6216(%rbp), %r14
	addq	%r14, 56(%r12)
.L22564:
	movq	48(%r12), %rsi
	movq	-6216(%rbp), %rdx
	subq	-6216(%rbp), %rsi
	cmpq	%rdx, %rsi
	movq	%rsi, 48(%r12)
	jae	.L22565
.L22525:
	movzbl	mode_size(%r15), %r14d
	cmpl	$1, %r14d
	ja	.L22567
.L22516:
	cmpq	$0, -2384(%rbp)
	je	.L25053
	jmp	.L25518
.L25787:
	movl	-9436(%rbp), %edi
	movq	%r14, %rsi
	call	force_reg
	movq	%rax, %r14
	jmp	.L22544
.L22543:
	movzbl	mode_size(%r15), %edi
	cmpl	%edx, %edi
	je	.L25788
	mov	%edx, %esi
	xorl	%edi, %edi
	negq	%rsi
	call	gen_rtx_CONST_INT
	movq	global_rtl+16(%rip), %rdx
	movl	$75, %edi
	testb	$2, target_flags+3(%rip)
	movq	%rax, %rcx
	setne	%r10b
	movzbl	%r10b, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_ee
	movq	global_rtl+16(%rip), %rdx
	movl	$100, %edi
	testb	$2, target_flags+3(%rip)
	movq	%rax, %rcx
	setne	%bl
	movzbl	%bl, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_ee
.L22551:
	movl	-9436(%rbp), %edi
	movq	%rax, %rsi
	call	gen_rtx_MEM
	xorl	%r11d, %r11d
	testq	%r11, %r11
	movq	%rax, %rbx
	je	.L22560
	movq	%rax, %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	call	set_mem_attributes
	movl	flag_optimize_sibling_calls(%rip), %eax
	testl	%eax, %eax
	jne	.L25789
.L22560:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	call	emit_move_insn
	jmp	.L22563
.L25789:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	call	set_mem_alias_set
	jmp	.L22560
.L25788:
	testb	$2, target_flags+3(%rip)
	movq	global_rtl+16(%rip), %rdx
	movl	$96, %edi
	setne	%al
	movzbl	%al, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_e
	jmp	.L22551
.L22541:
	movzbl	mode_size(%r15), %eax
	incl	%eax
	andl	$-2, %eax
	jmp	.L25034
.L22539:
	movzbl	mode_size(%r15), %r9d
	leal	1(%r9), %edx
	andl	$-2, %edx
	jmp	.L22540
.L25786:
	movq	%rax, %rsi
	movq	-9448(%rbp), %rdi
	xorl	%eax, %eax
	call	*-5664(%rbp)
	jmp	.L25035
.L22533:
	movq	24(%r12), %rdi
	movl	-9436(%rbp), %esi
	movl	$1, %ecx
	movq	56(%r12), %rdx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L25033
.L22531:
	movl	-9436(%rbp), %esi
	movq	56(%r12), %rdx
	movl	$1, %ecx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L25032
.L22513:
	movq	-9432(%rbp), %rdi
	call	copy_addr_to_reg
	movq	%rax, -2424(%rbp)
	jmp	.L22483
.L22509:
	movq	%r8, %rdi
	call	copy_addr_to_reg
	movq	%rax, -2400(%rbp)
	jmp	.L22511
.L22481:
	movl	$1, %ecx
	jmp	.L22480
.L22478:
	movl	$1, %edx
	jmp	.L22477
.L22476:
	movl	$1, %ecx
	jmp	.L22475
.L22470:
	cmpq	$2, %r8
	ja	.L22454
	jmp	.L22471
.L22446:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r14), %rdi
	movq	%rax, %r12
	call	protect_from_queue
	cmpq	8(%r14), %r12
	movq	%rax, %rbx
	je	.L25790
.L22448:
	movq	%r14, %rdi
	call	copy_rtx
	movq	%rax, %r14
	movq	%r12, 8(%rax)
	movq	%rbx, 16(%rax)
	jmp	.L22441
.L25790:
	cmpq	16(%r14), %rax
	jne	.L22448
	jmp	.L22441
.L25780:
	cmpb	$51, 2(%r14)
	je	.L22439
	movq	8(%r14), %r12
	cmpw	$71, (%r12)
	je	.L25791
.L22439:
	cmpl	$66, %eax
	jne	.L22442
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%r14), %rax
	movq	%rax, %rbx
	je	.L22441
	movq	%r14, %rdi
	call	copy_rtx
	movq	%rax, %r14
	movq	%rbx, 8(%rax)
	jmp	.L22441
.L25791:
	movq	8(%r12), %rsi
	movq	%r14, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%r12)
	movq	%rax, %rbx
	je	.L22440
	movzbl	2(%r14), %edi
	call	gen_reg_rtx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L22441
.L22440:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L25031:
	movq	%rax, %r14
	jmp	.L22441
.L22438:
	cmpq	$0, 16(%r14)
	je	.L25792
	movq	24(%r14), %rax
	testq	%rax, %rax
	jne	.L25031
	movq	8(%r14), %rbx
	movzbl	2(%rbx), %edi
	call	gen_reg_rtx
	movq	8(%r14), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r14), %r14
	jmp	.L22441
.L25792:
	movq	8(%r14), %rdi
	call	copy_to_reg
	jmp	.L25031
.L22433:
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r15), %rdi
	movq	%rax, %r12
	call	protect_from_queue
	cmpq	8(%r15), %r12
	movq	%rax, %rbx
	je	.L25793
.L22435:
	movq	%r15, %rdi
	call	copy_rtx
	movq	%rax, %r15
	movq	%r12, 8(%rax)
	movq	%rbx, 16(%rax)
	jmp	.L22428
.L25793:
	cmpq	16(%r15), %rax
	jne	.L22435
	jmp	.L22428
.L25779:
	cmpb	$51, 2(%r15)
	je	.L22426
	movq	8(%r15), %r12
	cmpw	$71, (%r12)
	je	.L25794
.L22426:
	cmpl	$66, %eax
	jne	.L22429
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%r15), %rax
	movq	%rax, %rbx
	je	.L22428
	movq	%r15, %rdi
	call	copy_rtx
	movq	%rax, %r15
	movq	%rbx, 8(%rax)
	jmp	.L22428
.L25794:
	movq	8(%r12), %rsi
	movq	%r15, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%r12)
	movq	%rax, %rbx
	je	.L22427
	movzbl	2(%r15), %edi
	call	gen_reg_rtx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, %r15
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L22428
.L22427:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L25030:
	movq	%rax, %r15
	jmp	.L22428
.L22425:
	cmpq	$0, 16(%r15)
	je	.L25795
	movq	24(%r15), %rax
	testq	%rax, %rax
	jne	.L25030
	movq	8(%r15), %rdx
	movzbl	2(%rdx), %edi
	call	gen_reg_rtx
	movq	8(%r15), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r15)
	call	gen_move_insn
	movq	16(%r15), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r15), %r15
	jmp	.L22428
.L25795:
	movq	8(%r15), %rdi
	call	copy_to_reg
	jmp	.L25030
.L22420:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, %r12
	call	protect_from_queue
	cmpq	8(%r13), %r12
	movq	%rax, %rbx
	je	.L25796
.L22422:
	movq	%r13, %rdi
	call	copy_rtx
	movq	%rax, -9424(%rbp)
	movq	%r12, 8(%rax)
	movq	-9424(%rbp), %rsi
	movq	%rbx, 16(%rsi)
	jmp	.L22415
.L25796:
	cmpq	16(%r13), %rax
	jne	.L22422
	jmp	.L22415
.L25778:
	jne	.L22416
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%r13), %rax
	movq	%rax, %rbx
	je	.L22415
	movq	%r13, %rdi
	call	copy_rtx
	movq	%rax, -9424(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L22415
.L22412:
	testq	%rcx, %rcx
	je	.L25797
	movq	24(%r13), %rcx
	testq	%rcx, %rcx
	movq	%rcx, -9424(%rbp)
	jne	.L22415
	movq	8(%r13), %r8
	movzbl	2(%r8), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %r11
	movq	%r11, -9424(%rbp)
	jmp	.L22415
.L25797:
	movq	8(%r13), %rdi
	call	copy_to_reg
	movq	%rax, -9424(%rbp)
	jmp	.L22415
.L22405:
	testq	%rcx, %rcx
	movl	$8, -9416(%rbp)
	je	.L22401
	movl	32(%rcx), %r10d
	movl	%r10d, -9416(%rbp)
	jmp	.L22401
.L22404:
	cmpl	$7, %edx
	ja	.L22400
	jmp	.L22405
.L25776:
	movq	-5472(%rbp), %r8
	movq	8(%r8), %rdi
	call	int_size_in_bytes
	cmpw	$39, (%r13)
	movl	%eax, -5620(%rbp)
	jne	.L25561
	movq	8(%r13), %rcx
	movq	8(%rcx), %rsi
	movl	(%rcx), %r14d
	cmpq	$0, 8(%rsi)
	movslq	%r14d,%rdi
	sete	%dl
	leaq	15(,%rdi,8), %r12
	andq	$-16, %r12
	subq	%r12, %rsp
	leaq	32(%rsp), %rbx
	movzbl	%dl, %r9d
	movq	%rbx, -5632(%rbp)
	movl	%r9d, -9412(%rbp)
	movl	-9412(%rbp), %eax
	cmpl	%r14d, %eax
	movl	%eax, -9404(%rbp)
	jge	.L24198
.L22384:
	movslq	-9404(%rbp),%r14
	movq	8(%rcx,%r14,8), %rbx
	movq	%r14, -5640(%rbp)
	movl	-5620(%rbp), %ecx
	movq	8(%rbx), %rax
	movq	16(%rbx), %r8
	testl	%ecx, %ecx
	movzbl	2(%rax), %r14d
	movq	8(%r8), %r11
	movq	%r11, -5648(%rbp)
	movslq	%r14d,%r10
	movzbl	mode_size(%r10), %edx
	movq	%r10, -5656(%rbp)
	movl	%edx, -9408(%rbp)
	js	.L22357
	mov	%edx, %edi
	movslq	-5620(%rbp),%r12
	addq	-5648(%rbp), %rdi
	cmpq	%r12, %rdi
	jle	.L22357
	movl	-5620(%rbp), %r9d
	subl	-5648(%rbp), %r9d
	movl	%r9d, -9408(%rbp)
	je	.L25560
.L22357:
	movzwl	(%r15), %edx
	movq	%r15, %r12
	cmpw	$66, %dx
	je	.L22359
	leal	-67(%rdx), %esi
	cmpw	$1, %si
	jbe	.L22361
	cmpw	$54, %dx
	je	.L22361
	cmpw	$55, %dx
	je	.L22361
	cmpw	$58, %dx
	je	.L22361
	cmpw	$134, %dx
	je	.L22361
	cmpw	$56, %dx
	je	.L22361
	cmpw	$140, %dx
	je	.L22361
.L22360:
	movzbl	2(%r15), %eax
	movl	%r14d, %edi
	testb	%al, %al
	je	.L25028
	movzbl	%al, %edi
.L25028:
	call	gen_reg_rtx
	movq	%r15, %rsi
	movq	%rax, %rdi
	movq	%rax, %r12
	call	emit_move_insn
.L22359:
	movzwl	(%r12), %edx
	cmpw	$66, %dx
	je	.L25798
.L22364:
	cmpw	$65, %dx
	je	.L25799
	leal	-67(%rdx), %r11d
	cmpw	$1, %r11w
	jbe	.L22381
	cmpw	$54, %dx
	je	.L22381
	cmpw	$55, %dx
	je	.L22381
	cmpw	$58, %dx
	je	.L22381
	cmpw	$134, %dx
	je	.L22381
	cmpw	$56, %dx
	je	.L22381
	cmpw	$140, %dx
	je	.L22381
	cmpw	$61, %dx
	je	.L25800
.L22380:
	movslq	-5620(%rbp),%rdi
	movl	-9408(%rbp), %eax
	movl	$1, %ecx
	movq	-5648(%rbp), %rdx
	xorl	%r8d, %r8d
	movl	%r14d, %r9d
	movl	%r14d, (%rsp)
	sall	$3, %eax
	movq	%rdi, 8(%rsp)
	mov	%eax, %esi
	salq	$3, %rdx
	movq	%r12, %rdi
	call	extract_bit_field
.L25029:
	movq	-5640(%rbp), %r9
	movq	-5632(%rbp), %r12
	movq	%rax, (%r12,%r9,8)
.L22355:
	incl	-9404(%rbp)
	movq	8(%r13), %rcx
	movl	-9404(%rbp), %esi
	cmpl	(%rcx), %esi
	jl	.L22384
.L24198:
	movq	cfun(%rip), %r10
	movq	16(%r10), %r15
	movq	40(%r15), %rbx
	testq	%rbx, %rbx
	je	.L24200
.L22390:
	movq	32(%rbx), %rdi
	cmpw	$24, (%rdi)
	je	.L25801
	call	emit_insn
	movq	%rax, 16(%rbx)
.L22389:
	movq	cfun(%rip), %rdx
	movq	40(%rbx), %r14
	movq	16(%rdx), %r8
	testq	%r14, %r14
	movq	%r14, %rbx
	movq	%r14, 40(%r8)
	jne	.L22390
	movq	8(%r13), %rcx
.L24200:
	movl	-9412(%rbp), %ebx
	cmpl	(%rcx), %ebx
	jge	.L25053
.L22396:
	movslq	-9412(%rbp),%r9
	movq	-5632(%rbp), %r12
	salq	$3, %r9
	movq	8(%r9,%rcx), %rax
	movq	(%r12,%r9), %rsi
	movq	8(%rax), %rdi
	call	emit_move_insn
	incl	-9412(%rbp)
	movq	8(%r13), %rcx
	movl	-9412(%rbp), %edi
	cmpl	(%rcx), %edi
	jl	.L22396
	jmp	.L25053
.L25801:
	movq	8(%rdi), %r11
	movq	8(%r11), %rcx
	movq	%rcx, 16(%rbx)
	call	emit_insn
	jmp	.L22389
.L25800:
	movzbl	2(%r12), %edx
	cmpl	%r14d, %edx
	jne	.L22380
.L22381:
	movq	-5640(%rbp), %r8
	movq	-5632(%rbp), %r14
	movq	%r12, (%r14,%r8,8)
	jmp	.L22355
.L25799:
	cmpq	$0, -5648(%rbp)
	jne	.L24449
	movq	8(%r12), %rdx
	movzbq	2(%rdx), %rsi
	movzbl	mode_size(%rsi), %ebx
	cmpl	%ebx, -9408(%rbp)
	je	.L22370
.L22371:
	movzbq	2(%rdx), %r10
	movzbq	mode_size(%r10), %rcx
	cmpq	%rcx, -5648(%rbp)
	je	.L25802
.L22369:
	cmpq	$0, -5648(%rbp)
	jne	.L22779
	movzbl	2(%r12), %edi
	xorl	%edx, %edx
	movslq	%edi,%rbx
	movzbq	mode_size(%rbx), %rsi
	call	assign_stack_temp
	movq	%r12, %rsi
	movq	%rax, %rbx
	movq	%rax, %rdi
	call	emit_move_insn
	movl	$1, %r8d
	movl	$1, %ecx
	movq	%rbx, %rdi
	movl	%r14d, %esi
	xorl	%edx, %edx
	call	adjust_address_1
	jmp	.L25029
.L25802:
	movq	16(%r12), %r8
	movzbq	2(%r8), %rdx
	movzbl	mode_size(%rdx), %r11d
	cmpl	%r11d, -9408(%rbp)
	jne	.L22369
.L22370:
	xorl	%edi, %edi
	movq	-5640(%rbp), %r9
	movq	-5632(%rbp), %rax
	cmpq	$0, -5648(%rbp)
	setne	%dil
	leaq	(%rax,%r9,8), %rbx
	movq	8(%r12,%rdi,8), %rcx
	movq	%rcx, (%rbx)
	movzwl	(%rcx), %edx
	leal	-67(%rdx), %r12d
	cmpw	$1, %r12w
	jbe	.L22355
	cmpw	$54, %dx
	je	.L22355
	cmpw	$55, %dx
	je	.L22355
	cmpw	$58, %dx
	je	.L22355
	cmpw	$134, %dx
	je	.L22355
	cmpw	$56, %dx
	je	.L22355
	cmpw	$140, %dx
	je	.L22355
	cmpw	$61, %dx
	je	.L25803
.L22375:
	movslq	-5620(%rbp),%rcx
	movl	-9408(%rbp), %r10d
	movl	%r14d, (%rsp)
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movl	%r14d, %r9d
	sall	$3, %r10d
	movq	%rcx, 8(%rsp)
	mov	%r10d, %esi
	movl	$1, %ecx
	movq	(%rbx), %rdi
	call	extract_bit_field
	movq	%rax, (%rbx)
	jmp	.L22355
.L25803:
	movzbl	2(%rcx), %esi
	cmpl	%r14d, %esi
	jne	.L22375
	jmp	.L22355
.L24449:
	movq	8(%r12), %rdx
	jmp	.L22371
.L25798:
	movl	%r14d, %edi
	call	get_mode_alignment
	movq	16(%r12), %rdx
	testq	%rdx, %rdx
	je	.L22365
	cmpl	%eax, 32(%rdx)
	jae	.L22366
.L24448:
	movzwl	(%r12), %edx
	jmp	.L22364
.L22366:
	movq	-5648(%rbp), %rbx
	movl	%r14d, %edi
	call	get_mode_alignment
	mov	%eax, %r11d
	salq	$3, %rbx
	movq	%rbx, %rax
	cqto
	idivq	%r11
	testq	%rdx, %rdx
	jne	.L24448
	movq	-5656(%rbp), %r8
	movzbl	mode_size(%r8), %edx
	cmpl	%edx, -9408(%rbp)
	jne	.L24448
	movl	%r14d, %edi
	call	gen_reg_rtx
	movl	$1, %r8d
	movl	$1, %ecx
	movq	-5632(%rbp), %rdi
	movq	-5640(%rbp), %r9
	movl	%r14d, %esi
	movq	-5648(%rbp), %rdx
	leaq	(%rdi,%r9,8), %rbx
	movq	%r12, %rdi
	movq	%rax, (%rbx)
	call	adjust_address_1
	movq	(%rbx), %rdi
	movq	%rax, %rsi
	call	emit_move_insn
	jmp	.L22355
.L22365:
	cmpl	$8, %eax
	ja	.L24448
	jmp	.L22366
.L22361:
	movzbl	2(%r15), %edx
	movzbl	%dl, %ecx
	cmpl	%r14d, %ecx
	je	.L22359
	testb	%dl, %dl
	je	.L22359
	jmp	.L22360
.L25775:
	movq	-5464(%rbp), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$4, %ecx
	call	expand_expr
	movq	%rax, %r13
	jmp	.L22348
.L25774:
	movq	%rcx, %rdi
	xorl	%esi, %esi
	call	make_decl_rtl
	movq	-5464(%rbp), %r15
	movq	144(%r15), %rax
	jmp	.L22347
	.p2align 6,,7
.L22235:
	movl	$0, -2696(%rbp)
	xorl	%ebx, %ebx
	leaq	-2672(%rbp), %r12
	call	push_temp_slots
	movq	-5464(%rbp), %r13
	movq	global_trees+120(%rip), %r8
	movl	$0, -9472(%rbp)
	movq	global_trees+136(%rip), %rdi
	movq	$0, -2704(%rbp)
	movq	%r8, -9488(%rbp)
	movq	%rdi, -9480(%rbp)
	movzbl	16(%r13), %eax
	cmpb	$39, %al
	je	.L25804
	cmpb	$40, %al
	je	.L25805
	movq	-5464(%rbp), %r15
	movq	8(%r15), %rdx
	movzbl	61(%rdx), %r8d
	movzbl	17(%rdx), %r10d
	shrb	$1, %r8b
	shrb	$5, %r10b
	movzbl	%r8b, %edi
	movl	%r10d, %r14d
	andl	$1, %r14d
	movl	%edi, -9472(%rbp)
	cmpl	$51, -9472(%rbp)
	movl	%r14d, -5616(%rbp)
	je	.L25806
	movslq	-9472(%rbp),%rsi
	movzwq	mode_bitsize(%rsi,%rsi), %rdx
	movq	%rdx, -2672(%rbp)
.L22238:
	testq	%rbx, %rbx
	jne	.L25807
.L22305:
	movzbl	16(%r13), %edx
	cmpb	$40, %dl
	je	.L25808
	cmpb	$39, %dl
	je	.L25809
	leal	-43(%rdx), %ebx
	cmpb	$1, %bl
	jbe	.L25810
	cmpb	$57, %dl
	jne	.L22263
	movq	-2704(%rbp), %rax
	leaq	-2704(%rbp), %r9
	movq	8(%r13), %rdx
	testq	%rax, %rax
	je	.L22264
	movq	(%rax), %r8
.L22265:
	testq	%r8, %r8
	je	.L24192
	movq	128(%rdx), %rsi
.L22298:
	movq	24(%r8), %rdi
	testq	%rdi, %rdi
	movq	%rdi, %rdx
	je	.L24194
	.p2align 4,,7
.L22283:
	movq	8(%rdi), %r12
	cmpq	%rsi, 128(%r12)
	je	.L25811
	movzbl	16(%rdi), %eax
	cmpb	$47, %al
	je	.L22279
	cmpb	$51, %al
	je	.L22279
	movzbl	%al, %ecx 
	movzbl	tree_code_type(%rcx), %eax
	cmpb	$114, %al
	je	.L22282
	cmpb	$49, %al
	je	.L22282
	cmpb	$50, %al
	je	.L22282
	cmpb	$101, %al
	je	.L22282
	xorl	%edi, %edi
	.p2align 4,,7
.L22278:
	testq	%rdi, %rdi
	jne	.L22283
.L24194:
	testq	%rdx, %rdx
	je	.L24196
	.p2align 4,,7
.L22297:
	movq	8(%rdx), %rcx
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L22289
	cmpb	$15, %al
	je	.L22289
.L22286:
	movzbl	16(%rdx), %eax
	cmpb	$47, %al
	je	.L22293
	cmpb	$51, %al
	je	.L22293
	movzbl	%al, %r14d 
	movzbl	tree_code_type(%r14), %eax
	cmpb	$114, %al
	je	.L22296
	cmpb	$49, %al
	je	.L22296
	cmpb	$50, %al
	je	.L22296
	cmpb	$101, %al
	je	.L22296
	xorl	%edx, %edx
	.p2align 4,,7
.L22292:
	testq	%rdx, %rdx
	jne	.L22297
.L24196:
	movq	(%r8), %r8
	testq	%r8, %r8
	jne	.L22298
.L24192:
	xorl	%edi, %edi
.L22276:
	testq	%rdi, %rdi
	je	.L22247
	movq	%rdi, %r13
	jmp	.L22305
.L22247:
	movq	-9488(%rbp), %rdi
	xorl	%esi, %esi
	call	host_integerp
	testl	%eax, %eax
	je	.L22306
	movq	sizetype_tab+24(%rip), %rdi
	movq	-9488(%rbp), %rsi
	call	convert
	movq	global_trees+152(%rip), %rdx
	movl	$61, %edi
	movq	%rax, %rsi
	call	size_binop
	testq	%rax, %rax
	movq	%rax, %rsi
	je	.L22306
	movq	-9480(%rbp), %rdx
	movl	$59, %edi
	call	size_binop
	testq	%rax, %rax
	movq	%rax, %rbx
	jne	.L25812
.L22306:
	movq	-9480(%rbp), %rdi
	xorl	%esi, %esi
	call	tree_low_cst
	movq	%rax, -2680(%rbp)
	movq	-9488(%rbp), %rax
	movq	%rax, -2688(%rbp)
.L22307:
	movl	-9472(%rbp), %r9d
	testl	%r9d, %r9d
	movl	%r9d, -2692(%rbp)
	jne	.L22309
	movl	-5612(%rbp), %r12d
	testl	%r12d, %r12d
	jne	.L25813
.L22309:
	movq	%r13, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	call	expand_expr
	movq	-2688(%rbp), %rdi
	movq	%rax, %r12
	movq	%rax, %r15
	testq	%rdi, %rdi
	jne	.L25814
.L22310:
	cmpw	$66, (%r12)
	je	.L25815
.L22320:
	movl	-2696(%rbp), %r10d
	testl	%r10d, %r10d
	je	.L22335
	cmpw	$66, (%r12)
	je	.L25816
.L22335:
	movq	-5464(%rbp), %rbx
	cmpb	$39, 16(%rbx)
	je	.L25817
.L22337:
	cmpw	$66, (%r12)
	je	.L25818
.L22339:
	movq	-5464(%rbp), %rdi
	call	get_alias_set
	movl	-5612(%rbp), %r15d
	movl	-2692(%rbp), %ecx
	movq	%rax, %rdi
	movq	-2672(%rbp), %rsi
	movq	-2680(%rbp), %rdx
	testl	%r15d, %r15d
	je	.L22341
	movq	-5464(%rbp), %rax
	movq	8(%rax), %r14
	movzbl	61(%r14), %r8d
	shrb	$1, %r8b
	movzbl	%r8b, %r9d
.L22342:
	movl	-5616(%rbp), %eax
	movq	-5472(%rbp), %r8
	movl	%eax, (%rsp)
	movq	8(%r13), %rbx
	movl	%edi, 16(%rsp)
	movq	%r12, %rdi
	movq	%rbx, 8(%rsp)
	call	store_field
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	preserve_temp_slots
	call	free_temp_slots
	call	pop_temp_slots
	movl	-5612(%rbp), %r13d
	testl	%r13d, %r13d
	jne	.L25819
.L22343:
	xorl	%r13d, %r13d
	jmp	.L7871
.L25819:
	movq	-5464(%rbp), %rdi
	movq	-5472(%rbp), %rsi
	movq	8(%rdi), %rdx
	movzbl	61(%rdx), %r12d
	shrb	$1, %r12b
	movzbl	%r12b, %edi
.L25112:
	movq	8(%rsi), %rcx
	movzbl	61(%rcx), %r9d
	movzbl	17(%rdx), %ecx
	movq	%rbx, %rdx
	shrb	$1, %r9b
	shrb	$5, %cl
	movzbl	%r9b, %esi
	andl	$1, %ecx
.L25084:
	call	convert_modes
	jmp	.L23191
.L22341:
	xorl	%r9d, %r9d
	jmp	.L22342
.L25818:
	movq	-5464(%rbp), %rdi
	call	can_address_p
	testl	%eax, %eax
	jne	.L22339
	cmpq	%r15, %r12
	je	.L25820
.L22340:
	orb	$1, 3(%r12)
	jmp	.L22339
.L25820:
	movq	%r12, %rdi
	call	copy_rtx
	movq	%rax, %r12
	jmp	.L22340
	.p2align 6,,7
.L25817:
	movq	40(%rbx), %r11
	testb	$16, 17(%r11)
	je	.L22337
	cmpq	%r15, %r12
	je	.L25821
.L22338:
	orb	$4, 3(%r12)
	jmp	.L22337
.L25821:
	movq	%r12, %rdi
	call	copy_rtx
	movq	%rax, %r12
	jmp	.L22338
	.p2align 6,,7
.L25816:
	cmpq	%r15, %r12
	je	.L25822
.L22336:
	orb	$8, 3(%r12)
	jmp	.L22335
.L25822:
	movq	%r12, %rdi
	call	copy_rtx
	movq	%rax, %r12
	jmp	.L22336
	.p2align 6,,7
.L25815:
	movq	16(%r12), %rax
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	.L22322
	movq	8(%rax), %rbx
.L22322:
	movq	%r12, %rdi
	call	shallow_copy_rtx
	xorl	%edx, %edx
	movq	-5464(%rbp), %rsi
	movq	%rax, %r12
	movq	%rax, %rdi
	call	set_mem_attributes
	movq	16(%r12), %rax
	testq	%rax, %rax
	je	.L22324
	cmpq	%rbx, 8(%rax)
.L25027:
	je	.L22320
	testq	%rax, %rax
	je	.L22320
	movq	16(%rax), %rsi
	testq	%rsi, %rsi
	je	.L22320
	movq	-2680(%rbp), %r9
	cmpq	$-1, %r9
	leaq	7(%r9), %r14
	movq	%r9, %rax
	cmovle	%r14, %rax
	sarq	$3, %rax
	testq	%rax, %rax
	je	.L22320
	movq	8(%rsi), %rsi
	xorl	%edi, %edi
	subq	%rax, %rsi
	call	gen_rtx_CONST_INT
	movq	%r12, %rdi
	movq	%rax, %rsi
	call	set_mem_offset
	jmp	.L22320
	.p2align 6,,7
.L22324:
	testq	%rbx, %rbx
	jmp	.L25027
.L25814:
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$1, %ecx
	call	expand_expr
	cmpw	$66, (%r12)
	movq	%rax, %r14
	jne	.L25507
	movzbl	2(%rax), %ecx
	movl	ptr_mode(%rip), %edi
	cmpl	%edi, %ecx
	je	.L22312
	movq	%rax, %rsi
	xorl	%edx, %edx
	call	convert_to_mode
	movq	%rax, %r14
.L22312:
	movl	(%r12), %eax
	andl	$16777215, %eax
	cmpl	$3342402, %eax
	je	.L25823
.L22313:
	movq	-5464(%rbp), %rax
	movq	-2688(%rbp), %rdi
	movq	8(%rax), %rbx
	call	highest_pow2_factor
	movq	%r12, %rdi
	movl	64(%rbx), %esi
	shrl	$3, %esi
	mov	%esi, %edx
	movq	%r14, %rsi
	cmpq	%rax, %rdx
	cmovl	%rax, %rdx
	call	offset_address
	movq	%rax, %r12
	jmp	.L22310
.L25823:
	movq	8(%r12), %r11
	cmpb	$0, 2(%r11)
	je	.L22313
	movq	-2672(%rbp), %rdx
	testq	%rdx, %rdx
	jle	.L22313
	movq	-2680(%rbp), %rax
	movq	%rdx, %r10
	cqto
	idivq	%r10
	testq	%rdx, %rdx
	jne	.L22313
	movl	-2692(%rbp), %edi
	call	get_mode_alignment
	movq	-2672(%rbp), %rdx
	mov	%eax, %r8d
	movq	%rdx, %rax
	cqto
	idivq	%r8
	testq	%rdx, %rdx
	jne	.L22313
	movl	-2692(%rbp), %edi
	call	get_mode_alignment
	movq	16(%r12), %rdx
	testq	%rdx, %rdx
	je	.L22314
	cmpl	%eax, 32(%rdx)
.L25026:
	jne	.L22313
	movq	-2680(%rbp), %rdx
	movl	-2692(%rbp), %esi
	movq	%r12, %rdi
	movl	$1, %ecx
	movl	$1, %r8d
	cmpq	$-1, %rdx
	leaq	7(%rdx), %rbx
	cmovle	%rbx, %rdx
	sarq	$3, %rdx
	call	adjust_address_1
	movq	$0, -2680(%rbp)
	movq	%rax, %r12
	jmp	.L22313
.L22314:
	cmpl	$8, %eax
	jmp	.L25026
.L25507:
	movl	$.LC0, %edi
	movl	$3686, %esi
	movl	$.LC19, %edx
	jmp	.L25086
	.p2align 6,,7
.L25813:
	movq	%r13, %rdi
	call	stabilize_reference
	movq	%rax, %r13
	jmp	.L22309
.L25812:
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	host_integerp
	testl	%eax, %eax
	je	.L22306
	movq	%rbx, %rdi
	xorl	%esi, %esi
	call	tree_low_cst
	movq	$0, -2688(%rbp)
	movq	%rax, -2680(%rbp)
	jmp	.L22307
	.p2align 6,,7
.L22296:
	movq	32(%rdx), %rdx
	jmp	.L22292
.L22293:
	movq	40(%rdx), %rdx
	jmp	.L22292
.L22289:
	movq	8(%rcx), %r11
	cmpq	%rsi, 128(%r11)
	jne	.L22286
	testq	%r9, %r9
	je	.L22290
	movq	%r8, (%r9)
.L22290:
	movl	$41, %edi
	call	build1
	movq	%rax, %rdi
	jmp	.L22276
	.p2align 6,,7
.L22282:
	movq	32(%rdi), %rdi
	jmp	.L22278
.L22279:
	movq	40(%rdi), %rdi
	jmp	.L22278
.L25811:
	testq	%r9, %r9
	je	.L22276
	movq	%r8, (%r9)
	jmp	.L22276
.L22264:
	movq	placeholder_list(%rip), %r8
	jmp	.L22265
.L22263:
	leal	-116(%rdx), %r10d
	cmpb	$1, %r10b
	jbe	.L22250
	leal	-114(%rdx), %edi
	cmpb	$1, %dil
	ja	.L22247
	movq	32(%r13), %rsi
	movq	8(%r13), %rbx
	movq	8(%rsi), %rdx
	movzbl	61(%rbx), %r15d
	movzbl	61(%rdx), %r8d
	andb	$-2, %r15b
	andb	$-2, %r8b
	cmpb	%r8b, %r15b
	jne	.L22247
.L22250:
	testb	$8, 17(%r13)
	je	.L22304
	movl	$1, -2696(%rbp)
.L22304:
	movq	32(%r13), %r13
	jmp	.L22305
.L25810:
	movq	32(%r13), %r15
	xorl	%r12d, %r12d
	movq	40(%r13), %rbx
	movq	8(%r15), %rdx
	movq	24(%rdx), %rax
	testq	%rax, %rax
	je	.L22258
	movq	104(%rax), %r12
.L22258:
	movq	8(%rdx), %r9
	testq	%r12, %r12
	movq	40(%r9), %r14
	jne	.L25824
.L22259:
	testb	$2, 17(%rbx)
	je	.L25825
.L22260:
	testb	$2, 17(%r14)
	je	.L25826
.L22261:
	movq	sizetype_tab(%rip), %rdi
	movq	%rbx, %rsi
	call	convert
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%rax, %rsi
	call	size_binop
	movq	-9488(%rbp), %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	size_binop
	movq	%rax, -9488(%rbp)
	jmp	.L22250
.L25826:
	movq	%r14, %rdi
	call	contains_placeholder_p
	testl	%eax, %eax
	je	.L22261
	movq	sizetype_tab(%rip), %rsi
	movq	%r14, %rdx
	movl	$58, %edi
	movq	%r15, %rcx
	xorl	%eax, %eax
	call	build
	movq	%rax, %r14
	jmp	.L22261
	.p2align 6,,7
.L25825:
	movq	%rbx, %rdi
	call	contains_placeholder_p
	testl	%eax, %eax
	je	.L22260
	movq	8(%rbx), %rsi
	movq	%rbx, %rdx
	movl	$58, %edi
	movq	%r13, %rcx
	xorl	%eax, %eax
	call	build
	movq	%rax, %rbx
	jmp	.L22260
	.p2align 6,,7
.L25824:
	movq	%r12, %rdi
	call	integer_zerop
	testl	%eax, %eax
	jne	.L22259
	movq	8(%rbx), %rsi
	movq	%rbx, %rdx
	movl	$60, %edi
	movq	%r12, %rcx
	xorl	%eax, %eax
	call	build
	movq	%rax, %rdi
	call	fold
	movq	%rax, %rbx
	jmp	.L22259
	.p2align 6,,7
.L25809:
	movq	40(%r13), %r12
	movq	88(%r12), %rbx
	testq	%rbx, %rbx
	je	.L22247
	testb	$2, 17(%rbx)
	je	.L25827
.L22253:
	movq	-9488(%rbp), %rsi
	movl	$59, %edi
	movq	%rbx, %rdx
	call	size_binop
	movq	-9480(%rbp), %rsi
	movl	$59, %edi
	movq	%rax, -9488(%rbp)
	movq	160(%r12), %rdx
.L25025:
	call	size_binop
	movq	%rax, -9480(%rbp)
	jmp	.L22250
.L25827:
	movq	%rbx, %rdi
	call	contains_placeholder_p
	testl	%eax, %eax
	je	.L22253
	movq	sizetype_tab(%rip), %rsi
	movq	%rbx, %rdx
	movl	$58, %edi
	movq	%r13, %rcx
	xorl	%eax, %eax
	call	build
	movq	%rax, %rbx
	jmp	.L22253
	.p2align 6,,7
.L25808:
	movq	-9480(%rbp), %rsi
	movq	48(%r13), %rdx
	movl	$59, %edi
	jmp	.L25025
.L25807:
	movq	%rbx, %rdi
	movl	$1, %esi
	call	host_integerp
	testl	%eax, %eax
	jne	.L22244
	movl	$51, -9472(%rbp)
	movq	$-1, (%r12)
	jmp	.L22305
.L22244:
	movq	%rbx, %rdi
	movl	$1, %esi
	call	tree_low_cst
	movq	%rax, (%r12)
	jmp	.L22305
	.p2align 6,,7
.L25806:
	movq	32(%rdx), %rbx
	jmp	.L22238
.L25805:
	movq	-5464(%rbp), %rax
	movzbl	17(%rax), %r11d
	movq	40(%rax), %rbx
	shrb	$5, %r11b
	movl	%r11d, %ecx
	andl	$1, %ecx
	movl	%ecx, -5616(%rbp)
	jmp	.L22238
.L25804:
	movq	40(%r13), %rax
	testb	$16, 49(%rax)
	movq	40(%rax), %rbx
	jne	.L22237
	movzbl	48(%rax), %r15d
	movl	%r15d, -9472(%rbp)
.L22237:
	movzbl	17(%rax), %r9d
	shrb	$5, %r9b
	movl	%r9d, %esi
	andl	$1, %esi
	movl	%esi, -5616(%rbp)
	jmp	.L22238
.L25763:
	movq	-5472(%rbp), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	call	expand_expr
	movq	%rax, %r13
	jmp	.L25054
.L25762:
	movzbl	16(%rdx), %eax
	cmpb	$86, %al
	je	.L21782
	cmpb	$88, %al
	jne	.L21781
.L21782:
	movq	-5472(%rbp), %rbx
	movq	-5464(%rbp), %rsi
	cmpq	%rsi, 32(%rbx)
	jne	.L21781
	movq	40(%rbx), %r14
	cmpb	$39, 16(%r14)
	jne	.L21781
	movq	40(%rsi), %rcx
	movq	40(%rcx), %rdi
	call	integer_onep
	testl	%eax, %eax
	jne	.L25828
	movq	-5464(%rbp), %r14
	movzbl	16(%r14), %ecx
	jmp	.L21781
.L25828:
	movq	40(%rbx), %r15
	movq	40(%r15), %rsi
	movq	40(%rsi), %rdi
	call	integer_onep
	testl	%eax, %eax
	jne	.L25829
	movq	-5464(%rbp), %r13
	movzbl	16(%r13), %ecx
	jmp	.L21781
.L25829:
	call	gen_label_rtx
	xorl	%edx, %edx
	movq	%rax, -5480(%rbp)
	movq	40(%rbx), %rdi
	movq	-5480(%rbp), %rsi
	movzbl	16(%rbx), %r10d
	cmpb	$86, %r10b
	cmovne	%rdx, %rsi
	cmpb	$88, %r10b
	cmove	-5480(%rbp), %rdx
	call	do_jump
	movq	%rbx, %rax
	addq	$8, %rax
	cmpb	$86, 16(%rbx)
	je	.L25830
	movq	global_trees+88(%rip), %rsi
.L21794:
	movq	(%rax), %rdi
	call	convert
	movq	-5464(%rbp), %rbx
	movq	$0, -9368(%rbp)
	movq	%rax, %r15
	movzbl	16(%rbx), %edx
	testb	%dl, %dl
	je	.L25831
	leal	-39(%rdx), %r12d
	cmpb	$1, %r12b
	jbe	.L21800
	cmpb	$43, %dl
	je	.L21800
	cmpb	$44, %dl
	je	.L21800
	cmpb	$53, 16(%rax)
	je	.L25832
.L21910:
	cmpq	$0, -9368(%rbp)
	je	.L25833
.L22166:
	movq	-5464(%rbp), %rax
	movzbl	16(%rax), %r9d
	cmpb	$36, %r9b
	je	.L25834
.L22221:
	call	push_temp_slots
	movq	-9368(%rbp), %rsi
	movq	%r15, %rdi
	xorl	%edx, %edx
	call	store_expr
	movq	%rax, %rdi
.L25023:
	call	preserve_temp_slots
	call	free_temp_slots
	call	pop_temp_slots
.L21798:
	call	do_pending_stack_adjust
	movq	-5480(%rbp), %rdi
.L25122:
	call	emit_label
	jmp	.L25052
.L25834:
	movq	-9368(%rbp), %r10
	movzwl	(%r10), %edx
	cmpw	$61, %dx
	je	.L22168
	cmpw	$39, %dx
	je	.L22168
	cmpb	$36, %r9b
	jne	.L22221
	cmpb	$41, 16(%r15)
	jne	.L22221
	movq	cfun(%rip), %r14
	movzbl	424(%r14), %r11d
	andb	$3, %r11b
	decb	%r11b
	jne	.L22221
	call	push_temp_slots
	movq	%r15, %rdi
	call	expr_size
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movq	%r15, %rdi
	xorl	%esi, %esi
	movq	%rax, %r12
	call	expand_expr
	movq	%r12, %rsi
	movq	sizetype_tab(%rip), %rcx
	movq	%rax, %r15
	movzbl	17(%rcx), %edx
	movzbl	61(%rcx), %eax
	shrb	$5, %dl
	shrb	$1, %al
	andl	$1, %edx
	movzbl	%al, %edi
	call	convert_to_mode
	movq	-9368(%rbp), %r13
	movl	$3, %ecx
	movl	target_flags(%rip), %r9d
	movq	8(%r15), %r8
	movq	%rax, 16(%rsp)
	movq	sizetype_tab(%rip), %rbx
	movq	libfunc_table+96(%rip), %rdi
	andl	$33554432, %r9d
	movq	%r8, (%rsp)
	setne	%sil
	xorl	%eax, %eax
	movzbl	%sil, %r9d
	xorl	%esi, %esi
	addl	$4, %r9d
	movl	%r9d, 8(%rsp)
	movzbl	61(%rbx), %edx
	shrb	$1, %dl
	movzbl	%dl, %r10d
	xorl	%edx, %edx
	movl	%r10d, 24(%rsp)
	movq	8(%r13), %r8
	call	emit_library_call
.L25024:
	movq	-9368(%rbp), %rdi
	jmp	.L25023
.L22168:
	call	push_temp_slots
	movq	-9368(%rbp), %rcx
	xorl	%esi, %esi
	movq	%r15, %rdi
	movzbl	2(%rcx), %edx
	xorl	%ecx, %ecx
	call	expand_expr
	movq	-9368(%rbp), %rsi
	movq	%rax, -5576(%rbp)
	cmpw	$39, (%rsi)
	je	.L25835
	movq	-9368(%rbp), %rdi
	movq	-5576(%rbp), %rsi
.L25111:
	call	emit_move_insn
	jmp	.L25024
.L25835:
	movq	8(%r15), %rdi
	call	int_size_in_bytes
	movq	-9368(%rbp), %r15
	movl	%eax, -5580(%rbp)
	cmpw	$39, (%r15)
	jne	.L25561
	movq	-9368(%rbp), %r12
	movq	8(%r12), %rcx
	movq	8(%rcx), %r11
	movl	(%rcx), %edi
	cmpq	$0, 8(%r11)
	movslq	%edi,%rbx
	sete	%r8b
	leaq	15(,%rbx,8), %r13
	andq	$-16, %r13
	subq	%r13, %rsp
	leaq	32(%rsp), %r14
	movzbl	%r8b, %edx
	movq	%r14, -5592(%rbp)
	movl	%edx, -9376(%rbp)
	movl	-9376(%rbp), %eax
	cmpl	%edi, %eax
	movl	%eax, -9372(%rbp)
	jge	.L24187
.L22204:
	movslq	-9372(%rbp),%r15
	movl	-5580(%rbp), %r9d
	testl	%r9d, %r9d
	movq	8(%rcx,%r15,8), %rsi
	movq	%r15, -5600(%rbp)
	movq	8(%rsi), %rcx
	movq	16(%rsi), %r10
	movzbl	2(%rcx), %r13d
	movq	8(%r10), %r14
	movslq	%r13d,%rax
	movq	%rax, -5608(%rbp)
	movzbl	mode_size(%rax), %r15d
	js	.L22177
	movslq	-5580(%rbp),%rdi
	mov	%r15d, %edx
	leaq	(%rdx,%r14), %rbx
	cmpq	%rdi, %rbx
	jle	.L22177
	movl	-5580(%rbp), %r15d
	subl	%r14d, %r15d
	je	.L25560
.L22177:
	movq	-5576(%rbp), %r12
	movzwl	(%r12), %edx
	cmpw	$66, %dx
	je	.L22179
	leal	-67(%rdx), %r8d
	cmpw	$1, %r8w
	jbe	.L22181
	cmpw	$54, %dx
	je	.L22181
	cmpw	$55, %dx
	je	.L22181
	cmpw	$58, %dx
	je	.L22181
	cmpw	$134, %dx
	je	.L22181
	cmpw	$56, %dx
	je	.L22181
	cmpw	$140, %dx
	je	.L22181
.L22180:
	movq	-5576(%rbp), %r12
	movl	%r13d, %edi
	movzbl	2(%r12), %eax
	testb	%al, %al
	je	.L25021
	movzbl	%al, %edi
.L25021:
	call	gen_reg_rtx
	movq	-5576(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rax, %r12
	call	emit_move_insn
.L22179:
	movzwl	(%r12), %edx
	cmpw	$66, %dx
	je	.L25836
.L22184:
	cmpw	$65, %dx
	je	.L25837
	leal	-67(%rdx), %r9d
	cmpw	$1, %r9w
	jbe	.L22201
	cmpw	$54, %dx
	je	.L22201
	cmpw	$55, %dx
	je	.L22201
	cmpw	$58, %dx
	je	.L22201
	cmpw	$134, %dx
	je	.L22201
	cmpw	$56, %dx
	je	.L22201
	cmpw	$140, %dx
	je	.L22201
	cmpw	$61, %dx
	je	.L25838
.L22200:
	movslq	-5580(%rbp),%rcx
	leal	0(,%r15,8), %edi
	leaq	0(,%r14,8), %rdx
	mov	%edi, %esi
	xorl	%r8d, %r8d
	movl	%r13d, %r9d
	movq	%r12, %rdi
	movl	%r13d, (%rsp)
	movq	%rcx, 8(%rsp)
	movl	$1, %ecx
	call	extract_bit_field
.L25022:
	movq	-5600(%rbp), %r8
	movq	-5592(%rbp), %rsi
	movq	%rax, (%rsi,%r8,8)
.L22175:
	movq	-9368(%rbp), %r12
	incl	-9372(%rbp)
	movl	-9372(%rbp), %eax
	movq	8(%r12), %rcx
	cmpl	(%rcx), %eax
	jl	.L22204
.L24187:
	movq	cfun(%rip), %r11
	movq	16(%r11), %r15
	movq	40(%r15), %rbx
	testq	%rbx, %rbx
	je	.L24189
.L22210:
	movq	32(%rbx), %rdi
	cmpw	$24, (%rdi)
	je	.L25839
	call	emit_insn
	movq	%rax, 16(%rbx)
.L22209:
	movq	cfun(%rip), %rdx
	movq	40(%rbx), %r13
	movq	16(%rdx), %r10
	testq	%r13, %r13
	movq	%r13, %rbx
	movq	%r13, 40(%r10)
	jne	.L22210
	movq	-9368(%rbp), %rbx
	movq	8(%rbx), %rcx
.L24189:
	movl	-9376(%rbp), %edi
	cmpl	(%rcx), %edi
	jge	.L25024
.L22216:
	movslq	-9376(%rbp),%r15
	movq	-5592(%rbp), %r12
	salq	$3, %r15
	movq	8(%r15,%rcx), %rax
	movq	(%r12,%r15), %rsi
	movq	8(%rax), %rdi
	call	emit_move_insn
	movq	-9368(%rbp), %rcx
	incl	-9376(%rbp)
	movl	-9376(%rbp), %r8d
	movq	8(%rcx), %rsi
	cmpl	(%rsi), %r8d
	movq	%rsi, %rcx
	jl	.L22216
	jmp	.L25024
.L25839:
	movq	8(%rdi), %r9
	movq	8(%r9), %r14
	movq	%r14, 16(%rbx)
	call	emit_insn
	jmp	.L22209
.L25838:
	movzbl	2(%r12), %edx
	cmpl	%r13d, %edx
	jne	.L22200
.L22201:
	movq	-5600(%rbp), %r10
	movq	-5592(%rbp), %r13
	movq	%r12, (%r13,%r10,8)
	jmp	.L22175
.L25837:
	testq	%r14, %r14
	jne	.L24445
	movq	8(%r12), %rdx
	movzbq	2(%rdx), %r11
	movzbl	mode_size(%r11), %r8d
	cmpl	%r8d, %r15d
	je	.L22190
.L22191:
	movzbq	2(%rdx), %r9
	movzbq	mode_size(%r9), %rdx
	cmpq	%rdx, %r14
	je	.L25840
.L22189:
	testq	%r14, %r14
	jne	.L22779
	movzbl	2(%r12), %edi
	xorl	%edx, %edx
	movslq	%edi,%rbx
	movzbq	mode_size(%rbx), %rsi
	call	assign_stack_temp
	movq	%r12, %rsi
	movq	%rax, %r14
	movq	%rax, %rdi
	call	emit_move_insn
	movl	$1, %r8d
	movl	$1, %ecx
	movq	%r14, %rdi
	movl	%r13d, %esi
	xorl	%edx, %edx
	call	adjust_address_1
	jmp	.L25022
.L25840:
	movq	16(%r12), %rcx
	movzbq	2(%rcx), %rsi
	movzbl	mode_size(%rsi), %r10d
	cmpl	%r10d, %r15d
	jne	.L22189
.L22190:
	xorl	%edi, %edi
	movq	-5600(%rbp), %r8
	movq	-5592(%rbp), %rax
	testq	%r14, %r14
	setne	%dil
	leaq	(%rax,%r8,8), %rbx
	movq	8(%r12,%rdi,8), %rcx
	movq	%rcx, (%rbx)
	movzwl	(%rcx), %edx
	leal	-67(%rdx), %r14d
	cmpw	$1, %r14w
	jbe	.L22175
	cmpw	$54, %dx
	je	.L22175
	cmpw	$55, %dx
	je	.L22175
	cmpw	$58, %dx
	je	.L22175
	cmpw	$134, %dx
	je	.L22175
	cmpw	$56, %dx
	je	.L22175
	cmpw	$140, %dx
	je	.L22175
	cmpw	$61, %dx
	je	.L25841
.L22195:
	leal	0(,%r15,8), %r11d
	movl	%r13d, (%rsp)
	xorl	%edx, %edx
	movslq	-5580(%rbp),%r15
	mov	%r11d, %esi
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	%r13d, %r9d
	movq	%r15, 8(%rsp)
	movq	(%rbx), %rdi
	call	extract_bit_field
	movq	%rax, (%rbx)
	jmp	.L22175
.L25841:
	movzbl	2(%rcx), %r12d
	cmpl	%r13d, %r12d
	jne	.L22195
	jmp	.L22175
.L24445:
	movq	8(%r12), %rdx
	jmp	.L22191
.L25836:
	movl	%r13d, %edi
	call	get_mode_alignment
	movq	16(%r12), %rdx
	testq	%rdx, %rdx
	je	.L22185
	cmpl	%eax, 32(%rdx)
	jae	.L22186
.L24444:
	movzwl	(%r12), %edx
	jmp	.L22184
.L22186:
	movl	%r13d, %edi
	leaq	0(,%r14,8), %rbx
	call	get_mode_alignment
	mov	%eax, %esi
	movq	%rbx, %rax
	cqto
	idivq	%rsi
	testq	%rdx, %rdx
	jne	.L24444
	movq	-5608(%rbp), %rax
	movzbl	mode_size(%rax), %ecx
	cmpl	%ecx, %r15d
	jne	.L24444
	movl	%r13d, %edi
	call	gen_reg_rtx
	movl	$1, %r8d
	movl	$1, %ecx
	movq	-5592(%rbp), %rdi
	movq	-5600(%rbp), %rbx
	movl	%r13d, %esi
	movq	%r14, %rdx
	leaq	(%rdi,%rbx,8), %r15
	movq	%r12, %rdi
	movq	%rax, (%r15)
	call	adjust_address_1
	movq	(%r15), %rdi
	movq	%rax, %rsi
	call	emit_move_insn
	jmp	.L22175
.L22185:
	cmpl	$8, %eax
	ja	.L24444
	jmp	.L22186
.L22181:
	movq	-5576(%rbp), %r9
	movzbl	2(%r9), %edx
	movzbl	%dl, %r11d
	cmpl	%r13d, %r11d
	je	.L22179
	testb	%dl, %dl
	je	.L22179
	jmp	.L22180
.L25833:
	movq	-5464(%rbp), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$4, %ecx
	call	expand_expr
	movq	%rax, -9368(%rbp)
	jmp	.L22166
.L25832:
	movq	%rax, %rdi
	call	aggregate_value_p
	testl	%eax, %eax
	jne	.L21910
	movq	8(%r15), %rsi
	movq	32(%rsi), %rcx
	cmpb	$25, 16(%rcx)
	jne	.L21910
	movq	-5464(%rbp), %rbx
	movzbl	16(%rbx), %r8d
	subb	$34, %r8b
	cmpb	$1, %r8b
	ja	.L21911
	movq	144(%rbx), %rax
	testq	%rax, %rax
	je	.L25842
.L21912:
	cmpw	$61, (%rax)
	je	.L21910
.L21911:
	call	push_temp_slots
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%r15, %rdi
	call	expand_expr
	cmpq	$0, -9368(%rbp)
	movq	%rax, %r14
	je	.L25843
.L21913:
	movq	-9368(%rbp), %r11
	cmpw	$39, (%r11)
	je	.L25844
	movq	-9368(%rbp), %rax
	cmpb	$51, 2(%rax)
	je	.L25845
	movq	-9368(%rbp), %rdi
	movq	%r14, %rsi
	jmp	.L25111
.L25845:
	movq	%r15, %rdi
	movq	%rax, -9336(%rbp)
	call	expr_size
	movl	$8, %edx
	movq	-9368(%rbp), %r8
	movq	%rax, %r13
	movq	16(%r8), %rcx
	testq	%rcx, %rcx
	je	.L21968
	movl	32(%rcx), %edx
.L21968:
	movq	16(%r14), %rax
	testq	%rax, %rax
	je	.L21969
	cmpl	32(%rax), %edx
	jb	.L21970
.L21965:
	testq	%rax, %rax
	movl	$8, -9328(%rbp)
	je	.L21966
	movl	32(%rax), %eax
	movl	%eax, -9328(%rbp)
.L21966:
	movq	-9368(%rbp), %r11
	cmpb	$51, 2(%r11)
	jne	.L25547
	cmpb	$51, 2(%r14)
	jne	.L25546
	movq	-9368(%rbp), %rdx
	movzwl	(%rdx), %eax
	cmpl	$71, %eax
	je	.L21977
	cmpl	$66, %eax
	je	.L25846
.L21981:
	cmpl	$75, %eax
	je	.L21985
	cmpl	$78, %eax
	je	.L21985
.L21980:
	movzwl	(%r14), %eax
	cmpl	$71, %eax
	je	.L21990
	cmpl	$66, %eax
	je	.L25847
.L21994:
	cmpl	$75, %eax
	je	.L21998
	cmpl	$78, %eax
	je	.L21998
.L21993:
	movzwl	(%r13), %eax
	cmpl	$71, %eax
	je	.L22003
	cmpl	$66, %eax
	je	.L25848
.L22007:
	cmpl	$75, %eax
	je	.L22011
	cmpl	$78, %eax
	je	.L22011
.L22006:
	movq	-9336(%rbp), %rdi
	cmpw	$66, (%rdi)
	jne	.L25545
	cmpw	$66, (%r14)
	jne	.L25544
	testq	%r13, %r13
	je	.L25543
	cmpw	$54, (%r13)
	je	.L25849
.L22019:
	shrl	$3, -9328(%rbp)
	xorl	%edi, %edi
	mov	-9328(%rbp), %esi
	call	gen_rtx_CONST_INT
	movl	class_narrowest_mode+4(%rip), %r12d
	movl	$1, volatile_ok(%rip)
	movq	%rax, -5544(%rbp)
	testl	%r12d, %r12d
	je	.L24185
.L22152:
	movslq	%r12d,%rsi
	movl	movstr_optab(,%rsi,4), %edx
	movq	%rsi, -5552(%rbp)
	cmpl	$1317, %edx
	je	.L22138
	cmpw	$54, (%r13)
	je	.L25850
.L22142:
	testb	$2, target_flags+3(%rip)
	je	.L22143
	movq	-5552(%rbp), %rbx
	cmpw	$63, mode_bitsize(%rbx,%rbx)
.L25020:
	jbe	.L22138
.L22141:
	movslq	%edx,%rdi
	leaq	(%rdi,%rdi,4), %rcx
	movq	%rdi, -5560(%rbp)
	movq	insn_data+24(,%rcx,8), %r15
	movq	(%r15), %rax
	testq	%rax, %rax
	je	.L22145
	movq	-9336(%rbp), %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L22138
.L22145:
	movq	24(%r15), %rax
	testq	%rax, %rax
	jne	.L25851
.L22146:
	movq	72(%r15), %rax
	testq	%rax, %rax
	je	.L22147
	xorl	%esi, %esi
	movq	-5544(%rbp), %rdi
	call	*%rax
	testl	%eax, %eax
	je	.L22138
.L22147:
	call	get_last_insn
	movl	$1, %edx
	movq	%r13, %rsi
	movl	%r12d, %edi
	movq	%rax, -5568(%rbp)
	call	convert_to_mode
	movq	%rax, %rbx
	movq	48(%r15), %rax
	testq	%rax, %rax
	jne	.L25852
.L22148:
	movq	-5560(%rbp), %rdx
	movq	-9336(%rbp), %rdi
	xorl	%eax, %eax
	movq	%r14, %rsi
	movq	-5544(%rbp), %rcx
	leaq	(%rdx,%rdx,4), %r12
	movq	%rbx, %rdx
	call	*insn_data+16(,%r12,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L24528
	movq	-5568(%rbp), %rdi
	call	delete_insns_since
.L22138:
	movq	-5552(%rbp), %r8
	movzbl	mode_wider_mode(%r8), %r12d
	testl	%r12d, %r12d
	jne	.L22152
.L24185:
	testb	$2, target_flags+3(%rip)
	movq	-9336(%rbp), %r9
	movl	$0, volatile_ok(%rip)
	setne	%sil
	movzbl	%sil, %edi
	movq	8(%r9), %rsi
	addl	$4, %edi
	call	copy_to_mode_reg
	movq	8(%r14), %rsi
	testb	$2, target_flags+3(%rip)
	movq	%rax, %r15
	setne	%al
	movzbl	%al, %edi
	addl	$4, %edi
	call	copy_to_mode_reg
	movq	%r13, %rsi
	movq	sizetype_tab(%rip), %r11
	movq	%rax, %rbx
	movzbl	61(%r11), %r14d
	shrb	$1, %r14b
	movzbl	%r14b, %edi
	call	copy_to_mode_reg
	cmpq	$0, fn.1(%rip)
	movq	%rax, %r13
	je	.L25853
.L22161:
	movq	global_trees+216(%rip), %rdi
	call	build_pointer_type
	movq	%r15, %rsi
	movq	%rax, %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	global_trees+216(%rip), %rdi
	movq	%rax, %r14
	call	build_pointer_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	%r13, %rsi
	movq	%rax, (%r14)
	movq	%rax, %r12
	movq	sizetype_tab(%rip), %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	fn.1(%rip), %rdx
	movq	%rax, (%r12)
	movq	(%r14), %r11
	movq	8(%rdx), %rdi
	movq	(%r11), %r8
	movq	$0, (%r8)
	call	build_pointer_type
	movq	fn.1(%rip), %rdx
	movl	$121, %edi
	movq	%rax, %rsi
	call	build1
	xorl	%r8d, %r8d
	movq	%r14, %rcx
	movq	fn.1(%rip), %rbx
	movq	%rax, %rdx
	movl	$53, %edi
	xorl	%eax, %eax
	movq	8(%rbx), %r13
	movq	8(%r13), %rsi
	call	build
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	orb	$1, 17(%rax)
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	expand_expr
	testb	$4, 3(%r15)
	je	.L25024
	movl	$49, %edi
	xorl	%esi, %esi
	movq	%r15, %rdx
	call	gen_rtx_fmt_e
	movq	%rax, %rdi
	call	emit_insn
	jmp	.L25024
.L25853:
	movl	$.LC11, %edi
	call	get_identifier
	movq	global_trees+216(%rip), %rdi
	movq	%rax, fn.1(%rip)
	call	build_pointer_type
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	build_function_type
	movq	fn.1(%rip), %rsi
	movl	$30, %edi
	movq	%rax, %rdx
	call	build_decl
	movl	$1, %esi
	movl	$fn.1, %edi
	movq	%rax, fn.1(%rip)
	call	ggc_add_tree_root
	movq	fn.1(%rip), %r12
	xorl	%esi, %esi
	orb	$1, 49(%r12)
	movq	fn.1(%rip), %rdi
	orb	$8, 18(%rdi)
	movq	fn.1(%rip), %rcx
	orb	$64, 50(%rcx)
	movq	fn.1(%rip), %r10
	orb	$2, 18(%r10)
	movq	fn.1(%rip), %rdi
	call	make_decl_rtl
	movq	fn.1(%rip), %rdi
	call	assemble_external
	jmp	.L22161
.L24528:
	call	emit_insn
	movl	$0, volatile_ok(%rip)
	jmp	.L25024
.L25852:
	movq	%rbx, %rdi
	movl	%r12d, %esi
	call	*%rax
	testl	%eax, %eax
	jne	.L22148
	movq	%rbx, %rsi
	movl	%r12d, %edi
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L22148
.L25851:
	movq	%r14, %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L22138
	jmp	.L22146
.L22143:
	movq	-5552(%rbp), %r10
	cmpw	$31, mode_bitsize(%r10,%r10)
	jmp	.L25020
.L25850:
	movq	mode_mask_array(,%rsi,8), %r15
	shrq	$1, %r15
	cmpq	%r15, 8(%r13)
	jbe	.L22141
	jmp	.L22142
.L25849:
	movq	8(%r13), %r12
	xorl	%r15d, %r15d
	movl	$17, %esi
.L22032:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L24174
.L22029:
	movslq	%ecx,%r9
	movzbq	mode_size(%r9), %rbx
	cmpq	%rsi, %rbx
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r9), %ecx
	testl	%ecx, %ecx
	jne	.L22029
.L24174:
	testl	%edi, %edi
	je	.L22022
	movslq	%edi,%rbx
	movq	%rbx, %rcx
	salq	$4, %rcx
	addq	optab_table+240(%rip), %rcx
	cmpl	$1317, 8(%rcx)
	je	.L22031
	call	get_mode_alignment
	movl	$128, %esi
	cmpl	%eax, %esi
	jb	.L22031
	movzbq	mode_size(%rbx), %r8
	movq	%r12, %rax
	xorl	%edx, %edx
	divq	%r8
	addq	%rax, %r15
	movq	%rdx, %r12
.L22031:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L22032
.L22022:
	testq	%r12, %r12
	jne	.L25529
	movl	optimize_size(%rip), %eax
	testl	%eax, %eax
	jne	.L22035
	movq	ix86_cost(%rip), %r11
	mov	40(%r11), %edx
	cmpq	%rdx, %r15
	jae	.L22019
.L22036:
	movq	8(%r14), %r15
	movq	-9336(%rbp), %rcx
	movq	8(%r13), %r12
	movq	-9336(%rbp), %rbx
	movq	$0, -2296(%rbp)
	movl	$0, -9348(%rbp)
	testb	$2, target_flags+3(%rip)
	movq	%r15, -2320(%rbp)
	setne	%r13b
	movq	8(%rcx), %r9
	movq	%rbx, -2352(%rbp)
	xorl	%ecx, %ecx
	movzwl	(%r9), %edx
	movq	%r9, -9344(%rbp)
	movzbl	%r13b, %esi
	leal	5(,%rsi,4), %r13d
	leal	-96(%rdx), %edi
	cmpw	$1, %di
	jbe	.L22041
	cmpw	$99, %dx
	je	.L22041
	cmpw	$98, %dx
	je	.L22041
.L22040:
	movq	-9344(%rbp), %r10
	movl	%ecx, -2336(%rbp)
	xorl	%edx, %edx
	movzwl	(%r10), %eax
	cmpw	$96, %ax
	je	.L22043
	cmpw	$98, %ax
	je	.L22043
.L22042:
	movq	-9344(%rbp), %r8
	movq	%r14, -2328(%rbp)
	movl	%edx, -2288(%rbp)
	xorl	%ecx, %ecx
	movq	%r8, -2344(%rbp)
	movzwl	(%r15), %edx
	leal	-96(%rdx), %r14d
	cmpw	$1, %r14w
	jbe	.L22046
	cmpw	$99, %dx
	je	.L22046
	cmpw	$98, %dx
	je	.L22046
.L22045:
	movl	-2288(%rbp), %eax
	movl	%ecx, -2312(%rbp)
	movl	$0, -2308(%rbp)
	movl	$0, -2332(%rbp)
	testl	%eax, %eax
	je	.L22047
	movq	%r12, -2296(%rbp)
.L22047:
	movl	-2312(%rbp), %edx
	movq	%r12, -2304(%rbp)
	testl	%edx, %edx
	je	.L22049
	movl	-2336(%rbp), %r11d
	testl	%r11d, %r11d
	jne	.L22048
.L22049:
	xorl	%r14d, %r14d
	movl	$17, %esi
.L22062:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L24177
.L22059:
	movslq	%ecx,%r9
	movzbq	mode_size(%r9), %rbx
	cmpq	%rsi, %rbx
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r9), %ecx
	testl	%ecx, %ecx
	jne	.L22059
.L24177:
	testl	%edi, %edi
	je	.L22052
	movslq	%edi,%rbx
	movq	%rbx, %rcx
	salq	$4, %rcx
	addq	optab_table+240(%rip), %rcx
	cmpl	$1317, 8(%rcx)
	je	.L22061
	call	get_mode_alignment
	movl	$128, %edi
	cmpl	%eax, %edi
	jb	.L22061
	movzbq	mode_size(%rbx), %rsi
	movq	%r12, %rax
	xorl	%edx, %edx
	divq	%rsi
	addq	%rax, %r14
	movq	%rdx, %r12
.L22061:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L22062
.L22052:
	testq	%r12, %r12
	jne	.L25529
	cmpq	$2, %r14
	jbe	.L22048
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L24179
.L22070:
	movslq	%ecx,%r14
	movzbl	mode_size(%r14), %r8d
	cmpl	%r13d, %r8d
	cmovae	-9348(%rbp), %ecx
	movl	%ecx, -9348(%rbp)
	movzbl	mode_wider_mode(%r14), %ecx
	testl	%ecx, %ecx
	jne	.L22070
.L24179:
	movl	-2312(%rbp), %eax
	testl	%eax, %eax
	jne	.L22076
	movzwl	(%r15), %edx
	leal	-67(%rdx), %r11d
	cmpw	$1, %r11w
	jbe	.L22074
	cmpw	$54, %dx
	je	.L22074
	cmpw	$55, %dx
	je	.L22074
	cmpw	$58, %dx
	je	.L22074
	cmpw	$134, %dx
	je	.L22074
	cmpw	$56, %dx
	je	.L22074
	cmpw	$140, %dx
	je	.L22074
.L22076:
	movl	-2336(%rbp), %eax
	testl	%eax, %eax
	jne	.L22048
	movq	-9344(%rbp), %r9
	movzwl	(%r9), %edx
	leal	-67(%rdx), %r15d
	cmpw	$1, %r15w
	jbe	.L22078
	cmpw	$54, %dx
	je	.L22078
	cmpw	$55, %dx
	je	.L22078
	cmpw	$58, %dx
	je	.L22078
	cmpw	$134, %dx
	je	.L22078
	cmpw	$56, %dx
	je	.L22078
	cmpw	$140, %dx
	je	.L22078
.L22048:
	cmpl	$1, %r13d
	jbe	.L22081
.L22132:
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L24182
.L22088:
	movslq	%ecx,%rbx
	movzbl	mode_size(%rbx), %edx
	cmpl	%r13d, %edx
	cmovae	-9348(%rbp), %ecx
	movl	%ecx, -9348(%rbp)
	movzbl	mode_wider_mode(%rbx), %ecx
	testl	%ecx, %ecx
	jne	.L22088
.L24182:
	movl	-9348(%rbp), %eax
	testl	%eax, %eax
	je	.L22081
	movslq	-9348(%rbp),%r14
	movq	%r14, %r13
	salq	$4, %r13
	addq	optab_table+240(%rip), %r13
	movl	8(%r13), %ebx
	cmpl	$1317, %ebx
	je	.L22090
	movl	-9348(%rbp), %edi
	call	get_mode_alignment
	movl	$128, %ecx
	cmpl	%eax, %ecx
	jb	.L22090
	movzbq	mode_size(%r14), %rdx
	movslq	%ebx,%r12
	movq	$0, -9360(%rbp)
	cmpq	%rdx, -2304(%rbp)
	leaq	(%r12,%r12,4), %rdi
	leaq	-2352(%rbp), %r12
	movq	insn_data+16(,%rdi,8), %r15
	movq	%rdx, -6208(%rbp)
	jb	.L22090
	movl	-2288(%rbp), %ecx
.L22130:
	testl	%ecx, %ecx
	je	.L22094
	subq	%rdx, 56(%r12)
.L22094:
	movq	(%r12), %rdi
	testq	%rdi, %rdi
	je	.L22095
	movl	16(%r12), %eax
	testl	%eax, %eax
	je	.L22096
	movl	-9348(%rbp), %esi
	movq	8(%r12), %rdx
	movl	$1, %r8d
	movq	56(%r12), %rcx
	call	adjust_automodify_address_1
.L25016:
	movq	%rax, -9360(%rbp)
.L22095:
	movl	40(%r12), %eax
	testl	%eax, %eax
	je	.L22098
	movq	24(%r12), %rdi
	movl	-9348(%rbp), %esi
	movl	$1, %r8d
	movq	32(%r12), %rdx
	movq	56(%r12), %rcx
	call	adjust_automodify_address_1
.L25017:
	cmpq	$0, (%r12)
	movq	%rax, %r13
	jne	.L25854
	movl	target_flags(%rip), %eax
	testl	$33554432, %eax
	movl	%eax, %esi
	je	.L22104
	movzbl	mode_size(%r14), %r10d
	leal	7(%r10), %edx
	andl	$-8, %edx
.L22105:
	movq	cfun(%rip), %r9
	andl	$33554432, %esi
	movq	16(%r9), %r11
	leaq	8(%r11), %rdi
	movl	8(%r11), %ecx
	je	.L22106
	movzbl	mode_size(%r14), %eax
	addl	$7, %eax
	andl	$-8, %eax
.L25018:
	movq	%r14, %rsi
	leal	(%rax,%rcx), %ebx
	salq	$4, %rsi
	movl	%ebx, (%rdi)
	addq	optab_table+384(%rip), %rsi
	movl	8(%rsi), %eax
	cmpl	$1317, %eax
	je	.L22108
	movslq	%eax,%rbx
	leaq	(%rbx,%rbx,4), %rcx
	movq	insn_data+24(,%rcx,8), %rdx
	movq	(%rdx), %rax
	testq	%rax, %rax
	je	.L22109
	movq	%r13, %rdi
	movl	-9348(%rbp), %esi
	call	*%rax
	testl	%eax, %eax
	je	.L25855
.L22109:
	leaq	(%rbx,%rbx,4), %r10
	movq	%r13, %rdi
	xorl	%eax, %eax
	call	*insn_data+16(,%r10,8)
.L25019:
	movq	%rax, %rdi
	call	emit_insn
.L22128:
	movl	64(%r12), %eax
	testl	%eax, %eax
	movl	%eax, %ecx
	jne	.L22129
	movq	-6208(%rbp), %r13
	addq	%r13, 56(%r12)
.L22129:
	movq	48(%r12), %rsi
	movq	-6208(%rbp), %rdx
	subq	-6208(%rbp), %rsi
	cmpq	%rdx, %rsi
	movq	%rsi, 48(%r12)
	jae	.L22130
.L22090:
	movzbl	mode_size(%r14), %r13d
	cmpl	$1, %r13d
	ja	.L22132
.L22081:
	cmpq	$0, -2304(%rbp)
	je	.L25024
	jmp	.L25518
.L25855:
	movl	-9348(%rbp), %edi
	movq	%r13, %rsi
	call	force_reg
	movq	%rax, %r13
	jmp	.L22109
.L22108:
	movzbl	mode_size(%r14), %edi
	cmpl	%edx, %edi
	je	.L25856
	mov	%edx, %esi
	xorl	%edi, %edi
	negq	%rsi
	call	gen_rtx_CONST_INT
	movq	global_rtl+16(%rip), %rdx
	movl	$75, %edi
	testb	$2, target_flags+3(%rip)
	movq	%rax, %rcx
	setne	%r11b
	movzbl	%r11b, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_ee
	movq	global_rtl+16(%rip), %rdx
	movl	$100, %edi
	testb	$2, target_flags+3(%rip)
	movq	%rax, %rcx
	setne	%r8b
	movzbl	%r8b, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_ee
.L22116:
	movl	-9348(%rbp), %edi
	movq	%rax, %rsi
	call	gen_rtx_MEM
	xorl	%r9d, %r9d
	testq	%r9, %r9
	movq	%rax, %rbx
	je	.L22125
	movq	%rax, %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	call	set_mem_attributes
	movl	flag_optimize_sibling_calls(%rip), %eax
	testl	%eax, %eax
	jne	.L25857
.L22125:
	movq	%rbx, %rdi
	movq	%r13, %rsi
	call	emit_move_insn
	jmp	.L22128
.L25857:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	call	set_mem_alias_set
	jmp	.L22125
.L25856:
	testb	$2, target_flags+3(%rip)
	movq	global_rtl+16(%rip), %rdx
	movl	$96, %edi
	setne	%al
	movzbl	%al, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_e
	jmp	.L22116
.L22106:
	movzbl	mode_size(%r14), %eax
	incl	%eax
	andl	$-2, %eax
	jmp	.L25018
.L22104:
	movzbl	mode_size(%r14), %r8d
	leal	1(%r8), %edx
	andl	$-2, %edx
	jmp	.L22105
.L25854:
	movq	%rax, %rsi
	movq	-9360(%rbp), %rdi
	xorl	%eax, %eax
	call	*%r15
	jmp	.L25019
.L22098:
	movq	24(%r12), %rdi
	movl	-9348(%rbp), %esi
	movl	$1, %ecx
	movq	56(%r12), %rdx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L25017
.L22096:
	movl	-9348(%rbp), %esi
	movq	56(%r12), %rdx
	movl	$1, %ecx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L25016
.L22078:
	movq	-9344(%rbp), %rdi
	call	copy_addr_to_reg
	movq	%rax, -2344(%rbp)
	jmp	.L22048
.L22074:
	movq	%r15, %rdi
	call	copy_addr_to_reg
	movq	%rax, -2320(%rbp)
	jmp	.L22076
.L22046:
	movl	$1, %ecx
	jmp	.L22045
.L22043:
	movl	$1, %edx
	jmp	.L22042
.L22041:
	movl	$1, %ecx
	jmp	.L22040
.L22035:
	cmpq	$2, %r15
	ja	.L22019
	jmp	.L22036
.L22011:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, %r12
	call	protect_from_queue
	cmpq	8(%r13), %r12
	movq	%rax, %rbx
	je	.L25858
.L22013:
	movq	%r13, %rdi
	call	copy_rtx
	movq	%rax, %r13
	movq	%r12, 8(%rax)
	movq	%rbx, 16(%rax)
	jmp	.L22006
.L25858:
	cmpq	16(%r13), %rax
	jne	.L22013
	jmp	.L22006
.L25848:
	cmpb	$51, 2(%r13)
	je	.L22004
	movq	8(%r13), %r12
	cmpw	$71, (%r12)
	je	.L25859
.L22004:
	cmpl	$66, %eax
	jne	.L22007
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%r13), %rax
	movq	%rax, %rbx
	je	.L22006
	movq	%r13, %rdi
	call	copy_rtx
	movq	%rax, %r13
	movq	%rbx, 8(%rax)
	jmp	.L22006
.L25859:
	movq	8(%r12), %rsi
	movq	%r13, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%r12)
	movq	%rax, %rbx
	je	.L22005
	movzbl	2(%r13), %edi
	call	gen_reg_rtx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L22006
.L22005:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L25015:
	movq	%rax, %r13
	jmp	.L22006
.L22003:
	cmpq	$0, 16(%r13)
	je	.L25860
	movq	24(%r13), %rax
	testq	%rax, %rax
	jne	.L25015
	movq	8(%r13), %r11
	movzbl	2(%r11), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %r13
	jmp	.L22006
.L25860:
	movq	8(%r13), %rdi
	call	copy_to_reg
	jmp	.L25015
.L21998:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r14), %rdi
	movq	%rax, %r12
	call	protect_from_queue
	cmpq	8(%r14), %r12
	movq	%rax, %rbx
	je	.L25861
.L22000:
	movq	%r14, %rdi
	call	copy_rtx
	movq	%rax, %r14
	movq	%r12, 8(%rax)
	movq	%rbx, 16(%rax)
	jmp	.L21993
.L25861:
	cmpq	16(%r14), %rax
	jne	.L22000
	jmp	.L21993
.L25847:
	cmpb	$51, 2(%r14)
	je	.L21991
	movq	8(%r14), %r12
	cmpw	$71, (%r12)
	je	.L25862
.L21991:
	cmpl	$66, %eax
	jne	.L21994
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%r14), %rax
	movq	%rax, %rbx
	je	.L21993
	movq	%r14, %rdi
	call	copy_rtx
	movq	%rax, %r14
	movq	%rbx, 8(%rax)
	jmp	.L21993
.L25862:
	movq	8(%r12), %rsi
	movq	%r14, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%r12)
	movq	%rax, %rbx
	je	.L21992
	movzbl	2(%r14), %edi
	call	gen_reg_rtx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L21993
.L21992:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L25014:
	movq	%rax, %r14
	jmp	.L21993
.L21990:
	cmpq	$0, 16(%r14)
	je	.L25863
	movq	24(%r14), %rax
	testq	%rax, %rax
	jne	.L25014
	movq	8(%r14), %r8
	movzbl	2(%r8), %edi
	call	gen_reg_rtx
	movq	8(%r14), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r14), %r14
	jmp	.L21993
.L25863:
	movq	8(%r14), %rdi
	call	copy_to_reg
	jmp	.L25014
.L21985:
	movq	-9368(%rbp), %r15
	xorl	%esi, %esi
	movq	8(%r15), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r15), %rdi
	movq	%rax, %r12
	call	protect_from_queue
	movq	-9368(%rbp), %rsi
	movq	%rax, %rbx
	cmpq	8(%rsi), %r12
	je	.L25864
.L21987:
	movq	-9368(%rbp), %rdi
	call	copy_rtx
	movq	%rax, -9336(%rbp)
	movq	%r12, 8(%rax)
	movq	-9336(%rbp), %rcx
	movq	%rbx, 16(%rcx)
	jmp	.L21980
.L25864:
	cmpq	16(%rsi), %rax
	jne	.L21987
	jmp	.L21980
.L25846:
	jne	.L21981
	movq	8(%rdx), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	-9368(%rbp), %rcx
	movq	%rax, %rbx
	cmpq	8(%rcx), %rax
	je	.L21980
	movq	%rcx, %rdi
	call	copy_rtx
	movq	%rax, -9336(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L21980
.L21977:
	testq	%rcx, %rcx
	je	.L25865
	movq	-9368(%rbp), %rbx
	movq	24(%rbx), %r9
	testq	%r9, %r9
	movq	%r9, -9336(%rbp)
	jne	.L21980
	movq	-9368(%rbp), %r12
	movq	8(%r12), %rdx
	movzbl	2(%rdx), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %r10
	movq	%r10, -9336(%rbp)
	jmp	.L21980
.L25865:
	movq	-9368(%rbp), %rsi
	movq	8(%rsi), %rdi
	call	copy_to_reg
	movq	%rax, -9336(%rbp)
	jmp	.L21980
.L21970:
	testq	%rcx, %rcx
	movl	$8, -9328(%rbp)
	je	.L21966
	movl	32(%rcx), %r15d
	movl	%r15d, -9328(%rbp)
	jmp	.L21966
.L21969:
	cmpl	$7, %edx
	ja	.L21965
	jmp	.L21970
.L25844:
	movq	8(%r15), %rdi
	call	int_size_in_bytes
	movq	-9368(%rbp), %rbx
	movl	%eax, -5508(%rbp)
	cmpw	$39, (%rbx)
	jne	.L25561
	movq	-9368(%rbp), %rax
	movq	8(%rax), %rcx
	movq	8(%rcx), %rsi
	movl	(%rcx), %r9d
	cmpq	$0, 8(%rsi)
	movslq	%r9d,%r15
	sete	%dil
	leaq	15(,%r15,8), %r12
	andq	$-16, %r12
	subq	%r12, %rsp
	leaq	32(%rsp), %r13
	movzbl	%dil, %edx
	movq	%r13, -5520(%rbp)
	movl	%edx, -9324(%rbp)
	movl	-9324(%rbp), %r10d
	cmpl	%r9d, %r10d
	movl	%r10d, -9316(%rbp)
	jge	.L24168
.L21949:
	movslq	-9316(%rbp),%r13
	movq	8(%rcx,%r13,8), %rbx
	movq	%r13, -5528(%rbp)
	movl	-5508(%rbp), %ecx
	movq	8(%rbx), %r9
	movq	16(%rbx), %r11
	testl	%ecx, %ecx
	movzbl	2(%r9), %r13d
	movq	8(%r11), %r15
	movslq	%r13d,%r8
	movzbl	mode_size(%r8), %ebx
	movq	%r8, -5536(%rbp)
	movl	%ebx, -9320(%rbp)
	js	.L21922
	movslq	-5508(%rbp),%r12
	mov	%ebx, %edi
	leaq	(%rdi,%r15), %rdx
	cmpq	%r12, %rdx
	jle	.L21922
	movl	-5508(%rbp), %eax
	subl	%r15d, %eax
	movl	%eax, -9320(%rbp)
	je	.L25560
.L21922:
	movzwl	(%r14), %edx
	movq	%r14, %r12
	cmpw	$66, %dx
	je	.L21924
	leal	-67(%rdx), %esi
	cmpw	$1, %si
	jbe	.L21926
	cmpw	$54, %dx
	je	.L21926
	cmpw	$55, %dx
	je	.L21926
	cmpw	$58, %dx
	je	.L21926
	cmpw	$134, %dx
	je	.L21926
	cmpw	$56, %dx
	je	.L21926
	cmpw	$140, %dx
	je	.L21926
.L21925:
	movzbl	2(%r14), %eax
	movl	%r13d, %edi
	testb	%al, %al
	je	.L25012
	movzbl	%al, %edi
.L25012:
	call	gen_reg_rtx
	movq	%r14, %rsi
	movq	%rax, %rdi
	movq	%rax, %r12
	call	emit_move_insn
.L21924:
	movzwl	(%r12), %edx
	cmpw	$66, %dx
	je	.L25866
.L21929:
	cmpw	$65, %dx
	je	.L25867
	leal	-67(%rdx), %esi
	cmpw	$1, %si
	jbe	.L21946
	cmpw	$54, %dx
	je	.L21946
	cmpw	$55, %dx
	je	.L21946
	cmpw	$58, %dx
	je	.L21946
	cmpw	$134, %dx
	je	.L21946
	cmpw	$56, %dx
	je	.L21946
	cmpw	$140, %dx
	je	.L21946
	cmpw	$61, %dx
	je	.L25868
.L21945:
	movl	-9320(%rbp), %edi
	movslq	-5508(%rbp),%r10
	leaq	0(,%r15,8), %rdx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	%r13d, %r9d
	movl	%r13d, (%rsp)
	sall	$3, %edi
	mov	%edi, %esi
	movq	%r10, 8(%rsp)
	movq	%r12, %rdi
	call	extract_bit_field
.L25013:
	movq	-5528(%rbp), %rcx
	movq	-5520(%rbp), %r12
	movq	%rax, (%r12,%rcx,8)
.L21920:
	movq	-9368(%rbp), %rdx
	incl	-9316(%rbp)
	movl	-9316(%rbp), %eax
	movq	8(%rdx), %rcx
	cmpl	(%rcx), %eax
	jl	.L21949
.L24168:
	movq	cfun(%rip), %r8
	movq	16(%r8), %r14
	movq	40(%r14), %rbx
	testq	%rbx, %rbx
	je	.L24170
.L21955:
	movq	32(%rbx), %rdi
	cmpw	$24, (%rdi)
	je	.L25869
	call	emit_insn
	movq	%rax, 16(%rbx)
.L21954:
	movq	cfun(%rip), %r9
	movq	40(%rbx), %r11
	movq	16(%r9), %r13
	testq	%r11, %r11
	movq	%r11, %rbx
	movq	%r11, 40(%r13)
	jne	.L21955
	movq	-9368(%rbp), %rbx
	movq	8(%rbx), %rcx
.L24170:
	movl	-9324(%rbp), %r10d
	cmpl	(%rcx), %r10d
	jge	.L25024
.L21961:
	movslq	-9324(%rbp),%r14
	movq	-5520(%rbp), %rdx
	salq	$3, %r14
	movq	8(%r14,%rcx), %rax
	movq	(%rdx,%r14), %rsi
	movq	8(%rax), %rdi
	call	emit_move_insn
	movq	-9368(%rbp), %r12
	incl	-9324(%rbp)
	movl	-9324(%rbp), %edi
	movq	8(%r12), %rcx
	cmpl	(%rcx), %edi
	jl	.L21961
	jmp	.L25024
.L25869:
	movq	8(%rdi), %rsi
	movq	8(%rsi), %r15
	movq	%r15, 16(%rbx)
	call	emit_insn
	jmp	.L21954
.L25868:
	movzbl	2(%r12), %r11d
	cmpl	%r13d, %r11d
	jne	.L21945
.L21946:
	movq	-5528(%rbp), %r9
	movq	-5520(%rbp), %r13
	movq	%r12, (%r13,%r9,8)
	jmp	.L21920
.L25867:
	testq	%r15, %r15
	jne	.L24441
	movq	8(%r12), %rdx
	movzbq	2(%rdx), %rsi
	movzbl	mode_size(%rsi), %ebx
	cmpl	%ebx, -9320(%rbp)
	je	.L21935
.L21936:
	movzbq	2(%rdx), %r8
	movzbq	mode_size(%r8), %rcx
	cmpq	%rcx, %r15
	je	.L25870
.L21934:
	testq	%r15, %r15
	jne	.L22779
	movzbl	2(%r12), %edi
	xorl	%edx, %edx
	movslq	%edi,%rbx
	movzbq	mode_size(%rbx), %rsi
	call	assign_stack_temp
	movq	%r12, %rsi
	movq	%rax, %r15
	movq	%rax, %rdi
	call	emit_move_insn
	movl	$1, %r8d
	movl	$1, %ecx
	movq	%r15, %rdi
	movl	%r13d, %esi
	xorl	%edx, %edx
	call	adjust_address_1
	jmp	.L25013
.L25870:
	movq	16(%r12), %r10
	movzbq	2(%r10), %r9
	movzbl	mode_size(%r9), %r11d
	cmpl	%r11d, -9320(%rbp)
	jne	.L21934
.L21935:
	xorl	%edi, %edi
	movq	-5528(%rbp), %rdx
	movq	-5520(%rbp), %rax
	testq	%r15, %r15
	setne	%dil
	leaq	(%rax,%rdx,8), %rbx
	movq	8(%r12,%rdi,8), %rcx
	movq	%rcx, (%rbx)
	movzwl	(%rcx), %edx
	leal	-67(%rdx), %r15d
	cmpw	$1, %r15w
	jbe	.L21920
	cmpw	$54, %dx
	je	.L21920
	cmpw	$55, %dx
	je	.L21920
	cmpw	$58, %dx
	je	.L21920
	cmpw	$134, %dx
	je	.L21920
	cmpw	$56, %dx
	je	.L21920
	cmpw	$140, %dx
	je	.L21920
	cmpw	$61, %dx
	je	.L25871
.L21940:
	movslq	-5508(%rbp),%rcx
	movl	-9320(%rbp), %r8d
	movl	%r13d, (%rsp)
	xorl	%edx, %edx
	movl	%r13d, %r9d
	sall	$3, %r8d
	movq	%rcx, 8(%rsp)
	mov	%r8d, %esi
	movl	$1, %ecx
	movq	(%rbx), %rdi
	xorl	%r8d, %r8d
	call	extract_bit_field
	movq	%rax, (%rbx)
	jmp	.L21920
.L25871:
	movzbl	2(%rcx), %r12d
	cmpl	%r13d, %r12d
	jne	.L21940
	jmp	.L21920
.L24441:
	movq	8(%r12), %rdx
	jmp	.L21936
.L25866:
	movl	%r13d, %edi
	call	get_mode_alignment
	movq	16(%r12), %rdx
	testq	%rdx, %rdx
	je	.L21930
	cmpl	%eax, 32(%rdx)
	jae	.L21931
.L24440:
	movzwl	(%r12), %edx
	jmp	.L21929
.L21931:
	movl	%r13d, %edi
	leaq	0(,%r15,8), %rbx
	call	get_mode_alignment
	mov	%eax, %r11d
	movq	%rbx, %rax
	cqto
	idivq	%r11
	testq	%rdx, %rdx
	jne	.L24440
	movq	-5536(%rbp), %r10
	movzbl	mode_size(%r10), %r9d
	cmpl	%r9d, -9320(%rbp)
	jne	.L24440
	movl	%r13d, %edi
	call	gen_reg_rtx
	movl	$1, %r8d
	movl	$1, %ecx
	movq	-5528(%rbp), %rdx
	movq	-5520(%rbp), %rdi
	movl	%r13d, %esi
	leaq	(%rdi,%rdx,8), %rbx
	movq	%r15, %rdx
	movq	%r12, %rdi
	movq	%rax, (%rbx)
	call	adjust_address_1
	movq	(%rbx), %rdi
	movq	%rax, %rsi
	call	emit_move_insn
	jmp	.L21920
.L21930:
	cmpl	$8, %eax
	ja	.L24440
	jmp	.L21931
.L21926:
	movzbl	2(%r14), %edx
	movzbl	%dl, %ecx
	cmpl	%r13d, %ecx
	je	.L21924
	testb	%dl, %dl
	je	.L21924
	jmp	.L21925
.L25843:
	movq	-5464(%rbp), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$4, %ecx
	call	expand_expr
	movq	%rax, -9368(%rbp)
	jmp	.L21913
.L25842:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	call	make_decl_rtl
	movq	144(%rbx), %rax
	jmp	.L21912
.L21800:
	movl	$0, -2656(%rbp)
	xorl	%ebx, %ebx
	leaq	-2632(%rbp), %r12
	call	push_temp_slots
	movq	-5464(%rbp), %r14
	movq	global_trees+120(%rip), %r8
	movl	$0, -9380(%rbp)
	movq	global_trees+136(%rip), %rdx
	movq	$0, -2664(%rbp)
	movq	%r8, -9400(%rbp)
	movq	%rdx, -9392(%rbp)
	movzbl	16(%r14), %eax
	cmpb	$39, %al
	je	.L25872
	cmpb	$40, %al
	je	.L25873
	movq	-5464(%rbp), %r13
	movq	8(%r13), %rdx
	movzbl	61(%rdx), %edi
	movzbl	17(%rdx), %esi
	shrb	$1, %dil
	shrb	$5, %sil
	movzbl	%dil, %r8d
	movl	%esi, %r10d
	andl	$1, %r10d
	movl	%r8d, -9380(%rbp)
	cmpl	$51, -9380(%rbp)
	movl	%r10d, -5484(%rbp)
	je	.L25874
	movslq	-9380(%rbp),%r11
	movzwq	mode_bitsize(%r11,%r11), %rdx
	movq	%rdx, -2632(%rbp)
.L21803:
	testq	%rbx, %rbx
	jne	.L25875
.L21870:
	movzbl	16(%r14), %edx
	cmpb	$40, %dl
	je	.L25876
	cmpb	$39, %dl
	je	.L25877
	leal	-43(%rdx), %ebx
	cmpb	$1, %bl
	jbe	.L25878
	cmpb	$57, %dl
	jne	.L21828
	movq	-2664(%rbp), %rax
	leaq	-2664(%rbp), %r9
	movq	8(%r14), %rdx
	testq	%rax, %rax
	je	.L21829
	movq	(%rax), %r8
.L21830:
	testq	%r8, %r8
	je	.L24162
	movq	128(%rdx), %rsi
.L21863:
	movq	24(%r8), %rdi
	testq	%rdi, %rdi
	movq	%rdi, %rdx
	je	.L24164
.L21848:
	movq	8(%rdi), %rcx
	cmpq	%rsi, 128(%rcx)
	je	.L25879
	movzbl	16(%rdi), %eax
	cmpb	$47, %al
	je	.L21844
	cmpb	$51, %al
	je	.L21844
	movzbl	%al, %r10d 
	movzbl	tree_code_type(%r10), %eax
	cmpb	$114, %al
	je	.L21847
	cmpb	$49, %al
	je	.L21847
	cmpb	$50, %al
	je	.L21847
	cmpb	$101, %al
	je	.L21847
	xorl	%edi, %edi
.L21843:
	testq	%rdi, %rdi
	jne	.L21848
.L24164:
	testq	%rdx, %rdx
	je	.L24166
.L21862:
	movq	8(%rdx), %rcx
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L21854
	cmpb	$15, %al
	je	.L21854
.L21851:
	movzbl	16(%rdx), %eax
	cmpb	$47, %al
	je	.L21858
	cmpb	$51, %al
	je	.L21858
	movzbl	%al, %r13d 
	movzbl	tree_code_type(%r13), %eax
	cmpb	$114, %al
	je	.L21861
	cmpb	$49, %al
	je	.L21861
	cmpb	$50, %al
	je	.L21861
	cmpb	$101, %al
	je	.L21861
	xorl	%edx, %edx
.L21857:
	testq	%rdx, %rdx
	jne	.L21862
.L24166:
	movq	(%r8), %r8
	testq	%r8, %r8
	jne	.L21863
.L24162:
	xorl	%edi, %edi
.L21841:
	testq	%rdi, %rdi
	je	.L21812
	movq	%rdi, %r14
	jmp	.L21870
.L21812:
	movq	-9400(%rbp), %rdi
	xorl	%esi, %esi
	call	host_integerp
	testl	%eax, %eax
	je	.L21871
	movq	sizetype_tab+24(%rip), %rdi
	movq	-9400(%rbp), %rsi
	call	convert
	movq	global_trees+152(%rip), %rdx
	movl	$61, %edi
	movq	%rax, %rsi
	call	size_binop
	testq	%rax, %rax
	movq	%rax, %rsi
	je	.L21871
	movq	-9392(%rbp), %rdx
	movl	$59, %edi
	call	size_binop
	testq	%rax, %rax
	movq	%rax, %rbx
	jne	.L25880
.L21871:
	movq	-9392(%rbp), %rdi
	xorl	%esi, %esi
	call	tree_low_cst
	movq	%rax, -2640(%rbp)
	movq	-9400(%rbp), %rax
	movq	%rax, -2648(%rbp)
.L21872:
	movl	-9380(%rbp), %r10d
	testl	%r10d, %r10d
	movl	%r10d, -2652(%rbp)
	jne	.L21874
	xorl	%ecx, %ecx
	testl	%ecx, %ecx
	jne	.L25881
.L21874:
	movq	%r14, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	call	expand_expr
	movq	-2648(%rbp), %rdi
	movq	%rax, %r12
	movq	%rax, -5504(%rbp)
	testq	%rdi, %rdi
	jne	.L25882
.L21875:
	cmpw	$66, (%r12)
	je	.L25883
.L21885:
	movl	-2656(%rbp), %esi
	testl	%esi, %esi
	je	.L21900
	cmpw	$66, (%r12)
	je	.L25884
.L21900:
	movq	-5464(%rbp), %rbx
	cmpb	$39, 16(%rbx)
	je	.L25885
.L21902:
	cmpw	$66, (%r12)
	je	.L25886
.L21904:
	movq	-5464(%rbp), %rdi
	call	get_alias_set
	xorl	%r11d, %r11d
	movl	-2652(%rbp), %ecx
	testl	%r11d, %r11d
	movq	%rax, %rdi
	movq	-2632(%rbp), %rsi
	movq	-2640(%rbp), %rdx
	je	.L21906
	movq	-5464(%rbp), %r10
	movq	8(%r10), %r9
	movzbl	61(%r9), %ebx
	shrb	$1, %bl
	movzbl	%bl, %r9d
.L21907:
	movl	-5484(%rbp), %eax
	movq	%r15, %r8
	movl	%eax, (%rsp)
	movq	8(%r14), %r13
	xorl	%r14d, %r14d
	movl	%edi, 16(%rsp)
	movq	%r12, %rdi
	movq	%r13, 8(%rsp)
	call	store_field
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	preserve_temp_slots
	call	free_temp_slots
	call	pop_temp_slots
	testl	%r14d, %r14d
	je	.L21798
	movq	-5464(%rbp), %rdi
	movq	8(%r15), %rdx
	movq	8(%rdi), %r12
	movzbl	61(%rdx), %r15d
	movq	%rbx, %rdx
	movzbl	61(%r12), %eax
	movzbl	17(%r12), %ecx
	shrb	$1, %r15b
	movzbl	%r15b, %esi
	shrb	$1, %al
	shrb	$5, %cl
	movzbl	%al, %edi
	andl	$1, %ecx
	call	convert_modes
	jmp	.L21798
.L21906:
	xorl	%r9d, %r9d
	jmp	.L21907
.L25886:
	movq	-5464(%rbp), %rdi
	call	can_address_p
	testl	%eax, %eax
	jne	.L21904
	cmpq	-5504(%rbp), %r12
	je	.L25887
.L21905:
	orb	$1, 3(%r12)
	jmp	.L21904
.L25887:
	movq	%r12, %rdi
	call	copy_rtx
	movq	%rax, %r12
	jmp	.L21905
.L25885:
	movq	40(%rbx), %r8
	testb	$16, 17(%r8)
	je	.L21902
	cmpq	-5504(%rbp), %r12
	je	.L25888
.L21903:
	orb	$4, 3(%r12)
	jmp	.L21902
.L25888:
	movq	%r12, %rdi
	call	copy_rtx
	movq	%rax, %r12
	jmp	.L21903
.L25884:
	cmpq	-5504(%rbp), %r12
	je	.L25889
.L21901:
	orb	$8, 3(%r12)
	jmp	.L21900
.L25889:
	movq	%r12, %rdi
	call	copy_rtx
	movq	%rax, %r12
	jmp	.L21901
.L25883:
	movq	16(%r12), %rax
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	.L21887
	movq	8(%rax), %rbx
.L21887:
	movq	%r12, %rdi
	call	shallow_copy_rtx
	xorl	%edx, %edx
	movq	-5464(%rbp), %rsi
	movq	%rax, %r12
	movq	%rax, %rdi
	call	set_mem_attributes
	movq	16(%r12), %rax
	testq	%rax, %rax
	je	.L21889
	cmpq	%rbx, 8(%rax)
.L25011:
	je	.L21885
	testq	%rax, %rax
	je	.L21885
	movq	16(%rax), %rsi
	testq	%rsi, %rsi
	je	.L21885
	movq	-2640(%rbp), %rcx
	cmpq	$-1, %rcx
	leaq	7(%rcx), %r13
	movq	%rcx, %rax
	cmovle	%r13, %rax
	sarq	$3, %rax
	testq	%rax, %rax
	je	.L21885
	movq	8(%rsi), %rsi
	xorl	%edi, %edi
	subq	%rax, %rsi
	call	gen_rtx_CONST_INT
	movq	%r12, %rdi
	movq	%rax, %rsi
	call	set_mem_offset
	jmp	.L21885
.L21889:
	testq	%rbx, %rbx
	jmp	.L25011
.L25882:
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$1, %ecx
	call	expand_expr
	cmpw	$66, (%r12)
	movq	%rax, %r13
	jne	.L25507
	movzbl	2(%rax), %esi
	movl	ptr_mode(%rip), %edi
	cmpl	%edi, %esi
	je	.L21877
	movq	%rax, %rsi
	xorl	%edx, %edx
	call	convert_to_mode
	movq	%rax, %r13
.L21877:
	movl	(%r12), %eax
	andl	$16777215, %eax
	cmpl	$3342402, %eax
	je	.L25890
.L21878:
	movq	-5464(%rbp), %rax
	movq	-2648(%rbp), %rdi
	movq	8(%rax), %rbx
	call	highest_pow2_factor
	movq	%r13, %rsi
	movq	%r12, %rdi
	movl	64(%rbx), %r10d
	shrl	$3, %r10d
	mov	%r10d, %edx
	cmpq	%rax, %rdx
	cmovl	%rax, %rdx
	call	offset_address
	movq	%rax, %r12
	jmp	.L21875
.L25890:
	movq	8(%r12), %rdi
	cmpb	$0, 2(%rdi)
	je	.L21878
	movq	-2632(%rbp), %rdx
	testq	%rdx, %rdx
	jle	.L21878
	movq	-2640(%rbp), %rax
	movq	%rdx, %r8
	cqto
	idivq	%r8
	testq	%rdx, %rdx
	jne	.L21878
	movl	-2652(%rbp), %edi
	call	get_mode_alignment
	movq	-2632(%rbp), %rdx
	mov	%eax, %ebx
	movq	%rdx, %rax
	cqto
	idivq	%rbx
	testq	%rdx, %rdx
	jne	.L21878
	movl	-2652(%rbp), %edi
	call	get_mode_alignment
	movq	16(%r12), %rdx
	testq	%rdx, %rdx
	je	.L21879
	cmpl	%eax, 32(%rdx)
.L25010:
	jne	.L21878
	movq	-2640(%rbp), %rdx
	movl	-2652(%rbp), %esi
	movq	%r12, %rdi
	movl	$1, %ecx
	movl	$1, %r8d
	cmpq	$-1, %rdx
	leaq	7(%rdx), %r9
	cmovle	%r9, %rdx
	sarq	$3, %rdx
	call	adjust_address_1
	movq	$0, -2640(%rbp)
	movq	%rax, %r12
	jmp	.L21878
.L21879:
	cmpl	$8, %eax
	jmp	.L25010
.L25881:
	movq	%r14, %rdi
	call	stabilize_reference
	movq	%rax, %r14
	jmp	.L21874
.L25880:
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	host_integerp
	testl	%eax, %eax
	je	.L21871
	movq	%rbx, %rdi
	xorl	%esi, %esi
	call	tree_low_cst
	movq	$0, -2648(%rbp)
	movq	%rax, -2640(%rbp)
	jmp	.L21872
.L21861:
	movq	32(%rdx), %rdx
	jmp	.L21857
.L21858:
	movq	40(%rdx), %rdx
	jmp	.L21857
.L21854:
	movq	8(%rcx), %rdi
	cmpq	%rsi, 128(%rdi)
	jne	.L21851
	testq	%r9, %r9
	je	.L21855
	movq	%r8, (%r9)
.L21855:
	movl	$41, %edi
	call	build1
	movq	%rax, %rdi
	jmp	.L21841
.L21847:
	movq	32(%rdi), %rdi
	jmp	.L21843
.L21844:
	movq	40(%rdi), %rdi
	jmp	.L21843
.L25879:
	testq	%r9, %r9
	je	.L21841
	movq	%r8, (%r9)
	jmp	.L21841
.L21829:
	movq	placeholder_list(%rip), %r8
	jmp	.L21830
.L21828:
	leal	-116(%rdx), %esi
	cmpb	$1, %sil
	jbe	.L21815
	leal	-114(%rdx), %r8d
	cmpb	$1, %r8b
	ja	.L21812
	movq	32(%r14), %r12
	movq	8(%r14), %r9
	movq	8(%r12), %rdx
	movzbl	61(%r9), %ebx
	movzbl	61(%rdx), %r11d
	andb	$-2, %bl
	andb	$-2, %r11b
	cmpb	%r11b, %bl
	jne	.L21812
.L21815:
	testb	$8, 17(%r14)
	je	.L21869
	movl	$1, -2656(%rbp)
.L21869:
	movq	32(%r14), %r14
	jmp	.L21870
.L25878:
	movq	32(%r14), %r12
	movq	40(%r14), %rbx
	movq	%r12, -5496(%rbp)
	movq	8(%r12), %rdx
	xorl	%r12d, %r12d
	movq	24(%rdx), %rax
	testq	%rax, %rax
	je	.L21823
	movq	104(%rax), %r12
.L21823:
	movq	8(%rdx), %r9
	testq	%r12, %r12
	movq	40(%r9), %r13
	jne	.L25891
.L21824:
	testb	$2, 17(%rbx)
	je	.L25892
.L21825:
	testb	$2, 17(%r13)
	je	.L25893
.L21826:
	movq	sizetype_tab(%rip), %rdi
	movq	%rbx, %rsi
	call	convert
	movq	%r13, %rdx
	movl	$61, %edi
	movq	%rax, %rsi
	call	size_binop
	movq	-9400(%rbp), %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	size_binop
	movq	%rax, -9400(%rbp)
	jmp	.L21815
.L25893:
	movq	%r13, %rdi
	call	contains_placeholder_p
	testl	%eax, %eax
	je	.L21826
	movq	sizetype_tab(%rip), %rsi
	movq	-5496(%rbp), %rcx
	movq	%r13, %rdx
	movl	$58, %edi
	xorl	%eax, %eax
	call	build
	movq	%rax, %r13
	jmp	.L21826
.L25892:
	movq	%rbx, %rdi
	call	contains_placeholder_p
	testl	%eax, %eax
	je	.L21825
	movq	8(%rbx), %rsi
	movq	%rbx, %rdx
	movl	$58, %edi
	movq	%r14, %rcx
	xorl	%eax, %eax
	call	build
	movq	%rax, %rbx
	jmp	.L21825
.L25891:
	movq	%r12, %rdi
	call	integer_zerop
	testl	%eax, %eax
	jne	.L21824
	movq	8(%rbx), %rsi
	movq	%rbx, %rdx
	movl	$60, %edi
	movq	%r12, %rcx
	xorl	%eax, %eax
	call	build
	movq	%rax, %rdi
	call	fold
	movq	%rax, %rbx
	jmp	.L21824
.L25877:
	movq	40(%r14), %r12
	movq	88(%r12), %rbx
	testq	%rbx, %rbx
	je	.L21812
	testb	$2, 17(%rbx)
	je	.L25894
.L21818:
	movq	-9400(%rbp), %rsi
	movl	$59, %edi
	movq	%rbx, %rdx
	call	size_binop
	movq	-9392(%rbp), %rsi
	movl	$59, %edi
	movq	%rax, -9400(%rbp)
	movq	160(%r12), %rdx
.L25009:
	call	size_binop
	movq	%rax, -9392(%rbp)
	jmp	.L21815
.L25894:
	movq	%rbx, %rdi
	call	contains_placeholder_p
	testl	%eax, %eax
	je	.L21818
	movq	sizetype_tab(%rip), %rsi
	movq	%rbx, %rdx
	movl	$58, %edi
	movq	%r14, %rcx
	xorl	%eax, %eax
	call	build
	movq	%rax, %rbx
	jmp	.L21818
.L25876:
	movq	-9392(%rbp), %rsi
	movq	48(%r14), %rdx
	movl	$59, %edi
	jmp	.L25009
.L25875:
	movq	%rbx, %rdi
	movl	$1, %esi
	call	host_integerp
	testl	%eax, %eax
	jne	.L21809
	movl	$51, -9380(%rbp)
	movq	$-1, (%r12)
	jmp	.L21870
.L21809:
	movq	%rbx, %rdi
	movl	$1, %esi
	call	tree_low_cst
	movq	%rax, (%r12)
	jmp	.L21870
.L25874:
	movq	32(%rdx), %rbx
	jmp	.L21803
.L25873:
	movq	-5464(%rbp), %rax
	movzbl	17(%rax), %ecx
	movq	40(%rax), %rbx
	shrb	$5, %cl
	movl	%ecx, %r9d
	andl	$1, %r9d
	movl	%r9d, -5484(%rbp)
	jmp	.L21803
.L25872:
	movq	40(%r14), %rax
	testb	$16, 49(%rax)
	movq	40(%rax), %rbx
	jne	.L21802
	movzbl	48(%rax), %edi
	movl	%edi, -9380(%rbp)
.L21802:
	movzbl	17(%rax), %r11d
	shrb	$5, %r11b
	movl	%r11d, %r13d
	andl	$1, %r13d
	movl	%r13d, -5484(%rbp)
	jmp	.L21803
.L25831:
	movq	%rax, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	call	expand_expr
	jmp	.L21798
.L25830:
	movq	global_trees+96(%rip), %rsi
	jmp	.L21794
	.p2align 6,,7
.L24435:
	movq	-5464(%rbp), %r11
	movzbl	16(%r11), %ecx
	jmp	.L21781
.L21344:
	movq	-9552(%rbp), %rcx
	movq	-9552(%rbp), %rdi
	xorl	%r13d, %r13d
	cmpl	$0, -6220(%rbp)
	sete	%r13b
	movq	32(%rcx), %r11
	movq	%r11, -5312(%rbp)
	movq	40(%rdi), %rcx
	movl	%r13d, -5324(%rbp)
	xorl	%r13d, %r13d
	movq	%rcx, -5320(%rbp)
	movzbl	16(%r11), %edx
	testb	%dl, %dl
	je	.L25895
	leal	-39(%rdx), %r12d
	cmpb	$1, %r12b
	jbe	.L21350
	cmpb	$43, %dl
	je	.L21350
	cmpb	$44, %dl
	je	.L21350
	movq	-5320(%rbp), %rax
	cmpb	$53, 16(%rax)
	je	.L25896
.L21460:
	testq	%r13, %r13
	je	.L25897
.L21716:
	movq	-5312(%rbp), %rax
	movzbl	16(%rax), %edx
	cmpb	$36, %dl
	je	.L25898
.L21771:
	call	push_temp_slots
	movq	-5320(%rbp), %rdi
	movl	-5324(%rbp), %edx
	movq	%r13, %rsi
	call	store_expr
	movq	%rax, %r13
.L25541:
	movq	%r13, %rdi
	call	preserve_temp_slots
	call	free_temp_slots
	call	pop_temp_slots
.L25117:
	movl	-5324(%rbp), %edi
	testl	%edi, %edi
	jmp	.L25055
.L25898:
	movzwl	(%r13), %eax
	cmpw	$61, %ax
	je	.L21718
	cmpw	$39, %ax
	je	.L21718
	cmpb	$36, %dl
	jne	.L21771
	movq	-5320(%rbp), %rdi
	cmpb	$41, 16(%rdi)
	jne	.L21771
	movq	cfun(%rip), %r9
	movzbl	424(%r9), %r11d
	andb	$3, %r11b
	decb	%r11b
	jne	.L21771
	call	push_temp_slots
	movq	-5320(%rbp), %rdi
	call	expr_size
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movq	-5320(%rbp), %rdi
	xorl	%esi, %esi
	movq	%rax, %r12
	call	expand_expr
	movq	%r12, %rsi
	movq	sizetype_tab(%rip), %r8
	movq	%rax, %r15
	movzbl	17(%r8), %edx
	movzbl	61(%r8), %eax
	shrb	$5, %dl
	shrb	$1, %al
	andl	$1, %edx
	movzbl	%al, %edi
	call	convert_to_mode
	movl	$3, %ecx
	movq	libfunc_table+96(%rip), %rdi
	movl	target_flags(%rip), %r10d
	movq	8(%r15), %rbx
	movq	%rax, 16(%rsp)
	movq	sizetype_tab(%rip), %r14
	andl	$33554432, %r10d
	movq	%rbx, (%rsp)
	setne	%dl
	xorl	%eax, %eax
	movzbl	%dl, %r9d
	xorl	%edx, %edx
	addl	$4, %r9d
	movl	%r9d, 8(%rsp)
	movzbl	61(%r14), %esi
	shrb	$1, %sil
	movzbl	%sil, %r15d
	xorl	%esi, %esi
	movl	%r15d, 24(%rsp)
	movq	8(%r13), %r8
	call	emit_library_call
	jmp	.L25541
	.p2align 6,,7
.L21718:
	call	push_temp_slots
	movzbl	2(%r13), %edx
	movq	-5320(%rbp), %rdi
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	call	expand_expr
	cmpw	$39, (%r13)
	movq	%rax, -5424(%rbp)
	je	.L25899
	movq	%r13, %rdi
	movq	-5424(%rbp), %rsi
.L25542:
	call	emit_move_insn
	jmp	.L25541
.L25899:
	movq	-5320(%rbp), %rcx
	movq	8(%rcx), %rdi
	call	int_size_in_bytes
	cmpw	$39, (%r13)
	movl	%eax, -5428(%rbp)
	jne	.L25561
	movq	8(%r13), %rcx
	movq	8(%rcx), %rdx
	movl	(%rcx), %r11d
	cmpq	$0, 8(%rdx)
	movslq	%r11d,%r15
	sete	%r8b
	leaq	15(,%r15,8), %rsi
	andq	$-16, %rsi
	subq	%rsi, %rsp
	leaq	32(%rsp), %r10
	movzbl	%r8b, %r14d
	movq	%r10, -5440(%rbp)
	movl	%r14d, -9292(%rbp)
	movl	-9292(%rbp), %r9d
	cmpl	%r11d, %r9d
	movl	%r9d, -9284(%rbp)
	jge	.L24157
.L21754:
	movslq	-9284(%rbp),%r9
	movl	-5428(%rbp), %edi
	testl	%edi, %edi
	movq	8(%rcx,%r9,8), %r11
	movq	%r9, -5448(%rbp)
	movq	8(%r11), %rax
	movq	16(%r11), %r12
	movzbl	2(%rax), %r14d
	movq	8(%r12), %r15
	movslq	%r14d,%rbx
	movzbl	mode_size(%rbx), %edx
	movq	%rbx, -5456(%rbp)
	movl	%edx, -9288(%rbp)
	js	.L21727
	movslq	-5428(%rbp),%rcx
	mov	%edx, %esi
	leaq	(%rsi,%r15), %r10
	cmpq	%rcx, %r10
	jle	.L21727
	movl	-5428(%rbp), %r8d
	subl	%r15d, %r8d
	movl	%r8d, -9288(%rbp)
	je	.L25560
.L21727:
	movq	-5424(%rbp), %r12
	movzwl	(%r12), %edx
	cmpw	$66, %dx
	je	.L21729
	leal	-67(%rdx), %edi
	cmpw	$1, %di
	jbe	.L21731
	cmpw	$54, %dx
	je	.L21731
	cmpw	$55, %dx
	je	.L21731
	cmpw	$58, %dx
	je	.L21731
	cmpw	$134, %dx
	je	.L21731
	cmpw	$56, %dx
	je	.L21731
	cmpw	$140, %dx
	je	.L21731
.L21730:
	movq	-5424(%rbp), %rdx
	movl	%r14d, %edi
	movzbl	2(%rdx), %eax
	testb	%al, %al
	je	.L25007
	movzbl	%al, %edi
.L25007:
	call	gen_reg_rtx
	movq	-5424(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rax, %r12
	call	emit_move_insn
.L21729:
	movzwl	(%r12), %edx
	cmpw	$66, %dx
	je	.L25900
.L21734:
	cmpw	$65, %dx
	je	.L25901
	leal	-67(%rdx), %esi
	cmpw	$1, %si
	jbe	.L21751
	cmpw	$54, %dx
	je	.L21751
	cmpw	$55, %dx
	je	.L21751
	cmpw	$58, %dx
	je	.L21751
	cmpw	$134, %dx
	je	.L21751
	cmpw	$56, %dx
	je	.L21751
	cmpw	$140, %dx
	je	.L21751
	cmpw	$61, %dx
	je	.L25902
.L21750:
	movl	-9288(%rbp), %r8d
	movslq	-5428(%rbp),%r10
	leaq	0(,%r15,8), %rdx
	movq	%r12, %rdi
	movl	$1, %ecx
	movl	%r14d, %r9d
	movl	%r14d, (%rsp)
	sall	$3, %r8d
	mov	%r8d, %esi
	movq	%r10, 8(%rsp)
	xorl	%r8d, %r8d
	call	extract_bit_field
.L25008:
	movq	-5448(%rbp), %r12
	movq	-5440(%rbp), %rdi
	movq	%rax, (%rdi,%r12,8)
.L21725:
	incl	-9284(%rbp)
	movq	8(%r13), %rcx
	movl	-9284(%rbp), %eax
	cmpl	(%rcx), %eax
	jl	.L21754
.L24157:
	movq	cfun(%rip), %r9
	movq	16(%r9), %r11
	movq	40(%r11), %rbx
	testq	%rbx, %rbx
	je	.L24159
.L21760:
	movq	32(%rbx), %rdi
	cmpw	$24, (%rdi)
	je	.L25903
	call	emit_insn
	movq	%rax, 16(%rbx)
.L21759:
	movq	cfun(%rip), %rdx
	movq	40(%rbx), %r14
	movq	16(%rdx), %rcx
	testq	%r14, %r14
	movq	%r14, %rbx
	movq	%r14, 40(%rcx)
	jne	.L21760
	movq	8(%r13), %rcx
.L24159:
	movl	-9292(%rbp), %ebx
	cmpl	(%rcx), %ebx
	jge	.L25541
.L21766:
	movslq	-9292(%rbp),%r12
	movq	-5440(%rbp), %r8
	salq	$3, %r12
	movq	8(%r12,%rcx), %rax
	movq	(%r8,%r12), %rsi
	movq	8(%rax), %rdi
	call	emit_move_insn
	incl	-9292(%rbp)
	movq	8(%r13), %rcx
	movl	-9292(%rbp), %r10d
	cmpl	(%rcx), %r10d
	jl	.L21766
	jmp	.L25541
.L25903:
	movq	8(%rdi), %rsi
	movq	8(%rsi), %r15
	movq	%r15, 16(%rbx)
	call	emit_insn
	jmp	.L21759
.L25902:
	movzbl	2(%r12), %edx
	cmpl	%r14d, %edx
	jne	.L21750
.L21751:
	movq	-5448(%rbp), %rcx
	movq	-5440(%rbp), %r14
	movq	%r12, (%r14,%rcx,8)
	jmp	.L21725
.L25901:
	testq	%r15, %r15
	jne	.L24434
	movq	8(%r12), %rdx
	movzbq	2(%rdx), %rbx
	movzbl	mode_size(%rbx), %esi
	cmpl	%esi, -9288(%rbp)
	je	.L21740
.L21741:
	movzbq	2(%rdx), %r9
	movzbq	mode_size(%r9), %r11
	cmpq	%r11, %r15
	je	.L25904
.L21739:
	testq	%r15, %r15
	jne	.L22779
	movzbl	2(%r12), %edi
	xorl	%edx, %edx
	movslq	%edi,%rbx
	movzbq	mode_size(%rbx), %rsi
	call	assign_stack_temp
	movq	%r12, %rsi
	movq	%rax, %r15
	movq	%rax, %rdi
	call	emit_move_insn
	movl	$1, %r8d
	movl	$1, %ecx
	movq	%r15, %rdi
	movl	%r14d, %esi
	xorl	%edx, %edx
	call	adjust_address_1
	jmp	.L25008
.L25904:
	movq	16(%r12), %r10
	movzbq	2(%r10), %rcx
	movzbl	mode_size(%rcx), %edx
	cmpl	%edx, -9288(%rbp)
	jne	.L21739
.L21740:
	xorl	%r8d, %r8d
	movq	-5448(%rbp), %rdi
	movq	-5440(%rbp), %rax
	testq	%r15, %r15
	setne	%r8b
	leaq	(%rax,%rdi,8), %rbx
	movq	8(%r12,%r8,8), %rcx
	movq	%rcx, (%rbx)
	movzwl	(%rcx), %edx
	leal	-67(%rdx), %r15d
	cmpw	$1, %r15w
	jbe	.L21725
	cmpw	$54, %dx
	je	.L21725
	cmpw	$55, %dx
	je	.L21725
	cmpw	$58, %dx
	je	.L21725
	cmpw	$134, %dx
	je	.L21725
	cmpw	$56, %dx
	je	.L21725
	cmpw	$140, %dx
	je	.L21725
	cmpw	$61, %dx
	je	.L25905
.L21745:
	movslq	-5428(%rbp),%r11
	movl	-9288(%rbp), %r9d
	movl	%r14d, (%rsp)
	xorl	%edx, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	sall	$3, %r9d
	movq	%r11, 8(%rsp)
	mov	%r9d, %esi
	movq	(%rbx), %rdi
	movl	%r14d, %r9d
	call	extract_bit_field
	movq	%rax, (%rbx)
	jmp	.L21725
.L25905:
	movzbl	2(%rcx), %r12d
	cmpl	%r14d, %r12d
	jne	.L21745
	jmp	.L21725
.L24434:
	movq	8(%r12), %rdx
	jmp	.L21741
.L25900:
	movl	%r14d, %edi
	call	get_mode_alignment
	movq	16(%r12), %rdx
	testq	%rdx, %rdx
	je	.L21735
	cmpl	%eax, 32(%rdx)
	jae	.L21736
.L24433:
	movzwl	(%r12), %edx
	jmp	.L21734
.L21736:
	movl	%r14d, %edi
	leaq	0(,%r15,8), %rbx
	call	get_mode_alignment
	mov	%eax, %ecx
	movq	%rbx, %rax
	cqto
	idivq	%rcx
	testq	%rdx, %rdx
	jne	.L24433
	movq	-5456(%rbp), %rax
	movzbl	mode_size(%rax), %r10d
	cmpl	%r10d, -9288(%rbp)
	jne	.L24433
	movl	%r14d, %edi
	call	gen_reg_rtx
	movl	$1, %ecx
	movq	%r15, %rdx
	movq	-5448(%rbp), %rdi
	movq	-5440(%rbp), %r8
	movl	%r14d, %esi
	leaq	(%r8,%rdi,8), %rbx
	movl	$1, %r8d
	movq	%r12, %rdi
	movq	%rax, (%rbx)
	call	adjust_address_1
	movq	(%rbx), %rdi
	movq	%rax, %rsi
	call	emit_move_insn
	jmp	.L21725
.L21735:
	cmpl	$8, %eax
	ja	.L24433
	jmp	.L21736
	.p2align 6,,7
.L21731:
	movq	-5424(%rbp), %r11
	movzbl	2(%r11), %edx
	movzbl	%dl, %ebx
	cmpl	%r14d, %ebx
	je	.L21729
	testb	%dl, %dl
	je	.L21729
	jmp	.L21730
	.p2align 6,,7
.L25897:
	movq	-5312(%rbp), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$4, %ecx
	call	expand_expr
	movq	%rax, %r13
	jmp	.L21716
.L25896:
	movq	%rax, %rdi
	call	aggregate_value_p
	testl	%eax, %eax
	jne	.L21460
	movq	-5320(%rbp), %rdi
	movq	8(%rdi), %r11
	movq	32(%r11), %rcx
	cmpb	$25, 16(%rcx)
	jne	.L21460
	movq	-5312(%rbp), %rcx
	movzbl	16(%rcx), %edx
	subb	$34, %dl
	cmpb	$1, %dl
	ja	.L21461
	movq	144(%rcx), %rax
	testq	%rax, %rax
	je	.L25906
.L21462:
	cmpw	$61, (%rax)
	je	.L21460
.L21461:
	call	push_temp_slots
	movq	-5320(%rbp), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	call	expand_expr
	testq	%r13, %r13
	movq	%rax, %r15
	je	.L25907
.L21463:
	cmpw	$39, (%r13)
	je	.L25908
	cmpb	$51, 2(%r13)
	je	.L25909
	movq	%r13, %rdi
	movq	%r15, %rsi
	jmp	.L25542
.L25909:
	movq	-5320(%rbp), %rdi
	movq	%r13, -9248(%rbp)
	call	expr_size
	movl	$8, %edx
	movq	%rax, %r14
	movq	16(%r13), %rax
	testq	%rax, %rax
	movq	%rax, %rcx
	je	.L21518
	movl	32(%rax), %edx
.L21518:
	movq	16(%r15), %rax
	testq	%rax, %rax
	je	.L21519
	cmpl	32(%rax), %edx
	jb	.L21520
.L21515:
	testq	%rax, %rax
	movl	$8, -9240(%rbp)
	je	.L21516
	movl	32(%rax), %eax
	movl	%eax, -9240(%rbp)
.L21516:
	cmpb	$51, 2(%r13)
	jne	.L25547
	cmpb	$51, 2(%r15)
	jne	.L25546
	movzwl	(%r13), %eax
	cmpl	$71, %eax
	je	.L21527
	cmpl	$66, %eax
	je	.L25910
.L21531:
	cmpl	$75, %eax
	je	.L21535
	cmpl	$78, %eax
	je	.L21535
.L21530:
	movzwl	(%r15), %eax
	cmpl	$71, %eax
	je	.L21540
	cmpl	$66, %eax
	je	.L25911
.L21544:
	cmpl	$75, %eax
	je	.L21548
	cmpl	$78, %eax
	je	.L21548
.L21543:
	movzwl	(%r14), %eax
	cmpl	$71, %eax
	je	.L21553
	cmpl	$66, %eax
	je	.L25912
.L21557:
	cmpl	$75, %eax
	je	.L21561
	cmpl	$78, %eax
	je	.L21561
.L21556:
	movq	-9248(%rbp), %r8
	cmpw	$66, (%r8)
	jne	.L25545
	cmpw	$66, (%r15)
	jne	.L25544
	testq	%r14, %r14
	je	.L25543
	cmpw	$54, (%r14)
	je	.L25913
.L21569:
	shrl	$3, -9240(%rbp)
	xorl	%edi, %edi
	mov	-9240(%rbp), %esi
	call	gen_rtx_CONST_INT
	movl	class_narrowest_mode+4(%rip), %r12d
	movl	$1, volatile_ok(%rip)
	movq	%rax, -5384(%rbp)
	testl	%r12d, %r12d
	je	.L24155
.L21702:
	movslq	%r12d,%rsi
	movl	movstr_optab(,%rsi,4), %edx
	movq	%rsi, -5392(%rbp)
	cmpl	$1317, %edx
	je	.L21688
	cmpw	$54, (%r14)
	je	.L25914
.L21692:
	testb	$2, target_flags+3(%rip)
	je	.L21693
	movq	-5392(%rbp), %rdi
	cmpw	$63, mode_bitsize(%rdi,%rdi)
.L25006:
	jbe	.L21688
.L21691:
	movslq	%edx,%rax
	leaq	(%rax,%rax,4), %r11
	movq	%rax, -5400(%rbp)
	movq	insn_data+24(,%r11,8), %rcx
	movq	(%rcx), %rax
	movq	%rcx, -5408(%rbp)
	testq	%rax, %rax
	je	.L21695
	movq	-9248(%rbp), %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L21688
.L21695:
	movq	-5408(%rbp), %r9
	movq	24(%r9), %rax
	testq	%rax, %rax
	jne	.L25915
.L21696:
	movq	-5408(%rbp), %r10
	movq	72(%r10), %rax
	testq	%rax, %rax
	je	.L21697
	xorl	%esi, %esi
	movq	-5384(%rbp), %rdi
	call	*%rax
	testl	%eax, %eax
	je	.L21688
.L21697:
	call	get_last_insn
	movl	$1, %edx
	movq	%r14, %rsi
	movl	%r12d, %edi
	movq	%rax, -5416(%rbp)
	call	convert_to_mode
	movq	-5408(%rbp), %rsi
	movq	%rax, %rbx
	movq	48(%rsi), %rax
	testq	%rax, %rax
	jne	.L25916
.L21698:
	movq	-5400(%rbp), %r8
	movq	-9248(%rbp), %rdi
	xorl	%eax, %eax
	movq	%r15, %rsi
	movq	%rbx, %rdx
	movq	-5384(%rbp), %rcx
	leaq	(%r8,%r8,4), %r12
	call	*insn_data+16(,%r12,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L24527
	movq	-5416(%rbp), %rdi
	call	delete_insns_since
.L21688:
	movq	-5392(%rbp), %rdi
	movzbl	mode_wider_mode(%rdi), %r12d
	testl	%r12d, %r12d
	jne	.L21702
.L24155:
	testb	$2, target_flags+3(%rip)
	movq	-9248(%rbp), %rcx
	movl	$0, volatile_ok(%rip)
	setne	%r11b
	movq	8(%rcx), %rsi
	movzbl	%r11b, %edi
	addl	$4, %edi
	call	copy_to_mode_reg
	testb	$2, target_flags+3(%rip)
	setne	%bl
	movq	%rax, -9280(%rbp)
	movq	8(%r15), %rsi
	movzbl	%bl, %edi
	addl	$4, %edi
	call	copy_to_mode_reg
	movq	%r14, %rsi
	movq	sizetype_tab(%rip), %rdx
	movq	%rax, %rbx
	movzbl	61(%rdx), %r15d
	shrb	$1, %r15b
	movzbl	%r15b, %edi
	call	copy_to_mode_reg
	cmpq	$0, fn.1(%rip)
	movq	%rax, %r14
	je	.L25917
.L21711:
	movq	global_trees+216(%rip), %rdi
	call	build_pointer_type
	movq	-9280(%rbp), %rsi
	movq	%rax, %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	global_trees+216(%rip), %rdi
	movq	%rax, %r15
	call	build_pointer_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	%r14, %rsi
	movq	%rax, (%r15)
	movq	%rax, %r12
	movq	sizetype_tab(%rip), %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	fn.1(%rip), %rdx
	movq	%rax, (%r12)
	movq	(%r15), %rbx
	movq	(%rbx), %rdi
	movq	$0, (%rdi)
	movq	8(%rdx), %rdi
	call	build_pointer_type
	movq	fn.1(%rip), %rdx
	movl	$121, %edi
	movq	%rax, %rsi
	call	build1
	movq	%r15, %rcx
	movl	$53, %edi
	movq	fn.1(%rip), %r8
	movq	%rax, %rdx
	xorl	%eax, %eax
	movq	8(%r8), %r14
	xorl	%r8d, %r8d
	movq	8(%r14), %rsi
	call	build
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	orb	$1, 17(%rax)
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	expand_expr
	movq	-9280(%rbp), %rcx
	testb	$4, 3(%rcx)
	je	.L25541
	movl	$49, %edi
	xorl	%esi, %esi
	movq	%rcx, %rdx
	call	gen_rtx_fmt_e
	movq	%rax, %rdi
	call	emit_insn
	jmp	.L25541
.L25917:
	movl	$.LC11, %edi
	call	get_identifier
	movq	global_trees+216(%rip), %rdi
	movq	%rax, fn.1(%rip)
	call	build_pointer_type
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	build_function_type
	movq	fn.1(%rip), %rsi
	movl	$30, %edi
	movq	%rax, %rdx
	call	build_decl
	movl	$1, %esi
	movl	$fn.1, %edi
	movq	%rax, fn.1(%rip)
	call	ggc_add_tree_root
	movq	fn.1(%rip), %r12
	orb	$1, 49(%r12)
	movq	fn.1(%rip), %rsi
	orb	$8, 18(%rsi)
	xorl	%esi, %esi
	movq	fn.1(%rip), %r10
	orb	$64, 50(%r10)
	movq	fn.1(%rip), %r9
	orb	$2, 18(%r9)
	movq	fn.1(%rip), %rdi
	call	make_decl_rtl
	movq	fn.1(%rip), %rdi
	call	assemble_external
	jmp	.L21711
.L24527:
	call	emit_insn
	movl	$0, volatile_ok(%rip)
	jmp	.L25541
.L25916:
	movq	%rbx, %rdi
	movl	%r12d, %esi
	call	*%rax
	testl	%eax, %eax
	jne	.L21698
	movq	%rbx, %rsi
	movl	%r12d, %edi
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L21698
.L25915:
	movq	%r15, %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L21688
	jmp	.L21696
.L21693:
	movq	-5392(%rbp), %rbx
	cmpw	$31, mode_bitsize(%rbx,%rbx)
	jmp	.L25006
.L25914:
	movq	mode_mask_array(,%rsi,8), %r8
	shrq	$1, %r8
	cmpq	%r8, 8(%r14)
	jbe	.L21691
	jmp	.L21692
.L25913:
	movq	8(%r14), %r12
	xorl	%r8d, %r8d
	movl	$17, %esi
.L21582:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L24144
.L21579:
	movslq	%ecx,%r11
	movzbq	mode_size(%r11), %r9
	cmpq	%rsi, %r9
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r11), %ecx
	testl	%ecx, %ecx
	jne	.L21579
.L24144:
	testl	%edi, %edi
	je	.L21572
	movslq	%edi,%rbx
	movq	%rbx, %rsi
	salq	$4, %rsi
	addq	optab_table+240(%rip), %rsi
	cmpl	$1317, 8(%rsi)
	je	.L21581
	movq	%r8, -9592(%rbp)
	call	get_mode_alignment
	movq	-9592(%rbp), %r8
	movl	$128, %edi
	cmpl	%eax, %edi
	jb	.L21581
	movzbq	mode_size(%rbx), %r10
	movq	%r12, %rax
	xorl	%edx, %edx
	divq	%r10
	addq	%rax, %r8
	movq	%rdx, %r12
.L21581:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L21582
.L21572:
	testq	%r12, %r12
	jne	.L25529
	movl	optimize_size(%rip), %eax
	testl	%eax, %eax
	jne	.L21585
	movq	ix86_cost(%rip), %rbx
	mov	40(%rbx), %edx
	cmpq	%rdx, %r8
	jae	.L21569
.L21586:
	movq	8(%r15), %r8
	movq	-9248(%rbp), %rdi
	movq	8(%r14), %r12
	movq	-9248(%rbp), %rsi
	movq	$0, -2216(%rbp)
	movl	$0, -9260(%rbp)
	testb	$2, target_flags+3(%rip)
	movq	%r8, -2240(%rbp)
	setne	%r14b
	movq	8(%rdi), %r9
	movq	%rsi, -2272(%rbp)
	movzwl	(%r9), %edx
	movq	%r9, -9256(%rbp)
	movzbl	%r14b, %ecx
	leal	5(,%rcx,4), %r14d
	xorl	%ecx, %ecx
	leal	-96(%rdx), %r11d
	cmpw	$1, %r11w
	jbe	.L21591
	cmpw	$99, %dx
	je	.L21591
	cmpw	$98, %dx
	je	.L21591
.L21590:
	movq	-9256(%rbp), %r10
	movl	%ecx, -2256(%rbp)
	xorl	%edx, %edx
	movzwl	(%r10), %eax
	cmpw	$96, %ax
	je	.L21593
	cmpw	$98, %ax
	je	.L21593
.L21592:
	movq	-9256(%rbp), %rax
	movq	%r15, -2248(%rbp)
	movl	%edx, -2208(%rbp)
	xorl	%ecx, %ecx
	movq	%rax, -2264(%rbp)
	movzwl	(%r8), %edx
	leal	-96(%rdx), %r15d
	cmpw	$1, %r15w
	jbe	.L21596
	cmpw	$99, %dx
	je	.L21596
	cmpw	$98, %dx
	je	.L21596
.L21595:
	movl	-2208(%rbp), %edx
	movl	%ecx, -2232(%rbp)
	movl	$0, -2228(%rbp)
	movl	$0, -2252(%rbp)
	testl	%edx, %edx
	je	.L21597
	movq	%r12, -2216(%rbp)
.L21597:
	movl	-2232(%rbp), %ebx
	movq	%r12, -2224(%rbp)
	testl	%ebx, %ebx
	je	.L21599
	movl	-2256(%rbp), %r11d
	testl	%r11d, %r11d
	jne	.L21598
.L21599:
	xorl	%r15d, %r15d
	movl	$17, %esi
.L21612:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L24147
.L21609:
	movslq	%ecx,%r9
	movzbq	mode_size(%r9), %r10
	cmpq	%rsi, %r10
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r9), %ecx
	testl	%ecx, %ecx
	jne	.L21609
.L24147:
	testl	%edi, %edi
	je	.L21602
	movslq	%edi,%rbx
	movq	%rbx, %rsi
	salq	$4, %rsi
	addq	optab_table+240(%rip), %rsi
	cmpl	$1317, 8(%rsi)
	je	.L21611
	movq	%r8, -9592(%rbp)
	call	get_mode_alignment
	movl	$128, %r8d
	cmpl	%eax, %r8d
	movq	-9592(%rbp), %r8
	jb	.L21611
	movzbq	mode_size(%rbx), %rcx
	movq	%r12, %rax
	xorl	%edx, %edx
	divq	%rcx
	addq	%rax, %r15
	movq	%rdx, %r12
.L21611:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L21612
.L21602:
	testq	%r12, %r12
	jne	.L25529
	cmpq	$2, %r15
	jbe	.L21598
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L24149
.L21620:
	movslq	%ecx,%r15
	movzbl	mode_size(%r15), %edx
	cmpl	%r14d, %edx
	cmovae	-9260(%rbp), %ecx
	movl	%ecx, -9260(%rbp)
	movzbl	mode_wider_mode(%r15), %ecx
	testl	%ecx, %ecx
	jne	.L21620
.L24149:
	movl	-2232(%rbp), %eax
	testl	%eax, %eax
	jne	.L21626
	movzwl	(%r8), %edx
	leal	-67(%rdx), %ebx
	cmpw	$1, %bx
	jbe	.L21624
	cmpw	$54, %dx
	je	.L21624
	cmpw	$55, %dx
	je	.L21624
	cmpw	$58, %dx
	je	.L21624
	cmpw	$134, %dx
	je	.L21624
	cmpw	$56, %dx
	je	.L21624
	cmpw	$140, %dx
	je	.L21624
.L21626:
	movl	-2256(%rbp), %eax
	testl	%eax, %eax
	jne	.L21598
	movq	-9256(%rbp), %r9
	movzwl	(%r9), %edx
	leal	-67(%rdx), %r11d
	cmpw	$1, %r11w
	jbe	.L21628
	cmpw	$54, %dx
	je	.L21628
	cmpw	$55, %dx
	je	.L21628
	cmpw	$58, %dx
	je	.L21628
	cmpw	$134, %dx
	je	.L21628
	cmpw	$56, %dx
	je	.L21628
	cmpw	$140, %dx
	je	.L21628
.L21598:
	cmpl	$1, %r14d
	jbe	.L21631
.L21682:
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L24152
.L21638:
	movslq	%ecx,%r10
	movzbl	mode_size(%r10), %esi
	cmpl	%r14d, %esi
	cmovae	-9260(%rbp), %ecx
	movl	%ecx, -9260(%rbp)
	movzbl	mode_wider_mode(%r10), %ecx
	testl	%ecx, %ecx
	jne	.L21638
.L24152:
	movl	-9260(%rbp), %eax
	testl	%eax, %eax
	je	.L21631
	movslq	-9260(%rbp),%r15
	movq	%r15, %r14
	salq	$4, %r14
	addq	optab_table+240(%rip), %r14
	movl	8(%r14), %ebx
	cmpl	$1317, %ebx
	je	.L21640
	movl	-9260(%rbp), %edi
	call	get_mode_alignment
	movl	$128, %r8d
	cmpl	%eax, %r8d
	jb	.L21640
	movzbq	mode_size(%r15), %rdx
	movslq	%ebx,%rcx
	movq	$0, -9272(%rbp)
	leaq	(%rcx,%rcx,4), %rdi
	cmpq	%rdx, -2224(%rbp)
	movq	insn_data+16(,%rdi,8), %r12
	movq	%rdx, -6200(%rbp)
	movq	%r12, -5376(%rbp)
	leaq	-2272(%rbp), %r12
	jb	.L21640
	movl	-2208(%rbp), %ecx
.L21680:
	testl	%ecx, %ecx
	je	.L21644
	subq	%rdx, 56(%r12)
.L21644:
	movq	(%r12), %rdi
	testq	%rdi, %rdi
	je	.L21645
	movl	16(%r12), %eax
	testl	%eax, %eax
	je	.L21646
	movl	-9260(%rbp), %esi
	movq	8(%r12), %rdx
	movl	$1, %r8d
	movq	56(%r12), %rcx
	call	adjust_automodify_address_1
.L25002:
	movq	%rax, -9272(%rbp)
.L21645:
	movl	40(%r12), %eax
	testl	%eax, %eax
	je	.L21648
	movq	24(%r12), %rdi
	movl	-9260(%rbp), %esi
	movl	$1, %r8d
	movq	32(%r12), %rdx
	movq	56(%r12), %rcx
	call	adjust_automodify_address_1
.L25003:
	cmpq	$0, (%r12)
	movq	%rax, %r14
	jne	.L25918
	movl	target_flags(%rip), %eax
	testl	$33554432, %eax
	movl	%eax, %esi
	je	.L21654
	movzbl	mode_size(%r15), %ebx
	leal	7(%rbx), %edx
	andl	$-8, %edx
.L21655:
	movq	cfun(%rip), %r10
	andl	$33554432, %esi
	movq	16(%r10), %r9
	leaq	8(%r9), %rdi
	movl	8(%r9), %ecx
	je	.L21656
	movzbl	mode_size(%r15), %eax
	addl	$7, %eax
	andl	$-8, %eax
.L25004:
	movq	%r15, %rsi
	leal	(%rax,%rcx), %r8d
	salq	$4, %rsi
	movl	%r8d, (%rdi)
	addq	optab_table+384(%rip), %rsi
	movl	8(%rsi), %eax
	cmpl	$1317, %eax
	je	.L21658
	movslq	%eax,%rbx
	leaq	(%rbx,%rbx,4), %rdi
	movq	insn_data+24(,%rdi,8), %rdx
	movq	(%rdx), %rax
	testq	%rax, %rax
	je	.L21659
	movq	%r14, %rdi
	movl	-9260(%rbp), %esi
	call	*%rax
	testl	%eax, %eax
	je	.L25919
.L21659:
	leaq	(%rbx,%rbx,4), %rcx
	movq	%r14, %rdi
	xorl	%eax, %eax
	call	*insn_data+16(,%rcx,8)
.L25005:
	movq	%rax, %rdi
	call	emit_insn
.L21678:
	movl	64(%r12), %eax
	testl	%eax, %eax
	movl	%eax, %ecx
	jne	.L21679
	movq	-6200(%rbp), %r14
	addq	%r14, 56(%r12)
.L21679:
	movq	48(%r12), %rsi
	movq	-6200(%rbp), %rdx
	subq	-6200(%rbp), %rsi
	cmpq	%rdx, %rsi
	movq	%rsi, 48(%r12)
	jae	.L21680
.L21640:
	movzbl	mode_size(%r15), %r14d
	cmpl	$1, %r14d
	ja	.L21682
.L21631:
	cmpq	$0, -2224(%rbp)
	je	.L25541
	jmp	.L25518
.L25919:
	movl	-9260(%rbp), %edi
	movq	%r14, %rsi
	call	force_reg
	movq	%rax, %r14
	jmp	.L21659
.L21658:
	movzbl	mode_size(%r15), %ebx
	cmpl	%edx, %ebx
	je	.L25920
	mov	%edx, %esi
	xorl	%edi, %edi
	negq	%rsi
	call	gen_rtx_CONST_INT
	movq	global_rtl+16(%rip), %rdx
	movl	$75, %edi
	testb	$2, target_flags+3(%rip)
	movq	%rax, %rcx
	setne	%r9b
	movzbl	%r9b, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_ee
	movq	global_rtl+16(%rip), %rdx
	movl	$100, %edi
	testb	$2, target_flags+3(%rip)
	movq	%rax, %rcx
	setne	%r11b
	movzbl	%r11b, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_ee
.L21666:
	movl	-9260(%rbp), %edi
	movq	%rax, %rsi
	call	gen_rtx_MEM
	xorl	%r10d, %r10d
	testq	%r10, %r10
	movq	%rax, %rbx
	je	.L21675
	movq	%rax, %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	call	set_mem_attributes
	movl	flag_optimize_sibling_calls(%rip), %eax
	testl	%eax, %eax
	jne	.L25921
.L21675:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	call	emit_move_insn
	jmp	.L21678
.L25921:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	call	set_mem_alias_set
	jmp	.L21675
.L25920:
	testb	$2, target_flags+3(%rip)
	movq	global_rtl+16(%rip), %rdx
	movl	$96, %edi
	setne	%al
	movzbl	%al, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_e
	jmp	.L21666
.L21656:
	movzbl	mode_size(%r15), %eax
	incl	%eax
	andl	$-2, %eax
	jmp	.L25004
.L21654:
	movzbl	mode_size(%r15), %r11d
	leal	1(%r11), %edx
	andl	$-2, %edx
	jmp	.L21655
.L25918:
	movq	%rax, %rsi
	movq	-9272(%rbp), %rdi
	xorl	%eax, %eax
	call	*-5376(%rbp)
	jmp	.L25005
.L21648:
	movq	24(%r12), %rdi
	movl	-9260(%rbp), %esi
	movl	$1, %ecx
	movq	56(%r12), %rdx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L25003
.L21646:
	movl	-9260(%rbp), %esi
	movq	56(%r12), %rdx
	movl	$1, %ecx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L25002
.L21628:
	movq	-9256(%rbp), %rdi
	call	copy_addr_to_reg
	movq	%rax, -2264(%rbp)
	jmp	.L21598
.L21624:
	movq	%r8, %rdi
	call	copy_addr_to_reg
	movq	%rax, -2240(%rbp)
	jmp	.L21626
.L21596:
	movl	$1, %ecx
	jmp	.L21595
.L21593:
	movl	$1, %edx
	jmp	.L21592
.L21591:
	movl	$1, %ecx
	jmp	.L21590
.L21585:
	cmpq	$2, %r8
	ja	.L21569
	jmp	.L21586
.L21561:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r14), %rdi
	movq	%rax, %r12
	call	protect_from_queue
	cmpq	8(%r14), %r12
	movq	%rax, %rbx
	je	.L25922
.L21563:
	movq	%r14, %rdi
	call	copy_rtx
	movq	%rax, %r14
	movq	%r12, 8(%rax)
	movq	%rbx, 16(%rax)
	jmp	.L21556
.L25922:
	cmpq	16(%r14), %rax
	jne	.L21563
	jmp	.L21556
.L25912:
	cmpb	$51, 2(%r14)
	je	.L21554
	movq	8(%r14), %r12
	cmpw	$71, (%r12)
	je	.L25923
.L21554:
	cmpl	$66, %eax
	jne	.L21557
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%r14), %rax
	movq	%rax, %rbx
	je	.L21556
	movq	%r14, %rdi
	call	copy_rtx
	movq	%rax, %r14
	movq	%rbx, 8(%rax)
	jmp	.L21556
.L25923:
	movq	8(%r12), %rsi
	movq	%r14, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%r12)
	movq	%rax, %rbx
	je	.L21555
	movzbl	2(%r14), %edi
	call	gen_reg_rtx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L21556
.L21555:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L25001:
	movq	%rax, %r14
	jmp	.L21556
.L21553:
	cmpq	$0, 16(%r14)
	je	.L25924
	movq	24(%r14), %rax
	testq	%rax, %rax
	jne	.L25001
	movq	8(%r14), %rbx
	movzbl	2(%rbx), %edi
	call	gen_reg_rtx
	movq	8(%r14), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r14), %r14
	jmp	.L21556
.L25924:
	movq	8(%r14), %rdi
	call	copy_to_reg
	jmp	.L25001
.L21548:
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r15), %rdi
	movq	%rax, %r12
	call	protect_from_queue
	cmpq	8(%r15), %r12
	movq	%rax, %rbx
	je	.L25925
.L21550:
	movq	%r15, %rdi
	call	copy_rtx
	movq	%rax, %r15
	movq	%r12, 8(%rax)
	movq	%rbx, 16(%rax)
	jmp	.L21543
.L25925:
	cmpq	16(%r15), %rax
	jne	.L21550
	jmp	.L21543
.L25911:
	cmpb	$51, 2(%r15)
	je	.L21541
	movq	8(%r15), %r12
	cmpw	$71, (%r12)
	je	.L25926
.L21541:
	cmpl	$66, %eax
	jne	.L21544
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%r15), %rax
	movq	%rax, %rbx
	je	.L21543
	movq	%r15, %rdi
	call	copy_rtx
	movq	%rax, %r15
	movq	%rbx, 8(%rax)
	jmp	.L21543
.L25926:
	movq	8(%r12), %rsi
	movq	%r15, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%r12)
	movq	%rax, %rbx
	je	.L21542
	movzbl	2(%r15), %edi
	call	gen_reg_rtx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, %r15
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L21543
.L21542:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L25000:
	movq	%rax, %r15
	jmp	.L21543
.L21540:
	cmpq	$0, 16(%r15)
	je	.L25927
	movq	24(%r15), %rax
	testq	%rax, %rax
	jne	.L25000
	movq	8(%r15), %rdx
	movzbl	2(%rdx), %edi
	call	gen_reg_rtx
	movq	8(%r15), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r15)
	call	gen_move_insn
	movq	16(%r15), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r15), %r15
	jmp	.L21543
.L25927:
	movq	8(%r15), %rdi
	call	copy_to_reg
	jmp	.L25000
.L21535:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, %r12
	call	protect_from_queue
	cmpq	8(%r13), %r12
	movq	%rax, %rbx
	je	.L25928
.L21537:
	movq	%r13, %rdi
	call	copy_rtx
	movq	%rax, -9248(%rbp)
	movq	%r12, 8(%rax)
	movq	-9248(%rbp), %rsi
	movq	%rbx, 16(%rsi)
	jmp	.L21530
.L25928:
	cmpq	16(%r13), %rax
	jne	.L21537
	jmp	.L21530
.L25910:
	jne	.L21531
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%r13), %rax
	movq	%rax, %rbx
	je	.L21530
	movq	%r13, %rdi
	call	copy_rtx
	movq	%rax, -9248(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L21530
.L21527:
	testq	%rcx, %rcx
	je	.L25929
	movq	24(%r13), %r9
	testq	%r9, %r9
	movq	%r9, -9248(%rbp)
	jne	.L21530
	movq	8(%r13), %r10
	movzbl	2(%r10), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %rcx
	movq	%rcx, -9248(%rbp)
	jmp	.L21530
.L25929:
	movq	8(%r13), %rdi
	call	copy_to_reg
	movq	%rax, -9248(%rbp)
	jmp	.L21530
.L21520:
	testq	%rcx, %rcx
	movl	$8, -9240(%rbp)
	je	.L21516
	movl	32(%rcx), %edi
	movl	%edi, -9240(%rbp)
	jmp	.L21516
.L21519:
	cmpl	$7, %edx
	ja	.L21515
	jmp	.L21520
.L25908:
	movq	-5320(%rbp), %rax
	movq	8(%rax), %rdi
	call	int_size_in_bytes
	cmpw	$39, (%r13)
	movl	%eax, -5332(%rbp)
	jne	.L25561
	movq	8(%r13), %rcx
	movq	8(%rcx), %rdi
	movl	(%rcx), %r10d
	cmpq	$0, 8(%rdi)
	movslq	%r10d,%r12
	sete	%r11b
	leaq	15(,%r12,8), %rbx
	andq	$-16, %rbx
	subq	%rbx, %rsp
	leaq	32(%rsp), %r14
	movzbl	%r11b, %esi
	movq	%r14, -5344(%rbp)
	movl	%esi, -9236(%rbp)
	movl	-9236(%rbp), %r8d
	cmpl	%r10d, %r8d
	movl	%r8d, -9228(%rbp)
	jge	.L24138
.L21499:
	movslq	-9228(%rbp),%r14
	movq	8(%rcx,%r14,8), %r8
	movq	%r14, -5352(%rbp)
	movl	-5332(%rbp), %ecx
	movq	8(%r8), %rax
	movq	16(%r8), %r10
	testl	%ecx, %ecx
	movzbl	2(%rax), %r14d
	movq	8(%r10), %rdx
	movq	%rdx, -5360(%rbp)
	movslq	%r14d,%r9
	movzbl	mode_size(%r9), %edx
	movq	%r9, -5368(%rbp)
	movl	%edx, -9232(%rbp)
	js	.L21472
	mov	%edx, %r12d
	movslq	-5332(%rbp),%rbx
	addq	-5360(%rbp), %r12
	cmpq	%rbx, %r12
	jle	.L21472
	movl	-5332(%rbp), %esi
	subl	-5360(%rbp), %esi
	movl	%esi, -9232(%rbp)
	je	.L25560
.L21472:
	movzwl	(%r15), %edx
	movq	%r15, %r12
	cmpw	$66, %dx
	je	.L21474
	leal	-67(%rdx), %r11d
	cmpw	$1, %r11w
	jbe	.L21476
	cmpw	$54, %dx
	je	.L21476
	cmpw	$55, %dx
	je	.L21476
	cmpw	$58, %dx
	je	.L21476
	cmpw	$134, %dx
	je	.L21476
	cmpw	$56, %dx
	je	.L21476
	cmpw	$140, %dx
	je	.L21476
.L21475:
	movzbl	2(%r15), %eax
	movl	%r14d, %edi
	testb	%al, %al
	je	.L24998
	movzbl	%al, %edi
.L24998:
	call	gen_reg_rtx
	movq	%r15, %rsi
	movq	%rax, %rdi
	movq	%rax, %r12
	call	emit_move_insn
.L21474:
	movzwl	(%r12), %edx
	cmpw	$66, %dx
	je	.L25930
.L21479:
	cmpw	$65, %dx
	je	.L25931
	leal	-67(%rdx), %ecx
	cmpw	$1, %cx
	jbe	.L21496
	cmpw	$54, %dx
	je	.L21496
	cmpw	$55, %dx
	je	.L21496
	cmpw	$58, %dx
	je	.L21496
	cmpw	$134, %dx
	je	.L21496
	cmpw	$56, %dx
	je	.L21496
	cmpw	$140, %dx
	je	.L21496
	cmpw	$61, %dx
	je	.L25932
.L21495:
	movslq	-5332(%rbp),%r8
	movl	-9232(%rbp), %eax
	movq	%r12, %rdi
	movq	-5360(%rbp), %rdx
	movl	$1, %ecx
	movl	%r14d, %r9d
	movl	%r14d, (%rsp)
	sall	$3, %eax
	movq	%r8, 8(%rsp)
	mov	%eax, %esi
	salq	$3, %rdx
	xorl	%r8d, %r8d
	call	extract_bit_field
.L24999:
	movq	-5352(%rbp), %r11
	movq	-5344(%rbp), %r12
	movq	%rax, (%r12,%r11,8)
.L21470:
	incl	-9228(%rbp)
	movq	8(%r13), %rcx
	movl	-9228(%rbp), %esi
	cmpl	(%rcx), %esi
	jl	.L21499
.L24138:
	movq	cfun(%rip), %rdi
	movq	16(%rdi), %r15
	movq	40(%r15), %rbx
	testq	%rbx, %rbx
	je	.L24140
.L21505:
	movq	32(%rbx), %rdi
	cmpw	$24, (%rdi)
	je	.L25933
	call	emit_insn
	movq	%rax, 16(%rbx)
.L21504:
	movq	cfun(%rip), %rdx
	movq	40(%rbx), %r14
	movq	16(%rdx), %r10
	testq	%r14, %r14
	movq	%r14, %rbx
	movq	%r14, 40(%r10)
	jne	.L21505
	movq	8(%r13), %rcx
.L24140:
	movl	-9236(%rbp), %ebx
	cmpl	(%rcx), %ebx
	jge	.L25541
.L21511:
	movslq	-9236(%rbp),%r11
	movq	-5344(%rbp), %r12
	salq	$3, %r11
	movq	8(%r11,%rcx), %rax
	movq	(%r12,%r11), %rsi
	movq	8(%rax), %rdi
	call	emit_move_insn
	incl	-9236(%rbp)
	movq	8(%r13), %rcx
	movl	-9236(%rbp), %r8d
	cmpl	(%rcx), %r8d
	jl	.L21511
	jmp	.L25541
.L25933:
	movq	8(%rdi), %rcx
	movq	8(%rcx), %r9
	movq	%r9, 16(%rbx)
	call	emit_insn
	jmp	.L21504
.L25932:
	movzbl	2(%r12), %edx
	cmpl	%r14d, %edx
	jne	.L21495
.L21496:
	movq	-5352(%rbp), %r10
	movq	-5344(%rbp), %r14
	movq	%r12, (%r14,%r10,8)
	jmp	.L21470
.L25931:
	cmpq	$0, -5360(%rbp)
	jne	.L24430
	movq	8(%r12), %rdx
	movzbq	2(%rdx), %rsi
	movzbl	mode_size(%rsi), %ebx
	cmpl	%ebx, -9232(%rbp)
	je	.L21485
.L21486:
	movzbq	2(%rdx), %r9
	movzbq	mode_size(%r9), %rdi
	cmpq	%rdi, -5360(%rbp)
	je	.L25934
.L21484:
	cmpq	$0, -5360(%rbp)
	jne	.L22779
	movzbl	2(%r12), %edi
	xorl	%edx, %edx
	movslq	%edi,%rbx
	movzbq	mode_size(%rbx), %rsi
	call	assign_stack_temp
	movq	%r12, %rsi
	movq	%rax, %rbx
	movq	%rax, %rdi
	call	emit_move_insn
	movl	$1, %r8d
	movl	$1, %ecx
	movq	%rbx, %rdi
	movl	%r14d, %esi
	xorl	%edx, %edx
	call	adjust_address_1
	jmp	.L24999
.L25934:
	movq	16(%r12), %r10
	movzbq	2(%r10), %rdx
	movzbl	mode_size(%rdx), %ecx
	cmpl	%ecx, -9232(%rbp)
	jne	.L21484
.L21485:
	xorl	%r8d, %r8d
	movq	-5352(%rbp), %r11
	movq	-5344(%rbp), %rax
	cmpq	$0, -5360(%rbp)
	setne	%r8b
	leaq	(%rax,%r11,8), %rbx
	movq	8(%r12,%r8,8), %rcx
	movq	%rcx, (%rbx)
	movzwl	(%rcx), %edx
	leal	-67(%rdx), %r12d
	cmpw	$1, %r12w
	jbe	.L21470
	cmpw	$54, %dx
	je	.L21470
	cmpw	$55, %dx
	je	.L21470
	cmpw	$58, %dx
	je	.L21470
	cmpw	$134, %dx
	je	.L21470
	cmpw	$56, %dx
	je	.L21470
	cmpw	$140, %dx
	je	.L21470
	cmpw	$61, %dx
	je	.L25935
.L21490:
	movslq	-5332(%rbp),%rdi
	movl	-9232(%rbp), %r9d
	movl	%r14d, (%rsp)
	xorl	%edx, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	sall	$3, %r9d
	movq	%rdi, 8(%rsp)
	mov	%r9d, %esi
	movq	(%rbx), %rdi
	movl	%r14d, %r9d
	call	extract_bit_field
	movq	%rax, (%rbx)
	jmp	.L21470
.L25935:
	movzbl	2(%rcx), %esi
	cmpl	%r14d, %esi
	jne	.L21490
	jmp	.L21470
.L24430:
	movq	8(%r12), %rdx
	jmp	.L21486
.L25930:
	movl	%r14d, %edi
	call	get_mode_alignment
	movq	16(%r12), %rdx
	testq	%rdx, %rdx
	je	.L21480
	cmpl	%eax, 32(%rdx)
	jae	.L21481
.L24429:
	movzwl	(%r12), %edx
	jmp	.L21479
.L21481:
	movq	-5360(%rbp), %rbx
	movl	%r14d, %edi
	call	get_mode_alignment
	mov	%eax, %ecx
	salq	$3, %rbx
	movq	%rbx, %rax
	cqto
	idivq	%rcx
	testq	%rdx, %rdx
	jne	.L24429
	movq	-5368(%rbp), %r10
	movzbl	mode_size(%r10), %edx
	cmpl	%edx, -9232(%rbp)
	jne	.L24429
	movl	%r14d, %edi
	call	gen_reg_rtx
	movl	$1, %ecx
	movq	-5360(%rbp), %rdx
	movq	-5344(%rbp), %r8
	movq	-5352(%rbp), %r11
	movq	%r12, %rdi
	movl	%r14d, %esi
	leaq	(%r8,%r11,8), %rbx
	movl	$1, %r8d
	movq	%rax, (%rbx)
	call	adjust_address_1
	movq	(%rbx), %rdi
	movq	%rax, %rsi
	call	emit_move_insn
	jmp	.L21470
.L21480:
	cmpl	$8, %eax
	ja	.L24429
	jmp	.L21481
.L21476:
	movzbl	2(%r15), %edx
	movzbl	%dl, %edi
	cmpl	%r14d, %edi
	je	.L21474
	testb	%dl, %dl
	je	.L21474
	jmp	.L21475
.L25907:
	movq	-5312(%rbp), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$4, %ecx
	call	expand_expr
	movq	%rax, %r13
	jmp	.L21463
.L25906:
	movq	%rcx, %rdi
	xorl	%esi, %esi
	call	make_decl_rtl
	movq	-5312(%rbp), %r9
	movq	144(%r9), %rax
	jmp	.L21462
	.p2align 6,,7
.L21350:
	movl	$0, -2616(%rbp)
	xorl	%ebx, %ebx
	leaq	-2592(%rbp), %r12
	call	push_temp_slots
	movq	-5312(%rbp), %r13
	movq	global_trees+120(%rip), %rdx
	movl	$0, -9296(%rbp)
	movq	global_trees+136(%rip), %r14
	movq	$0, -2624(%rbp)
	movq	%rdx, -9312(%rbp)
	movq	%r14, -9304(%rbp)
	movzbl	16(%r13), %eax
	cmpb	$39, %al
	je	.L25936
	cmpb	$40, %al
	je	.L25937
	movq	-5312(%rbp), %rax
	movq	8(%rax), %rdx
	movzbl	61(%rdx), %r10d
	movzbl	17(%rdx), %ecx
	shrb	$1, %r10b
	shrb	$5, %cl
	movzbl	%r10b, %r9d
	movl	%ecx, %r14d
	andl	$1, %r14d
	movl	%r9d, -9296(%rbp)
	cmpl	$51, -9296(%rbp)
	movl	%r14d, -5328(%rbp)
	je	.L25938
	movslq	-9296(%rbp),%r8
	movzwq	mode_bitsize(%r8,%r8), %rdx
	movq	%rdx, -2592(%rbp)
.L21353:
	testq	%rbx, %rbx
	jne	.L25939
.L21420:
	movzbl	16(%r13), %edx
	cmpb	$40, %dl
	je	.L25940
	cmpb	$39, %dl
	je	.L25941
	leal	-43(%rdx), %ebx
	cmpb	$1, %bl
	jbe	.L25942
	cmpb	$57, %dl
	jne	.L21378
	movq	-2624(%rbp), %rax
	leaq	-2624(%rbp), %r9
	movq	8(%r13), %rdx
	testq	%rax, %rax
	je	.L21379
	movq	(%rax), %r8
.L21380:
	testq	%r8, %r8
	je	.L24132
	movq	128(%rdx), %rsi
.L21413:
	movq	24(%r8), %rdi
	testq	%rdi, %rdi
	movq	%rdi, %rdx
	je	.L24134
	.p2align 4,,7
.L21398:
	movq	8(%rdi), %r12
	cmpq	%rsi, 128(%r12)
	je	.L25943
	movzbl	16(%rdi), %eax
	cmpb	$47, %al
	je	.L21394
	cmpb	$51, %al
	je	.L21394
	movzbl	%al, %r15d 
	movzbl	tree_code_type(%r15), %eax
	cmpb	$114, %al
	je	.L21397
	cmpb	$49, %al
	je	.L21397
	cmpb	$50, %al
	je	.L21397
	cmpb	$101, %al
	je	.L21397
	xorl	%edi, %edi
	.p2align 4,,7
.L21393:
	testq	%rdi, %rdi
	jne	.L21398
.L24134:
	testq	%rdx, %rdx
	je	.L24136
	.p2align 4,,7
.L21412:
	movq	8(%rdx), %rcx
	movzbl	16(%rcx), %eax
	cmpb	$13, %al
	je	.L21404
	cmpb	$15, %al
	je	.L21404
.L21401:
	movzbl	16(%rdx), %eax
	cmpb	$47, %al
	je	.L21408
	cmpb	$51, %al
	je	.L21408
	movzbl	%al, %edi 
	movzbl	tree_code_type(%rdi), %eax
	cmpb	$114, %al
	je	.L21411
	cmpb	$49, %al
	je	.L21411
	cmpb	$50, %al
	je	.L21411
	cmpb	$101, %al
	je	.L21411
	xorl	%edx, %edx
	.p2align 4,,7
.L21407:
	testq	%rdx, %rdx
	jne	.L21412
.L24136:
	movq	(%r8), %r8
	testq	%r8, %r8
	jne	.L21413
.L24132:
	xorl	%edi, %edi
.L21391:
	testq	%rdi, %rdi
	je	.L21362
	movq	%rdi, %r13
	jmp	.L21420
.L21362:
	movq	-9312(%rbp), %rdi
	xorl	%esi, %esi
	call	host_integerp
	testl	%eax, %eax
	je	.L21421
	movq	sizetype_tab+24(%rip), %rdi
	movq	-9312(%rbp), %rsi
	call	convert
	movq	global_trees+152(%rip), %rdx
	movl	$61, %edi
	movq	%rax, %rsi
	call	size_binop
	testq	%rax, %rax
	movq	%rax, %rsi
	je	.L21421
	movq	-9304(%rbp), %rdx
	movl	$59, %edi
	call	size_binop
	testq	%rax, %rax
	movq	%rax, %rbx
	jne	.L25944
.L21421:
	movq	-9304(%rbp), %rdi
	xorl	%esi, %esi
	call	tree_low_cst
	movq	%rax, -2600(%rbp)
	movq	-9312(%rbp), %rax
	movq	%rax, -2608(%rbp)
.L21422:
	movl	-9296(%rbp), %r12d
	testl	%r12d, %r12d
	movl	%r12d, -2612(%rbp)
	jne	.L21424
	movl	-5324(%rbp), %esi
	testl	%esi, %esi
	jne	.L25945
.L21424:
	movq	%r13, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	call	expand_expr
	movq	-2608(%rbp), %rdi
	movq	%rax, %r12
	movq	%rax, %r15
	testq	%rdi, %rdi
	jne	.L25946
.L21425:
	cmpw	$66, (%r12)
	je	.L25947
.L21435:
	movl	-2616(%rbp), %eax
	testl	%eax, %eax
	je	.L21450
	cmpw	$66, (%r12)
	je	.L25948
.L21450:
	movq	-5312(%rbp), %rbx
	cmpb	$39, 16(%rbx)
	je	.L25949
.L21452:
	cmpw	$66, (%r12)
	je	.L25950
.L21454:
	movq	-5312(%rbp), %rdi
	call	get_alias_set
	movl	-5324(%rbp), %r15d
	movl	-2612(%rbp), %ecx
	movq	%rax, %rdi
	movq	-2592(%rbp), %rsi
	movq	-2600(%rbp), %rdx
	testl	%r15d, %r15d
	je	.L21456
	movq	-5312(%rbp), %r14
	movq	8(%r14), %r8
	movzbl	61(%r8), %r10d
	shrb	$1, %r10b
	movzbl	%r10b, %r9d
.L21457:
	movl	-5328(%rbp), %eax
	movq	-5320(%rbp), %r8
	movl	%eax, (%rsp)
	movq	8(%r13), %rbx
	movl	%edi, 16(%rsp)
	movq	%r12, %rdi
	movq	%rbx, 8(%rsp)
	call	store_field
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	preserve_temp_slots
	call	free_temp_slots
	call	pop_temp_slots
	movl	-5324(%rbp), %r13d
	testl	%r13d, %r13d
	je	.L22343
	movq	-5312(%rbp), %rsi
	movq	8(%rsi), %rdx
	movq	-5320(%rbp), %rsi
	movzbl	61(%rdx), %r12d
	shrb	$1, %r12b
	movzbl	%r12b, %edi
	jmp	.L25112
.L21456:
	xorl	%r9d, %r9d
	jmp	.L21457
.L25950:
	movq	-5312(%rbp), %rdi
	call	can_address_p
	testl	%eax, %eax
	jne	.L21454
	cmpq	%r15, %r12
	je	.L25951
.L21455:
	orb	$1, 3(%r12)
	jmp	.L21454
.L25951:
	movq	%r12, %rdi
	call	copy_rtx
	movq	%rax, %r12
	jmp	.L21455
	.p2align 6,,7
.L25949:
	movq	40(%rbx), %r9
	testb	$16, 17(%r9)
	je	.L21452
	cmpq	%r15, %r12
	je	.L25952
.L21453:
	orb	$4, 3(%r12)
	jmp	.L21452
.L25952:
	movq	%r12, %rdi
	call	copy_rtx
	movq	%rax, %r12
	jmp	.L21453
	.p2align 6,,7
.L25948:
	cmpq	%r15, %r12
	je	.L25953
.L21451:
	orb	$8, 3(%r12)
	jmp	.L21450
.L25953:
	movq	%r12, %rdi
	call	copy_rtx
	movq	%rax, %r12
	jmp	.L21451
	.p2align 6,,7
.L25947:
	movq	16(%r12), %rax
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	.L21437
	movq	8(%rax), %rbx
.L21437:
	movq	%r12, %rdi
	call	shallow_copy_rtx
	xorl	%edx, %edx
	movq	-5312(%rbp), %rsi
	movq	%rax, %r12
	movq	%rax, %rdi
	call	set_mem_attributes
	movq	16(%r12), %rax
	testq	%rax, %rax
	je	.L21439
	cmpq	%rbx, 8(%rax)
.L24997:
	je	.L21435
	testq	%rax, %rax
	je	.L21435
	movq	16(%rax), %rsi
	testq	%rsi, %rsi
	je	.L21435
	movq	-2600(%rbp), %r11
	cmpq	$-1, %r11
	leaq	7(%r11), %r14
	movq	%r11, %rax
	cmovle	%r14, %rax
	sarq	$3, %rax
	testq	%rax, %rax
	je	.L21435
	movq	8(%rsi), %rsi
	xorl	%edi, %edi
	subq	%rax, %rsi
	call	gen_rtx_CONST_INT
	movq	%r12, %rdi
	movq	%rax, %rsi
	call	set_mem_offset
	jmp	.L21435
	.p2align 6,,7
.L21439:
	testq	%rbx, %rbx
	jmp	.L24997
.L25946:
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$1, %ecx
	call	expand_expr
	cmpw	$66, (%r12)
	movq	%rax, %r14
	jne	.L25507
	movzbl	2(%rax), %r11d
	movl	ptr_mode(%rip), %edi
	cmpl	%edi, %r11d
	je	.L21427
	movq	%rax, %rsi
	xorl	%edx, %edx
	call	convert_to_mode
	movq	%rax, %r14
.L21427:
	movl	(%r12), %eax
	andl	$16777215, %eax
	cmpl	$3342402, %eax
	je	.L25954
.L21428:
	movq	-5312(%rbp), %rdx
	movq	-2608(%rbp), %rdi
	movq	8(%rdx), %rbx
	call	highest_pow2_factor
	movq	%r12, %rdi
	movl	64(%rbx), %esi
	shrl	$3, %esi
	mov	%esi, %edx
	movq	%r14, %rsi
	cmpq	%rax, %rdx
	cmovl	%rax, %rdx
	call	offset_address
	movq	%rax, %r12
	jmp	.L21425
.L25954:
	movq	8(%r12), %rdi
	cmpb	$0, 2(%rdi)
	je	.L21428
	movq	-2592(%rbp), %rdx
	testq	%rdx, %rdx
	jle	.L21428
	movq	-2600(%rbp), %rax
	movq	%rdx, %r9
	cqto
	idivq	%r9
	testq	%rdx, %rdx
	jne	.L21428
	movl	-2612(%rbp), %edi
	call	get_mode_alignment
	movq	-2592(%rbp), %rcx
	mov	%eax, %r8d
	movq	%rcx, %rax
	cqto
	idivq	%r8
	testq	%rdx, %rdx
	jne	.L21428
	movl	-2612(%rbp), %edi
	call	get_mode_alignment
	movq	16(%r12), %rdx
	testq	%rdx, %rdx
	je	.L21429
	cmpl	%eax, 32(%rdx)
.L24996:
	jne	.L21428
	movq	-2600(%rbp), %rdx
	movl	-2612(%rbp), %esi
	movq	%r12, %rdi
	movl	$1, %ecx
	movl	$1, %r8d
	cmpq	$-1, %rdx
	leaq	7(%rdx), %rbx
	cmovle	%rbx, %rdx
	sarq	$3, %rdx
	call	adjust_address_1
	movq	$0, -2600(%rbp)
	movq	%rax, %r12
	jmp	.L21428
.L21429:
	cmpl	$8, %eax
	jmp	.L24996
	.p2align 6,,7
.L25945:
	movq	%r13, %rdi
	call	stabilize_reference
	movq	%rax, %r13
	jmp	.L21424
.L25944:
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	host_integerp
	testl	%eax, %eax
	je	.L21421
	movq	%rbx, %rdi
	xorl	%esi, %esi
	call	tree_low_cst
	movq	$0, -2608(%rbp)
	movq	%rax, -2600(%rbp)
	jmp	.L21422
	.p2align 6,,7
.L21411:
	movq	32(%rdx), %rdx
	jmp	.L21407
.L21408:
	movq	40(%rdx), %rdx
	jmp	.L21407
.L21404:
	movq	8(%rcx), %r11
	cmpq	%rsi, 128(%r11)
	jne	.L21401
	testq	%r9, %r9
	je	.L21405
	movq	%r8, (%r9)
.L21405:
	movl	$41, %edi
	call	build1
	movq	%rax, %rdi
	jmp	.L21391
	.p2align 6,,7
.L21397:
	movq	32(%rdi), %rdi
	jmp	.L21393
.L21394:
	movq	40(%rdi), %rdi
	jmp	.L21393
.L25943:
	testq	%r9, %r9
	je	.L21391
	movq	%r8, (%r9)
	jmp	.L21391
.L21379:
	movq	placeholder_list(%rip), %r8
	jmp	.L21380
.L21378:
	leal	-116(%rdx), %r14d
	cmpb	$1, %r14b
	jbe	.L21365
	leal	-114(%rdx), %ecx
	cmpb	$1, %cl
	ja	.L21362
	movq	32(%r13), %r8
	movq	8(%r13), %rbx
	movq	8(%r8), %rdx
	movzbl	61(%rbx), %r10d
	movzbl	61(%rdx), %r9d
	andb	$-2, %r10b
	andb	$-2, %r9b
	cmpb	%r9b, %r10b
	jne	.L21362
.L21365:
	testb	$8, 17(%r13)
	je	.L21419
	movl	$1, -2616(%rbp)
.L21419:
	movq	32(%r13), %r13
	jmp	.L21420
.L25942:
	movq	32(%r13), %r15
	xorl	%r12d, %r12d
	movq	40(%r13), %rbx
	movq	8(%r15), %rdx
	movq	24(%rdx), %rax
	testq	%rax, %rax
	je	.L21373
	movq	104(%rax), %r12
.L21373:
	movq	8(%rdx), %rsi
	testq	%r12, %r12
	movq	40(%rsi), %r14
	jne	.L25955
.L21374:
	testb	$2, 17(%rbx)
	je	.L25956
.L21375:
	testb	$2, 17(%r14)
	je	.L25957
.L21376:
	movq	sizetype_tab(%rip), %rdi
	movq	%rbx, %rsi
	call	convert
	movq	%r14, %rdx
	movl	$61, %edi
	movq	%rax, %rsi
	call	size_binop
	movq	-9312(%rbp), %rsi
	movl	$59, %edi
	movq	%rax, %rdx
	call	size_binop
	movq	%rax, -9312(%rbp)
	jmp	.L21365
.L25957:
	movq	%r14, %rdi
	call	contains_placeholder_p
	testl	%eax, %eax
	je	.L21376
	movq	sizetype_tab(%rip), %rsi
	movq	%r14, %rdx
	movl	$58, %edi
	movq	%r15, %rcx
	xorl	%eax, %eax
	call	build
	movq	%rax, %r14
	jmp	.L21376
	.p2align 6,,7
.L25956:
	movq	%rbx, %rdi
	call	contains_placeholder_p
	testl	%eax, %eax
	je	.L21375
	movq	8(%rbx), %rsi
	movq	%rbx, %rdx
	movl	$58, %edi
	movq	%r13, %rcx
	xorl	%eax, %eax
	call	build
	movq	%rax, %rbx
	jmp	.L21375
	.p2align 6,,7
.L25955:
	movq	%r12, %rdi
	call	integer_zerop
	testl	%eax, %eax
	jne	.L21374
	movq	8(%rbx), %rsi
	movq	%rbx, %rdx
	movl	$60, %edi
	movq	%r12, %rcx
	xorl	%eax, %eax
	call	build
	movq	%rax, %rdi
	call	fold
	movq	%rax, %rbx
	jmp	.L21374
	.p2align 6,,7
.L25941:
	movq	40(%r13), %r12
	movq	88(%r12), %rbx
	testq	%rbx, %rbx
	je	.L21362
	testb	$2, 17(%rbx)
	je	.L25958
.L21368:
	movq	-9312(%rbp), %rsi
	movl	$59, %edi
	movq	%rbx, %rdx
	call	size_binop
	movq	-9304(%rbp), %rsi
	movl	$59, %edi
	movq	%rax, -9312(%rbp)
	movq	160(%r12), %rdx
.L24995:
	call	size_binop
	movq	%rax, -9304(%rbp)
	jmp	.L21365
.L25958:
	movq	%rbx, %rdi
	call	contains_placeholder_p
	testl	%eax, %eax
	je	.L21368
	movq	sizetype_tab(%rip), %rsi
	movq	%rbx, %rdx
	movl	$58, %edi
	movq	%r13, %rcx
	xorl	%eax, %eax
	call	build
	movq	%rax, %rbx
	jmp	.L21368
	.p2align 6,,7
.L25940:
	movq	-9304(%rbp), %rsi
	movq	48(%r13), %rdx
	movl	$59, %edi
	jmp	.L24995
.L25939:
	movq	%rbx, %rdi
	movl	$1, %esi
	call	host_integerp
	testl	%eax, %eax
	jne	.L21359
	movl	$51, -9296(%rbp)
	movq	$-1, (%r12)
	jmp	.L21420
.L21359:
	movq	%rbx, %rdi
	movl	$1, %esi
	call	tree_low_cst
	movq	%rax, (%r12)
	jmp	.L21420
	.p2align 6,,7
.L25938:
	movq	32(%rdx), %rbx
	jmp	.L21353
.L25937:
	movq	-5312(%rbp), %rdi
	movzbl	17(%rdi), %esi
	movq	40(%rdi), %rbx
	shrb	$5, %sil
	movl	%esi, %r15d
	andl	$1, %r15d
	movl	%r15d, -5328(%rbp)
	jmp	.L21353
.L25936:
	movq	40(%r13), %rax
	testb	$16, 49(%rax)
	movq	40(%rax), %rbx
	jne	.L21352
	movzbl	48(%rax), %r9d
	movl	%r9d, -9296(%rbp)
.L21352:
	movzbl	17(%rax), %r8d
	shrb	$5, %r8b
	movl	%r8d, %r10d
	andl	$1, %r10d
	movl	%r10d, -5328(%rbp)
	jmp	.L21353
.L25895:
	movq	%rcx, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	call	expand_expr
	movq	%rax, %r13
	jmp	.L25117
.L20422:
	movq	-9552(%rbp), %rax
	movq	32(%rax), %r12
	movq	$0, -9000(%rbp)
	cmpb	$34, 16(%r12)
	jne	.L25959
	movl	-6220(%rbp), %eax
	testl	%eax, %eax
	cmove	%rbx, %r13
	orb	$1, 18(%r12)
	testq	%r13, %r13
	jne	.L20425
	movq	144(%r12), %rax
	testq	%rax, %rax
	je	.L20426
	movq	-9552(%rbp), %r15
	movq	%rax, %r13
	movq	40(%r15), %rsi
	testq	%rsi, %rsi
	movq	%rsi, -9576(%rbp)
.L25056:
	je	.L7871
.L20432:
	movq	-9576(%rbp), %r12
	movq	-9552(%rbp), %rcx
	xorl	%r14d, %r14d
	movq	%r12, 56(%rcx)
	movq	$0, 40(%rcx)
	movq	-9576(%rbp), %rsi
	movq	%r13, -9224(%rbp)
	movl	$0, -9004(%rbp)
	movzbl	16(%rsi), %eax
	cmpb	$47, %al
	je	.L25961
	cmpb	$51, %al
	je	.L25962
.L20448:
	movzwl	(%r13), %eax
	subl	$66, %eax
	cmpl	$12, %eax
	ja	.L20496
	mov	%eax, %r10d
	jmp	*.L20497(,%r10,8)
	.section	.rodata
	.align 8
	.align 4
.L20497:
	.quad	.L20490
	.quad	.L20496
	.quad	.L20496
	.quad	.L20496
	.quad	.L20496
	.quad	.L20495
	.quad	.L20496
	.quad	.L20496
	.quad	.L20496
	.quad	.L20493
	.quad	.L20493
	.quad	.L20496
	.quad	.L20493
	.text
.L20490:
	movq	8(%r13), %rdi
	call	queued_subexp_p
	movl	%eax, %ebx
.L20489:
	testl	%ebx, %ebx
	je	.L20486
	movzbl	2(%r13), %eax
	cmpb	$51, %al
	je	.L20498
	testb	%al, %al
	jne	.L25963
.L20498:
	movzbl	2(%r13), %edx
	movq	-9576(%rbp), %rdi
	xorl	%esi, %esi
.L24962:
	xorl	%ecx, %ecx
	call	expand_expr
	testb	$8, 3(%r13)
	movq	%rax, -9216(%rbp)
	jne	.L24422
	xorl	%r11d, %r11d
	testl	%r11d, %r11d
	je	.L24417
	movl	$1, -9004(%rbp)
.L24420:
	movq	-9216(%rbp), %rdi
	movzwl	(%rdi), %edx
.L20447:
	leal	-67(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L20525
	cmpw	$54, %dx
	je	.L20525
	cmpw	$55, %dx
	je	.L20525
	cmpw	$58, %dx
	je	.L20525
	cmpw	$134, %dx
	je	.L20525
	cmpw	$56, %dx
	je	.L20525
	cmpw	$140, %dx
	je	.L20525
.L20524:
	movq	-9216(%rbp), %rdi
	movq	%r13, %rsi
	call	rtx_equal_p
	testl	%eax, %eax
	je	.L20527
	cmpq	%r13, -9216(%rbp)
	je	.L20526
	movq	-9216(%rbp), %rdi
	call	side_effects_p
	testl	%eax, %eax
	je	.L25964
.L20527:
	movq	-9576(%rbp), %rbx
	movzbl	16(%rbx), %eax
	testb	%al, %al
	je	.L20526
	testl	%r14d, %r14d
	jne	.L20526
	movzbl	%al, %r14d 
	cmpb	$100, tree_code_type(%r14)
	je	.L25965
.L20528:
	movzwl	(%r13), %eax
	cmpl	$71, %eax
	je	.L20533
	cmpl	$66, %eax
	je	.L25966
.L20537:
	cmpl	$75, %eax
	je	.L20541
	cmpl	$78, %eax
	je	.L20541
.L20536:
	movq	-9216(%rbp), %rcx
	movq	-9224(%rbp), %rbx
	movzbl	2(%rcx), %eax
	movzbl	2(%rbx), %ecx
	cmpb	%cl, %al
	je	.L20546
	testb	%al, %al
	je	.L20546
	movq	-9576(%rbp), %rax
	movq	8(%rax), %r12
	movl	-9004(%rbp), %eax
	movzbl	17(%r12), %edi
	shrb	$5, %dil
	movl	%edi, %edx
	andl	$1, %edx
	testl	%eax, %eax
	je	.L20547
	movq	-9216(%rbp), %rsi
	movzbl	%cl, %edi
	call	convert_to_mode
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movq	%rax, -9216(%rbp)
.L24994:
	call	emit_move_insn
.L20526:
	xorl	%eax, %eax
	testl	%eax, %eax
	je	.L20446
	movl	-9004(%rbp), %r8d
	testl	%r8d, %r8d
	je	.L21339
	movq	-9216(%rbp), %r15
	cmpw	$66, (%r15)
	je	.L21339
.L20446:
	movq	-9000(%rbp), %rsi
	xorl	%edi, %edi
	call	expand_decl_cleanup
	jmp	.L7871
.L21339:
	movq	-9224(%rbp), %rax
	cmpb	$51, 2(%rax)
	je	.L20446
	cmpw	$61, (%rax)
	je	.L25967
.L21342:
	movq	-9224(%rbp), %rdi
	call	copy_to_reg
	jmp	.L20446
.L25967:
	cmpl	$52, 8(%rax)
	jbe	.L20446
	jmp	.L21342
.L20547:
	movq	-9224(%rbp), %rdi
	movq	-9216(%rbp), %rsi
	call	convert_move
	jmp	.L20526
	.p2align 6,,7
.L20546:
	cmpb	$51, %al
	je	.L25968
.L20550:
	movq	-9224(%rbp), %rcx
	cmpw	$39, (%rcx)
	je	.L25969
	cmpb	$51, %al
	je	.L25970
	movq	-9224(%rbp), %rdi
	movq	-9216(%rbp), %rsi
	jmp	.L24994
.L25970:
	movq	-9224(%rbp), %rdx
	movq	-9216(%rbp), %r14
	movq	-9576(%rbp), %rdi
	movq	%rdx, -9176(%rbp)
	movq	%r14, -9184(%rbp)
	call	expr_size
	movl	$8, %edx
	movq	-9224(%rbp), %rdi
	movq	%rax, %r14
	movq	16(%rdi), %rcx
	testq	%rcx, %rcx
	je	.L21141
	movl	32(%rcx), %edx
.L21141:
	movq	-9216(%rbp), %r11
	movq	16(%r11), %rax
	testq	%rax, %rax
	je	.L21142
	cmpl	32(%rax), %edx
	jb	.L21143
.L21138:
	testq	%rax, %rax
	movl	$8, -9164(%rbp)
	je	.L21139
	movl	32(%rax), %eax
.L24985:
	movl	%eax, -9164(%rbp)
.L21139:
	movq	-9224(%rbp), %rbx
	cmpb	$51, 2(%rbx)
	jne	.L25547
	movq	-9216(%rbp), %r9
	cmpb	$51, 2(%r9)
	jne	.L25546
	movq	-9224(%rbp), %rsi
	movzwl	(%rsi), %eax
	cmpl	$71, %eax
	je	.L21150
	cmpl	$66, %eax
	je	.L25971
.L21154:
	cmpl	$75, %eax
	je	.L21158
	cmpl	$78, %eax
	je	.L21158
.L21153:
	movq	-9216(%rbp), %rdx
	movzwl	(%rdx), %eax
	cmpl	$71, %eax
	je	.L21163
	cmpl	$66, %eax
	je	.L25972
.L21167:
	cmpl	$75, %eax
	je	.L21171
	cmpl	$78, %eax
	je	.L21171
.L21166:
	movzwl	(%r14), %eax
	cmpl	$71, %eax
	je	.L21176
	cmpl	$66, %eax
	je	.L25973
.L21180:
	cmpl	$75, %eax
	je	.L21184
	cmpl	$78, %eax
	je	.L21184
.L21179:
	movq	-9176(%rbp), %rdx
	cmpw	$66, (%rdx)
	jne	.L25545
	movq	-9184(%rbp), %r11
	cmpw	$66, (%r11)
	jne	.L25544
	testq	%r14, %r14
	je	.L25543
	cmpw	$54, (%r14)
	je	.L25974
.L21192:
	shrl	$3, -9164(%rbp)
	xorl	%edi, %edi
	mov	-9164(%rbp), %esi
	call	gen_rtx_CONST_INT
	movl	class_narrowest_mode+4(%rip), %r12d
	movl	$1, volatile_ok(%rip)
	movq	%rax, -5280(%rbp)
	testl	%r12d, %r12d
	je	.L24130
.L21325:
	movslq	%r12d,%rsi
	movl	movstr_optab(,%rsi,4), %edx
	movq	%rsi, -5288(%rbp)
	cmpl	$1317, %edx
	je	.L21311
	cmpw	$54, (%r14)
	je	.L25975
.L21315:
	testb	$2, target_flags+3(%rip)
	je	.L21316
	movq	-5288(%rbp), %rsi
	cmpw	$63, mode_bitsize(%rsi,%rsi)
.L24992:
	jbe	.L21311
.L21314:
	movslq	%edx,%rdi
	leaq	(%rdi,%rdi,4), %rcx
	movq	%rdi, -5296(%rbp)
	movq	insn_data+24(,%rcx,8), %r15
	movq	(%r15), %rax
	testq	%rax, %rax
	je	.L21318
	movq	-9176(%rbp), %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L21311
.L21318:
	movq	24(%r15), %rax
	testq	%rax, %rax
	jne	.L25976
.L21319:
	movq	72(%r15), %rax
	testq	%rax, %rax
	je	.L21320
	xorl	%esi, %esi
	movq	-5280(%rbp), %rdi
	call	*%rax
	testl	%eax, %eax
	je	.L21311
.L21320:
	call	get_last_insn
	movl	$1, %edx
	movq	%r14, %rsi
	movl	%r12d, %edi
	movq	%rax, -5304(%rbp)
	call	convert_to_mode
	movq	%rax, %rbx
	movq	48(%r15), %rax
	testq	%rax, %rax
	jne	.L25977
.L21321:
	movq	-5296(%rbp), %rdx
	movq	-9176(%rbp), %rdi
	xorl	%eax, %eax
	movq	-9184(%rbp), %rsi
	movq	-5280(%rbp), %rcx
	leaq	(%rdx,%rdx,4), %r12
	movq	%rbx, %rdx
	call	*insn_data+16(,%r12,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L24526
	movq	-5304(%rbp), %rdi
	call	delete_insns_since
.L21311:
	movq	-5288(%rbp), %rbx
	movzbl	mode_wider_mode(%rbx), %r12d
	testl	%r12d, %r12d
	jne	.L21325
.L24130:
	testb	$2, target_flags+3(%rip)
	movq	-9176(%rbp), %r15
	movl	$0, volatile_ok(%rip)
	setne	%sil
	movzbl	%sil, %edi
	movq	8(%r15), %rsi
	addl	$4, %edi
	call	copy_to_mode_reg
	testb	$2, target_flags+3(%rip)
	setne	%r8b
	movq	%rax, %r15
	movq	-9184(%rbp), %rax
	movq	8(%rax), %rsi
	movzbl	%r8b, %edi
	addl	$4, %edi
	call	copy_to_mode_reg
	movq	%r14, %rsi
	movq	sizetype_tab(%rip), %r10
	movq	%rax, %rbx
	movzbl	61(%r10), %r9d
	shrb	$1, %r9b
	movzbl	%r9b, %edi
	call	copy_to_mode_reg
	cmpq	$0, fn.1(%rip)
	movq	%rax, %r14
	je	.L25978
.L21334:
	movq	global_trees+216(%rip), %rdi
	call	build_pointer_type
	movq	%r15, %rsi
	movq	%rax, %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	global_trees+216(%rip), %rdi
	movq	%rax, %r12
	call	build_pointer_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	%r14, %rsi
	movq	%rax, (%r12)
	movq	%rax, %rbx
	movq	sizetype_tab(%rip), %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	fn.1(%rip), %rdx
	movq	%rax, (%rbx)
	movq	(%r12), %r10
	movq	8(%rdx), %rdi
	movq	(%r10), %r9
	movq	$0, (%r9)
	call	build_pointer_type
	movq	fn.1(%rip), %rdx
	movl	$121, %edi
	movq	%rax, %rsi
	call	build1
	xorl	%r8d, %r8d
	movq	%r12, %rcx
	movq	fn.1(%rip), %rbx
	movq	%rax, %rdx
	movl	$53, %edi
	xorl	%eax, %eax
	movq	8(%rbx), %r14
	movq	8(%r14), %rsi
	call	build
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	orb	$1, 17(%rax)
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	expand_expr
	testb	$4, 3(%r15)
	je	.L20526
	movl	$49, %edi
	xorl	%esi, %esi
	movq	%r15, %rdx
.L24993:
	call	gen_rtx_fmt_e
	movq	%rax, %rdi
	call	emit_insn
	jmp	.L20526
.L25978:
	movl	$.LC11, %edi
	call	get_identifier
	movq	global_trees+216(%rip), %rdi
	movq	%rax, fn.1(%rip)
	call	build_pointer_type
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	build_function_type
	movq	fn.1(%rip), %rsi
	movl	$30, %edi
	movq	%rax, %rdx
	call	build_decl
	movl	$1, %esi
	movl	$fn.1, %edi
	movq	%rax, fn.1(%rip)
	call	ggc_add_tree_root
	movq	fn.1(%rip), %r12
	xorl	%esi, %esi
	orb	$1, 49(%r12)
	movq	fn.1(%rip), %rdi
	orb	$8, 18(%rdi)
	movq	fn.1(%rip), %rcx
	orb	$64, 50(%rcx)
	movq	fn.1(%rip), %r11
	orb	$2, 18(%r11)
	movq	fn.1(%rip), %rdi
	call	make_decl_rtl
	movq	fn.1(%rip), %rdi
	call	assemble_external
	jmp	.L21334
.L24526:
	call	emit_insn
	movl	$0, volatile_ok(%rip)
	jmp	.L20526
.L25977:
	movq	%rbx, %rdi
	movl	%r12d, %esi
	call	*%rax
	testl	%eax, %eax
	jne	.L21321
	movq	%rbx, %rsi
	movl	%r12d, %edi
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L21321
.L25976:
	movq	-9184(%rbp), %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L21311
	jmp	.L21319
.L21316:
	movq	-5288(%rbp), %r11
	cmpw	$31, mode_bitsize(%r11,%r11)
	jmp	.L24992
.L25975:
	movq	mode_mask_array(,%rsi,8), %r15
	shrq	$1, %r15
	cmpq	%r15, 8(%r14)
	jbe	.L21314
	jmp	.L21315
.L25974:
	movq	8(%r14), %r12
	xorl	%r15d, %r15d
	movl	$17, %esi
.L21205:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L24119
.L21202:
	movslq	%ecx,%rbx
	movzbq	mode_size(%rbx), %r9
	cmpq	%rsi, %r9
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%rbx), %ecx
	testl	%ecx, %ecx
	jne	.L21202
.L24119:
	testl	%edi, %edi
	je	.L21195
	movslq	%edi,%rbx
	movq	%rbx, %r8
	salq	$4, %r8
	addq	optab_table+240(%rip), %r8
	cmpl	$1317, 8(%r8)
	je	.L21204
	call	get_mode_alignment
	movl	$128, %r10d
	cmpl	%eax, %r10d
	jb	.L21204
	movzbq	mode_size(%rbx), %rdi
	movq	%r12, %rax
	xorl	%edx, %edx
	divq	%rdi
	addq	%rax, %r15
	movq	%rdx, %r12
.L21204:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L21205
.L21195:
	testq	%r12, %r12
	jne	.L25529
	movl	optimize_size(%rip), %eax
	testl	%eax, %eax
	jne	.L21208
	movq	ix86_cost(%rip), %rdx
	mov	40(%rdx), %esi
	cmpq	%rsi, %r15
	jae	.L21192
.L21209:
	movq	-9184(%rbp), %rdi
	movq	-9176(%rbp), %r10
	movq	8(%r14), %r12
	movq	-9176(%rbp), %r9
	testb	$2, target_flags+3(%rip)
	movq	8(%rdi), %r8
	setne	%r14b
	movq	$0, -2136(%rbp)
	movl	$0, -9196(%rbp)
	movq	%r8, -2160(%rbp)
	movq	8(%r10), %rbx
	movq	%r9, -2192(%rbp)
	movzbl	%r14b, %ecx
	leal	5(,%rcx,4), %r14d
	xorl	%ecx, %ecx
	movzwl	(%rbx), %edx
	movq	%rbx, -9192(%rbp)
	leal	-96(%rdx), %r15d
	cmpw	$1, %r15w
	jbe	.L21214
	cmpw	$99, %dx
	je	.L21214
	cmpw	$98, %dx
	je	.L21214
.L21213:
	movq	-9192(%rbp), %r15
	movl	%ecx, -2176(%rbp)
	xorl	%edx, %edx
	movzwl	(%r15), %eax
	cmpw	$96, %ax
	je	.L21216
	cmpw	$98, %ax
	je	.L21216
.L21215:
	movl	%edx, -2128(%rbp)
	movq	-9184(%rbp), %rax
	xorl	%ecx, %ecx
	movq	-9192(%rbp), %rdx
	movq	%rax, -2168(%rbp)
	movq	%rdx, -2184(%rbp)
	movzwl	(%r8), %edx
	leal	-96(%rdx), %esi
	cmpw	$1, %si
	jbe	.L21219
	cmpw	$99, %dx
	je	.L21219
	cmpw	$98, %dx
	je	.L21219
.L21218:
	movl	-2128(%rbp), %r11d
	movl	%ecx, -2152(%rbp)
	movl	$0, -2148(%rbp)
	movl	$0, -2172(%rbp)
	testl	%r11d, %r11d
	je	.L21220
	movq	%r12, -2136(%rbp)
.L21220:
	movl	-2152(%rbp), %ebx
	movq	%r12, -2144(%rbp)
	testl	%ebx, %ebx
	je	.L21222
	movl	-2176(%rbp), %r9d
	testl	%r9d, %r9d
	jne	.L21221
.L21222:
	xorl	%r15d, %r15d
	movl	$17, %esi
.L21235:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L24122
.L21232:
	movslq	%ecx,%r10
	movzbq	mode_size(%r10), %rdx
	cmpq	%rsi, %rdx
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r10), %ecx
	testl	%ecx, %ecx
	jne	.L21232
.L24122:
	testl	%edi, %edi
	je	.L21225
	movslq	%edi,%rbx
	movq	%rbx, %rcx
	salq	$4, %rcx
	addq	optab_table+240(%rip), %rcx
	cmpl	$1317, 8(%rcx)
	je	.L21234
	movq	%r8, -9592(%rbp)
	call	get_mode_alignment
	movl	$128, %r8d
	cmpl	%eax, %r8d
	movq	-9592(%rbp), %r8
	jb	.L21234
	movzbq	mode_size(%rbx), %rsi
	movq	%r12, %rax
	xorl	%edx, %edx
	divq	%rsi
	addq	%rax, %r15
	movq	%rdx, %r12
.L21234:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L21235
.L21225:
	testq	%r12, %r12
	jne	.L25529
	cmpq	$2, %r15
	jbe	.L21221
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L24124
.L21243:
	movslq	%ecx,%r15
	movzbl	mode_size(%r15), %r11d
	cmpl	%r14d, %r11d
	cmovae	-9196(%rbp), %ecx
	movl	%ecx, -9196(%rbp)
	movzbl	mode_wider_mode(%r15), %ecx
	testl	%ecx, %ecx
	jne	.L21243
.L24124:
	movl	-2152(%rbp), %eax
	testl	%eax, %eax
	jne	.L21249
	movzwl	(%r8), %edx
	leal	-67(%rdx), %ebx
	cmpw	$1, %bx
	jbe	.L21247
	cmpw	$54, %dx
	je	.L21247
	cmpw	$55, %dx
	je	.L21247
	cmpw	$58, %dx
	je	.L21247
	cmpw	$134, %dx
	je	.L21247
	cmpw	$56, %dx
	je	.L21247
	cmpw	$140, %dx
	je	.L21247
.L21249:
	movl	-2176(%rbp), %eax
	testl	%eax, %eax
	jne	.L21221
	movq	-9192(%rbp), %r10
	movzwl	(%r10), %edx
	leal	-67(%rdx), %r9d
	cmpw	$1, %r9w
	jbe	.L21251
	cmpw	$54, %dx
	je	.L21251
	cmpw	$55, %dx
	je	.L21251
	cmpw	$58, %dx
	je	.L21251
	cmpw	$134, %dx
	je	.L21251
	cmpw	$56, %dx
	je	.L21251
	cmpw	$140, %dx
	je	.L21251
.L21221:
	cmpl	$1, %r14d
	jbe	.L21254
.L21305:
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L24127
.L21261:
	movslq	%ecx,%r8
	movzbl	mode_size(%r8), %edx
	cmpl	%r14d, %edx
	cmovae	-9196(%rbp), %ecx
	movl	%ecx, -9196(%rbp)
	movzbl	mode_wider_mode(%r8), %ecx
	testl	%ecx, %ecx
	jne	.L21261
.L24127:
	movl	-9196(%rbp), %eax
	testl	%eax, %eax
	je	.L21254
	movslq	-9196(%rbp),%r15
	movq	%r15, %r14
	salq	$4, %r14
	addq	optab_table+240(%rip), %r14
	movl	8(%r14), %ebx
	cmpl	$1317, %ebx
	je	.L21263
	movl	-9196(%rbp), %edi
	call	get_mode_alignment
	movl	$128, %ecx
	cmpl	%eax, %ecx
	jb	.L21263
	movzbq	mode_size(%r15), %rdx
	movslq	%ebx,%rsi
	movq	$0, -9208(%rbp)
	leaq	(%rsi,%rsi,4), %rdi
	cmpq	%rdx, -2144(%rbp)
	movq	insn_data+16(,%rdi,8), %r12
	movq	%rdx, -6192(%rbp)
	movq	%r12, -5272(%rbp)
	leaq	-2192(%rbp), %r12
	jb	.L21263
	movl	-2128(%rbp), %ecx
.L21303:
	testl	%ecx, %ecx
	je	.L21267
	subq	%rdx, 56(%r12)
.L21267:
	movq	(%r12), %rdi
	testq	%rdi, %rdi
	je	.L21268
	movl	16(%r12), %eax
	testl	%eax, %eax
	je	.L21269
	movl	-9196(%rbp), %esi
	movq	8(%r12), %rdx
	movl	$1, %r8d
	movq	56(%r12), %rcx
	call	adjust_automodify_address_1
.L24988:
	movq	%rax, -9208(%rbp)
.L21268:
	movl	40(%r12), %eax
	testl	%eax, %eax
	je	.L21271
	movq	24(%r12), %rdi
	movl	-9196(%rbp), %esi
	movl	$1, %r8d
	movq	32(%r12), %rdx
	movq	56(%r12), %rcx
	call	adjust_automodify_address_1
.L24989:
	cmpq	$0, (%r12)
	movq	%rax, %r14
	jne	.L25979
	movl	target_flags(%rip), %eax
	testl	$33554432, %eax
	movl	%eax, %esi
	je	.L21277
	movzbl	mode_size(%r15), %r11d
	leal	7(%r11), %edx
	andl	$-8, %edx
.L21278:
	movq	cfun(%rip), %r10
	andl	$33554432, %esi
	movq	16(%r10), %r9
	leaq	8(%r9), %rdi
	movl	8(%r9), %ecx
	je	.L21279
	movzbl	mode_size(%r15), %eax
	addl	$7, %eax
	andl	$-8, %eax
.L24990:
	movq	%r15, %r8
	leal	(%rax,%rcx), %esi
	salq	$4, %r8
	movl	%esi, (%rdi)
	addq	optab_table+384(%rip), %r8
	movl	8(%r8), %eax
	cmpl	$1317, %eax
	je	.L21281
	movslq	%eax,%rbx
	leaq	(%rbx,%rbx,4), %rcx
	movq	insn_data+24(,%rcx,8), %rdx
	movq	(%rdx), %rax
	testq	%rax, %rax
	je	.L21282
	movq	%r14, %rdi
	movl	-9196(%rbp), %esi
	call	*%rax
	testl	%eax, %eax
	je	.L25980
.L21282:
	leaq	(%rbx,%rbx,4), %r11
	movq	%r14, %rdi
	xorl	%eax, %eax
	call	*insn_data+16(,%r11,8)
.L24991:
	movq	%rax, %rdi
	call	emit_insn
.L21301:
	movl	64(%r12), %eax
	testl	%eax, %eax
	movl	%eax, %ecx
	jne	.L21302
	movq	-6192(%rbp), %r14
	addq	%r14, 56(%r12)
.L21302:
	movq	48(%r12), %r8
	movq	-6192(%rbp), %rdx
	subq	-6192(%rbp), %r8
	cmpq	%rdx, %r8
	movq	%r8, 48(%r12)
	jae	.L21303
.L21263:
	movzbl	mode_size(%r15), %r14d
	cmpl	$1, %r14d
	ja	.L21305
.L21254:
	cmpq	$0, -2144(%rbp)
.L25548:
	je	.L20526
	jmp	.L25518
.L25980:
	movl	-9196(%rbp), %edi
	movq	%r14, %rsi
	call	force_reg
	movq	%rax, %r14
	jmp	.L21282
.L21281:
	movzbl	mode_size(%r15), %edi
	cmpl	%edx, %edi
	je	.L25981
	mov	%edx, %esi
	xorl	%edi, %edi
	negq	%rsi
	call	gen_rtx_CONST_INT
	movq	global_rtl+16(%rip), %rdx
	movl	$75, %edi
	testb	$2, target_flags+3(%rip)
	movq	%rax, %rcx
	setne	%r9b
	movzbl	%r9b, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_ee
	movq	global_rtl+16(%rip), %rdx
	movl	$100, %edi
	testb	$2, target_flags+3(%rip)
	movq	%rax, %rcx
	setne	%bl
	movzbl	%bl, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_ee
.L21289:
	movl	-9196(%rbp), %edi
	movq	%rax, %rsi
	call	gen_rtx_MEM
	xorl	%r10d, %r10d
	testq	%r10, %r10
	movq	%rax, %rbx
	je	.L21298
	movq	%rax, %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	call	set_mem_attributes
	movl	flag_optimize_sibling_calls(%rip), %eax
	testl	%eax, %eax
	jne	.L25982
.L21298:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	call	emit_move_insn
	jmp	.L21301
.L25982:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	call	set_mem_alias_set
	jmp	.L21298
.L25981:
	testb	$2, target_flags+3(%rip)
	movq	global_rtl+16(%rip), %rdx
	movl	$96, %edi
	setne	%al
	movzbl	%al, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_e
	jmp	.L21289
.L21279:
	movzbl	mode_size(%r15), %eax
	incl	%eax
	andl	$-2, %eax
	jmp	.L24990
.L21277:
	movzbl	mode_size(%r15), %ebx
	leal	1(%rbx), %edx
	andl	$-2, %edx
	jmp	.L21278
.L25979:
	movq	%rax, %rsi
	movq	-9208(%rbp), %rdi
	xorl	%eax, %eax
	call	*-5272(%rbp)
	jmp	.L24991
.L21271:
	movq	24(%r12), %rdi
	movl	-9196(%rbp), %esi
	movl	$1, %ecx
	movq	56(%r12), %rdx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L24989
.L21269:
	movl	-9196(%rbp), %esi
	movq	56(%r12), %rdx
	movl	$1, %ecx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L24988
.L21251:
	movq	-9192(%rbp), %rdi
	call	copy_addr_to_reg
	movq	%rax, -2184(%rbp)
	jmp	.L21221
.L21247:
	movq	%r8, %rdi
	call	copy_addr_to_reg
	movq	%rax, -2160(%rbp)
	jmp	.L21249
.L21219:
	movl	$1, %ecx
	jmp	.L21218
.L21216:
	movl	$1, %edx
	jmp	.L21215
.L21214:
	movl	$1, %ecx
	jmp	.L21213
.L21208:
	cmpq	$2, %r15
	ja	.L21192
	jmp	.L21209
.L21184:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r14), %rdi
	movq	%rax, %r12
	call	protect_from_queue
	cmpq	8(%r14), %r12
	movq	%rax, %rbx
	je	.L25983
.L21186:
	movq	%r14, %rdi
	call	copy_rtx
	movq	%rax, %r14
	movq	%r12, 8(%rax)
	movq	%rbx, 16(%rax)
	jmp	.L21179
.L25983:
	cmpq	16(%r14), %rax
	jne	.L21186
	jmp	.L21179
.L25973:
	cmpb	$51, 2(%r14)
	je	.L21177
	movq	8(%r14), %r12
	cmpw	$71, (%r12)
	je	.L25984
.L21177:
	cmpl	$66, %eax
	jne	.L21180
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%r14), %rax
	movq	%rax, %rbx
	je	.L21179
	movq	%r14, %rdi
	call	copy_rtx
	movq	%rax, %r14
	movq	%rbx, 8(%rax)
	jmp	.L21179
.L25984:
	movq	8(%r12), %rsi
	movq	%r14, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%r12)
	movq	%rax, %rbx
	je	.L21178
	movzbl	2(%r14), %edi
	call	gen_reg_rtx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L21179
.L21178:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L24987:
	movq	%rax, %r14
	jmp	.L21179
.L21176:
	cmpq	$0, 16(%r14)
	je	.L25985
	movq	24(%r14), %rax
	testq	%rax, %rax
	jne	.L24987
	movq	8(%r14), %rsi
	movzbl	2(%rsi), %edi
	call	gen_reg_rtx
	movq	8(%r14), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r14), %r14
	jmp	.L21179
.L25985:
	movq	8(%r14), %rdi
	call	copy_to_reg
	jmp	.L24987
.L21171:
	movq	-9216(%rbp), %r9
	xorl	%esi, %esi
	movq	8(%r9), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	-9216(%rbp), %rbx
	movq	%rax, %r12
	movq	16(%rbx), %rdi
	call	protect_from_queue
	movq	-9216(%rbp), %rcx
	movq	%rax, %rbx
	cmpq	8(%rcx), %r12
	je	.L25986
.L21173:
	movq	-9216(%rbp), %rdi
	call	copy_rtx
	movq	%rax, -9184(%rbp)
	movq	%r12, 8(%rax)
	movq	-9184(%rbp), %r8
	movq	%rbx, 16(%r8)
	jmp	.L21166
.L25986:
	cmpq	16(%rcx), %rax
	jne	.L21173
	jmp	.L21166
.L25972:
	cmpb	$51, 2(%rdx)
	je	.L21164
	movq	8(%rdx), %r12
	cmpw	$71, (%r12)
	je	.L25987
.L21164:
	cmpl	$66, %eax
	jne	.L21167
	movq	-9216(%rbp), %r11
	xorl	%esi, %esi
	movq	8(%r11), %rdi
	call	protect_from_queue
	movq	-9216(%rbp), %rsi
	movq	%rax, %rbx
	cmpq	8(%rsi), %rax
	je	.L21166
	movq	%rsi, %rdi
	call	copy_rtx
	movq	%rax, -9184(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L21166
.L25987:
	movq	8(%r12), %rsi
	movq	%rdx, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%r12)
	movq	%rax, %rbx
	je	.L21165
	movq	-9216(%rbp), %rdx
	movzbl	2(%rdx), %edi
	call	gen_reg_rtx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, -9184(%rbp)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L21166
.L21165:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L24986:
	movq	%rax, -9184(%rbp)
	jmp	.L21166
.L21163:
	movq	-9216(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.L25988
	movq	-9216(%rbp), %rax
	movq	24(%rax), %rcx
	testq	%rcx, %rcx
	movq	%rcx, -9184(%rbp)
	jne	.L21166
	movq	-9216(%rbp), %rdi
	movq	8(%rdi), %r12
	movzbl	2(%r12), %edi
	call	gen_reg_rtx
	movq	-9216(%rbp), %r15
	movq	%rax, %rdi
	movq	8(%r15), %rsi
	movq	%rax, 24(%r15)
	call	gen_move_insn
	movq	16(%r15), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r15), %r10
	movq	%r10, -9184(%rbp)
	jmp	.L21166
.L25988:
	movq	8(%rax), %rdi
	call	copy_to_reg
	jmp	.L24986
.L21158:
	movq	-9224(%rbp), %rcx
	xorl	%esi, %esi
	movq	8(%rcx), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	-9224(%rbp), %r8
	movq	%rax, %r12
	movq	16(%r8), %rdi
	call	protect_from_queue
	movq	-9224(%rbp), %rsi
	movq	%rax, %rbx
	cmpq	8(%rsi), %r12
	je	.L25989
.L21160:
	movq	-9224(%rbp), %rdi
	call	copy_rtx
	movq	%rax, -9176(%rbp)
	movq	%r12, 8(%rax)
	movq	-9176(%rbp), %r12
	movq	%rbx, 16(%r12)
	jmp	.L21153
.L25989:
	cmpq	16(%rsi), %rax
	jne	.L21160
	jmp	.L21153
.L25971:
	jne	.L21154
	movq	8(%rsi), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, %rbx
	movq	-9224(%rbp), %rax
	cmpq	8(%rax), %rbx
	je	.L21153
	movq	%rax, %rdi
	call	copy_rtx
	movq	%rax, -9176(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L21153
.L21150:
	testq	%rcx, %rcx
	je	.L25990
	movq	-9224(%rbp), %r15
	movq	24(%r15), %r10
	testq	%r10, %r10
	movq	%r10, -9176(%rbp)
	jne	.L21153
	movq	-9224(%rbp), %r12
	movq	8(%r12), %rsi
	movzbl	2(%rsi), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %rdi
	movq	%rdi, -9176(%rbp)
	jmp	.L21153
.L25990:
	movq	-9224(%rbp), %rax
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%rax, -9176(%rbp)
	jmp	.L21153
.L21143:
	testq	%rcx, %rcx
	movl	$8, -9164(%rbp)
	je	.L21139
	movl	32(%rcx), %eax
	jmp	.L24985
.L21142:
	cmpl	$7, %edx
	ja	.L21138
	jmp	.L21143
.L25969:
	movq	-9576(%rbp), %r14
	movq	8(%r14), %rdi
	call	int_size_in_bytes
	movl	%eax, -5236(%rbp)
	movq	-9224(%rbp), %rax
	cmpw	$39, (%rax)
	jne	.L25561
	movq	-9224(%rbp), %rdx
	movq	8(%rdx), %rcx
	movq	8(%rcx), %rsi
	movl	(%rcx), %r12d
	cmpq	$0, 8(%rsi)
	movslq	%r12d,%r9
	sete	%r8b
	leaq	15(,%r9,8), %r11
	andq	$-16, %r11
	subq	%r11, %rsp
	leaq	32(%rsp), %rbx
	movzbl	%r8b, %r15d
	movq	%rbx, -5248(%rbp)
	movl	%r15d, -9160(%rbp)
	movl	-9160(%rbp), %edi
	cmpl	%r12d, %edi
	movl	%edi, -9152(%rbp)
	jge	.L24113
.L21122:
	movslq	-9152(%rbp),%r14
	movl	-5236(%rbp), %r10d
	testl	%r10d, %r10d
	movq	8(%rcx,%r14,8), %rdi
	movq	%r14, -5256(%rbp)
	movq	8(%rdi), %rax
	movq	16(%rdi), %r12
	movzbl	2(%rax), %r14d
	movq	8(%r12), %r15
	movslq	%r14d,%rcx
	movzbl	mode_size(%rcx), %edx
	movq	%rcx, -5264(%rbp)
	movl	%edx, -9156(%rbp)
	js	.L21095
	movslq	-5236(%rbp),%rbx
	mov	%edx, %r9d
	leaq	(%r9,%r15), %r11
	cmpq	%rbx, %r11
	jle	.L21095
	movl	-5236(%rbp), %r8d
	subl	%r15d, %r8d
	movl	%r8d, -9156(%rbp)
	je	.L25560
.L21095:
	movq	-9216(%rbp), %r12
	movzwl	(%r12), %edx
	cmpw	$66, %dx
	je	.L24542
	leal	-67(%rdx), %esi
	cmpw	$1, %si
	jbe	.L21099
	cmpw	$54, %dx
	je	.L21099
	cmpw	$55, %dx
	je	.L21099
	cmpw	$58, %dx
	je	.L21099
	cmpw	$134, %dx
	je	.L21099
	cmpw	$56, %dx
	je	.L21099
	cmpw	$140, %dx
	je	.L21099
.L21098:
	movq	-9216(%rbp), %rdx
	movl	%r14d, %edi
	movzbl	2(%rdx), %eax
	testb	%al, %al
	je	.L24983
	movzbl	%al, %edi
.L24983:
	call	gen_reg_rtx
	movq	-9216(%rbp), %rsi
	movq	%rax, %r12
	movq	%rax, %rdi
	call	emit_move_insn
	movzwl	(%r12), %edx
.L21097:
	cmpw	$66, %dx
	je	.L24542
.L21102:
	cmpw	$65, %dx
	je	.L25991
	leal	-67(%rdx), %esi
	cmpw	$1, %si
	jbe	.L21119
	cmpw	$54, %dx
	je	.L21119
	cmpw	$55, %dx
	je	.L21119
	cmpw	$58, %dx
	je	.L21119
	cmpw	$134, %dx
	je	.L21119
	cmpw	$56, %dx
	je	.L21119
	cmpw	$140, %dx
	je	.L21119
	cmpw	$61, %dx
	je	.L25992
.L21118:
	movl	-9156(%rbp), %r9d
	movslq	-5236(%rbp),%r11
	leaq	0(,%r15,8), %rdx
	movq	%r12, %rdi
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	%r14d, (%rsp)
	sall	$3, %r9d
	mov	%r9d, %esi
	movq	%r11, 8(%rsp)
	movl	%r14d, %r9d
	call	extract_bit_field
.L24984:
	movq	-5256(%rbp), %r12
	movq	-5248(%rbp), %r8
	movq	%rax, (%r8,%r12,8)
.L21093:
	movq	-9224(%rbp), %r10
	incl	-9152(%rbp)
	movl	-9152(%rbp), %eax
	movq	8(%r10), %rcx
	cmpl	(%rcx), %eax
	jl	.L21122
.L24113:
	movq	cfun(%rip), %r15
	movq	16(%r15), %rdi
	movq	40(%rdi), %rbx
	testq	%rbx, %rbx
	je	.L24115
.L21128:
	movq	32(%rbx), %rdi
	cmpw	$24, (%rdi)
	je	.L25993
	call	emit_insn
	movq	%rax, 16(%rbx)
.L21127:
	movq	cfun(%rip), %r11
	movq	40(%rbx), %r14
	movq	16(%r11), %rcx
	testq	%r14, %r14
	movq	%r14, %rbx
	movq	%r14, 40(%rcx)
	jne	.L21128
	movq	-9224(%rbp), %rbx
	movq	8(%rbx), %rcx
.L24115:
	movl	-9160(%rbp), %r9d
	cmpl	(%rcx), %r9d
	jge	.L20526
.L21134:
	movslq	-9160(%rbp),%r15
	movq	-5248(%rbp), %r10
	salq	$3, %r15
	movq	8(%r15,%rcx), %rsi
	movq	8(%rsi), %rdi
	movq	(%r10,%r15), %rsi
	call	emit_move_insn
	movq	-9224(%rbp), %rax
	incl	-9160(%rbp)
	movl	-9160(%rbp), %r8d
	movq	8(%rax), %r12
	cmpl	(%r12), %r8d
	movq	%r12, %rcx
	jl	.L21134
	jmp	.L20526
.L25993:
	movq	8(%rdi), %rdx
	movq	8(%rdx), %rsi
	movq	%rsi, 16(%rbx)
	call	emit_insn
	jmp	.L21127
.L25992:
	movzbl	2(%r12), %edx
	cmpl	%r14d, %edx
	jne	.L21118
.L21119:
	movq	-5256(%rbp), %rcx
	movq	-5248(%rbp), %r14
	movq	%r12, (%r14,%rcx,8)
	jmp	.L21093
.L25991:
	testq	%r15, %r15
	jne	.L24426
	movq	8(%r12), %rdx
	movzbq	2(%rdx), %r10
	movzbl	mode_size(%r10), %esi
	cmpl	%esi, -9156(%rbp)
	je	.L21108
.L21109:
	movzbq	2(%rdx), %rbx
	movzbq	mode_size(%rbx), %rdi
	cmpq	%rdi, %r15
	je	.L25994
.L21107:
	testq	%r15, %r15
	jne	.L22779
	movzbl	2(%r12), %edi
	xorl	%edx, %edx
	movslq	%edi,%rbx
	movzbq	mode_size(%rbx), %rsi
	call	assign_stack_temp
	movq	%r12, %rsi
	movq	%rax, %r15
	movq	%rax, %rdi
	call	emit_move_insn
	movl	$1, %r8d
	movl	$1, %ecx
	movq	%r15, %rdi
	movl	%r14d, %esi
	xorl	%edx, %edx
	call	adjust_address_1
	jmp	.L24984
.L25994:
	movq	16(%r12), %r11
	movzbq	2(%r11), %rcx
	movzbl	mode_size(%rcx), %edx
	cmpl	%edx, -9156(%rbp)
	jne	.L21107
.L21108:
	xorl	%r9d, %r9d
	movq	-5256(%rbp), %r8
	movq	-5248(%rbp), %rax
	testq	%r15, %r15
	setne	%r9b
	leaq	(%rax,%r8,8), %rbx
	movq	8(%r12,%r9,8), %rcx
	movq	%rcx, (%rbx)
	movzwl	(%rcx), %edx
	leal	-67(%rdx), %r15d
	cmpw	$1, %r15w
	jbe	.L21093
	cmpw	$54, %dx
	je	.L21093
	cmpw	$55, %dx
	je	.L21093
	cmpw	$58, %dx
	je	.L21093
	cmpw	$134, %dx
	je	.L21093
	cmpw	$56, %dx
	je	.L21093
	cmpw	$140, %dx
	je	.L21093
	cmpw	$61, %dx
	je	.L25995
.L21113:
	movl	-9156(%rbp), %edi
	movslq	-5236(%rbp),%r10
	movl	%r14d, (%rsp)
	xorl	%edx, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	%r14d, %r9d
	sall	$3, %edi
	mov	%edi, %esi
	movq	%r10, 8(%rsp)
	movq	(%rbx), %rdi
	call	extract_bit_field
	movq	%rax, (%rbx)
	jmp	.L21093
.L25995:
	movzbl	2(%rcx), %r12d
	cmpl	%r14d, %r12d
	jne	.L21113
	jmp	.L21093
.L24426:
	movq	8(%r12), %rdx
	jmp	.L21109
.L24542:
	movl	%r14d, %edi
	call	get_mode_alignment
	movq	16(%r12), %rdx
	testq	%rdx, %rdx
	je	.L21103
	cmpl	%eax, 32(%rdx)
	jae	.L21104
.L24425:
	movzwl	(%r12), %edx
	jmp	.L21102
.L21104:
	movl	%r14d, %edi
	leaq	0(,%r15,8), %rbx
	call	get_mode_alignment
	mov	%eax, %ecx
	movq	%rbx, %rax
	cqto
	idivq	%rcx
	testq	%rdx, %rdx
	jne	.L24425
	movq	-5264(%rbp), %rax
	movzbl	mode_size(%rax), %r11d
	cmpl	%r11d, -9156(%rbp)
	jne	.L24425
	movl	%r14d, %edi
	call	gen_reg_rtx
	movl	$1, %ecx
	movq	%r15, %rdx
	movq	-5256(%rbp), %r8
	movq	-5248(%rbp), %r9
	movq	%r12, %rdi
	movl	%r14d, %esi
	leaq	(%r9,%r8,8), %rbx
	movl	$1, %r8d
	movq	%rax, (%rbx)
	call	adjust_address_1
	movq	(%rbx), %rdi
	movq	%rax, %rsi
	call	emit_move_insn
	jmp	.L21093
.L21103:
	cmpl	$8, %eax
	ja	.L24425
	jmp	.L21104
.L21099:
	movq	-9216(%rbp), %rdi
	movzbl	2(%rdi), %ecx
	movzbl	%cl, %r10d
	cmpl	%r14d, %r10d
	je	.L21097
	testb	%cl, %cl
	je	.L21097
	jmp	.L21098
.L25968:
	movq	-9576(%rbp), %rdx
	cmpb	$29, 16(%rdx)
	jne	.L20550
	movq	%rdx, %rdi
	call	expr_size
	cmpw	$54, (%rax)
	movq	%rax, -9032(%rbp)
	je	.L25996
.L20551:
	movq	sizetype_tab(%rip), %rdi
	movq	-9032(%rbp), %rsi
	call	make_tree
	xorl	%esi, %esi
	movq	-9576(%rbp), %r8
	movq	%rax, %r15
	movslq	32(%r8),%rdi
	call	size_int_wide
	movq	%r15, %rsi
	movl	$78, %edi
	movq	%rax, %rdx
	call	size_binop
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, -5160(%rbp)
	call	expand_expr
	xorl	%edx, %edx
	movl	ptr_mode(%rip), %edi
	movq	%rax, %rsi
	movq	$0, -9120(%rbp)
	call	convert_to_mode
	movl	$8, %edx
	movq	-9216(%rbp), %rcx
	movq	%rax, -9064(%rbp)
	movq	-9224(%rbp), %r14
	movq	-9064(%rbp), %rax
	movq	%rcx, -9080(%rbp)
	movq	%r14, -9072(%rbp)
	movq	%rax, -9088(%rbp)
	movq	16(%r14), %rax
	testq	%rax, %rax
	movq	%rax, %rsi
	je	.L20754
	movl	32(%rax), %edx
.L20754:
	movq	-9216(%rbp), %rdi
	movq	16(%rdi), %rax
	testq	%rax, %rax
	movq	%rax, %rcx
	je	.L20755
	cmpl	32(%rax), %edx
	jb	.L20756
.L20751:
	testq	%rcx, %rcx
	movl	$8, %r15d
	je	.L20752
	movl	32(%rcx), %r15d
.L20752:
	movq	-9224(%rbp), %r9
	cmpb	$51, 2(%r9)
	jne	.L25547
	movq	-9216(%rbp), %rbx
	cmpb	$51, 2(%rbx)
	jne	.L25546
	movq	-9224(%rbp), %rdx
	movzwl	(%rdx), %eax
	cmpl	$71, %eax
	je	.L20763
	cmpl	$66, %eax
	je	.L25997
.L20767:
	cmpl	$75, %eax
	je	.L20771
	cmpl	$78, %eax
	je	.L20771
.L20766:
	movq	-9216(%rbp), %rdx
	movzwl	(%rdx), %eax
	cmpl	$71, %eax
	je	.L20776
	cmpl	$66, %eax
	je	.L25998
.L20780:
	cmpl	$75, %eax
	je	.L20784
	cmpl	$78, %eax
	je	.L20784
.L20779:
	movq	-9064(%rbp), %rdx
	movzwl	(%rdx), %eax
	cmpl	$71, %eax
	je	.L20789
	cmpl	$66, %eax
	je	.L25999
.L20793:
	cmpl	$75, %eax
	je	.L20797
	cmpl	$78, %eax
	je	.L20797
.L20792:
	movq	-9072(%rbp), %r14
	cmpw	$66, (%r14)
	jne	.L25545
	movq	-9080(%rbp), %rax
	cmpw	$66, (%rax)
	jne	.L25544
	cmpq	$0, -9088(%rbp)
	je	.L25543
	movq	-9088(%rbp), %rcx
	cmpw	$54, (%rcx)
	je	.L26000
.L20805:
	shrl	$3, %r15d
	xorl	%edi, %edi
	mov	%r15d, %esi
	call	gen_rtx_CONST_INT
	movl	class_narrowest_mode+4(%rip), %r12d
	movl	$1, volatile_ok(%rip)
	movq	%rax, -5176(%rbp)
	testl	%r12d, %r12d
	je	.L24097
.L20938:
	movslq	%r12d,%r15
	movl	movstr_optab(,%r15,4), %edx
	cmpl	$1317, %edx
	je	.L20924
	movq	-9088(%rbp), %rsi
	cmpw	$54, (%rsi)
	je	.L26001
.L20928:
	testb	$2, target_flags+3(%rip)
	je	.L20929
	cmpw	$63, mode_bitsize(%r15,%r15)
.L24977:
	jbe	.L20924
.L20927:
	movslq	%edx,%rdi
	leaq	(%rdi,%rdi,4), %rcx
	movq	%rdi, -5184(%rbp)
	movq	insn_data+24(,%rcx,8), %r14
	movq	(%r14), %rax
	testq	%rax, %rax
	je	.L20931
	movq	-9072(%rbp), %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L20924
.L20931:
	movq	24(%r14), %rax
	testq	%rax, %rax
	jne	.L26002
.L20932:
	movq	72(%r14), %rax
	testq	%rax, %rax
	je	.L20933
	xorl	%esi, %esi
	movq	-5176(%rbp), %rdi
	call	*%rax
	testl	%eax, %eax
	je	.L20924
.L20933:
	call	get_last_insn
	movl	$1, %edx
	movq	-9088(%rbp), %rsi
	movl	%r12d, %edi
	movq	%rax, -5192(%rbp)
	call	convert_to_mode
	movq	%rax, %rbx
	movq	48(%r14), %rax
	testq	%rax, %rax
	jne	.L26003
.L20934:
	movq	-5184(%rbp), %r10
	movq	-9072(%rbp), %rdi
	xorl	%eax, %eax
	movq	-9080(%rbp), %rsi
	movq	%rbx, %rdx
	movq	-5176(%rbp), %rcx
	leaq	(%r10,%r10,4), %r12
	call	*insn_data+16(,%r12,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L24524
	movq	-5192(%rbp), %rdi
	call	delete_insns_since
.L20924:
	movzbl	mode_wider_mode(%r15), %r12d
	testl	%r12d, %r12d
	jne	.L20938
.L24097:
	testb	$2, target_flags+3(%rip)
	movq	-9072(%rbp), %r8
	movl	$0, volatile_ok(%rip)
	setne	%r11b
	movq	8(%r8), %rsi
	movzbl	%r11b, %edi
	addl	$4, %edi
	call	copy_to_mode_reg
	movq	-9080(%rbp), %rbx
	testb	$2, target_flags+3(%rip)
	movq	%rax, %r14
	setne	%al
	movq	8(%rbx), %rsi
	movzbl	%al, %edi
	addl	$4, %edi
	call	copy_to_mode_reg
	movq	-9088(%rbp), %rsi
	movq	sizetype_tab(%rip), %rdx
	movq	%rax, %rbx
	movzbl	61(%rdx), %r15d
	shrb	$1, %r15b
	movzbl	%r15b, %edi
	call	copy_to_mode_reg
	cmpq	$0, fn.1(%rip)
	movq	%rax, %r15
	je	.L26004
.L20947:
	movq	global_trees+216(%rip), %rdi
	call	build_pointer_type
	movq	%r14, %rsi
	movq	%rax, %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	global_trees+216(%rip), %rdi
	movq	%rax, %r12
	call	build_pointer_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	%r15, %rsi
	movq	%rax, (%r12)
	movq	%rax, %rbx
	movq	sizetype_tab(%rip), %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	fn.1(%rip), %rdx
	movq	%rax, (%rbx)
	movq	(%r12), %r8
	movq	8(%rdx), %rdi
	movq	(%r8), %rbx
	movq	$0, (%rbx)
	call	build_pointer_type
	movq	fn.1(%rip), %rdx
	movl	$121, %edi
	movq	%rax, %rsi
	call	build1
	xorl	%r8d, %r8d
	movq	%r12, %rcx
	movq	fn.1(%rip), %r15
	movq	%rax, %rdx
	movl	$53, %edi
	xorl	%eax, %eax
	movq	8(%r15), %r10
	movq	8(%r10), %rsi
	call	build
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	orb	$1, 17(%rax)
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	expand_expr
	testb	$4, 3(%r14)
	jne	.L26005
.L20936:
	movq	-9064(%rbp), %rbx
	cmpw	$54, (%rbx)
	je	.L26006
	movq	sizetype_tab(%rip), %r11
	movq	-9064(%rbp), %rcx
	xorl	%r8d, %r8d
	movq	optab_table+16(%rip), %rsi
	movq	-9032(%rbp), %rdx
	xorl	%r9d, %r9d
	movzbl	61(%r11), %r12d
	movl	$3, (%rsp)
	shrb	$1, %r12b
	movzbl	%r12b, %edi
	call	expand_binop
	movq	-5160(%rbp), %rdi
	movq	%rax, %rbx
	call	highest_pow2_factor
	movq	-9064(%rbp), %rsi
	movq	-9224(%rbp), %rdi
	movq	%rax, %rdx
	call	offset_address
	movq	%rax, -9224(%rbp)
	call	gen_label_rtx
	xorl	%r9d, %r9d
	movq	%rax, -9120(%rbp)
	movq	const_int_rtx+512(%rip), %rsi
	movq	%rbx, %rdi
	movzbl	2(%rbx), %r8d
	movl	$107, %edx
	xorl	%ecx, %ecx
	movq	%rax, (%rsp)
	call	emit_cmp_and_jump_insns
.L20950:
	cmpq	const_int_rtx+512(%rip), %rbx
	je	.L20951
	movq	-9224(%rbp), %rdx
	cmpw	$66, (%rdx)
	movq	%rdx, -9136(%rbp)
	je	.L26007
	movq	-9224(%rbp), %rax
	movzbl	2(%rax), %edi
	call	get_mode_alignment
.L24978:
	movl	%eax, -9124(%rbp)
.L20953:
	movq	-9224(%rbp), %rsi
	movzbl	2(%rsi), %eax
	cmpb	$51, %al
	je	.L20956
	cmpw	$54, (%rbx)
	je	.L26008
.L20956:
	movq	-9224(%rbp), %rdx
	movzwl	(%rdx), %eax
	cmpl	$71, %eax
	je	.L20958
	cmpl	$66, %eax
	je	.L26009
.L20962:
	cmpl	$75, %eax
	je	.L20966
	cmpl	$78, %eax
	je	.L20966
.L20961:
	movzwl	(%rbx), %eax
	cmpl	$71, %eax
	je	.L20971
	cmpl	$66, %eax
	je	.L26010
.L20975:
	cmpl	$75, %eax
	je	.L20979
	cmpl	$78, %eax
	je	.L20979
.L20974:
	cmpw	$54, (%rbx)
	je	.L26011
.L20984:
	shrl	$3, -9124(%rbp)
	xorl	%edi, %edi
	mov	-9124(%rbp), %esi
	call	gen_rtx_CONST_INT
	movl	class_narrowest_mode+4(%rip), %r14d
	movq	%rax, -5208(%rbp)
	testl	%r14d, %r14d
	je	.L24111
.L21078:
	movslq	%r14d,%rcx
	movl	clrstr_optab(,%rcx,4), %edx
	movq	%rcx, -5216(%rbp)
	cmpl	$1317, %edx
	je	.L21065
	cmpw	$54, (%rbx)
	je	.L26012
.L21069:
	testb	$2, target_flags+3(%rip)
	je	.L21070
	movq	-5216(%rbp), %rax
	cmpw	$63, mode_bitsize(%rax,%rax)
.L24981:
	jbe	.L21065
.L21068:
	movslq	%edx,%r15
	leaq	(%r15,%r15,4), %r9
	movq	%r15, -5224(%rbp)
	movq	insn_data+24(,%r9,8), %r15
	movq	(%r15), %rax
	testq	%rax, %rax
	je	.L21072
	movq	-9136(%rbp), %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L21065
.L21072:
	movq	48(%r15), %rax
	testq	%rax, %rax
	je	.L21073
	xorl	%esi, %esi
	movq	-5208(%rbp), %rdi
	call	*%rax
	testl	%eax, %eax
	je	.L21065
.L21073:
	call	get_last_insn
	movl	$1, %edx
	movq	%rbx, %rsi
	movl	%r14d, %edi
	movq	%rax, -5232(%rbp)
	call	convert_to_mode
	movq	%rax, %r12
	movq	24(%r15), %rax
	testq	%rax, %rax
	jne	.L26013
.L21074:
	movq	-5224(%rbp), %rsi
	movq	-9136(%rbp), %rdi
	xorl	%eax, %eax
	movq	-5208(%rbp), %rdx
	leaq	(%rsi,%rsi,4), %r8
	movq	%r12, %rsi
	call	*insn_data+16(,%r8,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L24982
	movq	-5232(%rbp), %rdi
	call	delete_insns_since
.L21065:
	movq	-5216(%rbp), %rdx
	movzbl	mode_wider_mode(%rdx), %r14d
	testl	%r14d, %r14d
	jne	.L21078
.L24111:
	testb	$2, target_flags+3(%rip)
	movq	-9136(%rbp), %r14
	setne	%r12b
	movq	8(%r14), %rsi
	movzbl	%r12b, %edi
	addl	$4, %edi
	call	copy_to_mode_reg
	movq	%rbx, %rsi
	movq	sizetype_tab(%rip), %rcx
	movq	%rax, %r14
	movzbl	61(%rcx), %r10d
	shrb	$1, %r10b
	movzbl	%r10b, %edi
	call	copy_to_mode_reg
	cmpq	$0, fn.0(%rip)
	movq	%rax, %r15
	je	.L26014
.L21083:
	movq	global_trees+216(%rip), %rdi
	call	build_pointer_type
	movq	%r14, %rsi
	movq	%rax, %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	const_int_rtx+512(%rip), %rsi
	movq	integer_types+40(%rip), %rdi
	movq	%rax, %r12
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	%r15, %rsi
	movq	%rax, (%r12)
	movq	%rax, %rbx
	movq	sizetype_tab(%rip), %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	fn.0(%rip), %rsi
	movq	%rax, (%rbx)
	movq	(%r12), %r10
	movq	8(%rsi), %rdi
	movq	(%r10), %rdx
	movq	$0, (%rdx)
	call	build_pointer_type
	movq	fn.0(%rip), %rdx
	movl	$121, %edi
	movq	%rax, %rsi
	call	build1
	movq	%r12, %rcx
	movl	$53, %edi
	movq	fn.0(%rip), %r8
	movq	%rax, %rdx
	xorl	%eax, %eax
	movq	8(%r8), %r15
	xorl	%r8d, %r8d
	movq	8(%r15), %rsi
	call	build
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	orb	$1, 17(%rax)
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	expand_expr
	testb	$4, 3(%r14)
	jne	.L26015
.L20951:
	cmpq	$0, -9120(%rbp)
	je	.L20526
	movq	-9120(%rbp), %rdi
	call	emit_label
	jmp	.L20526
.L26015:
	movl	$49, %edi
	xorl	%esi, %esi
	movq	%r14, %rdx
	call	gen_rtx_fmt_e
	movq	%rax, %rdi
.L24982:
	call	emit_insn
	jmp	.L20951
.L26014:
	movl	$.LC7, %edi
	call	get_identifier
	movq	global_trees+216(%rip), %rdi
	movq	%rax, fn.0(%rip)
	call	build_pointer_type
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	build_function_type
	movq	fn.0(%rip), %rsi
	movl	$30, %edi
	movq	%rax, %rdx
	call	build_decl
	movl	$1, %esi
	movl	$fn.0, %edi
	movq	%rax, fn.0(%rip)
	call	ggc_add_tree_root
	movq	fn.0(%rip), %r9
	xorl	%esi, %esi
	orb	$1, 49(%r9)
	movq	fn.0(%rip), %r11
	orb	$8, 18(%r11)
	movq	fn.0(%rip), %rdi
	orb	$64, 50(%rdi)
	movq	fn.0(%rip), %rbx
	orb	$2, 18(%rbx)
	movq	fn.0(%rip), %rdi
	call	make_decl_rtl
	movq	fn.0(%rip), %rdi
	call	assemble_external
	jmp	.L21083
.L26013:
	movq	%r12, %rdi
	movl	%r14d, %esi
	call	*%rax
	testl	%eax, %eax
	jne	.L21074
	movq	%r12, %rsi
	movl	%r14d, %edi
	call	copy_to_mode_reg
	movq	%rax, %r12
	jmp	.L21074
.L21070:
	movq	-5216(%rbp), %r11
	cmpw	$31, mode_bitsize(%r11,%r11)
	jmp	.L24981
.L26012:
	movq	mode_mask_array(,%rcx,8), %r12
	shrq	$1, %r12
	cmpq	%r12, 8(%rbx)
	jbe	.L21068
	jmp	.L21069
.L26011:
	movq	8(%rbx), %r14
	xorl	%r15d, %r15d
	movl	$17, %esi
.L20997:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L24100
.L20994:
	movslq	%ecx,%r10
	movzbq	mode_size(%r10), %rdx
	cmpq	%rsi, %rdx
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r10), %ecx
	testl	%ecx, %ecx
	jne	.L20994
.L24100:
	testl	%edi, %edi
	je	.L20987
	movslq	%edi,%r12
	movq	%r12, %rcx
	salq	$4, %rcx
	addq	optab_table+240(%rip), %rcx
	cmpl	$1317, 8(%rcx)
	je	.L20996
	call	get_mode_alignment
	movl	$128, %edi
	cmpl	%eax, %edi
	jb	.L20996
	movzbq	mode_size(%r12), %r11
	movq	%r14, %rax
	xorl	%edx, %edx
	divq	%r11
	addq	%rax, %r15
	movq	%rdx, %r14
.L20996:
	movzbq	mode_size(%r12), %rsi
	cmpq	$1, %rsi
	ja	.L20997
.L20987:
	testq	%r14, %r14
	jne	.L25529
	movl	optimize_size(%rip), %eax
	testl	%eax, %eax
	jne	.L21000
	movq	ix86_cost(%rip), %r9
	mov	40(%r9), %r12d
	cmpq	%r12, %r15
	jae	.L20984
.L21001:
	movq	8(%rbx), %r10
	movq	-9136(%rbp), %r15
	leaq	-272(%rbp), %r12
	testb	$2, target_flags+3(%rip)
	movq	$clear_by_pieces_1, -232(%rbp)
	movq	$0, -224(%rbp)
	setne	%dl
	leaq	16(%r12), %rcx
	movq	%r15, -272(%rbp)
	movq	%r10, -248(%rbp)
	movq	8(%r15), %r8
	movq	$0, -240(%rbp)
	movl	$0, -9148(%rbp)
	movzbl	%dl, %esi 
	movq	%r8, -264(%rbp)
	movzwl	(%r8), %edx
	leaq	5(,%rsi,4), %r15
	xorl	%esi, %esi
	leal	-96(%rdx), %ebx
	cmpw	$1, %bx
	jbe	.L21005
	cmpw	$99, %dx
	je	.L21005
	cmpw	$98, %dx
	je	.L21005
.L21004:
	movl	%esi, (%rcx)
	movl	$0, 20(%r12)
	leaq	56(%r12), %rdx
	movzwl	(%r8), %eax
	xorl	%ecx, %ecx
	cmpw	$96, %ax
	je	.L21007
	cmpw	$98, %ax
	je	.L21007
.L21006:
	movl	%ecx, (%rdx)
	movl	56(%r12), %eax
	testl	%eax, %eax
	je	.L21008
	movq	24(%r12), %rcx
	movq	%rcx, 32(%r12)
.L21008:
	movl	16(%r12), %edi
	testl	%edi, %edi
	jne	.L21009
	movq	24(%r12), %r14
	movq	$0, -9144(%rbp)
	movl	$17, %esi
.L21022:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L24103
.L21019:
	movslq	%ecx,%r11
	movzbq	mode_size(%r11), %r9
	cmpq	%rsi, %r9
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r11), %ecx
	testl	%ecx, %ecx
	jne	.L21019
.L24103:
	testl	%edi, %edi
	je	.L21012
	movslq	%edi,%rbx
	movq	%rbx, %rsi
	salq	$4, %rsi
	addq	optab_table+240(%rip), %rsi
	cmpl	$1317, 8(%rsi)
	je	.L21021
	movq	%r8, -9592(%rbp)
	call	get_mode_alignment
	movl	$128, %r8d
	cmpl	%eax, %r8d
	movq	-9592(%rbp), %r8
	jb	.L21021
	movzbq	mode_size(%rbx), %rcx
	movq	%r14, %rax
	xorl	%edx, %edx
	divq	%rcx
	addq	%rax, -9144(%rbp)
	movq	%rdx, %r14
.L21021:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L21022
.L21012:
	testq	%r14, %r14
	jne	.L25529
	cmpq	$2, -9144(%rbp)
	jbe	.L21009
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L24105
.L21030:
	movslq	%ecx,%rbx
	movzbq	mode_size(%rbx), %rdx
	cmpq	%r15, %rdx
	cmovae	-9148(%rbp), %ecx
	movl	%ecx, -9148(%rbp)
	movzbl	mode_wider_mode(%rbx), %ecx
	testl	%ecx, %ecx
	jne	.L21030
.L24105:
	movl	16(%r12), %eax
	testl	%eax, %eax
	jne	.L21009
	movzwl	(%r8), %edx
	leal	-67(%rdx), %edi
	cmpw	$1, %di
	jbe	.L21034
	cmpw	$54, %dx
	je	.L21034
	cmpw	$55, %dx
	je	.L21034
	cmpw	$58, %dx
	je	.L21034
	cmpw	$134, %dx
	je	.L21034
	cmpw	$56, %dx
	je	.L21034
	cmpw	$140, %dx
	je	.L21034
.L21009:
	cmpq	$1, %r15
	jbe	.L21037
.L21058:
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L24108
.L21044:
	movslq	%ecx,%r11
	movzbq	mode_size(%r11), %r9
	cmpq	%r15, %r9
	cmovae	-9148(%rbp), %ecx
	movl	%ecx, -9148(%rbp)
	movzbl	mode_wider_mode(%r11), %ecx
	testl	%ecx, %ecx
	jne	.L21044
.L24108:
	movl	-9148(%rbp), %r15d
	testl	%r15d, %r15d
	je	.L21037
	movslq	-9148(%rbp),%r15
	movq	%r15, %rsi
	salq	$4, %rsi
	addq	optab_table+240(%rip), %rsi
	movl	8(%rsi), %ebx
	cmpl	$1317, %ebx
	je	.L21046
	movl	-9148(%rbp), %edi
	call	get_mode_alignment
	movl	$128, %r8d
	cmpl	%eax, %r8d
	jb	.L21046
	movzbq	mode_size(%r15), %rdx
	movslq	%ebx,%rcx
	leaq	(%rcx,%rcx,4), %r10
	cmpq	%rdx, 24(%r12)
	movq	insn_data+16(,%r10,8), %r14
	movq	%r14, -5200(%rbp)
	movq	%rdx, %r14
	jb	.L21046
	movl	56(%r12), %ecx
.L21056:
	testl	%ecx, %ecx
	je	.L21050
	subq	%rdx, 32(%r12)
.L21050:
	movl	16(%r12), %ebx
	testl	%ebx, %ebx
	je	.L21051
	movq	(%r12), %rdi
	movl	-9148(%rbp), %esi
	movl	$1, %r8d
	movq	8(%r12), %rdx
	movq	32(%r12), %rcx
	call	adjust_automodify_address_1
.L24980:
	movl	-9148(%rbp), %edx
	movq	%rax, %rbx
	movq	48(%r12), %rdi
	movq	32(%r12), %rsi
	call	*40(%r12)
	movq	%rbx, %rdi
	movq	%rax, %rsi
	xorl	%eax, %eax
	call	*-5200(%rbp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%r12), %eax
	testl	%eax, %eax
	movl	%eax, %ecx
	jne	.L21055
	addq	%r14, 32(%r12)
.L21055:
	movq	24(%r12), %rdi
	movq	%r14, %rdx
	subq	%r14, %rdi
	cmpq	%r14, %rdi
	movq	%rdi, 24(%r12)
	jae	.L21056
.L21046:
	movzbq	mode_size(%r15), %r15
	cmpq	$1, %r15
	ja	.L21058
.L21037:
	cmpq	$0, 24(%r12)
	je	.L20951
.L25451:
	movl	$.LC0, %edi
	movl	$2524, %esi
	movl	$.LC6, %edx
	jmp	.L25086
.L21051:
	movq	(%r12), %rdi
	movl	-9148(%rbp), %esi
	movl	$1, %ecx
	movq	32(%r12), %rdx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L24980
.L21034:
	movq	%r8, %rdi
	call	copy_addr_to_reg
	movq	%rax, 8(%r12)
	jmp	.L21009
.L21007:
	movl	$1, %ecx
	jmp	.L21006
.L21005:
	movl	$1, %esi
	jmp	.L21004
.L21000:
	cmpq	$2, %r15
	ja	.L20984
	jmp	.L21001
.L20979:
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%rbx), %rdi
	movq	%rax, %r14
	call	protect_from_queue
	cmpq	8(%rbx), %r14
	movq	%rax, %r12
	je	.L26016
.L20981:
	movq	%rbx, %rdi
	call	copy_rtx
	movq	%rax, %rbx
	movq	%r14, 8(%rax)
	movq	%r12, 16(%rax)
	jmp	.L20974
.L26016:
	cmpq	16(%rbx), %rax
	jne	.L20981
	jmp	.L20974
.L26010:
	cmpb	$51, 2(%rbx)
	je	.L20972
	movq	8(%rbx), %r14
	cmpw	$71, (%r14)
	je	.L26017
.L20972:
	cmpl	$66, %eax
	jne	.L20975
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%rbx), %rax
	movq	%rax, %r12
	je	.L20974
	movq	%rbx, %rdi
	call	copy_rtx
	movq	%rax, %rbx
	movq	%r12, 8(%rax)
	jmp	.L20974
.L26017:
	movq	8(%r14), %rsi
	movq	%rbx, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%r14)
	movq	%rax, %r12
	je	.L20973
	movzbl	2(%rbx), %edi
	call	gen_reg_rtx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L20974
.L20973:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%r12, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L24979:
	movq	%rax, %rbx
	jmp	.L20974
.L20971:
	cmpq	$0, 16(%rbx)
	je	.L26018
	movq	24(%rbx), %rax
	testq	%rax, %rax
	jne	.L24979
	movq	8(%rbx), %rsi
	movzbl	2(%rsi), %edi
	call	gen_reg_rtx
	movq	8(%rbx), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%rbx)
	call	gen_move_insn
	movq	16(%rbx), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%rbx), %rbx
	jmp	.L20974
.L26018:
	movq	8(%rbx), %rdi
	call	copy_to_reg
	jmp	.L24979
.L20966:
	movq	-9224(%rbp), %rcx
	xorl	%esi, %esi
	movq	8(%rcx), %rdi
	call	protect_from_queue
	movq	-9224(%rbp), %rsi
	movq	%rax, %r14
	movq	16(%rsi), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	-9224(%rbp), %rdx
	movq	%rax, %r12
	cmpq	8(%rdx), %r14
	je	.L26019
.L20968:
	movq	-9224(%rbp), %rdi
	call	copy_rtx
	movq	%rax, -9136(%rbp)
	movq	%r14, 8(%rax)
	movq	-9136(%rbp), %rdi
	movq	%r12, 16(%rdi)
	jmp	.L20961
.L26019:
	cmpq	16(%rdx), %rax
	jne	.L20968
	jmp	.L20961
.L26009:
	jne	.L20962
	movq	8(%rdx), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	-9224(%rbp), %rcx
	movq	%rax, %r12
	cmpq	8(%rcx), %rax
	je	.L20961
	movq	%rcx, %rdi
	call	copy_rtx
	movq	%rax, -9136(%rbp)
	movq	%r12, 8(%rax)
	jmp	.L20961
.L20958:
	movq	-9224(%rbp), %rsi
	cmpq	$0, 16(%rsi)
	je	.L26020
	movq	-9224(%rbp), %r15
	movq	24(%r15), %r10
	testq	%r10, %r10
	movq	%r10, -9136(%rbp)
	jne	.L20961
	movq	-9224(%rbp), %rax
	movq	8(%rax), %r9
	movzbl	2(%r9), %edi
	call	gen_reg_rtx
	movq	-9224(%rbp), %r11
	movq	%rax, %rdi
	movq	%rax, 24(%r11)
	movq	-9224(%rbp), %r12
	movq	8(%r12), %rsi
	call	gen_move_insn
	movq	-9224(%rbp), %r14
	movq	%rax, %rdi
	movq	16(%r14), %rsi
	call	emit_insn_before
	movq	-9224(%rbp), %r8
	movq	24(%r8), %rdx
	movq	%rdx, -9136(%rbp)
	jmp	.L20961
.L26020:
	movq	8(%rsi), %rdi
	call	copy_to_reg
	movq	%rax, -9136(%rbp)
	jmp	.L20961
.L26008:
	movzbl	%al, %edx 
	movzbl	mode_size(%rdx), %r9d
	cmpl	8(%rbx), %r9d
	jne	.L20956
	movq	%rsi, %rdi
	movq	const_tiny_rtx(,%rdx,8), %rsi
	call	emit_move_insn
	jmp	.L20951
.L26007:
	movq	16(%rdx), %rax
	movl	$8, -9124(%rbp)
	testq	%rax, %rax
	je	.L20953
	movl	32(%rax), %eax
	jmp	.L24978
.L26006:
	movq	8(%rbx), %rsi
	movq	-9032(%rbp), %rdi
	negq	%rsi
	call	plus_constant_wide
	movl	$1, %r8d
	movl	$1, %ecx
	movq	-9064(%rbp), %r14
	movq	-9224(%rbp), %rdi
	movl	$51, %esi
	movq	%rax, %rbx
	movq	8(%r14), %rdx
	call	adjust_address_1
	movq	%rax, -9224(%rbp)
	jmp	.L20950
.L26005:
	movl	$49, %edi
	xorl	%esi, %esi
	movq	%r14, %rdx
	call	gen_rtx_fmt_e
	movq	%rax, %rdi
	call	emit_insn
	jmp	.L20936
.L26004:
	movl	$.LC11, %edi
	call	get_identifier
	movq	global_trees+216(%rip), %rdi
	movq	%rax, fn.1(%rip)
	call	build_pointer_type
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	build_function_type
	movq	fn.1(%rip), %rsi
	movl	$30, %edi
	movq	%rax, %rdx
	call	build_decl
	movl	$1, %esi
	movl	$fn.1, %edi
	movq	%rax, fn.1(%rip)
	call	ggc_add_tree_root
	movq	fn.1(%rip), %rdi
	orb	$1, 49(%rdi)
	movq	fn.1(%rip), %rcx
	orb	$8, 18(%rcx)
	movq	fn.1(%rip), %r9
	orb	$64, 50(%r9)
	movq	fn.1(%rip), %rsi
	orb	$2, 18(%rsi)
	xorl	%esi, %esi
	movq	fn.1(%rip), %rdi
	call	make_decl_rtl
	movq	fn.1(%rip), %rdi
	call	assemble_external
	jmp	.L20947
.L24524:
	call	emit_insn
	movl	$0, volatile_ok(%rip)
	jmp	.L20936
.L26003:
	movq	%rbx, %rdi
	movl	%r12d, %esi
	call	*%rax
	testl	%eax, %eax
	jne	.L20934
	movq	%rbx, %rsi
	movl	%r12d, %edi
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L20934
.L26002:
	movq	-9080(%rbp), %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L20924
	jmp	.L20932
.L20929:
	cmpw	$31, mode_bitsize(%r15,%r15)
	jmp	.L24977
.L26001:
	movq	mode_mask_array(,%r15,8), %r9
	shrq	$1, %r9
	cmpq	%r9, 8(%rsi)
	jbe	.L20927
	jmp	.L20928
.L26000:
	movq	8(%rcx), %r12
	xorl	%r14d, %r14d
	movl	$17, %esi
.L20818:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L24086
.L20815:
	movslq	%ecx,%r8
	movzbq	mode_size(%r8), %r9
	cmpq	%rsi, %r9
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r8), %ecx
	testl	%ecx, %ecx
	jne	.L20815
.L24086:
	testl	%edi, %edi
	je	.L20808
	movslq	%edi,%rbx
	movq	%rbx, %rcx
	salq	$4, %rcx
	addq	optab_table+240(%rip), %rcx
	cmpl	$1317, 8(%rcx)
	je	.L20817
	call	get_mode_alignment
	movl	$128, %edi
	cmpl	%eax, %edi
	jb	.L20817
	movzbq	mode_size(%rbx), %r11
	movq	%r12, %rax
	xorl	%edx, %edx
	divq	%r11
	addq	%rax, %r14
	movq	%rdx, %r12
.L20817:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L20818
.L20808:
	testq	%r12, %r12
	jne	.L25529
	movl	optimize_size(%rip), %ebx
	testl	%ebx, %ebx
	jne	.L20821
	movq	ix86_cost(%rip), %rdx
	mov	40(%rdx), %r12d
	cmpq	%r12, %r14
	jae	.L20805
.L20822:
	movq	-9088(%rbp), %r8
	movq	-9080(%rbp), %r10
	movq	-9072(%rbp), %rsi
	movq	-9072(%rbp), %r9
	testb	$2, target_flags+3(%rip)
	movq	8(%r8), %r12
	setne	%r14b
	movq	8(%r10), %r8
	movq	$0, -2136(%rbp)
	movl	$0, -9100(%rbp)
	movq	%r8, -2160(%rbp)
	movzbl	%r14b, %ecx
	movq	8(%rsi), %rdi
	movq	%r9, -2192(%rbp)
	leal	5(,%rcx,4), %r14d
	xorl	%ecx, %ecx
	movq	%rdi, -9096(%rbp)
	movq	-9096(%rbp), %rax
	movzwl	(%rax), %edx
	leal	-96(%rdx), %r15d
	cmpw	$1, %r15w
	jbe	.L20827
	cmpw	$99, %dx
	je	.L20827
	cmpw	$98, %dx
	je	.L20827
.L20826:
	movq	-9096(%rbp), %r11
	movl	%ecx, -2176(%rbp)
	xorl	%edx, %edx
	movzwl	(%r11), %eax
	cmpw	$96, %ax
	je	.L20829
	cmpw	$98, %ax
	je	.L20829
.L20828:
	movl	%edx, -2128(%rbp)
	movq	-9096(%rbp), %r15
	xorl	%ecx, %ecx
	movq	-9080(%rbp), %rdx
	movq	%r15, -2184(%rbp)
	movq	%rdx, -2168(%rbp)
	movzwl	(%r8), %edx
	leal	-96(%rdx), %ebx
	cmpw	$1, %bx
	jbe	.L20832
	cmpw	$99, %dx
	je	.L20832
	cmpw	$98, %dx
	je	.L20832
.L20831:
	movl	-2128(%rbp), %eax
	movl	%ecx, -2152(%rbp)
	movl	$0, -2148(%rbp)
	movl	$0, -2172(%rbp)
	testl	%eax, %eax
	je	.L20833
	movq	%r12, -2136(%rbp)
.L20833:
	movl	-2152(%rbp), %r9d
	movq	%r12, -2144(%rbp)
	testl	%r9d, %r9d
	je	.L20835
	movl	-2176(%rbp), %edi
	testl	%edi, %edi
	jne	.L20834
.L20835:
	xorl	%r15d, %r15d
	movl	$17, %esi
.L20848:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L24089
.L20845:
	movslq	%ecx,%r10
	movzbq	mode_size(%r10), %r11
	cmpq	%rsi, %r11
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r10), %ecx
	testl	%ecx, %ecx
	jne	.L20845
.L24089:
	testl	%edi, %edi
	je	.L20838
	movslq	%edi,%rbx
	movq	%rbx, %rsi
	salq	$4, %rsi
	addq	optab_table+240(%rip), %rsi
	cmpl	$1317, 8(%rsi)
	je	.L20847
	movq	%r8, -9592(%rbp)
	call	get_mode_alignment
	movq	-9592(%rbp), %r8
	movl	$128, %ecx
	cmpl	%eax, %ecx
	jb	.L20847
	movzbq	mode_size(%rbx), %rdi
	movq	%r12, %rax
	xorl	%edx, %edx
	divq	%rdi
	addq	%rax, %r15
	movq	%rdx, %r12
.L20847:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L20848
.L20838:
	testq	%r12, %r12
	jne	.L25529
	cmpq	$2, %r15
	jbe	.L20834
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L24091
.L20856:
	movslq	%ecx,%rbx
	movzbl	mode_size(%rbx), %edx
	cmpl	%r14d, %edx
	cmovae	-9100(%rbp), %ecx
	movl	%ecx, -9100(%rbp)
	movzbl	mode_wider_mode(%rbx), %ecx
	testl	%ecx, %ecx
	jne	.L20856
.L24091:
	movl	-2152(%rbp), %r15d
	testl	%r15d, %r15d
	jne	.L20862
	movzwl	(%r8), %edx
	leal	-67(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L20860
	cmpw	$54, %dx
	je	.L20860
	cmpw	$55, %dx
	je	.L20860
	cmpw	$58, %dx
	je	.L20860
	cmpw	$134, %dx
	je	.L20860
	cmpw	$56, %dx
	je	.L20860
	cmpw	$140, %dx
	je	.L20860
.L20862:
	movl	-2176(%rbp), %eax
	testl	%eax, %eax
	jne	.L20834
	movq	-9096(%rbp), %r11
	movzwl	(%r11), %edx
	leal	-67(%rdx), %r8d
	cmpw	$1, %r8w
	jbe	.L20864
	cmpw	$54, %dx
	je	.L20864
	cmpw	$55, %dx
	je	.L20864
	cmpw	$58, %dx
	je	.L20864
	cmpw	$134, %dx
	je	.L20864
	cmpw	$56, %dx
	je	.L20864
	cmpw	$140, %dx
	je	.L20864
.L20834:
	cmpl	$1, %r14d
	jbe	.L20867
.L20918:
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L24094
.L20874:
	movslq	%ecx,%rsi
	movzbl	mode_size(%rsi), %r12d
	cmpl	%r14d, %r12d
	cmovae	-9100(%rbp), %ecx
	movl	%ecx, -9100(%rbp)
	movzbl	mode_wider_mode(%rsi), %ecx
	testl	%ecx, %ecx
	jne	.L20874
.L24094:
	movl	-9100(%rbp), %eax
	testl	%eax, %eax
	je	.L20867
	movslq	-9100(%rbp),%r15
	movq	%r15, %r14
	salq	$4, %r14
	addq	optab_table+240(%rip), %r14
	movl	8(%r14), %ebx
	cmpl	$1317, %ebx
	je	.L20876
	movl	-9100(%rbp), %edi
	call	get_mode_alignment
	movl	$128, %ecx
	cmpl	%eax, %ecx
	jb	.L20876
	movslq	%ebx,%rdx
	leaq	-2192(%rbp), %r12
	movq	$0, -9112(%rbp)
	leaq	(%rdx,%rdx,4), %rdi
	movzbq	mode_size(%r15), %rdx
	cmpq	%rdx, -2144(%rbp)
	movq	insn_data+16(,%rdi,8), %r9
	movq	%rdx, -6184(%rbp)
	movq	%r9, -5168(%rbp)
	jb	.L20876
	movl	-2128(%rbp), %ecx
.L20916:
	testl	%ecx, %ecx
	je	.L20880
	subq	%rdx, 56(%r12)
.L20880:
	movq	(%r12), %rdi
	testq	%rdi, %rdi
	je	.L20881
	movl	16(%r12), %eax
	testl	%eax, %eax
	je	.L20882
	movl	-9100(%rbp), %esi
	movq	8(%r12), %rdx
	movl	$1, %r8d
	movq	56(%r12), %rcx
	call	adjust_automodify_address_1
.L24973:
	movq	%rax, -9112(%rbp)
.L20881:
	movl	40(%r12), %eax
	testl	%eax, %eax
	je	.L20884
	movq	24(%r12), %rdi
	movl	-9100(%rbp), %esi
	movl	$1, %r8d
	movq	32(%r12), %rdx
	movq	56(%r12), %rcx
	call	adjust_automodify_address_1
.L24974:
	cmpq	$0, (%r12)
	movq	%rax, %r14
	jne	.L26021
	movl	target_flags(%rip), %eax
	testl	$33554432, %eax
	movl	%eax, %esi
	je	.L20890
	movzbl	mode_size(%r15), %ebx
	leal	7(%rbx), %edx
	andl	$-8, %edx
.L20891:
	movq	cfun(%rip), %r11
	andl	$33554432, %esi
	movq	16(%r11), %r8
	leaq	8(%r8), %rdi
	movl	8(%r8), %ecx
	je	.L20892
	movzbl	mode_size(%r15), %eax
	addl	$7, %eax
	andl	$-8, %eax
.L24975:
	movq	%r15, %rsi
	leal	(%rax,%rcx), %r9d
	salq	$4, %rsi
	movl	%r9d, (%rdi)
	addq	optab_table+384(%rip), %rsi
	movl	8(%rsi), %eax
	cmpl	$1317, %eax
	je	.L20894
	movslq	%eax,%rbx
	leaq	(%rbx,%rbx,4), %rdi
	movq	insn_data+24(,%rdi,8), %rcx
	movq	(%rcx), %rax
	testq	%rax, %rax
	je	.L20895
	movq	%r14, %rdi
	movl	-9100(%rbp), %esi
	call	*%rax
	testl	%eax, %eax
	je	.L26022
.L20895:
	leaq	(%rbx,%rbx,4), %r10
	movq	%r14, %rdi
	xorl	%eax, %eax
	call	*insn_data+16(,%r10,8)
.L24976:
	movq	%rax, %rdi
	call	emit_insn
.L20914:
	movl	64(%r12), %eax
	testl	%eax, %eax
	movl	%eax, %ecx
	jne	.L20915
	movq	-6184(%rbp), %r14
	addq	%r14, 56(%r12)
.L20915:
	movq	48(%r12), %rsi
	movq	-6184(%rbp), %rdx
	subq	-6184(%rbp), %rsi
	cmpq	%rdx, %rsi
	movq	%rsi, 48(%r12)
	jae	.L20916
.L20876:
	movzbl	mode_size(%r15), %r14d
	cmpl	$1, %r14d
	ja	.L20918
.L20867:
	cmpq	$0, -2144(%rbp)
	je	.L20936
	jmp	.L25518
.L26022:
	movl	-9100(%rbp), %edi
	movq	%r14, %rsi
	call	force_reg
	movq	%rax, %r14
	jmp	.L20895
.L20894:
	movzbl	mode_size(%r15), %ebx
	cmpl	%edx, %ebx
	je	.L26023
	mov	%edx, %esi
	xorl	%edi, %edi
	negq	%rsi
	call	gen_rtx_CONST_INT
	movq	global_rtl+16(%rip), %rdx
	movl	$75, %edi
	testb	$2, target_flags+3(%rip)
	movq	%rax, %rcx
	setne	%r8b
	movzbl	%r8b, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_ee
	movl	$100, %edi
	testb	$2, target_flags+3(%rip)
	setne	%dl
	movq	%rax, %rcx
	movzbl	%dl, %esi
	movq	global_rtl+16(%rip), %rdx
	addl	$4, %esi
	call	gen_rtx_fmt_ee
.L20902:
	movl	-9100(%rbp), %edi
	movq	%rax, %rsi
	call	gen_rtx_MEM
	xorl	%r11d, %r11d
	testq	%r11, %r11
	movq	%rax, %rbx
	je	.L20911
	movq	%rax, %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	call	set_mem_attributes
	movl	flag_optimize_sibling_calls(%rip), %eax
	testl	%eax, %eax
	jne	.L26024
.L20911:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	call	emit_move_insn
	jmp	.L20914
.L26024:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	call	set_mem_alias_set
	jmp	.L20911
.L26023:
	testb	$2, target_flags+3(%rip)
	movq	global_rtl+16(%rip), %rdx
	movl	$96, %edi
	setne	%al
	movzbl	%al, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_e
	jmp	.L20902
.L20892:
	movzbl	mode_size(%r15), %eax
	incl	%eax
	andl	$-2, %eax
	jmp	.L24975
.L20890:
	movzbl	mode_size(%r15), %r10d
	leal	1(%r10), %edx
	andl	$-2, %edx
	jmp	.L20891
.L26021:
	movq	%rax, %rsi
	movq	-9112(%rbp), %rdi
	xorl	%eax, %eax
	call	*-5168(%rbp)
	jmp	.L24976
.L20884:
	movq	24(%r12), %rdi
	movl	-9100(%rbp), %esi
	movl	$1, %ecx
	movq	56(%r12), %rdx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L24974
.L20882:
	movl	-9100(%rbp), %esi
	movq	56(%r12), %rdx
	movl	$1, %ecx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L24973
.L20864:
	movq	-9096(%rbp), %rdi
	call	copy_addr_to_reg
	movq	%rax, -2184(%rbp)
	jmp	.L20834
.L20860:
	movq	%r8, %rdi
	call	copy_addr_to_reg
	movq	%rax, -2160(%rbp)
	jmp	.L20862
.L20832:
	movl	$1, %ecx
	jmp	.L20831
.L20829:
	movl	$1, %edx
	jmp	.L20828
.L20827:
	movl	$1, %ecx
	jmp	.L20826
.L20821:
	cmpq	$2, %r14
	ja	.L20805
	jmp	.L20822
.L20797:
	movq	-9064(%rbp), %r9
	xorl	%esi, %esi
	movq	8(%r9), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	-9064(%rbp), %r8
	movq	%rax, %r12
	movq	16(%r8), %rdi
	call	protect_from_queue
	movq	-9064(%rbp), %rcx
	movq	%rax, %rbx
	cmpq	8(%rcx), %r12
	je	.L26025
.L20799:
	movq	-9064(%rbp), %rdi
	call	copy_rtx
	movq	%rax, -9088(%rbp)
	movq	%r12, 8(%rax)
	movq	-9088(%rbp), %rdi
	movq	%rbx, 16(%rdi)
	jmp	.L20792
.L26025:
	cmpq	16(%rcx), %rax
	jne	.L20799
	jmp	.L20792
.L25999:
	cmpb	$51, 2(%rdx)
	je	.L20790
	movq	8(%rdx), %r12
	cmpw	$71, (%r12)
	je	.L26026
.L20790:
	cmpl	$66, %eax
	jne	.L20793
	movq	-9064(%rbp), %rcx
	xorl	%esi, %esi
	movq	8(%rcx), %rdi
	call	protect_from_queue
	movq	-9064(%rbp), %rsi
	movq	%rax, %rbx
	cmpq	8(%rsi), %rax
	je	.L20792
	movq	%rsi, %rdi
	call	copy_rtx
	movq	%rax, -9088(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L20792
.L26026:
	movq	8(%r12), %rsi
	movq	%rdx, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%r12)
	movq	%rax, %rbx
	je	.L20791
	movq	-9064(%rbp), %rax
	movzbl	2(%rax), %edi
	call	gen_reg_rtx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, -9088(%rbp)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L20792
.L20791:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L24972:
	movq	%rax, -9088(%rbp)
	jmp	.L20792
.L20789:
	movq	-9064(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.L26027
	movq	-9064(%rbp), %rsi
	movq	24(%rsi), %rbx
	testq	%rbx, %rbx
	movq	%rbx, -9088(%rbp)
	jne	.L20792
	movq	-9064(%rbp), %r11
	movq	8(%r11), %rdx
	movzbl	2(%rdx), %edi
	call	gen_reg_rtx
	movq	-9064(%rbp), %r12
	movq	%rax, %rdi
	movq	8(%r12), %rsi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %r10
	movq	%r10, -9088(%rbp)
	jmp	.L20792
.L26027:
	movq	8(%rax), %rdi
	call	copy_to_reg
	jmp	.L24972
.L20784:
	movq	-9216(%rbp), %rbx
	xorl	%esi, %esi
	movq	8(%rbx), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	-9216(%rbp), %r9
	movq	%rax, %r12
	movq	16(%r9), %rdi
	call	protect_from_queue
	movq	-9216(%rbp), %rcx
	movq	%rax, %rbx
	cmpq	8(%rcx), %r12
	je	.L26028
.L20786:
	movq	-9216(%rbp), %rdi
	call	copy_rtx
	movq	%rax, -9080(%rbp)
	movq	%r12, 8(%rax)
	movq	-9080(%rbp), %rdi
	movq	%rbx, 16(%rdi)
	jmp	.L20779
.L26028:
	cmpq	16(%rcx), %rax
	jne	.L20786
	jmp	.L20779
.L25998:
	cmpb	$51, 2(%rdx)
	je	.L20777
	movq	8(%rdx), %r12
	cmpw	$71, (%r12)
	je	.L26029
.L20777:
	cmpl	$66, %eax
	jne	.L20780
	movq	-9216(%rbp), %r8
	xorl	%esi, %esi
	movq	8(%r8), %rdi
	call	protect_from_queue
	movq	-9216(%rbp), %rsi
	movq	%rax, %rbx
	cmpq	8(%rsi), %rax
	je	.L20779
	movq	%rsi, %rdi
	call	copy_rtx
	movq	%rax, -9080(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L20779
.L26029:
	movq	8(%r12), %rsi
	movq	%rdx, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%r12)
	movq	%rax, %rbx
	je	.L20778
	movq	-9216(%rbp), %rax
	movzbl	2(%rax), %edi
	call	gen_reg_rtx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, -9080(%rbp)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L20779
.L20778:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L24971:
	movq	%rax, -9080(%rbp)
	jmp	.L20779
.L20776:
	movq	-9216(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.L26030
	movq	-9216(%rbp), %r10
	movq	24(%r10), %rsi
	testq	%rsi, %rsi
	movq	%rsi, -9080(%rbp)
	jne	.L20779
	movq	-9216(%rbp), %r14
	movq	8(%r14), %r11
	movzbl	2(%r11), %edi
	call	gen_reg_rtx
	movq	-9216(%rbp), %r12
	movq	%rax, %rdi
	movq	8(%r12), %rsi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %rdx
	movq	%rdx, -9080(%rbp)
	jmp	.L20779
.L26030:
	movq	8(%rax), %rdi
	call	copy_to_reg
	jmp	.L24971
.L20771:
	movq	-9224(%rbp), %r14
	xorl	%esi, %esi
	movq	8(%r14), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r14), %rdi
	movq	%rax, %r12
	call	protect_from_queue
	movq	-9224(%rbp), %rsi
	movq	%rax, %rbx
	cmpq	8(%rsi), %r12
	je	.L26031
.L20773:
	movq	-9224(%rbp), %rdi
	call	copy_rtx
	movq	%rax, -9072(%rbp)
	movq	%r12, 8(%rax)
	movq	-9072(%rbp), %rsi
	movq	%rbx, 16(%rsi)
	jmp	.L20766
.L26031:
	cmpq	16(%rsi), %rax
	jne	.L20773
	jmp	.L20766
.L25997:
	jne	.L20767
	movq	8(%rdx), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	-9224(%rbp), %rcx
	movq	%rax, %rbx
	cmpq	8(%rcx), %rax
	je	.L20766
	movq	%rcx, %rdi
	call	copy_rtx
	movq	%rax, -9072(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L20766
.L20763:
	testq	%rsi, %rsi
	je	.L26032
	movq	-9224(%rbp), %r11
	movq	24(%r11), %rdx
	testq	%rdx, %rdx
	movq	%rdx, -9072(%rbp)
	jne	.L20766
	movq	-9224(%rbp), %r14
	movq	8(%r14), %rcx
	movzbl	2(%rcx), %edi
	call	gen_reg_rtx
	movq	8(%r14), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r14), %r12
	movq	%r12, -9072(%rbp)
	jmp	.L20766
.L26032:
	movq	-9224(%rbp), %r10
	movq	8(%r10), %rdi
	call	copy_to_reg
	movq	%rax, -9072(%rbp)
	jmp	.L20766
.L20756:
	testq	%rsi, %rsi
	movl	$8, %r15d
	je	.L20752
	movl	32(%rsi), %r15d
	jmp	.L20752
.L20755:
	cmpl	$7, %edx
	ja	.L20751
	jmp	.L20756
.L25996:
	movq	-9576(%rbp), %rdx
	movq	-9032(%rbp), %r10
	movslq	32(%rdx),%r9
	cmpq	%r9, 8(%r10)
	jge	.L20551
	movq	-9224(%rbp), %r11
	movq	-9216(%rbp), %r8
	movl	$8, %edx
	movq	%r11, -9016(%rbp)
	movq	%r8, -9024(%rbp)
	movq	16(%r11), %rax
	testq	%rax, %rax
	movq	%rax, %rsi
	je	.L20555
	movl	32(%rax), %edx
.L20555:
	movq	-9216(%rbp), %r14
	movq	16(%r14), %rax
	testq	%rax, %rax
	movq	%rax, %rcx
	je	.L20556
	cmpl	32(%rax), %edx
	jb	.L20557
.L20552:
	testq	%rcx, %rcx
	movl	$8, %r15d
	je	.L20553
	movl	32(%rcx), %r15d
.L20553:
	movq	-9224(%rbp), %rcx
	cmpb	$51, 2(%rcx)
	jne	.L25547
	movq	-9216(%rbp), %rbx
	cmpb	$51, 2(%rbx)
	jne	.L25546
	movq	-9224(%rbp), %rdx
	movzwl	(%rdx), %eax
	cmpl	$71, %eax
	je	.L20564
	cmpl	$66, %eax
	je	.L26033
.L20568:
	cmpl	$75, %eax
	je	.L20572
	cmpl	$78, %eax
	je	.L20572
.L20567:
	movq	-9216(%rbp), %rdx
	movzwl	(%rdx), %eax
	cmpl	$71, %eax
	je	.L20577
	cmpl	$66, %eax
	je	.L26034
.L20581:
	cmpl	$75, %eax
	je	.L20585
	cmpl	$78, %eax
	je	.L20585
.L20580:
	movq	-9032(%rbp), %rdx
	movzwl	(%rdx), %eax
	cmpl	$71, %eax
	je	.L20590
	cmpl	$66, %eax
	je	.L26035
.L20594:
	cmpl	$75, %eax
	je	.L20598
	cmpl	$78, %eax
	je	.L20598
.L20593:
	movq	-9016(%rbp), %r9
	cmpw	$66, (%r9)
	jne	.L25545
	movq	-9024(%rbp), %rax
	cmpw	$66, (%rax)
	jne	.L25544
	cmpq	$0, -9032(%rbp)
	je	.L25543
	movq	-9032(%rbp), %rcx
	cmpw	$54, (%rcx)
	je	.L26036
.L20606:
	shrl	$3, %r15d
	xorl	%edi, %edi
	mov	%r15d, %esi
	call	gen_rtx_CONST_INT
	movl	class_narrowest_mode+4(%rip), %r12d
	movl	$1, volatile_ok(%rip)
	movq	%rax, -5136(%rbp)
	testl	%r12d, %r12d
	je	.L24083
.L20739:
	movslq	%r12d,%r15
	movl	movstr_optab(,%r15,4), %edx
	cmpl	$1317, %edx
	je	.L20725
	movq	-9032(%rbp), %rsi
	cmpw	$54, (%rsi)
	je	.L26037
.L20729:
	testb	$2, target_flags+3(%rip)
	je	.L20730
	cmpw	$63, mode_bitsize(%r15,%r15)
.L24970:
	jbe	.L20725
.L20728:
	movslq	%edx,%r9
	leaq	(%r9,%r9,4), %rsi
	movq	%r9, -5144(%rbp)
	movq	insn_data+24(,%rsi,8), %r14
	movq	(%r14), %rax
	testq	%rax, %rax
	je	.L20732
	movq	-9016(%rbp), %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L20725
.L20732:
	movq	24(%r14), %rax
	testq	%rax, %rax
	jne	.L26038
.L20733:
	movq	72(%r14), %rax
	testq	%rax, %rax
	je	.L20734
	xorl	%esi, %esi
	movq	-5136(%rbp), %rdi
	call	*%rax
	testl	%eax, %eax
	je	.L20725
.L20734:
	call	get_last_insn
	movl	$1, %edx
	movq	-9032(%rbp), %rsi
	movl	%r12d, %edi
	movq	%rax, -5152(%rbp)
	call	convert_to_mode
	movq	%rax, %rbx
	movq	48(%r14), %rax
	testq	%rax, %rax
	jne	.L26039
.L20735:
	movq	-5144(%rbp), %rdx
	movq	-9016(%rbp), %rdi
	xorl	%eax, %eax
	movq	-9024(%rbp), %rsi
	movq	-5136(%rbp), %rcx
	leaq	(%rdx,%rdx,4), %r12
	movq	%rbx, %rdx
	call	*insn_data+16(,%r12,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L24526
	movq	-5152(%rbp), %rdi
	call	delete_insns_since
.L20725:
	movzbl	mode_wider_mode(%r15), %r12d
	testl	%r12d, %r12d
	jne	.L20739
.L24083:
	testb	$2, target_flags+3(%rip)
	movq	-9016(%rbp), %rcx
	movl	$0, volatile_ok(%rip)
	setne	%r14b
	movq	8(%rcx), %rsi
	movzbl	%r14b, %edi
	addl	$4, %edi
	call	copy_to_mode_reg
	testb	$2, target_flags+3(%rip)
	setne	%r11b
	movq	%rax, %r14
	movq	-9024(%rbp), %rax
	movq	8(%rax), %rsi
	movzbl	%r11b, %edi
	addl	$4, %edi
	call	copy_to_mode_reg
	movq	-9032(%rbp), %rsi
	movq	sizetype_tab(%rip), %r10
	movq	%rax, %rbx
	movzbl	61(%r10), %r15d
	shrb	$1, %r15b
	movzbl	%r15b, %edi
	call	copy_to_mode_reg
	cmpq	$0, fn.1(%rip)
	movq	%rax, %r15
	je	.L26040
.L20748:
	movq	global_trees+216(%rip), %rdi
	call	build_pointer_type
	movq	%r14, %rsi
	movq	%rax, %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	global_trees+216(%rip), %rdi
	movq	%rax, %r12
	call	build_pointer_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	%r15, %rsi
	movq	%rax, (%r12)
	movq	%rax, %rbx
	movq	sizetype_tab(%rip), %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	fn.1(%rip), %rdx
	movq	%rax, (%rbx)
	movq	(%r12), %r11
	movq	8(%rdx), %rdi
	movq	(%r11), %r10
	movq	$0, (%r10)
	call	build_pointer_type
	movq	fn.1(%rip), %rdx
	movl	$121, %edi
	movq	%rax, %rsi
	call	build1
	xorl	%r8d, %r8d
	movq	%r12, %rcx
	movq	fn.1(%rip), %r15
	movq	%rax, %rdx
	movl	$53, %edi
	xorl	%eax, %eax
	movq	8(%r15), %rbx
	movq	8(%rbx), %rsi
	call	build
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	orb	$1, 17(%rax)
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	expand_expr
	testb	$4, 3(%r14)
	je	.L20526
	movl	$49, %edi
	xorl	%esi, %esi
	movq	%r14, %rdx
	jmp	.L24993
.L26040:
	movl	$.LC11, %edi
	call	get_identifier
	movq	global_trees+216(%rip), %rdi
	movq	%rax, fn.1(%rip)
	call	build_pointer_type
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	build_function_type
	movq	fn.1(%rip), %rsi
	movl	$30, %edi
	movq	%rax, %rdx
	call	build_decl
	movl	$1, %esi
	movl	$fn.1, %edi
	movq	%rax, fn.1(%rip)
	call	ggc_add_tree_root
	movq	fn.1(%rip), %r9
	orb	$1, 49(%r9)
	movq	fn.1(%rip), %rsi
	orb	$8, 18(%rsi)
	xorl	%esi, %esi
	movq	fn.1(%rip), %r8
	orb	$64, 50(%r8)
	movq	fn.1(%rip), %rdi
	orb	$2, 18(%rdi)
	movq	fn.1(%rip), %rdi
	call	make_decl_rtl
	movq	fn.1(%rip), %rdi
	call	assemble_external
	jmp	.L20748
.L26039:
	movq	%rbx, %rdi
	movl	%r12d, %esi
	call	*%rax
	testl	%eax, %eax
	jne	.L20735
	movq	%rbx, %rsi
	movl	%r12d, %edi
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L20735
.L26038:
	movq	-9024(%rbp), %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L20725
	jmp	.L20733
.L20730:
	cmpw	$31, mode_bitsize(%r15,%r15)
	jmp	.L24970
.L26037:
	movq	mode_mask_array(,%r15,8), %r8
	shrq	$1, %r8
	cmpq	%r8, 8(%rsi)
	jbe	.L20728
	jmp	.L20729
.L26036:
	movq	8(%rcx), %r12
	xorl	%r14d, %r14d
	movl	$17, %esi
.L20619:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L24072
.L20616:
	movslq	%ecx,%r10
	movzbq	mode_size(%r10), %rdx
	cmpq	%rsi, %rdx
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r10), %ecx
	testl	%ecx, %ecx
	jne	.L20616
.L24072:
	testl	%edi, %edi
	je	.L20609
	movslq	%edi,%rbx
	movq	%rbx, %r11
	salq	$4, %r11
	addq	optab_table+240(%rip), %r11
	cmpl	$1317, 8(%r11)
	je	.L20618
	call	get_mode_alignment
	movl	$128, %r8d
	cmpl	%eax, %r8d
	jb	.L20618
	movzbq	mode_size(%rbx), %rdi
	movq	%r12, %rax
	xorl	%edx, %edx
	divq	%rdi
	addq	%rax, %r14
	movq	%rdx, %r12
.L20618:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L20619
.L20609:
	testq	%r12, %r12
	jne	.L25529
	movl	optimize_size(%rip), %eax
	testl	%eax, %eax
	jne	.L20622
	movq	ix86_cost(%rip), %rsi
	mov	40(%rsi), %ebx
	cmpq	%rbx, %r14
	jae	.L20606
.L20623:
	movq	-9032(%rbp), %r8
	movq	-9024(%rbp), %rcx
	movq	-9016(%rbp), %rdx
	movq	-9016(%rbp), %rax
	testb	$2, target_flags+3(%rip)
	movq	8(%r8), %r12
	setne	%r14b
	movq	8(%rcx), %r8
	xorl	%ecx, %ecx
	movq	$0, -2056(%rbp)
	movl	$0, -9044(%rbp)
	movq	%r8, -2080(%rbp)
	movzbl	%r14b, %r11d
	movq	8(%rdx), %r10
	movq	%rax, -2112(%rbp)
	leal	5(,%r11,4), %r14d
	movq	%r10, -9040(%rbp)
	movq	-9040(%rbp), %r9
	movzwl	(%r9), %edx
	leal	-96(%rdx), %r15d
	cmpw	$1, %r15w
	jbe	.L20628
	cmpw	$99, %dx
	je	.L20628
	cmpw	$98, %dx
	je	.L20628
.L20627:
	movq	-9040(%rbp), %rdi
	movl	%ecx, -2096(%rbp)
	xorl	%edx, %edx
	movzwl	(%rdi), %eax
	cmpw	$96, %ax
	je	.L20630
	cmpw	$98, %ax
	je	.L20630
.L20629:
	movq	-9040(%rbp), %rsi
	movq	-9024(%rbp), %r15
	movl	%edx, -2048(%rbp)
	xorl	%ecx, %ecx
	movq	%rsi, -2104(%rbp)
	movq	%r15, -2088(%rbp)
	movzwl	(%r8), %edx
	leal	-96(%rdx), %ebx
	cmpw	$1, %bx
	jbe	.L20633
	cmpw	$99, %dx
	je	.L20633
	cmpw	$98, %dx
	je	.L20633
.L20632:
	movl	-2048(%rbp), %eax
	movl	%ecx, -2072(%rbp)
	movl	$0, -2068(%rbp)
	movl	$0, -2092(%rbp)
	testl	%eax, %eax
	je	.L20634
	movq	%r12, -2056(%rbp)
.L20634:
	movl	-2072(%rbp), %eax
	movq	%r12, -2064(%rbp)
	testl	%eax, %eax
	je	.L20636
	movl	-2096(%rbp), %eax
	testl	%eax, %eax
	jne	.L20635
.L20636:
	xorl	%r15d, %r15d
	movl	$17, %esi
.L20649:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L24075
.L20646:
	movslq	%ecx,%r9
	movzbq	mode_size(%r9), %r10
	cmpq	%rsi, %r10
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r9), %ecx
	testl	%ecx, %ecx
	jne	.L20646
.L24075:
	testl	%edi, %edi
	je	.L20639
	movslq	%edi,%rbx
	movq	%rbx, %rdx
	salq	$4, %rdx
	addq	optab_table+240(%rip), %rdx
	cmpl	$1317, 8(%rdx)
	je	.L20648
	movq	%r8, -9592(%rbp)
	call	get_mode_alignment
	movq	-9592(%rbp), %r8
	movl	$128, %r11d
	cmpl	%eax, %r11d
	jb	.L20648
	movzbq	mode_size(%rbx), %rdi
	movq	%r12, %rax
	xorl	%edx, %edx
	divq	%rdi
	addq	%rax, %r15
	movq	%rdx, %r12
.L20648:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L20649
.L20639:
	testq	%r12, %r12
	jne	.L25529
	cmpq	$2, %r15
	jbe	.L20635
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L24077
.L20657:
	movslq	%ecx,%rbx
	movzbl	mode_size(%rbx), %r15d
	cmpl	%r14d, %r15d
	cmovae	-9044(%rbp), %ecx
	movl	%ecx, -9044(%rbp)
	movzbl	mode_wider_mode(%rbx), %ecx
	testl	%ecx, %ecx
	jne	.L20657
.L24077:
	movl	-2072(%rbp), %eax
	testl	%eax, %eax
	jne	.L20663
	movzwl	(%r8), %edx
	leal	-67(%rdx), %esi
	cmpw	$1, %si
	jbe	.L20661
	cmpw	$54, %dx
	je	.L20661
	cmpw	$55, %dx
	je	.L20661
	cmpw	$58, %dx
	je	.L20661
	cmpw	$134, %dx
	je	.L20661
	cmpw	$56, %dx
	je	.L20661
	cmpw	$140, %dx
	je	.L20661
.L20663:
	movl	-2096(%rbp), %r8d
	testl	%r8d, %r8d
	jne	.L20635
	movq	-9040(%rbp), %r10
	movzwl	(%r10), %edx
	leal	-67(%rdx), %r9d
	cmpw	$1, %r9w
	jbe	.L20665
	cmpw	$54, %dx
	je	.L20665
	cmpw	$55, %dx
	je	.L20665
	cmpw	$58, %dx
	je	.L20665
	cmpw	$134, %dx
	je	.L20665
	cmpw	$56, %dx
	je	.L20665
	cmpw	$140, %dx
	je	.L20665
.L20635:
	cmpl	$1, %r14d
	jbe	.L20668
.L20719:
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L24080
.L20675:
	movslq	%ecx,%r11
	movzbl	mode_size(%r11), %edx
	cmpl	%r14d, %edx
	cmovae	-9044(%rbp), %ecx
	movl	%ecx, -9044(%rbp)
	movzbl	mode_wider_mode(%r11), %ecx
	testl	%ecx, %ecx
	jne	.L20675
.L24080:
	movl	-9044(%rbp), %r14d
	testl	%r14d, %r14d
	je	.L20668
	movslq	-9044(%rbp),%r15
	movq	%r15, %r12
	salq	$4, %r12
	addq	optab_table+240(%rip), %r12
	movl	8(%r12), %ebx
	cmpl	$1317, %ebx
	je	.L20677
	movl	-9044(%rbp), %edi
	call	get_mode_alignment
	movl	$128, %ecx
	cmpl	%eax, %ecx
	jb	.L20677
	movzbq	mode_size(%r15), %rdx
	movslq	%ebx,%rsi
	leaq	-2112(%rbp), %r12
	leaq	(%rsi,%rsi,4), %rbx
	cmpq	%rdx, -2064(%rbp)
	movq	$0, -9056(%rbp)
	movq	insn_data+16(,%rbx,8), %rdi
	movq	%rdx, -6176(%rbp)
	movq	%rdi, -5128(%rbp)
	jb	.L20677
	movl	-2048(%rbp), %ecx
.L20717:
	testl	%ecx, %ecx
	je	.L20681
	subq	%rdx, 56(%r12)
.L20681:
	movq	(%r12), %rdi
	testq	%rdi, %rdi
	je	.L20682
	movl	16(%r12), %eax
	testl	%eax, %eax
	je	.L20683
	movl	-9044(%rbp), %esi
	movq	8(%r12), %rdx
	movl	$1, %r8d
	movq	56(%r12), %rcx
	call	adjust_automodify_address_1
.L24966:
	movq	%rax, -9056(%rbp)
.L20682:
	movl	40(%r12), %r8d
	testl	%r8d, %r8d
	je	.L20685
	movq	24(%r12), %rdi
	movl	-9044(%rbp), %esi
	movl	$1, %r8d
	movq	32(%r12), %rdx
	movq	56(%r12), %rcx
	call	adjust_automodify_address_1
.L24967:
	cmpq	$0, (%r12)
	movq	%rax, %r14
	jne	.L26041
	movl	target_flags(%rip), %eax
	testl	$33554432, %eax
	movl	%eax, %esi
	je	.L20691
	movzbl	mode_size(%r15), %r9d
	leal	7(%r9), %edx
	andl	$-8, %edx
.L20692:
	movq	cfun(%rip), %rcx
	andl	$33554432, %esi
	movq	16(%rcx), %r11
	leaq	8(%r11), %rdi
	movl	8(%r11), %ecx
	je	.L20693
	movzbl	mode_size(%r15), %eax
	addl	$7, %eax
	andl	$-8, %eax
.L24968:
	leal	(%rax,%rcx), %ebx
	movl	%ebx, (%rdi)
	movq	%r15, %rdi
	salq	$4, %rdi
	addq	optab_table+384(%rip), %rdi
	movl	8(%rdi), %eax
	cmpl	$1317, %eax
	je	.L20695
	movslq	%eax,%rbx
	leaq	(%rbx,%rbx,4), %rsi
	movq	insn_data+24(,%rsi,8), %rdx
	movq	(%rdx), %rax
	testq	%rax, %rax
	je	.L20696
	movq	%r14, %rdi
	movl	-9044(%rbp), %esi
	call	*%rax
	testl	%eax, %eax
	je	.L26042
.L20696:
	leaq	(%rbx,%rbx,4), %r8
	movq	%r14, %rdi
	xorl	%eax, %eax
	call	*insn_data+16(,%r8,8)
.L24969:
	movq	%rax, %rdi
	call	emit_insn
.L20715:
	movl	64(%r12), %eax
	testl	%eax, %eax
	movl	%eax, %ecx
	jne	.L20716
	movq	-6176(%rbp), %r14
	addq	%r14, 56(%r12)
.L20716:
	movq	48(%r12), %rbx
	movq	-6176(%rbp), %rdx
	subq	-6176(%rbp), %rbx
	cmpq	%rdx, %rbx
	movq	%rbx, 48(%r12)
	jae	.L20717
.L20677:
	movzbl	mode_size(%r15), %r14d
	cmpl	$1, %r14d
	ja	.L20719
.L20668:
	cmpq	$0, -2064(%rbp)
	jmp	.L25548
.L26042:
	movl	-9044(%rbp), %edi
	movq	%r14, %rsi
	call	force_reg
	movq	%rax, %r14
	jmp	.L20696
.L20695:
	movzbl	mode_size(%r15), %r9d
	cmpl	%edx, %r9d
	je	.L26043
	mov	%edx, %esi
	xorl	%edi, %edi
	negq	%rsi
	call	gen_rtx_CONST_INT
	movq	global_rtl+16(%rip), %rdx
	movl	$75, %edi
	testb	$2, target_flags+3(%rip)
	movq	%rax, %rcx
	setne	%r11b
	movzbl	%r11b, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_ee
	movq	global_rtl+16(%rip), %rdx
	movl	$100, %edi
	testb	$2, target_flags+3(%rip)
	movq	%rax, %rcx
	setne	%r10b
	movzbl	%r10b, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_ee
.L20703:
	movl	-9044(%rbp), %edi
	movq	%rax, %rsi
	call	gen_rtx_MEM
	xorl	%ecx, %ecx
	testq	%rcx, %rcx
	movq	%rax, %rbx
	je	.L20712
	movq	%rax, %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	call	set_mem_attributes
	movl	flag_optimize_sibling_calls(%rip), %edi
	testl	%edi, %edi
	jne	.L26044
.L20712:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	call	emit_move_insn
	jmp	.L20715
.L26044:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	call	set_mem_alias_set
	jmp	.L20712
.L26043:
	testb	$2, target_flags+3(%rip)
	movq	global_rtl+16(%rip), %rdx
	movl	$96, %edi
	setne	%al
	movzbl	%al, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_e
	jmp	.L20703
.L20693:
	movzbl	mode_size(%r15), %eax
	incl	%eax
	andl	$-2, %eax
	jmp	.L24968
.L20691:
	movzbl	mode_size(%r15), %r10d
	leal	1(%r10), %edx
	andl	$-2, %edx
	jmp	.L20692
.L26041:
	movq	%rax, %rsi
	movq	-9056(%rbp), %rdi
	xorl	%eax, %eax
	call	*-5128(%rbp)
	jmp	.L24969
.L20685:
	movq	24(%r12), %rdi
	movl	-9044(%rbp), %esi
	movl	$1, %ecx
	movq	56(%r12), %rdx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L24967
.L20683:
	movl	-9044(%rbp), %esi
	movq	56(%r12), %rdx
	movl	$1, %ecx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L24966
.L20665:
	movq	-9040(%rbp), %rdi
	call	copy_addr_to_reg
	movq	%rax, -2104(%rbp)
	jmp	.L20635
.L20661:
	movq	%r8, %rdi
	call	copy_addr_to_reg
	movq	%rax, -2080(%rbp)
	jmp	.L20663
.L20633:
	movl	$1, %ecx
	jmp	.L20632
.L20630:
	movl	$1, %edx
	jmp	.L20629
.L20628:
	movl	$1, %ecx
	jmp	.L20627
.L20622:
	cmpq	$2, %r14
	ja	.L20606
	jmp	.L20623
.L20598:
	movq	-9032(%rbp), %r8
	xorl	%esi, %esi
	movq	8(%r8), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	-9032(%rbp), %r11
	movq	%rax, %r12
	movq	16(%r11), %rdi
	call	protect_from_queue
	movq	-9032(%rbp), %rcx
	movq	%rax, %rbx
	cmpq	8(%rcx), %r12
	je	.L26045
.L20600:
	movq	-9032(%rbp), %rdi
	call	copy_rtx
	movq	%rax, -9032(%rbp)
	movq	%r12, 8(%rax)
	movq	-9032(%rbp), %rcx
	movq	%rbx, 16(%rcx)
	jmp	.L20593
.L26045:
	cmpq	16(%rcx), %rax
	jne	.L20600
	jmp	.L20593
.L26035:
	cmpb	$51, 2(%rdx)
	je	.L20591
	movq	8(%rdx), %r12
	cmpw	$71, (%r12)
	je	.L26046
.L20591:
	cmpl	$66, %eax
	jne	.L20594
	movq	-9032(%rbp), %rdx
	xorl	%esi, %esi
	movq	8(%rdx), %rdi
	call	protect_from_queue
	movq	-9032(%rbp), %rsi
	movq	%rax, %rbx
	cmpq	8(%rsi), %rax
	je	.L20593
	movq	%rsi, %rdi
	call	copy_rtx
	movq	%rax, -9032(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L20593
.L26046:
	movq	8(%r12), %rsi
	movq	%rdx, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%r12)
	movq	%rax, %rbx
	je	.L20592
	movq	-9032(%rbp), %r10
	movzbl	2(%r10), %edi
	call	gen_reg_rtx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, -9032(%rbp)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L20593
.L20592:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L24965:
	movq	%rax, -9032(%rbp)
	jmp	.L20593
.L20590:
	movq	-9032(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.L26047
	movq	-9032(%rbp), %r12
	movq	24(%r12), %rax
	testq	%rax, %rax
	jne	.L24965
	movq	-9032(%rbp), %rsi
	movq	8(%rsi), %rbx
	movzbl	2(%rbx), %edi
	call	gen_reg_rtx
	movq	-9032(%rbp), %r14
	movq	%rax, %rdi
	movq	8(%r14), %rsi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r14), %rdi
	movq	%rdi, -9032(%rbp)
	jmp	.L20593
.L26047:
	movq	8(%rax), %rdi
	call	copy_to_reg
	jmp	.L24965
.L20585:
	movq	-9216(%rbp), %rcx
	xorl	%esi, %esi
	movq	8(%rcx), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	-9216(%rbp), %r8
	movq	%rax, %r12
	movq	16(%r8), %rdi
	call	protect_from_queue
	movq	-9216(%rbp), %rcx
	movq	%rax, %rbx
	cmpq	8(%rcx), %r12
	je	.L26048
.L20587:
	movq	-9216(%rbp), %rdi
	call	copy_rtx
	movq	%rax, -9024(%rbp)
	movq	%r12, 8(%rax)
	movq	-9024(%rbp), %r12
	movq	%rbx, 16(%r12)
	jmp	.L20580
.L26048:
	cmpq	16(%rcx), %rax
	jne	.L20587
	jmp	.L20580
.L26034:
	cmpb	$51, 2(%rdx)
	je	.L20578
	movq	8(%rdx), %r12
	cmpw	$71, (%r12)
	je	.L26049
.L20578:
	cmpl	$66, %eax
	jne	.L20581
	movq	-9216(%rbp), %r11
	xorl	%esi, %esi
	movq	8(%r11), %rdi
	call	protect_from_queue
	movq	-9216(%rbp), %rsi
	movq	%rax, %rbx
	cmpq	8(%rsi), %rax
	je	.L20580
	movq	%rsi, %rdi
	call	copy_rtx
	movq	%rax, -9024(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L20580
.L26049:
	movq	8(%r12), %rsi
	movq	%rdx, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%r12)
	movq	%rax, %rbx
	je	.L20579
	movq	-9216(%rbp), %rdx
	movzbl	2(%rdx), %edi
	call	gen_reg_rtx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, -9024(%rbp)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L20580
.L20579:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L24964:
	movq	%rax, -9024(%rbp)
	jmp	.L20580
.L20577:
	movq	-9216(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.L26050
	movq	-9216(%rbp), %rsi
	movq	24(%rsi), %rbx
	testq	%rbx, %rbx
	movq	%rbx, -9024(%rbp)
	jne	.L20580
	movq	-9216(%rbp), %rax
	movq	8(%rax), %r9
	movzbl	2(%r9), %edi
	call	gen_reg_rtx
	movq	-9216(%rbp), %r14
	movq	%rax, %rdi
	movq	8(%r14), %rsi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r14), %rdi
	movq	%rdi, -9024(%rbp)
	jmp	.L20580
.L26050:
	movq	8(%rax), %rdi
	call	copy_to_reg
	jmp	.L24964
.L20572:
	movq	-9224(%rbp), %r14
	xorl	%esi, %esi
	movq	8(%r14), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r14), %rdi
	movq	%rax, %r12
	call	protect_from_queue
	movq	-9224(%rbp), %rsi
	movq	%rax, %rbx
	cmpq	8(%rsi), %r12
	je	.L26051
.L20574:
	movq	-9224(%rbp), %rdi
	call	copy_rtx
	movq	%rax, -9016(%rbp)
	movq	%r12, 8(%rax)
	movq	-9016(%rbp), %rsi
	movq	%rbx, 16(%rsi)
	jmp	.L20567
.L26051:
	cmpq	16(%rsi), %rax
	jne	.L20574
	jmp	.L20567
.L26033:
	jne	.L20568
	movq	8(%rdx), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	-9224(%rbp), %rcx
	movq	%rax, %rbx
	cmpq	8(%rcx), %rax
	je	.L20567
	movq	%rcx, %rdi
	call	copy_rtx
	movq	%rax, -9016(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L20567
.L20564:
	testq	%rsi, %rsi
	je	.L26052
	movq	-9224(%rbp), %rax
	movq	24(%rax), %rdi
	testq	%rdi, %rdi
	movq	%rdi, -9016(%rbp)
	jne	.L20567
	movq	-9224(%rbp), %r14
	movq	8(%r14), %r10
	movzbl	2(%r10), %edi
	call	gen_reg_rtx
	movq	8(%r14), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r14), %r9
	movq	%r9, -9016(%rbp)
	jmp	.L20567
.L26052:
	movq	-9224(%rbp), %r12
	movq	8(%r12), %rdi
	call	copy_to_reg
	movq	%rax, -9016(%rbp)
	jmp	.L20567
.L20557:
	testq	%rsi, %rsi
	movl	$8, %r15d
	je	.L20553
	movl	32(%rsi), %r15d
	jmp	.L20553
.L20556:
	cmpl	$7, %edx
	ja	.L20552
	jmp	.L20557
.L20541:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, %r12
	call	protect_from_queue
	cmpq	8(%r13), %r12
	movq	%rax, %rbx
	je	.L26053
.L20543:
	movq	%r13, %rdi
	call	copy_rtx
	movq	%rax, -9224(%rbp)
	movq	%r12, 8(%rax)
	movq	-9224(%rbp), %r15
	movq	%rbx, 16(%r15)
	jmp	.L20536
.L26053:
	cmpq	16(%r13), %rax
	jne	.L20543
	jmp	.L20536
.L25966:
	jne	.L20537
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%r13), %rax
	movq	%rax, %rbx
	je	.L20536
	movq	%r13, %rdi
	call	copy_rtx
	movq	%rax, -9224(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L20536
.L20533:
	cmpq	$0, 16(%r13)
	je	.L26054
	movq	24(%r13), %rbx
	testq	%rbx, %rbx
	movq	%rbx, -9224(%rbp)
	jne	.L20536
	movq	8(%r13), %rsi
	movzbl	2(%rsi), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %rax
.L24963:
	movq	%rax, -9224(%rbp)
	jmp	.L20536
.L26054:
	movq	8(%r13), %rdi
	call	copy_to_reg
	jmp	.L24963
.L25965:
	movq	144(%rbx), %rax
	testq	%rax, %rax
	je	.L20528
	cmpq	%rax, %r13
	jne	.L20528
	jmp	.L20526
	.p2align 6,,7
.L25964:
	movq	%r13, %rdi
	call	side_effects_p
	testl	%eax, %eax
	je	.L20526
	jmp	.L20527
.L20525:
	movq	-9216(%rbp), %rdx
	cmpb	$0, 2(%rdx)
	jne	.L20524
	movq	-9576(%rbp), %rdx
	cmpb	$0, 16(%rdx)
	je	.L20524
	movq	8(%rdx), %rdx
	movzbl	2(%r13), %edi
	movzbl	61(%rdx), %r11d
	shrb	$1, %r11b
	movzbl	%r11b, %esi
	cmpl	%esi, %edi
	je	.L20524
	movzbl	17(%rdx), %ecx
	movq	-9216(%rbp), %rdx
	shrb	$5, %cl
	andl	$1, %ecx
	call	convert_modes
	movq	%rax, -9216(%rbp)
	jmp	.L20524
.L24417:
	movq	-9216(%rbp), %rcx
	movzwl	(%rcx), %edx
	jmp	.L20447
.L24422:
	movq	-9216(%rbp), %r9
	movzwl	(%r9), %edx
	jmp	.L20447
.L25963:
	movzbl	%al, %edi
	call	gen_reg_rtx
	movq	-9576(%rbp), %rdi
	movzbl	2(%r13), %edx
	movq	%rax, %rsi
	jmp	.L24962
.L20486:
	xorl	%r8d, %r8d
	testl	%r8d, %r8d
	je	.L24418
	movl	(%r13), %ecx
	movl	%ecx, %ebx
	andl	$134283263, %ebx
	cmpl	$66, %ebx
	je	.L26055
.L20502:
	andl	$268500991, %ecx
	cmpl	$268435519, %ecx
	je	.L26056
	movzbl	2(%r13), %edx
	movq	-9576(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	%r13, %rsi
	call	expand_expr
	cmpw	$61, (%r13)
	movq	%rax, -9216(%rbp)
	je	.L26057
.L20522:
	movl	(%r13), %eax
	andl	$134283263, %eax
	cmpl	$134217794, %eax
	je	.L24421
	movq	-9216(%rbp), %rdi
	movq	%r13, %rsi
	call	rtx_equal_p
	testl	%eax, %eax
	jne	.L24422
	movq	-9216(%rbp), %rax
	movzwl	(%rax), %edx
	leal	-67(%rdx), %r15d
	cmpw	$1, %r15w
	jbe	.L20523
	cmpw	$54, %dx
	je	.L20523
	cmpw	$55, %dx
	je	.L20523
	cmpw	$58, %dx
	je	.L20523
	cmpw	$134, %dx
	je	.L20523
	cmpw	$56, %dx
	je	.L20523
	cmpw	$140, %dx
	je	.L20523
	xorl	%esi, %esi
	testl	%esi, %esi
	je	.L20447
.L20523:
	movl	$1, -9004(%rbp)
	jmp	.L20447
	.p2align 6,,7
.L24421:
	movq	-9216(%rbp), %r12
	movzwl	(%r12), %edx
	jmp	.L20447
.L26057:
	cmpl	$52, 8(%r13)
	jbe	.L24420
	jmp	.L20522
.L26056:
	xorl	%r14d, %r14d
	xorl	%edx, %edx
	testl	%r14d, %r14d
	jne	.L20508
	movq	-9576(%rbp), %rax
	movq	8(%rax), %rsi
	movzbl	16(%rsi), %eax
	cmpb	$6, %al
	je	.L20509
	cmpb	$10, %al
	je	.L20509
	cmpb	$11, %al
	je	.L20509
	cmpb	$12, %al
	je	.L20509
.L20508:
	movq	%rdx, %rsi
	xorl	%ecx, %ecx
	movq	%r12, %rdi
	xorl	%edx, %edx
	call	expand_expr
	movzwl	(%rax), %edx
	movq	%rax, %rbx
	cmpw	$66, %dx
	je	.L26058
.L20511:
	leal	-67(%rdx), %edi
	cmpw	$1, %di
	jbe	.L20514
	cmpw	$54, %dx
	je	.L20514
	cmpw	$55, %dx
	je	.L20514
	cmpw	$58, %dx
	je	.L20514
	cmpw	$134, %dx
	je	.L20514
	cmpw	$56, %dx
	je	.L20514
	cmpw	$140, %dx
	je	.L20514
.L20513:
	movzbl	3(%r13), %edx
	movq	8(%r13), %rdi
	movq	%rbx, %rsi
	shrb	$2, %dl
	andl	$1, %edx
	call	convert_move
	xorl	%r11d, %r11d
	testl	%r11d, %r11d
	je	.L20446
	movzbl	2(%rbx), %edx
	movzbl	2(%r13), %eax
	cmpb	%al, %dl
	je	.L20446
	testb	%dl, %dl
	je	.L20516
	movq	%rbx, %rsi
	movzbl	%al, %edi
	call	gen_lowpart_SUBREG
	movzbl	3(%rax), %r8d
	orb	$16, %r8b
	movb	%r8b, 3(%rax)
	andb	$-5, %r8b
	movzbl	3(%r13), %ebx
	andb	$4, %bl
	orb	%bl, %r8b
	movb	%r8b, 3(%rax)
	jmp	.L20446
.L20516:
	movq	8(%r13), %r14
	movzbl	3(%r13), %ecx
	movzbl	%al, %edi
	movq	%rbx, %rdx
	movzbl	2(%r14), %esi
	shrb	$2, %cl
	andl	$1, %ecx
	call	convert_modes
	jmp	.L20446
	.p2align 6,,7
.L20514:
	cmpb	$0, 2(%rbx)
	jne	.L20513
	movq	8(%r12), %r10
	movzbl	3(%r13), %ecx
	movq	%rbx, %rdx
	movzbl	2(%r13), %edi
	movzbl	61(%r10), %r9d
	shrb	$2, %cl
	andl	$1, %ecx
	shrb	$1, %r9b
	movzbl	%r9b, %esi
	call	convert_modes
	movzbl	3(%r13), %ecx
	movzbl	2(%r13), %esi
	movq	8(%r13), %r12
	movq	%rax, %rdx
	movzbl	2(%r12), %edi
	shrb	$2, %cl
	andl	$1, %ecx
	call	convert_modes
	movq	%rax, %rbx
	jmp	.L20513
.L26058:
	xorl	%ecx, %ecx
	testl	%ecx, %ecx
	je	.L20511
	testb	$8, 3(%rax)
	jne	.L20512
	movq	8(%r13), %rdi
	movq	8(%rax), %rsi
	call	reg_mentioned_p
	testl	%eax, %eax
	je	.L24419
.L20512:
	movq	%rbx, %rdi
	call	copy_to_reg
	movq	%rax, %rbx
.L24419:
	movzwl	(%rbx), %edx
	jmp	.L20511
	.p2align 6,,7
.L20509:
	cmpq	$0, 8(%rsi)
	jne	.L20508
	movzbl	3(%r13), %ecx
	movzbl	17(%rsi), %r15d
	movl	$1, %edi
	movl	%ecx, %edx
	shrb	$5, %r15b
	shrb	$2, %dl
	andl	$1, %r15d
	andl	%edx, %edi
	cmpl	%edi, %r15d
	je	.L20510
	call	signed_or_unsigned_type
	movq	-9576(%rbp), %rsi
	movq	%rax, %rdi
	call	convert
	movzbl	3(%r13), %ecx
	movq	%rax, %r12
.L20510:
	movq	8(%r13), %rsi
	shrb	$2, %cl
	movzbl	2(%rsi), %edi
	movl	$1, %esi
	andl	%ecx, %esi
	call	type_for_mode
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	convert
	movq	8(%r13), %rdx
	movq	%rax, %r12
	jmp	.L20508
	.p2align 6,,7
.L26055:
	movzbl	2(%r13), %eax
	cmpb	$51, %al
	je	.L20502
	movq	-9576(%rbp), %rdi
	movq	%r13, %rsi
	xorl	%ecx, %ecx
	movzbl	%al, %edx
	call	expand_expr
	movq	%rax, -9216(%rbp)
	movq	%rax, %rsi
	movzbl	2(%rax), %eax
	cmpb	$51, %al
	je	.L20503
	testb	%al, %al
	je	.L20503
	cmpq	%r13, %rsi
	je	.L20505
	movq	%rsi, %rdi
	movq	%r13, %rsi
	call	rtx_equal_p
	testl	%eax, %eax
	jne	.L26059
.L20504:
	movq	-9216(%rbp), %rdi
	call	copy_to_reg
	movq	%rax, -9216(%rbp)
.L20503:
	movl	$1, -9004(%rbp)
	jmp	.L24417
.L26059:
	movq	-9216(%rbp), %rdi
	call	side_effects_p
	testl	%eax, %eax
	jne	.L20504
	movq	%r13, %rdi
	call	side_effects_p
	testl	%eax, %eax
	jne	.L20504
.L20505:
	movl	$1, %r14d
	jmp	.L20504
	.p2align 6,,7
.L24418:
	movl	(%r13), %ecx
	jmp	.L20502
.L20495:
	movl	$1, %ebx
	jmp	.L20489
.L20496:
	xorl	%ebx, %ebx
	jmp	.L20489
.L20493:
	movq	8(%r13), %rdi
	xorl	%ebx, %ebx
	call	queued_subexp_p
	testl	%eax, %eax
	jne	.L20495
	movq	16(%r13), %rdi
	call	queued_subexp_p
	testl	%eax, %eax
	je	.L20489
	jmp	.L20495
	.p2align 6,,7
.L25962:
	cmpb	$51, 2(%r13)
	jne	.L20448
	call	gen_label_rtx
	movq	%rax, %r14
	call	gen_label_rtx
	movq	cfun(%rip), %rdi
	movq	%rax, %r15
	movq	16(%rdi), %r8
	movq	40(%r8), %rbx
	testq	%rbx, %rbx
	je	.L24065
.L20454:
	movq	32(%rbx), %rdi
	cmpw	$24, (%rdi)
	je	.L26060
	call	emit_insn
	movq	%rax, 16(%rbx)
.L20453:
	movq	cfun(%rip), %r10
	movq	40(%rbx), %rsi
	movq	16(%r10), %r9
	testq	%rsi, %rsi
	movq	%rsi, %rbx
	movq	%rsi, 40(%r9)
	jne	.L20454
.L24065:
	movzwl	(%r13), %eax
	cmpl	$71, %eax
	je	.L20456
	cmpl	$66, %eax
	je	.L26061
.L20460:
	cmpl	$75, %eax
	je	.L20464
	cmpl	$78, %eax
	je	.L20464
.L20459:
	call	do_pending_stack_adjust
	movq	cfun(%rip), %rdx
	movq	-9576(%rbp), %r12
	movq	%r14, %rsi
	movq	16(%rdx), %rcx
	incl	4(%rcx)
	movq	32(%r12), %rdi
	call	jumpifnot
	call	start_cleanup_deferral
	movq	40(%r12), %rdi
	movq	-9224(%rbp), %rsi
	xorl	%edx, %edx
	call	store_expr
	call	end_cleanup_deferral
	movq	cfun(%rip), %rdi
	movq	16(%rdi), %r8
	movq	40(%r8), %rbx
	testq	%rbx, %rbx
	je	.L24067
.L20474:
	movq	32(%rbx), %rdi
	cmpw	$24, (%rdi)
	je	.L26062
	call	emit_insn
	movq	%rax, 16(%rbx)
.L20473:
	movq	cfun(%rip), %r8
	movq	40(%rbx), %r10
	movq	16(%r8), %r11
	testq	%r10, %r10
	movq	%r10, %rbx
	movq	%r10, 40(%r11)
	jne	.L20474
.L24067:
	movq	%r15, %rdi
	call	gen_jump
	movq	%rax, %rdi
	call	emit_jump_insn
	call	emit_barrier
	movq	%r14, %rdi
	call	emit_label
	call	start_cleanup_deferral
	movq	-9576(%rbp), %rax
	movq	-9224(%rbp), %rsi
	xorl	%edx, %edx
	movq	48(%rax), %rdi
	call	store_expr
	call	end_cleanup_deferral
	movq	cfun(%rip), %rbx
	movq	16(%rbx), %r14
	movq	40(%r14), %rbx
	testq	%rbx, %rbx
	je	.L24069
.L20481:
	movq	32(%rbx), %rdi
	cmpw	$24, (%rdi)
	je	.L26063
	call	emit_insn
	movq	%rax, 16(%rbx)
.L20480:
	movq	cfun(%rip), %rdx
	movq	40(%rbx), %rdi
	movq	16(%rdx), %rsi
	testq	%rdi, %rdi
	movq	%rdi, %rbx
	movq	%rdi, 40(%rsi)
	jne	.L20481
.L24069:
	movq	%r15, %rdi
	call	emit_label
	movq	cfun(%rip), %r9
	movq	16(%r9), %r15
	decl	4(%r15)
	jmp	.L20446
	.p2align 6,,7
.L26063:
	movq	8(%rdi), %rcx
	movq	8(%rcx), %r12
	movq	%r12, 16(%rbx)
	call	emit_insn
	jmp	.L20480
.L26062:
	movq	8(%rdi), %r9
	movq	8(%r9), %rsi
	movq	%rsi, 16(%rbx)
	call	emit_insn
	jmp	.L20473
.L20464:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r13), %rdi
	movq	%rax, %r12
	call	protect_from_queue
	cmpq	8(%r13), %r12
	movq	%rax, %rbx
	je	.L26064
.L20466:
	movq	%r13, %rdi
	call	copy_rtx
	movq	%rax, -9224(%rbp)
	movq	%r12, 8(%rax)
	movq	-9224(%rbp), %rax
	movq	%rbx, 16(%rax)
	jmp	.L20459
.L26064:
	cmpq	16(%r13), %rax
	jne	.L20466
	jmp	.L20459
.L26061:
	jne	.L20460
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%r13), %rax
	movq	%rax, %rbx
	je	.L20459
	movq	%r13, %rdi
	call	copy_rtx
	movq	%rax, -9224(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L20459
.L20456:
	cmpq	$0, 16(%r13)
	je	.L26065
	movq	24(%r13), %r11
	testq	%r11, %r11
	movq	%r11, -9224(%rbp)
	jne	.L20459
	movq	8(%r13), %rbx
	movzbl	2(%rbx), %edi
	call	gen_reg_rtx
	movq	8(%r13), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r13)
	call	gen_move_insn
	movq	16(%r13), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r13), %r12
	movq	%r12, -9224(%rbp)
	jmp	.L20459
.L26065:
	movq	8(%r13), %rdi
	call	copy_to_reg
	movq	%rax, -9224(%rbp)
	jmp	.L20459
	.p2align 6,,7
.L26060:
	movq	8(%rdi), %rdx
	movq	8(%rdx), %rcx
	movq	%rcx, 16(%rbx)
	call	emit_insn
	jmp	.L20453
.L25961:
	movq	32(%rsi), %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	const_int_rtx+512(%rip), %rsi
	call	expand_expr
	movq	cfun(%rip), %rsi
	movq	16(%rsi), %rdx
	movq	40(%rdx), %rbx
	testq	%rbx, %rbx
	je	.L24063
.L20444:
	movq	32(%rbx), %rdi
	cmpw	$24, (%rdi)
	je	.L26066
	call	emit_insn
	movq	%rax, 16(%rbx)
.L20443:
	movq	cfun(%rip), %r12
	movq	40(%rbx), %r10
	movq	16(%r12), %r11
	testq	%r10, %r10
	movq	%r10, %rbx
	movq	%r10, 40(%r11)
	jne	.L20444
.L24063:
	movq	-9576(%rbp), %rbx
	movq	%r13, %rsi
	xorl	%edx, %edx
	movq	40(%rbx), %rdi
	call	store_expr
	jmp	.L20446
.L26066:
	movq	8(%rdi), %r9
	movq	8(%r9), %r15
	movq	%r15, 16(%rbx)
	call	emit_insn
	jmp	.L20443
.L20426:
	movq	-2712(%rbp), %rdi
	xorl	%edx, %edx
	movl	$2, %esi
	movl	$1, %ecx
	call	assign_temp
	movq	%rax, %rdi
	movq	%rax, %r13
	call	preserve_temp_slots
	testb	$4, 17(%r12)
	movq	%r13, 144(%r12)
	jne	.L26067
.L20430:
	movq	-9552(%rbp), %rbx
	movq	48(%rbx), %rsi
	testq	%rsi, %rsi
	je	.L26068
.L20431:
	movq	-9552(%rbp), %r9
	movq	%rsi, -9000(%rbp)
	movq	40(%r9), %rbx
	movq	%rbx, -9576(%rbp)
	jmp	.L20432
.L26068:
	movq	%r12, %rdi
	call	maybe_build_cleanup
	movq	%rax, 48(%rbx)
	movq	%rax, %rsi
	jmp	.L20431
.L26067:
	movq	%r12, %rdi
	call	put_var_into_stack
	jmp	.L20430
.L20425:
	movq	144(%r12), %rax
	testq	%rax, %rax
	je	.L20433
	movq	-9552(%rbp), %r11
	movq	%rax, %r13
	movq	40(%r11), %r10
	movq	%r10, -9576(%rbp)
	testq	%r10, %r10
	jmp	.L25056
.L20433:
	testb	$4, 17(%r12)
	movq	%r13, 144(%r12)
	jne	.L26069
	movq	-9552(%rbp), %rdi
	movq	40(%rdi), %r8
	movq	%r8, -9576(%rbp)
	jmp	.L20432
.L26069:
	movq	%r12, %rdi
	call	put_var_into_stack
	movq	-9552(%rbp), %r14
	movq	40(%r14), %r12
	movq	%r12, -9576(%rbp)
	jmp	.L20432
.L25959:
	movl	$.LC0, %edi
	movl	$8399, %esi
	jmp	.L25123
	.p2align 6,,7
.L11667:
	movq	-9552(%rbp), %rax
	movq	40(%rax), %rdx
	cmpb	$115, 16(%rdx)
	je	.L26070
.L11668:
	movq	-9552(%rbp), %r12
	movq	$0, -6928(%rbp)
	movq	$0, -6920(%rbp)
	movq	$0, -6912(%rbp)
	movq	40(%r12), %rdi
	call	integer_onep
	testl	%eax, %eax
	jne	.L26071
.L11674:
	movq	-9552(%rbp), %rcx
	movq	40(%rcx), %rdx
	movzbq	16(%rdx), %rdi
	cmpb	$50, tree_code_type(%rdi)
	je	.L26072
.L11678:
	movq	-9552(%rbp), %rcx
	movq	48(%rcx), %rdx
	movzbq	16(%rdx), %rsi
	cmpb	$50, tree_code_type(%rsi)
	je	.L26073
.L11680:
	movq	-9552(%rbp), %rcx
	movq	40(%rcx), %rdx
	movzbq	16(%rdx), %r12
	cmpb	$49, tree_code_type(%r12)
	je	.L26074
.L11682:
	movq	-9552(%rbp), %rcx
	movq	48(%rcx), %rdx
	movzbq	16(%rdx), %r14
	cmpb	$49, tree_code_type(%r14)
	je	.L26075
.L11679:
	movl	-6220(%rbp), %eax
	xorl	%r13d, %r13d
	testl	%eax, %eax
	jne	.L11686
	testq	%rbx, %rbx
	je	.L24313
	movq	-9552(%rbp), %r10
	xorl	%r15d, %r15d
	movq	%rbx, %r14
	movq	32(%r10), %r12
	movq	8(%r12), %rax
	testq	%rax, %rax
	je	.L11691
	movq	32(%rax), %rdx
	testq	%rdx, %rdx
	je	.L11691
	cmpb	$25, 16(%rdx)
	je	.L11691
	cmpb	$18, 16(%rax)
	je	.L26076
.L11692:
	cmpb	$51, 2(%rbx)
	je	.L11768
.L11691:
	movzwl	(%rbx), %eax
	cmpw	$66, %ax
	movl	%eax, %ecx
	je	.L26077
.L11689:
	cmpw	$63, %cx
	je	.L26078
.L11694:
	movl	$1, %eax
	testl	%eax, %eax
	jne	.L26079
	movzbl	16(%r12), %edx
	movzbl	%dl, %r11d 
	movsbl	tree_code_type(%r11),%eax
	subl	$49, %eax
	cmpl	$71, %eax
	ja	.L11702
	mov	%eax, %r9d
	jmp	*.L11762(,%r9,8)
	.section	.rodata
	.align 8
	.align 4
.L11762:
	.quad	.L11745
	.quad	.L11718
	.quad	.L11702
	.quad	.L11702
	.quad	.L11702
	.quad	.L11702
	.quad	.L11702
	.quad	.L11702
	.quad	.L11702
	.quad	.L11702
	.quad	.L11702
	.quad	.L11718
	.quad	.L11702
	.quad	.L11702
	.quad	.L11702
	.quad	.L11702
	.quad	.L11702
	.quad	.L11702
	.quad	.L11702
	.quad	.L11702
	.quad	.L11702
	.quad	.L11702
	.quad	.L11702
	.quad	.L11702
	.quad	.L11702
	.quad	.L11702
	.quad	.L11702
	.quad	.L11702
	.quad	.L11702
	.quad	.L11702
	.quad	.L11702
	.quad	.L11702
	.quad	.L11702
	.quad	.L11702
	.quad	.L11702
	.quad	.L11702
	.quad	.L11702
	.quad	.L11702
	.quad	.L11702
	.quad	.L11702
	.quad	.L11702
	.quad	.L11702
	.quad	.L11702
	.quad	.L11702
	.quad	.L11702
	.quad	.L11702
	.quad	.L11702
	.quad	.L11702
	.quad	.L11702
	.quad	.L11702
	.quad	.L11768
	.quad	.L11703
	.quad	.L11721
	.quad	.L11702
	.quad	.L11702
	.quad	.L11702
	.quad	.L11702
	.quad	.L11702
	.quad	.L11702
	.quad	.L11702
	.quad	.L11702
	.quad	.L11702
	.quad	.L11702
	.quad	.L11702
	.quad	.L11702
	.quad	.L11721
	.quad	.L11702
	.quad	.L11702
	.quad	.L11702
	.quad	.L11702
	.quad	.L11702
	.quad	.L11708
	.text
.L11703:
	movq	144(%r12), %rax
	testq	%rax, %rax
	movq	%rax, %r15
	jne	.L24261
	xorl	%r15d, %r15d
.L11702:
	testq	%r15, %r15
	movl	$1, %r13d
	je	.L11693
.L24261:
	cmpw	$63, (%r15)
	je	.L26080
.L11765:
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%r13d, %r13d
	call	rtx_equal_p
	testl	%eax, %eax
	jne	.L11693
	cmpw	$66, (%r14)
	je	.L26081
.L11768:
	movl	$1, %r13d
.L11693:
	testl	%r13d, %r13d
	jne	.L11688
	cmpq	$0, -6928(%rbp)
	je	.L24314
	cmpw	$61, (%rbx)
	je	.L26082
	movq	-2712(%rbp), %r12
	movzbl	17(%r12), %edx
.L11687:
	andb	$4, %dl
	jne	.L26083
	movq	-2712(%rbp), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$1, %ecx
	call	assign_temp
	movq	%rax, %r13
.L11686:
	testq	%r13, %r13
	je	.L11786
	cmpq	$0, -6928(%rbp)
	je	.L11786
	cmpq	$0, -6920(%rbp)
	je	.L11786
	movq	-6920(%rbp), %r15
	movzbl	16(%r15), %edx
	leal	-59(%rdx), %ecx
	cmpb	$1, %cl
	jbe	.L11787
	cmpb	$86, %dl
	je	.L11787
	cmpb	$87, %dl
	je	.L11787
.L11786:
	call	do_pending_stack_adjust
	movq	cfun(%rip), %rbx
	movq	16(%rbx), %rcx
	incl	4(%rcx)
	call	gen_label_rtx
	cmpq	$0, -6928(%rbp)
	movq	%rax, -6968(%rbp)
	je	.L11965
	movq	-9552(%rbp), %r12
	movq	32(%r12), %r11
	testb	$1, 17(%r11)
	jne	.L11965
	testq	%r13, %r13
	je	.L11966
	cmpq	$0, -6920(%rbp)
	je	.L11969
	movq	-6920(%rbp), %r15
	movq	%r13, %r14
	movq	40(%r15), %rbx
	xorl	%r15d, %r15d
	movq	8(%rbx), %rax
	testq	%rax, %rax
	je	.L11972
	movq	32(%rax), %rdx
	testq	%rdx, %rdx
	je	.L11972
	cmpb	$25, 16(%rdx)
	je	.L11972
	cmpb	$18, 16(%rax)
	je	.L26084
.L11973:
	cmpb	$51, 2(%r13)
	je	.L12049
.L11972:
	movzwl	(%r13), %eax
	cmpw	$66, %ax
	movl	%eax, %ecx
	je	.L26085
.L11970:
	cmpw	$63, %cx
	je	.L26086
.L11975:
	movl	$1, %eax
	testl	%eax, %eax
	jne	.L26087
	movzbl	16(%rbx), %edx
	movzbl	%dl, %r8d 
	movsbl	tree_code_type(%r8),%eax
	subl	$49, %eax
	cmpl	$71, %eax
	ja	.L11983
	mov	%eax, %edi
	jmp	*.L12043(,%rdi,8)
	.section	.rodata
	.align 8
	.align 4
.L12043:
	.quad	.L12026
	.quad	.L11999
	.quad	.L11983
	.quad	.L11983
	.quad	.L11983
	.quad	.L11983
	.quad	.L11983
	.quad	.L11983
	.quad	.L11983
	.quad	.L11983
	.quad	.L11983
	.quad	.L11999
	.quad	.L11983
	.quad	.L11983
	.quad	.L11983
	.quad	.L11983
	.quad	.L11983
	.quad	.L11983
	.quad	.L11983
	.quad	.L11983
	.quad	.L11983
	.quad	.L11983
	.quad	.L11983
	.quad	.L11983
	.quad	.L11983
	.quad	.L11983
	.quad	.L11983
	.quad	.L11983
	.quad	.L11983
	.quad	.L11983
	.quad	.L11983
	.quad	.L11983
	.quad	.L11983
	.quad	.L11983
	.quad	.L11983
	.quad	.L11983
	.quad	.L11983
	.quad	.L11983
	.quad	.L11983
	.quad	.L11983
	.quad	.L11983
	.quad	.L11983
	.quad	.L11983
	.quad	.L11983
	.quad	.L11983
	.quad	.L11983
	.quad	.L11983
	.quad	.L11983
	.quad	.L11983
	.quad	.L11983
	.quad	.L12049
	.quad	.L11984
	.quad	.L12002
	.quad	.L11983
	.quad	.L11983
	.quad	.L11983
	.quad	.L11983
	.quad	.L11983
	.quad	.L11983
	.quad	.L11983
	.quad	.L11983
	.quad	.L11983
	.quad	.L11983
	.quad	.L11983
	.quad	.L11983
	.quad	.L12002
	.quad	.L11983
	.quad	.L11983
	.quad	.L11983
	.quad	.L11983
	.quad	.L11983
	.quad	.L11989
	.text
.L11984:
	movq	144(%rbx), %rdx
	testq	%rdx, %rdx
	movq	%rdx, %r15
	jne	.L24264
	xorl	%r15d, %r15d
.L11983:
	testq	%r15, %r15
	movl	$1, %r12d
	je	.L11974
.L24264:
	cmpw	$63, (%r15)
	je	.L26088
.L12046:
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%r12d, %r12d
	call	rtx_equal_p
	testl	%eax, %eax
	jne	.L11974
	cmpw	$66, (%r14)
	je	.L26089
.L12049:
	movl	$1, %r12d
.L11974:
	testl	%r12d, %r12d
	je	.L11968
.L11969:
	cmpw	$61, (%r13)
	je	.L26090
.L11967:
	movq	-6928(%rbp), %r12
	movq	%r13, -7192(%rbp)
	movl	$0, -6972(%rbp)
	xorl	%r14d, %r14d
	movzbl	16(%r12), %eax
	cmpb	$47, %al
	je	.L26091
	cmpb	$51, %al
	je	.L26092
.L12060:
	movzwl	(%r13), %eax
	subl	$66, %eax
	cmpl	$12, %eax
	ja	.L12108
	mov	%eax, %edi
	jmp	*.L12109(,%rdi,8)
	.section	.rodata
	.align 8
	.align 4
.L12109:
	.quad	.L12102
	.quad	.L12108
	.quad	.L12108
	.quad	.L12108
	.quad	.L12108
	.quad	.L12107
	.quad	.L12108
	.quad	.L12108
	.quad	.L12108
	.quad	.L12105
	.quad	.L12105
	.quad	.L12108
	.quad	.L12105
	.text
.L12102:
	movq	8(%r13), %rdi
	call	queued_subexp_p
	movl	%eax, %ebx
.L12101:
	testl	%ebx, %ebx
	je	.L12098
	movzbl	2(%r13), %eax
	cmpb	$51, %al
	je	.L12110
	testb	%al, %al
	jne	.L26093
.L12110:
	movzbl	2(%r13), %edx
	movq	-6928(%rbp), %rdi
	xorl	%esi, %esi
.L24665:
	xorl	%ecx, %ecx
	call	expand_expr
	testb	$8, 3(%r13)
	movq	%rax, -7184(%rbp)
	jne	.L24322
	xorl	%esi, %esi
	testl	%esi, %esi
	je	.L24317
	movl	$1, -6972(%rbp)
.L24320:
	movq	-7184(%rbp), %r15
	movzwl	(%r15), %edx
.L12059:
	leal	-67(%rdx), %r8d
	cmpw	$1, %r8w
	jbe	.L12137
	cmpw	$54, %dx
	je	.L12137
	cmpw	$55, %dx
	je	.L12137
	cmpw	$58, %dx
	je	.L12137
	cmpw	$134, %dx
	je	.L12137
	cmpw	$56, %dx
	je	.L12137
	cmpw	$140, %dx
	je	.L12137
.L12136:
	movq	-7184(%rbp), %rdi
	movq	%r13, %rsi
	call	rtx_equal_p
	testl	%eax, %eax
	je	.L12139
	cmpq	%r13, -7184(%rbp)
	je	.L12138
	movq	-7184(%rbp), %rdi
	call	side_effects_p
	testl	%eax, %eax
	je	.L26094
.L12139:
	movq	-6928(%rbp), %rbx
	movzbl	16(%rbx), %eax
	testb	%al, %al
	je	.L12138
	testl	%r14d, %r14d
	jne	.L12138
	movzbl	%al, %edi 
	cmpb	$100, tree_code_type(%rdi)
	je	.L26095
.L12140:
	movzwl	(%r13), %eax
	cmpl	$71, %eax
	je	.L12145
	cmpl	$66, %eax
	je	.L26096
.L12149:
	cmpl	$75, %eax
	je	.L12153
	cmpl	$78, %eax
	je	.L12153
.L12148:
	movq	-7184(%rbp), %r9
	movq	-7192(%rbp), %rbx
	movzbl	2(%r9), %eax
	movzbl	2(%rbx), %ecx
	cmpb	%cl, %al
	je	.L12158
	testb	%al, %al
	je	.L12158
	movq	-6928(%rbp), %r8
	movl	-6972(%rbp), %eax
	movq	8(%r8), %r12
	movzbl	17(%r12), %r15d
	shrb	$5, %r15b
	movl	%r15d, %edx
	andl	$1, %edx
	testl	%eax, %eax
	je	.L12159
	movq	-7184(%rbp), %rsi
	movzbl	%cl, %edi
	call	convert_to_mode
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movq	%rax, -7184(%rbp)
.L24697:
	call	emit_move_insn
.L12138:
	xorl	%eax, %eax
	testl	%eax, %eax
	je	.L12956
	movl	-6972(%rbp), %ecx
	testl	%ecx, %ecx
	je	.L12951
	movq	-7184(%rbp), %r15
	cmpw	$66, (%r15)
	je	.L12951
.L12956:
	movq	-9552(%rbp), %rdx
	movq	-6928(%rbp), %rsi
	cmpq	40(%rdx), %rsi
	je	.L26097
	movq	-9552(%rbp), %r11
	movq	-6968(%rbp), %rsi
	movq	32(%r11), %rdi
	call	jumpifnot
.L12964:
	call	start_cleanup_deferral
	cmpq	$0, -6920(%rbp)
	je	.L12973
	testq	%r13, %r13
	jne	.L12965
	movq	-6920(%rbp), %rax
	movl	-6220(%rbp), %r12d
	xorl	%esi, %esi
	addq	$40, %rax
	testl	%r12d, %r12d
	je	.L12971
	movq	const_int_rtx+512(%rip), %rsi
.L12971:
	movq	(%rax), %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	call	expand_expr
.L17681:
	movq	-6968(%rbp), %rsi
	movq	%rsi, -8992(%rbp)
.L14787:
	call	end_cleanup_deferral
	movq	cfun(%rip), %r10
	movq	16(%r10), %r9
	movq	40(%r9), %rbx
	testq	%rbx, %rbx
	je	.L24061
.L20420:
	movq	32(%rbx), %rdi
	cmpw	$24, (%rdi)
	je	.L26098
	call	emit_insn
	movq	%rax, 16(%rbx)
.L20419:
	movq	cfun(%rip), %rcx
	movq	40(%rbx), %r14
	movq	16(%rcx), %r8
	testq	%r14, %r14
	movq	%r14, %rbx
	movq	%r14, 40(%r8)
	jne	.L20420
.L24061:
	movq	-8992(%rbp), %rdi
.L25061:
	call	emit_label
	movq	cfun(%rip), %rdx
	movq	16(%rdx), %rdi
	decl	4(%rdi)
	jmp	.L7871
.L26098:
	movq	8(%rdi), %r12
	movq	8(%r12), %r11
	movq	%r11, 16(%rbx)
	call	emit_insn
	jmp	.L20419
.L12965:
	movq	-2712(%rbp), %rdi
	movq	%r13, %rsi
	xorl	%r12d, %r12d
	call	make_tree
	movq	-6920(%rbp), %r14
	movq	-2712(%rbp), %rsi
	movq	-6920(%rbp), %rdx
	movq	40(%r14), %rcx
	movzbl	16(%rdx), %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	build
	movl	$0, -7196(%rbp)
	movq	%r13, -7416(%rbp)
	movq	%rax, %r14
	movzbl	16(%rax), %eax
	cmpb	$47, %al
	je	.L26099
	cmpb	$51, %al
	je	.L26100
.L12984:
	movzwl	(%r13), %eax
	subl	$66, %eax
	cmpl	$12, %eax
	ja	.L13032
	mov	%eax, %ebx
	jmp	*.L13033(,%rbx,8)
	.section	.rodata
	.align 8
	.align 4
.L13033:
	.quad	.L13026
	.quad	.L13032
	.quad	.L13032
	.quad	.L13032
	.quad	.L13032
	.quad	.L13031
	.quad	.L13032
	.quad	.L13032
	.quad	.L13032
	.quad	.L13029
	.quad	.L13029
	.quad	.L13032
	.quad	.L13029
	.text
.L13026:
	movq	8(%r13), %rdi
	call	queued_subexp_p
	movl	%eax, %ebx
.L13025:
	testl	%ebx, %ebx
	je	.L13022
	movzbl	2(%r13), %eax
	cmpb	$51, %al
	je	.L13034
	testb	%al, %al
	jne	.L26101
.L13034:
	movzbl	2(%r13), %edx
	movq	%r14, %rdi
	xorl	%esi, %esi
.L24698:
	xorl	%ecx, %ecx
	call	expand_expr
	testb	$8, 3(%r13)
	movq	%rax, -7408(%rbp)
	jne	.L24333
	xorl	%eax, %eax
	testl	%eax, %eax
	je	.L24328
	movl	$1, -7196(%rbp)
.L24333:
	movq	-7408(%rbp), %rbx
	movzwl	(%rbx), %edx
.L12983:
	leal	-67(%rdx), %r9d
	cmpw	$1, %r9w
	jbe	.L13061
	cmpw	$54, %dx
	je	.L13061
	cmpw	$55, %dx
	je	.L13061
	cmpw	$58, %dx
	je	.L13061
	cmpw	$134, %dx
	je	.L13061
	cmpw	$56, %dx
	je	.L13061
	cmpw	$140, %dx
	je	.L13061
.L13060:
	movq	-7408(%rbp), %rdi
	movq	%r13, %rsi
	call	rtx_equal_p
	testl	%eax, %eax
	je	.L13063
	cmpq	%r13, -7408(%rbp)
	je	.L13062
	movq	-7408(%rbp), %rdi
	call	side_effects_p
	testl	%eax, %eax
	je	.L26102
.L13063:
	movzbl	16(%r14), %eax
	testb	%al, %al
	je	.L13062
	testl	%r12d, %r12d
	jne	.L13062
	movzbl	%al, %r12d 
	cmpb	$100, tree_code_type(%r12)
	je	.L26103
.L13064:
	movzwl	(%r13), %eax
	cmpl	$71, %eax
	je	.L13069
	cmpl	$66, %eax
	je	.L26104
.L13073:
	cmpl	$75, %eax
	je	.L13077
	cmpl	$78, %eax
	je	.L13077
.L13072:
	movq	-7408(%rbp), %rbx
	movq	-7416(%rbp), %r11
	movzbl	2(%rbx), %eax
	movzbl	2(%r11), %ecx
	cmpb	%cl, %al
	je	.L13082
	testb	%al, %al
	je	.L13082
	movq	8(%r14), %r8
	movl	-7196(%rbp), %eax
	movzbl	17(%r8), %r14d
	shrb	$5, %r14b
	movl	%r14d, %edx
	andl	$1, %edx
	testl	%eax, %eax
	je	.L13083
	movzbl	%cl, %edi
	movq	%rbx, %rsi
	call	convert_to_mode
	movq	-7416(%rbp), %rdi
	movq	%rax, %rsi
	movq	%rax, -7408(%rbp)
.L24729:
	call	emit_move_insn
.L13062:
	xorl	%eax, %eax
	testl	%eax, %eax
	je	.L17681
	movl	-7196(%rbp), %esi
	testl	%esi, %esi
	je	.L13875
	movq	-7408(%rbp), %r15
	cmpw	$66, (%r15)
	jne	.L17681
.L13875:
	movq	-7416(%rbp), %rax
	cmpb	$51, 2(%rax)
	je	.L17681
	cmpw	$61, (%rax)
	je	.L26105
.L13878:
	movq	-7416(%rbp), %rdi
.L25110:
	call	copy_to_reg
	jmp	.L17681
.L26105:
	cmpl	$52, 8(%rax)
	jbe	.L17681
	jmp	.L13878
.L13083:
	movq	-7416(%rbp), %rdi
	movq	-7408(%rbp), %rsi
	call	convert_move
	jmp	.L13062
.L13082:
	cmpb	$51, %al
	je	.L26106
.L13086:
	movq	-7416(%rbp), %rsi
	cmpw	$39, (%rsi)
	je	.L26107
	cmpb	$51, %al
	je	.L26108
	movq	-7416(%rbp), %rdi
	movq	-7408(%rbp), %rsi
	jmp	.L24729
.L26108:
	movq	-7416(%rbp), %rdi
	movq	-7408(%rbp), %rcx
	movq	%rdi, -7368(%rbp)
	movq	%rcx, -7376(%rbp)
	movq	%r14, %rdi
	call	expr_size
	movl	$8, %edx
	movq	-7416(%rbp), %rsi
	movq	%rax, %r14
	movq	16(%rsi), %rcx
	testq	%rcx, %rcx
	je	.L13677
	movl	32(%rcx), %edx
.L13677:
	movq	-7408(%rbp), %r9
	movq	16(%r9), %rax
	testq	%rax, %rax
	je	.L13678
	cmpl	32(%rax), %edx
	jb	.L13679
.L13674:
	testq	%rax, %rax
	movl	$8, -7356(%rbp)
	je	.L13675
	movl	32(%rax), %eax
.L24720:
	movl	%eax, -7356(%rbp)
.L13675:
	movq	-7416(%rbp), %rbx
	cmpb	$51, 2(%rbx)
	jne	.L25547
	movq	-7408(%rbp), %r10
	cmpb	$51, 2(%r10)
	jne	.L25546
	movq	-7416(%rbp), %rsi
	movzwl	(%rsi), %eax
	cmpl	$71, %eax
	je	.L13686
	cmpl	$66, %eax
	je	.L26109
.L13690:
	cmpl	$75, %eax
	je	.L13694
	cmpl	$78, %eax
	je	.L13694
.L13689:
	movq	-7408(%rbp), %rdx
	movzwl	(%rdx), %eax
	cmpl	$71, %eax
	je	.L13699
	cmpl	$66, %eax
	je	.L26110
.L13703:
	cmpl	$75, %eax
	je	.L13707
	cmpl	$78, %eax
	je	.L13707
.L13702:
	movzwl	(%r14), %eax
	cmpl	$71, %eax
	je	.L13712
	cmpl	$66, %eax
	je	.L26111
.L13716:
	cmpl	$75, %eax
	je	.L13720
	cmpl	$78, %eax
	je	.L13720
.L13715:
	movq	-7368(%rbp), %r9
	cmpw	$66, (%r9)
	jne	.L25545
	movq	-7376(%rbp), %r10
	cmpw	$66, (%r10)
	jne	.L25544
	testq	%r14, %r14
	je	.L25543
	cmpw	$54, (%r14)
	je	.L26112
.L13728:
	shrl	$3, -7356(%rbp)
	xorl	%edi, %edi
	mov	-7356(%rbp), %esi
	call	gen_rtx_CONST_INT
	movl	class_narrowest_mode+4(%rip), %r12d
	movl	$1, volatile_ok(%rip)
	movq	%rax, -3736(%rbp)
	testl	%r12d, %r12d
	je	.L23566
.L13861:
	movslq	%r12d,%rsi
	movl	movstr_optab(,%rsi,4), %edx
	movq	%rsi, -3744(%rbp)
	cmpl	$1317, %edx
	je	.L13847
	cmpw	$54, (%r14)
	je	.L26113
.L13851:
	testb	$2, target_flags+3(%rip)
	je	.L13852
	movq	-3744(%rbp), %r8
	cmpw	$63, mode_bitsize(%r8,%r8)
.L24727:
	jbe	.L13847
.L13850:
	movslq	%edx,%r10
	leaq	(%r10,%r10,4), %rcx
	movq	%r10, -3752(%rbp)
	movq	insn_data+24(,%rcx,8), %r15
	movq	(%r15), %rax
	testq	%rax, %rax
	je	.L13854
	movq	-7368(%rbp), %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L13847
.L13854:
	movq	24(%r15), %rax
	testq	%rax, %rax
	jne	.L26114
.L13855:
	movq	72(%r15), %rax
	testq	%rax, %rax
	je	.L13856
	xorl	%esi, %esi
	movq	-3736(%rbp), %rdi
	call	*%rax
	testl	%eax, %eax
	je	.L13847
.L13856:
	call	get_last_insn
	movl	$1, %edx
	movq	%r14, %rsi
	movl	%r12d, %edi
	movq	%rax, -3760(%rbp)
	call	convert_to_mode
	movq	%rax, %rbx
	movq	48(%r15), %rax
	testq	%rax, %rax
	jne	.L26115
.L13857:
	movq	-3752(%rbp), %rdx
	movq	-7368(%rbp), %rdi
	xorl	%eax, %eax
	movq	-7376(%rbp), %rsi
	movq	-3736(%rbp), %rcx
	leaq	(%rdx,%rdx,4), %r12
	movq	%rbx, %rdx
	call	*insn_data+16(,%r12,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L24492
	movq	-3760(%rbp), %rdi
	call	delete_insns_since
.L13847:
	movq	-3744(%rbp), %rbx
	movzbl	mode_wider_mode(%rbx), %r12d
	testl	%r12d, %r12d
	jne	.L13861
.L23566:
	testb	$2, target_flags+3(%rip)
	movq	-7368(%rbp), %r15
	movl	$0, volatile_ok(%rip)
	setne	%r8b
	movq	8(%r15), %rsi
	movzbl	%r8b, %edi
	addl	$4, %edi
	call	copy_to_mode_reg
	testb	$2, target_flags+3(%rip)
	setne	%sil
	movq	%rax, %r15
	movq	-7376(%rbp), %rax
	movzbl	%sil, %edi
	movq	8(%rax), %rsi
	addl	$4, %edi
	call	copy_to_mode_reg
	movq	%r14, %rsi
	movq	sizetype_tab(%rip), %rdi
	movq	%rax, %rbx
	movzbl	61(%rdi), %r11d
	shrb	$1, %r11b
	movzbl	%r11b, %edi
	call	copy_to_mode_reg
	cmpq	$0, fn.1(%rip)
	movq	%rax, %r14
	je	.L26116
.L13870:
	movq	global_trees+216(%rip), %rdi
	call	build_pointer_type
	movq	%r15, %rsi
	movq	%rax, %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	global_trees+216(%rip), %rdi
	movq	%rax, %r12
	call	build_pointer_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	%r14, %rsi
	movq	%rax, (%r12)
	movq	%rax, %rbx
	movq	sizetype_tab(%rip), %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	fn.1(%rip), %rdx
	movq	%rax, (%rbx)
	movq	(%r12), %rdi
	movq	(%rdi), %r11
	movq	8(%rdx), %rdi
	movq	$0, (%r11)
	call	build_pointer_type
	movq	fn.1(%rip), %rdx
	movl	$121, %edi
	movq	%rax, %rsi
	call	build1
	xorl	%r8d, %r8d
	movq	%r12, %rcx
	movq	fn.1(%rip), %rbx
	movq	%rax, %rdx
	movl	$53, %edi
	xorl	%eax, %eax
	movq	8(%rbx), %r14
	movq	8(%r14), %rsi
	call	build
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	orb	$1, 17(%rax)
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	expand_expr
	testb	$4, 3(%r15)
	je	.L13062
	movl	$49, %edi
	xorl	%esi, %esi
	movq	%r15, %rdx
.L24728:
	call	gen_rtx_fmt_e
	movq	%rax, %rdi
	call	emit_insn
	jmp	.L13062
.L26116:
	movl	$.LC11, %edi
	call	get_identifier
	movq	global_trees+216(%rip), %rdi
	movq	%rax, fn.1(%rip)
	call	build_pointer_type
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	build_function_type
	movq	fn.1(%rip), %rsi
	movl	$30, %edi
	movq	%rax, %rdx
	call	build_decl
	movl	$1, %esi
	movl	$fn.1, %edi
	movq	%rax, fn.1(%rip)
	call	ggc_add_tree_root
	movq	fn.1(%rip), %r12
	xorl	%esi, %esi
	orb	$1, 49(%r12)
	movq	fn.1(%rip), %r10
	orb	$8, 18(%r10)
	movq	fn.1(%rip), %rcx
	orb	$64, 50(%rcx)
	movq	fn.1(%rip), %r9
	orb	$2, 18(%r9)
	movq	fn.1(%rip), %rdi
	call	make_decl_rtl
	movq	fn.1(%rip), %rdi
	call	assemble_external
	jmp	.L13870
.L24492:
	call	emit_insn
	movl	$0, volatile_ok(%rip)
	jmp	.L13062
.L26115:
	movq	%rbx, %rdi
	movl	%r12d, %esi
	call	*%rax
	testl	%eax, %eax
	jne	.L13857
	movq	%rbx, %rsi
	movl	%r12d, %edi
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L13857
.L26114:
	movq	-7376(%rbp), %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L13847
	jmp	.L13855
.L13852:
	movq	-3744(%rbp), %r9
	cmpw	$31, mode_bitsize(%r9,%r9)
	jmp	.L24727
.L26113:
	movq	mode_mask_array(,%rsi,8), %r15
	shrq	$1, %r15
	cmpq	%r15, 8(%r14)
	jbe	.L13850
	jmp	.L13851
.L26112:
	movq	8(%r14), %r12
	xorl	%r15d, %r15d
	movl	$17, %esi
.L13741:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L23555
.L13738:
	movslq	%ecx,%rbx
	movzbq	mode_size(%rbx), %rdx
	cmpq	%rsi, %rdx
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%rbx), %ecx
	testl	%ecx, %ecx
	jne	.L13738
.L23555:
	testl	%edi, %edi
	je	.L13731
	movslq	%edi,%rbx
	movq	%rbx, %r8
	salq	$4, %r8
	addq	optab_table+240(%rip), %r8
	cmpl	$1317, 8(%r8)
	je	.L13740
	call	get_mode_alignment
	movl	$128, %edi
	cmpl	%eax, %edi
	jb	.L13740
	movzbq	mode_size(%rbx), %rsi
	movq	%r12, %rax
	xorl	%edx, %edx
	divq	%rsi
	addq	%rax, %r15
	movq	%rdx, %r12
.L13740:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L13741
.L13731:
	testq	%r12, %r12
	jne	.L25529
	movl	optimize_size(%rip), %eax
	testl	%eax, %eax
	jne	.L13744
	movq	ix86_cost(%rip), %r9
	mov	40(%r9), %ecx
	cmpq	%rcx, %r15
	jae	.L13728
.L13745:
	movq	-7376(%rbp), %rsi
	testb	$2, target_flags+3(%rip)
	movq	-7368(%rbp), %r11
	movq	8(%r14), %r12
	setne	%r14b
	movq	-7368(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	8(%rsi), %r8
	movq	$0, -856(%rbp)
	movl	$0, -7388(%rbp)
	movq	%r8, -880(%rbp)
	movzbl	%r14b, %edx
	movq	8(%r11), %rbx
	leal	5(,%rdx,4), %r14d
	movq	%rdi, -912(%rbp)
	movzwl	(%rbx), %edx
	movq	%rbx, -7384(%rbp)
	leal	-96(%rdx), %r15d
	cmpw	$1, %r15w
	jbe	.L13750
	cmpw	$99, %dx
	je	.L13750
	cmpw	$98, %dx
	je	.L13750
.L13749:
	movl	%ecx, -896(%rbp)
	xorl	%edx, %edx
	movq	-7384(%rbp), %rcx
	movzwl	(%rcx), %eax
	cmpw	$96, %ax
	je	.L13752
	cmpw	$98, %ax
	je	.L13752
.L13751:
	movq	-7384(%rbp), %r15
	movq	-7376(%rbp), %rax
	movl	%edx, -848(%rbp)
	xorl	%ecx, %ecx
	movq	%r15, -904(%rbp)
	movq	%rax, -888(%rbp)
	movzwl	(%r8), %edx
	leal	-96(%rdx), %r9d
	cmpw	$1, %r9w
	jbe	.L13755
	cmpw	$99, %dx
	je	.L13755
	cmpw	$98, %dx
	je	.L13755
.L13754:
	movl	-848(%rbp), %r10d
	movl	%ecx, -872(%rbp)
	movl	$0, -868(%rbp)
	movl	$0, -892(%rbp)
	testl	%r10d, %r10d
	je	.L13756
	movq	%r12, -856(%rbp)
.L13756:
	movl	-872(%rbp), %ebx
	movq	%r12, -864(%rbp)
	testl	%ebx, %ebx
	je	.L13758
	movl	-896(%rbp), %edi
	testl	%edi, %edi
	jne	.L13757
.L13758:
	xorl	%r15d, %r15d
	movl	$17, %esi
.L13771:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L23558
.L13768:
	movslq	%ecx,%r11
	movzbq	mode_size(%r11), %rdx
	cmpq	%rsi, %rdx
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r11), %ecx
	testl	%ecx, %ecx
	jne	.L13768
.L23558:
	testl	%edi, %edi
	je	.L13761
	movslq	%edi,%rbx
	movq	%rbx, %rsi
	salq	$4, %rsi
	addq	optab_table+240(%rip), %rsi
	cmpl	$1317, 8(%rsi)
	je	.L13770
	movq	%r8, -9592(%rbp)
	call	get_mode_alignment
	movl	$128, %r8d
	cmpl	%eax, %r8d
	movq	-9592(%rbp), %r8
	jb	.L13770
	movzbq	mode_size(%rbx), %r9
	movq	%r12, %rax
	xorl	%edx, %edx
	divq	%r9
	addq	%rax, %r15
	movq	%rdx, %r12
.L13770:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L13771
.L13761:
	testq	%r12, %r12
	jne	.L25529
	cmpq	$2, %r15
	jbe	.L13757
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L23560
.L13779:
	movslq	%ecx,%r15
	movzbl	mode_size(%r15), %r10d
	cmpl	%r14d, %r10d
	cmovae	-7388(%rbp), %ecx
	movl	%ecx, -7388(%rbp)
	movzbl	mode_wider_mode(%r15), %ecx
	testl	%ecx, %ecx
	jne	.L13779
.L23560:
	movl	-872(%rbp), %eax
	testl	%eax, %eax
	jne	.L13785
	movzwl	(%r8), %edx
	leal	-67(%rdx), %ebx
	cmpw	$1, %bx
	jbe	.L13783
	cmpw	$54, %dx
	je	.L13783
	cmpw	$55, %dx
	je	.L13783
	cmpw	$58, %dx
	je	.L13783
	cmpw	$134, %dx
	je	.L13783
	cmpw	$56, %dx
	je	.L13783
	cmpw	$140, %dx
	je	.L13783
.L13785:
	movl	-896(%rbp), %eax
	testl	%eax, %eax
	jne	.L13757
	movq	-7384(%rbp), %r11
	movzwl	(%r11), %edx
	leal	-67(%rdx), %edi
	cmpw	$1, %di
	jbe	.L13787
	cmpw	$54, %dx
	je	.L13787
	cmpw	$55, %dx
	je	.L13787
	cmpw	$58, %dx
	je	.L13787
	cmpw	$134, %dx
	je	.L13787
	cmpw	$56, %dx
	je	.L13787
	cmpw	$140, %dx
	je	.L13787
.L13757:
	cmpl	$1, %r14d
	jbe	.L13790
.L13841:
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L23563
.L13797:
	movslq	%ecx,%rsi
	movzbl	mode_size(%rsi), %edx
	cmpl	%r14d, %edx
	cmovae	-7388(%rbp), %ecx
	movl	%ecx, -7388(%rbp)
	movzbl	mode_wider_mode(%rsi), %ecx
	testl	%ecx, %ecx
	jne	.L13797
.L23563:
	movl	-7388(%rbp), %eax
	testl	%eax, %eax
	je	.L13790
	movslq	-7388(%rbp),%r15
	movq	%r15, %r14
	salq	$4, %r14
	addq	optab_table+240(%rip), %r14
	movl	8(%r14), %ebx
	cmpl	$1317, %ebx
	je	.L13799
	movl	-7388(%rbp), %edi
	call	get_mode_alignment
	movl	$128, %r8d
	cmpl	%eax, %r8d
	jb	.L13799
	movzbq	mode_size(%r15), %rdx
	movslq	%ebx,%r9
	movq	$0, -7400(%rbp)
	leaq	(%r9,%r9,4), %rcx
	cmpq	%rdx, -864(%rbp)
	movq	insn_data+16(,%rcx,8), %r12
	movq	%rdx, -6000(%rbp)
	movq	%r12, -3728(%rbp)
	leaq	-912(%rbp), %r12
	jb	.L13799
	movl	-848(%rbp), %ecx
.L13839:
	testl	%ecx, %ecx
	je	.L13803
	subq	%rdx, 56(%r12)
.L13803:
	movq	(%r12), %rdi
	testq	%rdi, %rdi
	je	.L13804
	movl	16(%r12), %eax
	testl	%eax, %eax
	je	.L13805
	movl	-7388(%rbp), %esi
	movq	8(%r12), %rdx
	movl	$1, %r8d
	movq	56(%r12), %rcx
	call	adjust_automodify_address_1
.L24723:
	movq	%rax, -7400(%rbp)
.L13804:
	movl	40(%r12), %eax
	testl	%eax, %eax
	je	.L13807
	movq	24(%r12), %rdi
	movl	-7388(%rbp), %esi
	movl	$1, %r8d
	movq	32(%r12), %rdx
	movq	56(%r12), %rcx
	call	adjust_automodify_address_1
.L24724:
	cmpq	$0, (%r12)
	movq	%rax, %r14
	jne	.L26117
	movl	target_flags(%rip), %eax
	testl	$33554432, %eax
	movl	%eax, %esi
	je	.L13813
	movzbl	mode_size(%r15), %r10d
	leal	7(%r10), %edx
	andl	$-8, %edx
.L13814:
	movq	cfun(%rip), %rdi
	andl	$33554432, %esi
	movq	16(%rdi), %r11
	leaq	8(%r11), %rdi
	movl	8(%r11), %ecx
	je	.L13815
	movzbl	mode_size(%r15), %eax
	addl	$7, %eax
	andl	$-8, %eax
.L24725:
	movq	%r15, %rsi
	leal	(%rax,%rcx), %r8d
	salq	$4, %rsi
	movl	%r8d, (%rdi)
	addq	optab_table+384(%rip), %rsi
	movl	8(%rsi), %eax
	cmpl	$1317, %eax
	je	.L13817
	movslq	%eax,%rbx
	leaq	(%rbx,%rbx,4), %rcx
	movq	insn_data+24(,%rcx,8), %rdx
	movq	(%rdx), %rax
	testq	%rax, %rax
	je	.L13818
	movq	%r14, %rdi
	movl	-7388(%rbp), %esi
	call	*%rax
	testl	%eax, %eax
	je	.L26118
.L13818:
	leaq	(%rbx,%rbx,4), %r9
	movq	%r14, %rdi
	xorl	%eax, %eax
	call	*insn_data+16(,%r9,8)
.L24726:
	movq	%rax, %rdi
	call	emit_insn
.L13837:
	movl	64(%r12), %eax
	testl	%eax, %eax
	movl	%eax, %ecx
	jne	.L13838
	movq	-6000(%rbp), %r14
	addq	%r14, 56(%r12)
.L13838:
	movq	48(%r12), %rsi
	movq	-6000(%rbp), %rdx
	subq	-6000(%rbp), %rsi
	cmpq	%rdx, %rsi
	movq	%rsi, 48(%r12)
	jae	.L13839
.L13799:
	movzbl	mode_size(%r15), %r14d
	cmpl	$1, %r14d
	ja	.L13841
.L13790:
	cmpq	$0, -864(%rbp)
.L25556:
	je	.L13062
	jmp	.L25518
.L26118:
	movl	-7388(%rbp), %edi
	movq	%r14, %rsi
	call	force_reg
	movq	%rax, %r14
	jmp	.L13818
.L13817:
	movzbl	mode_size(%r15), %r10d
	cmpl	%edx, %r10d
	je	.L26119
	mov	%edx, %esi
	xorl	%edi, %edi
	negq	%rsi
	call	gen_rtx_CONST_INT
	movq	global_rtl+16(%rip), %rdx
	movl	$75, %edi
	testb	$2, target_flags+3(%rip)
	movq	%rax, %rcx
	setne	%r11b
	movzbl	%r11b, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_ee
	movq	global_rtl+16(%rip), %rdx
	movl	$100, %edi
	testb	$2, target_flags+3(%rip)
	movq	%rax, %rcx
	setne	%bl
	movzbl	%bl, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_ee
.L13825:
	movl	-7388(%rbp), %edi
	movq	%rax, %rsi
	call	gen_rtx_MEM
	xorl	%edi, %edi
	testq	%rdi, %rdi
	movq	%rax, %rbx
	je	.L13834
	movq	%rax, %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	call	set_mem_attributes
	movl	flag_optimize_sibling_calls(%rip), %eax
	testl	%eax, %eax
	jne	.L26120
.L13834:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	call	emit_move_insn
	jmp	.L13837
.L26120:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	call	set_mem_alias_set
	jmp	.L13834
.L26119:
	testb	$2, target_flags+3(%rip)
	movq	global_rtl+16(%rip), %rdx
	movl	$96, %edi
	setne	%al
	movzbl	%al, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_e
	jmp	.L13825
.L13815:
	movzbl	mode_size(%r15), %eax
	incl	%eax
	andl	$-2, %eax
	jmp	.L24725
.L13813:
	movzbl	mode_size(%r15), %ebx
	leal	1(%rbx), %edx
	andl	$-2, %edx
	jmp	.L13814
.L26117:
	movq	%rax, %rsi
	movq	-7400(%rbp), %rdi
	xorl	%eax, %eax
	call	*-3728(%rbp)
	jmp	.L24726
.L13807:
	movq	24(%r12), %rdi
	movl	-7388(%rbp), %esi
	movl	$1, %ecx
	movq	56(%r12), %rdx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L24724
.L13805:
	movl	-7388(%rbp), %esi
	movq	56(%r12), %rdx
	movl	$1, %ecx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L24723
.L13787:
	movq	-7384(%rbp), %rdi
	call	copy_addr_to_reg
	movq	%rax, -904(%rbp)
	jmp	.L13757
.L13783:
	movq	%r8, %rdi
	call	copy_addr_to_reg
	movq	%rax, -880(%rbp)
	jmp	.L13785
.L13755:
	movl	$1, %ecx
	jmp	.L13754
.L13752:
	movl	$1, %edx
	jmp	.L13751
.L13750:
	movl	$1, %ecx
	jmp	.L13749
.L13744:
	cmpq	$2, %r15
	ja	.L13728
	jmp	.L13745
.L13720:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r14), %rdi
	movq	%rax, %r12
	call	protect_from_queue
	cmpq	8(%r14), %r12
	movq	%rax, %rbx
	je	.L26121
.L13722:
	movq	%r14, %rdi
	call	copy_rtx
	movq	%rax, %r14
	movq	%r12, 8(%rax)
	movq	%rbx, 16(%rax)
	jmp	.L13715
.L26121:
	cmpq	16(%r14), %rax
	jne	.L13722
	jmp	.L13715
.L26111:
	cmpb	$51, 2(%r14)
	je	.L13713
	movq	8(%r14), %r12
	cmpw	$71, (%r12)
	je	.L26122
.L13713:
	cmpl	$66, %eax
	jne	.L13716
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%r14), %rax
	movq	%rax, %rbx
	je	.L13715
	movq	%r14, %rdi
	call	copy_rtx
	movq	%rax, %r14
	movq	%rbx, 8(%rax)
	jmp	.L13715
.L26122:
	movq	8(%r12), %rsi
	movq	%r14, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%r12)
	movq	%rax, %rbx
	je	.L13714
	movzbl	2(%r14), %edi
	call	gen_reg_rtx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L13715
.L13714:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L24722:
	movq	%rax, %r14
	jmp	.L13715
.L13712:
	cmpq	$0, 16(%r14)
	je	.L26123
	movq	24(%r14), %rax
	testq	%rax, %rax
	jne	.L24722
	movq	8(%r14), %rcx
	movzbl	2(%rcx), %edi
	call	gen_reg_rtx
	movq	8(%r14), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r14)
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r14), %r14
	jmp	.L13715
.L26123:
	movq	8(%r14), %rdi
	call	copy_to_reg
	jmp	.L24722
.L13707:
	movq	-7408(%rbp), %rdx
	xorl	%esi, %esi
	movq	8(%rdx), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	-7408(%rbp), %rbx
	movq	%rax, %r12
	movq	16(%rbx), %rdi
	call	protect_from_queue
	movq	-7408(%rbp), %rcx
	movq	%rax, %rbx
	cmpq	8(%rcx), %r12
	je	.L26124
.L13709:
	movq	-7408(%rbp), %rdi
	call	copy_rtx
	movq	%rax, -7376(%rbp)
	movq	%r12, 8(%rax)
	movq	-7376(%rbp), %rdi
	movq	%rbx, 16(%rdi)
	jmp	.L13702
.L26124:
	cmpq	16(%rcx), %rax
	jne	.L13709
	jmp	.L13702
.L26110:
	cmpb	$51, 2(%rdx)
	je	.L13700
	movq	8(%rdx), %r12
	cmpw	$71, (%r12)
	je	.L26125
.L13700:
	cmpl	$66, %eax
	jne	.L13703
	movq	-7408(%rbp), %r10
	xorl	%esi, %esi
	movq	8(%r10), %rdi
	call	protect_from_queue
	movq	-7408(%rbp), %rsi
	movq	%rax, %rbx
	cmpq	8(%rsi), %rax
	je	.L13702
	movq	%rsi, %rdi
	call	copy_rtx
	movq	%rax, -7376(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L13702
.L26125:
	movq	8(%r12), %rsi
	movq	%rdx, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%r12)
	movq	%rax, %rbx
	je	.L13701
	movq	-7408(%rbp), %r9
	movzbl	2(%r9), %edi
	call	gen_reg_rtx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, -7376(%rbp)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L13702
.L13701:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L24721:
	movq	%rax, -7376(%rbp)
	jmp	.L13702
.L13699:
	movq	-7408(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.L26126
	movq	-7408(%rbp), %rax
	movq	24(%rax), %r8
	testq	%r8, %r8
	movq	%r8, -7376(%rbp)
	jne	.L13702
	movq	-7408(%rbp), %rsi
	movq	8(%rsi), %r12
	movzbl	2(%r12), %edi
	call	gen_reg_rtx
	movq	-7408(%rbp), %r15
	movq	%rax, %rdi
	movq	8(%r15), %rsi
	movq	%rax, 24(%r15)
	call	gen_move_insn
	movq	16(%r15), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r15), %r11
	movq	%r11, -7376(%rbp)
	jmp	.L13702
.L26126:
	movq	8(%rax), %rdi
	call	copy_to_reg
	jmp	.L24721
.L13694:
	movq	-7416(%rbp), %r12
	xorl	%esi, %esi
	movq	8(%r12), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	-7416(%rbp), %rdx
	movq	%rax, %r12
	movq	16(%rdx), %rdi
	call	protect_from_queue
	movq	-7416(%rbp), %rsi
	movq	%rax, %rbx
	cmpq	8(%rsi), %r12
	je	.L26127
.L13696:
	movq	-7416(%rbp), %rdi
	call	copy_rtx
	movq	%rax, -7368(%rbp)
	movq	%r12, 8(%rax)
	movq	-7368(%rbp), %r8
	movq	%rbx, 16(%r8)
	jmp	.L13689
.L26127:
	cmpq	16(%rsi), %rax
	jne	.L13696
	jmp	.L13689
.L26109:
	jne	.L13690
	movq	8(%rsi), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	%rax, %rbx
	movq	-7416(%rbp), %rax
	cmpq	8(%rax), %rbx
	je	.L13689
	movq	%rax, %rdi
	call	copy_rtx
	movq	%rax, -7368(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L13689
.L13686:
	testq	%rcx, %rcx
	je	.L26128
	movq	-7416(%rbp), %r15
	movq	24(%r15), %r11
	testq	%r11, %r11
	movq	%r11, -7368(%rbp)
	jne	.L13689
	movq	-7416(%rbp), %r12
	movq	8(%r12), %rsi
	movzbl	2(%rsi), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %rcx
	movq	%rcx, -7368(%rbp)
	jmp	.L13689
.L26128:
	movq	-7416(%rbp), %rax
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%rax, -7368(%rbp)
	jmp	.L13689
.L13679:
	testq	%rcx, %rcx
	movl	$8, -7356(%rbp)
	je	.L13675
	movl	32(%rcx), %eax
	jmp	.L24720
.L13678:
	cmpl	$7, %edx
	ja	.L13674
	jmp	.L13679
.L26107:
	movq	8(%r14), %rdi
	call	int_size_in_bytes
	movl	%eax, -3692(%rbp)
	movq	-7416(%rbp), %rax
	cmpw	$39, (%rax)
	jne	.L25561
	movq	-7416(%rbp), %r8
	movq	8(%r8), %rcx
	movq	8(%rcx), %r15
	movl	(%rcx), %r14d
	cmpq	$0, 8(%r15)
	movslq	%r14d,%rdi
	sete	%r10b
	leaq	15(,%rdi,8), %rbx
	andq	$-16, %rbx
	subq	%rbx, %rsp
	leaq	32(%rsp), %r12
	movzbl	%r10b, %r9d
	movq	%r12, -3704(%rbp)
	movl	%r9d, -7352(%rbp)
	movl	-7352(%rbp), %eax
	cmpl	%r14d, %eax
	movl	%eax, -7344(%rbp)
	jge	.L23549
.L13658:
	movslq	-7344(%rbp),%r14
	movq	8(%rcx,%r14,8), %rsi
	movq	%r14, -3712(%rbp)
	movl	-3692(%rbp), %ecx
	movq	8(%rsi), %rax
	movq	16(%rsi), %r11
	testl	%ecx, %ecx
	movzbl	2(%rax), %r14d
	movq	8(%r11), %r15
	movslq	%r14d,%rdx
	movzbl	mode_size(%rdx), %ebx
	movq	%rdx, -3720(%rbp)
	movl	%ebx, -7348(%rbp)
	js	.L13631
	movslq	-3692(%rbp),%r12
	mov	%ebx, %edi
	leaq	(%rdi,%r15), %rbx
	cmpq	%r12, %rbx
	jle	.L13631
	movl	-3692(%rbp), %r9d
	subl	%r15d, %r9d
	movl	%r9d, -7348(%rbp)
	je	.L25560
.L13631:
	movq	-7408(%rbp), %r12
	movzwl	(%r12), %edx
	cmpw	$66, %dx
	je	.L24534
	leal	-67(%rdx), %r10d
	cmpw	$1, %r10w
	jbe	.L13635
	cmpw	$54, %dx
	je	.L13635
	cmpw	$55, %dx
	je	.L13635
	cmpw	$58, %dx
	je	.L13635
	cmpw	$134, %dx
	je	.L13635
	cmpw	$56, %dx
	je	.L13635
	cmpw	$140, %dx
	je	.L13635
.L13634:
	movq	-7408(%rbp), %rcx
	movl	%r14d, %edi
	movzbl	2(%rcx), %eax
	testb	%al, %al
	je	.L24718
	movzbl	%al, %edi
.L24718:
	call	gen_reg_rtx
	movq	-7408(%rbp), %rsi
	movq	%rax, %r12
	movq	%rax, %rdi
	call	emit_move_insn
	movzwl	(%r12), %edx
.L13633:
	cmpw	$66, %dx
	je	.L24534
.L13638:
	cmpw	$65, %dx
	je	.L26129
	leal	-67(%rdx), %ecx
	cmpw	$1, %cx
	jbe	.L13655
	cmpw	$54, %dx
	je	.L13655
	cmpw	$55, %dx
	je	.L13655
	cmpw	$58, %dx
	je	.L13655
	cmpw	$134, %dx
	je	.L13655
	cmpw	$56, %dx
	je	.L13655
	cmpw	$140, %dx
	je	.L13655
	cmpw	$61, %dx
	je	.L26130
.L13654:
	movslq	-3692(%rbp),%r9
	movl	-7348(%rbp), %edx
	movq	%r12, %rdi
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	%r14d, (%rsp)
	sall	$3, %edx
	mov	%edx, %esi
	movq	%r9, 8(%rsp)
	leaq	0(,%r15,8), %rdx
	movl	%r14d, %r9d
	call	extract_bit_field
.L24719:
	movq	-3712(%rbp), %r12
	movq	-3704(%rbp), %r10
	movq	%rax, (%r10,%r12,8)
.L13629:
	movq	-7416(%rbp), %r8
	incl	-7344(%rbp)
	movl	-7344(%rbp), %eax
	movq	8(%r8), %rcx
	cmpl	(%rcx), %eax
	jl	.L13658
.L23549:
	movq	cfun(%rip), %r15
	movq	16(%r15), %r11
	movq	40(%r11), %rbx
	testq	%rbx, %rbx
	je	.L23551
.L13664:
	movq	32(%rbx), %rdi
	cmpw	$24, (%rdi)
	je	.L26131
	call	emit_insn
	movq	%rax, 16(%rbx)
.L13663:
	movq	cfun(%rip), %r9
	movq	40(%rbx), %r14
	movq	16(%r9), %rdi
	testq	%r14, %r14
	movq	%r14, %rbx
	movq	%r14, 40(%rdi)
	jne	.L13664
	movq	-7416(%rbp), %rbx
	movq	8(%rbx), %rcx
.L23551:
	movl	-7352(%rbp), %r10d
	cmpl	(%rcx), %r10d
	jge	.L13062
.L13670:
	movslq	-7352(%rbp),%r11
	movq	-3704(%rbp), %r8
	salq	$3, %r11
	movq	8(%r11,%rcx), %r15
	movq	(%r8,%r11), %rsi
	movq	8(%r15), %rdi
	call	emit_move_insn
	movq	-7416(%rbp), %rax
	incl	-7352(%rbp)
	movl	-7352(%rbp), %edx
	movq	8(%rax), %r12
	cmpl	(%r12), %edx
	movq	%r12, %rcx
	jl	.L13670
	jmp	.L13062
.L26131:
	movq	8(%rdi), %rsi
	movq	8(%rsi), %rcx
	movq	%rcx, 16(%rbx)
	call	emit_insn
	jmp	.L13663
.L26130:
	movzbl	2(%r12), %esi
	cmpl	%r14d, %esi
	jne	.L13654
.L13655:
	movq	-3712(%rbp), %rdi
	movq	-3704(%rbp), %r14
	movq	%r12, (%r14,%rdi,8)
	jmp	.L13629
.L26129:
	testq	%r15, %r15
	jne	.L24337
	movq	8(%r12), %rdx
	movzbq	2(%rdx), %r8
	movzbl	mode_size(%r8), %ebx
	cmpl	%ebx, -7348(%rbp)
	je	.L13644
.L13645:
	movzbq	2(%rdx), %rcx
	movzbq	mode_size(%rcx), %r11
	cmpq	%r11, %r15
	je	.L26132
.L13643:
	testq	%r15, %r15
	jne	.L22779
	movzbl	2(%r12), %edi
	xorl	%edx, %edx
	movslq	%edi,%rbx
	movzbq	mode_size(%rbx), %rsi
	call	assign_stack_temp
	movq	%r12, %rsi
	movq	%rax, %r15
	movq	%rax, %rdi
	call	emit_move_insn
	movl	$1, %r8d
	movl	$1, %ecx
	movq	%r15, %rdi
	movl	%r14d, %esi
	xorl	%edx, %edx
	call	adjust_address_1
	jmp	.L24719
.L26132:
	movq	16(%r12), %rdx
	movzbq	2(%rdx), %rdi
	movzbl	mode_size(%rdi), %esi
	cmpl	%esi, -7348(%rbp)
	jne	.L13643
.L13644:
	xorl	%r9d, %r9d
	movq	-3712(%rbp), %r10
	movq	-3704(%rbp), %rax
	testq	%r15, %r15
	setne	%r9b
	leaq	(%rax,%r10,8), %rbx
	movq	8(%r12,%r9,8), %rcx
	movq	%rcx, (%rbx)
	movzwl	(%rcx), %edx
	leal	-67(%rdx), %r15d
	cmpw	$1, %r15w
	jbe	.L13629
	cmpw	$54, %dx
	je	.L13629
	cmpw	$55, %dx
	je	.L13629
	cmpw	$58, %dx
	je	.L13629
	cmpw	$134, %dx
	je	.L13629
	cmpw	$56, %dx
	je	.L13629
	cmpw	$140, %dx
	je	.L13629
	cmpw	$61, %dx
	je	.L26133
.L13649:
	movslq	-3692(%rbp),%r8
	movl	-7348(%rbp), %r11d
	movl	%r14d, (%rsp)
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	%r14d, %r9d
	sall	$3, %r11d
	movq	%r8, 8(%rsp)
	mov	%r11d, %esi
	xorl	%r8d, %r8d
	movq	(%rbx), %rdi
	call	extract_bit_field
	movq	%rax, (%rbx)
	jmp	.L13629
.L26133:
	movzbl	2(%rcx), %r12d
	cmpl	%r14d, %r12d
	jne	.L13649
	jmp	.L13629
.L24337:
	movq	8(%r12), %rdx
	jmp	.L13645
.L24534:
	movl	%r14d, %edi
	call	get_mode_alignment
	movq	16(%r12), %rdx
	testq	%rdx, %rdx
	je	.L13639
	cmpl	%eax, 32(%rdx)
	jae	.L13640
.L24336:
	movzwl	(%r12), %edx
	jmp	.L13638
.L13640:
	movl	%r14d, %edi
	leaq	0(,%r15,8), %rbx
	call	get_mode_alignment
	mov	%eax, %edi
	movq	%rbx, %rax
	cqto
	idivq	%rdi
	testq	%rdx, %rdx
	jne	.L24336
	movq	-3720(%rbp), %rax
	movzbl	mode_size(%rax), %edx
	cmpl	%edx, -7348(%rbp)
	jne	.L24336
	movl	%r14d, %edi
	call	gen_reg_rtx
	movl	$1, %r8d
	movl	$1, %ecx
	movq	-3712(%rbp), %r10
	movq	-3704(%rbp), %r9
	movq	%r12, %rdi
	movl	%r14d, %esi
	movq	%r15, %rdx
	leaq	(%r9,%r10,8), %rbx
	movq	%rax, (%rbx)
	call	adjust_address_1
	movq	(%rbx), %rdi
	movq	%rax, %rsi
	call	emit_move_insn
	jmp	.L13629
.L13639:
	cmpl	$8, %eax
	ja	.L24336
	jmp	.L13640
.L13635:
	movq	-7408(%rbp), %r11
	movzbl	2(%r11), %ecx
	movzbl	%cl, %r8d
	cmpl	%r14d, %r8d
	je	.L13633
	testb	%cl, %cl
	je	.L13633
	jmp	.L13634
.L26106:
	cmpb	$29, 16(%r14)
	jne	.L13086
	movq	%r14, %rdi
	call	expr_size
	cmpw	$54, (%rax)
	movq	%rax, -7224(%rbp)
	je	.L26134
.L13087:
	movq	sizetype_tab(%rip), %rdi
	movq	-7224(%rbp), %rsi
	call	make_tree
	xorl	%esi, %esi
	movslq	32(%r14),%rdi
	movq	%rax, %r15
	call	size_int_wide
	movq	%r15, %rsi
	movl	$78, %edi
	movq	%rax, %rdx
	call	size_binop
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, -3616(%rbp)
	call	expand_expr
	xorl	%edx, %edx
	movl	ptr_mode(%rip), %edi
	movq	%rax, %rsi
	movq	$0, -7312(%rbp)
	call	convert_to_mode
	movl	$8, %edx
	movq	-7408(%rbp), %rcx
	movq	-7416(%rbp), %r12
	movq	%rax, -7256(%rbp)
	movq	%rax, -7280(%rbp)
	movq	%rcx, -7272(%rbp)
	movq	%r12, -7264(%rbp)
	movq	16(%r12), %rax
	testq	%rax, %rax
	movq	%rax, %rsi
	je	.L13290
	movl	32(%rax), %edx
.L13290:
	movq	-7408(%rbp), %r14
	movq	16(%r14), %rax
	testq	%rax, %rax
	movq	%rax, %rcx
	je	.L13291
	cmpl	32(%rax), %edx
	jb	.L13292
.L13287:
	testq	%rcx, %rcx
	movl	$8, %r15d
	je	.L13288
	movl	32(%rcx), %r15d
.L13288:
	movq	-7416(%rbp), %rax
	cmpb	$51, 2(%rax)
	jne	.L25547
	movq	-7408(%rbp), %rdi
	cmpb	$51, 2(%rdi)
	jne	.L25546
	movq	-7416(%rbp), %rdx
	movzwl	(%rdx), %eax
	cmpl	$71, %eax
	je	.L13299
	cmpl	$66, %eax
	je	.L26135
.L13303:
	cmpl	$75, %eax
	je	.L13307
	cmpl	$78, %eax
	je	.L13307
.L13302:
	movq	-7408(%rbp), %rdx
	movzwl	(%rdx), %eax
	cmpl	$71, %eax
	je	.L13312
	cmpl	$66, %eax
	je	.L26136
.L13316:
	cmpl	$75, %eax
	je	.L13320
	cmpl	$78, %eax
	je	.L13320
.L13315:
	movq	-7256(%rbp), %rdx
	movzwl	(%rdx), %eax
	cmpl	$71, %eax
	je	.L13325
	cmpl	$66, %eax
	je	.L26137
.L13329:
	cmpl	$75, %eax
	je	.L13333
	cmpl	$78, %eax
	je	.L13333
.L13328:
	movq	-7264(%rbp), %rdx
	cmpw	$66, (%rdx)
	jne	.L25545
	movq	-7272(%rbp), %r10
	cmpw	$66, (%r10)
	jne	.L25544
	cmpq	$0, -7280(%rbp)
	je	.L25543
	movq	-7280(%rbp), %rcx
	cmpw	$54, (%rcx)
	je	.L26138
.L13341:
	shrl	$3, %r15d
	xorl	%edi, %edi
	mov	%r15d, %esi
	call	gen_rtx_CONST_INT
	movl	class_narrowest_mode+4(%rip), %r12d
	movl	$1, volatile_ok(%rip)
	movq	%rax, -3632(%rbp)
	testl	%r12d, %r12d
	je	.L23533
.L13474:
	movslq	%r12d,%r15
	movl	movstr_optab(,%r15,4), %edx
	cmpl	$1317, %edx
	je	.L13460
	movq	-7280(%rbp), %rsi
	cmpw	$54, (%rsi)
	je	.L26139
.L13464:
	testb	$2, target_flags+3(%rip)
	je	.L13465
	cmpw	$63, mode_bitsize(%r15,%r15)
.L24712:
	jbe	.L13460
.L13463:
	movslq	%edx,%rsi
	leaq	(%rsi,%rsi,4), %rcx
	movq	%rsi, -3640(%rbp)
	movq	insn_data+24(,%rcx,8), %r14
	movq	(%r14), %rax
	testq	%rax, %rax
	je	.L13467
	movq	-7264(%rbp), %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L13460
.L13467:
	movq	24(%r14), %rax
	testq	%rax, %rax
	jne	.L26140
.L13468:
	movq	72(%r14), %rax
	testq	%rax, %rax
	je	.L13469
	xorl	%esi, %esi
	movq	-3632(%rbp), %rdi
	call	*%rax
	testl	%eax, %eax
	je	.L13460
.L13469:
	call	get_last_insn
	movl	$1, %edx
	movq	-7280(%rbp), %rsi
	movl	%r12d, %edi
	movq	%rax, -3648(%rbp)
	call	convert_to_mode
	movq	%rax, %rbx
	movq	48(%r14), %rax
	testq	%rax, %rax
	jne	.L26141
.L13470:
	movq	-3640(%rbp), %rdx
	movq	-7264(%rbp), %rdi
	xorl	%eax, %eax
	movq	-7272(%rbp), %rsi
	movq	-3632(%rbp), %rcx
	leaq	(%rdx,%rdx,4), %r12
	movq	%rbx, %rdx
	call	*insn_data+16(,%r12,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L24490
	movq	-3648(%rbp), %rdi
	call	delete_insns_since
.L13460:
	movzbl	mode_wider_mode(%r15), %r12d
	testl	%r12d, %r12d
	jne	.L13474
.L23533:
	testb	$2, target_flags+3(%rip)
	movq	-7264(%rbp), %r8
	movl	$0, volatile_ok(%rip)
	setne	%r9b
	movq	8(%r8), %rsi
	movzbl	%r9b, %edi
	addl	$4, %edi
	call	copy_to_mode_reg
	testb	$2, target_flags+3(%rip)
	setne	%bl
	movq	%rax, %r14
	movq	-7272(%rbp), %rax
	movq	8(%rax), %rsi
	movzbl	%bl, %edi
	addl	$4, %edi
	call	copy_to_mode_reg
	movq	-7280(%rbp), %rsi
	movq	sizetype_tab(%rip), %r11
	movq	%rax, %rbx
	movzbl	61(%r11), %r15d
	shrb	$1, %r15b
	movzbl	%r15b, %edi
	call	copy_to_mode_reg
	cmpq	$0, fn.1(%rip)
	movq	%rax, %r15
	je	.L26142
.L13483:
	movq	global_trees+216(%rip), %rdi
	call	build_pointer_type
	movq	%r14, %rsi
	movq	%rax, %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	global_trees+216(%rip), %rdi
	movq	%rax, %r12
	call	build_pointer_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	%r15, %rsi
	movq	%rax, (%r12)
	movq	%rax, %rbx
	movq	sizetype_tab(%rip), %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	fn.1(%rip), %rdx
	movq	%rax, (%rbx)
	movq	(%r12), %r8
	movq	8(%rdx), %rdi
	movq	(%r8), %rbx
	movq	$0, (%rbx)
	call	build_pointer_type
	movq	fn.1(%rip), %rdx
	movl	$121, %edi
	movq	%rax, %rsi
	call	build1
	xorl	%r8d, %r8d
	movq	%r12, %rcx
	movq	fn.1(%rip), %r11
	movq	%rax, %rdx
	movl	$53, %edi
	xorl	%eax, %eax
	movq	8(%r11), %r15
	movq	8(%r15), %rsi
	call	build
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	orb	$1, 17(%rax)
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	expand_expr
	testb	$4, 3(%r14)
	jne	.L26143
.L13472:
	movq	-7256(%rbp), %rbx
	cmpw	$54, (%rbx)
	je	.L26144
	movq	sizetype_tab(%rip), %r9
	movq	-7256(%rbp), %rcx
	xorl	%r8d, %r8d
	movq	optab_table+16(%rip), %rsi
	movq	-7224(%rbp), %rdx
	movzbl	61(%r9), %r12d
	xorl	%r9d, %r9d
	movl	$3, (%rsp)
	shrb	$1, %r12b
	movzbl	%r12b, %edi
	call	expand_binop
	movq	-3616(%rbp), %rdi
	movq	%rax, %rbx
	call	highest_pow2_factor
	movq	-7256(%rbp), %rsi
	movq	-7416(%rbp), %rdi
	movq	%rax, %rdx
	call	offset_address
	movq	%rax, -7416(%rbp)
	call	gen_label_rtx
	xorl	%r9d, %r9d
	movq	%rax, -7312(%rbp)
	movq	const_int_rtx+512(%rip), %rsi
	movq	%rbx, %rdi
	movzbl	2(%rbx), %r8d
	movl	$107, %edx
	xorl	%ecx, %ecx
	movq	%rax, (%rsp)
	call	emit_cmp_and_jump_insns
.L13486:
	cmpq	const_int_rtx+512(%rip), %rbx
	je	.L13487
	movq	-7416(%rbp), %rdx
	cmpw	$66, (%rdx)
	movq	%rdx, -7328(%rbp)
	je	.L26145
	movq	-7416(%rbp), %rax
	movzbl	2(%rax), %edi
	call	get_mode_alignment
.L24713:
	movl	%eax, -7316(%rbp)
.L13489:
	movq	-7416(%rbp), %rsi
	movzbl	2(%rsi), %eax
	cmpb	$51, %al
	je	.L13492
	cmpw	$54, (%rbx)
	je	.L26146
.L13492:
	movq	-7416(%rbp), %rdx
	movzwl	(%rdx), %eax
	cmpl	$71, %eax
	je	.L13494
	cmpl	$66, %eax
	je	.L26147
.L13498:
	cmpl	$75, %eax
	je	.L13502
	cmpl	$78, %eax
	je	.L13502
.L13497:
	movzwl	(%rbx), %eax
	cmpl	$71, %eax
	je	.L13507
	cmpl	$66, %eax
	je	.L26148
.L13511:
	cmpl	$75, %eax
	je	.L13515
	cmpl	$78, %eax
	je	.L13515
.L13510:
	cmpw	$54, (%rbx)
	je	.L26149
.L13520:
	shrl	$3, -7316(%rbp)
	xorl	%edi, %edi
	mov	-7316(%rbp), %esi
	call	gen_rtx_CONST_INT
	movl	class_narrowest_mode+4(%rip), %r14d
	movq	%rax, -3664(%rbp)
	testl	%r14d, %r14d
	je	.L23547
.L13614:
	movslq	%r14d,%rcx
	movl	clrstr_optab(,%rcx,4), %edx
	movq	%rcx, -3672(%rbp)
	cmpl	$1317, %edx
	je	.L13601
	cmpw	$54, (%rbx)
	je	.L26150
.L13605:
	testb	$2, target_flags+3(%rip)
	je	.L13606
	movq	-3672(%rbp), %rax
	cmpw	$63, mode_bitsize(%rax,%rax)
.L24716:
	jbe	.L13601
.L13604:
	movslq	%edx,%r15
	leaq	(%r15,%r15,4), %r10
	movq	%r15, -3680(%rbp)
	movq	insn_data+24(,%r10,8), %r15
	movq	(%r15), %rax
	testq	%rax, %rax
	je	.L13608
	movq	-7328(%rbp), %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L13601
.L13608:
	movq	48(%r15), %rax
	testq	%rax, %rax
	je	.L13609
	xorl	%esi, %esi
	movq	-3664(%rbp), %rdi
	call	*%rax
	testl	%eax, %eax
	je	.L13601
.L13609:
	call	get_last_insn
	movl	$1, %edx
	movq	%rbx, %rsi
	movl	%r14d, %edi
	movq	%rax, -3688(%rbp)
	call	convert_to_mode
	movq	%rax, %r12
	movq	24(%r15), %rax
	testq	%rax, %rax
	jne	.L26151
.L13610:
	movq	-3680(%rbp), %rcx
	movq	-7328(%rbp), %rdi
	xorl	%eax, %eax
	movq	%r12, %rsi
	movq	-3664(%rbp), %rdx
	leaq	(%rcx,%rcx,4), %r8
	call	*insn_data+16(,%r8,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L24717
	movq	-3688(%rbp), %rdi
	call	delete_insns_since
.L13601:
	movq	-3672(%rbp), %rdx
	movzbl	mode_wider_mode(%rdx), %r14d
	testl	%r14d, %r14d
	jne	.L13614
.L23547:
	testb	$2, target_flags+3(%rip)
	movq	-7328(%rbp), %r14
	setne	%r12b
	movq	8(%r14), %rsi
	movzbl	%r12b, %edi
	addl	$4, %edi
	call	copy_to_mode_reg
	movq	sizetype_tab(%rip), %rsi
	movq	%rax, %r14
	movzbl	61(%rsi), %r11d
	movq	%rbx, %rsi
	shrb	$1, %r11b
	movzbl	%r11b, %edi
	call	copy_to_mode_reg
	cmpq	$0, fn.0(%rip)
	movq	%rax, %r15
	je	.L26152
.L13619:
	movq	global_trees+216(%rip), %rdi
	call	build_pointer_type
	movq	%r14, %rsi
	movq	%rax, %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	const_int_rtx+512(%rip), %rsi
	movq	integer_types+40(%rip), %rdi
	movq	%rax, %r12
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	%r15, %rsi
	movq	%rax, (%r12)
	movq	%rax, %rbx
	movq	sizetype_tab(%rip), %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	fn.0(%rip), %rcx
	movq	%rax, (%rbx)
	movq	(%r12), %r11
	movq	8(%rcx), %rdi
	movq	(%r11), %rdx
	movq	$0, (%rdx)
	call	build_pointer_type
	movq	fn.0(%rip), %rdx
	movl	$121, %edi
	movq	%rax, %rsi
	call	build1
	movq	%r12, %rcx
	movl	$53, %edi
	movq	fn.0(%rip), %r8
	movq	%rax, %rdx
	xorl	%eax, %eax
	movq	8(%r8), %r15
	xorl	%r8d, %r8d
	movq	8(%r15), %rsi
	call	build
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	orb	$1, 17(%rax)
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	expand_expr
	testb	$4, 3(%r14)
	jne	.L26153
.L13487:
	cmpq	$0, -7312(%rbp)
	je	.L13062
	movq	-7312(%rbp), %rdi
	call	emit_label
	jmp	.L13062
.L26153:
	movl	$49, %edi
	xorl	%esi, %esi
	movq	%r14, %rdx
	call	gen_rtx_fmt_e
	movq	%rax, %rdi
.L24717:
	call	emit_insn
	jmp	.L13487
.L26152:
	movl	$.LC7, %edi
	call	get_identifier
	movq	global_trees+216(%rip), %rdi
	movq	%rax, fn.0(%rip)
	call	build_pointer_type
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	build_function_type
	movq	fn.0(%rip), %rsi
	movl	$30, %edi
	movq	%rax, %rdx
	call	build_decl
	movl	$1, %esi
	movl	$fn.0, %edi
	movq	%rax, fn.0(%rip)
	call	ggc_add_tree_root
	movq	fn.0(%rip), %r10
	xorl	%esi, %esi
	orb	$1, 49(%r10)
	movq	fn.0(%rip), %r9
	orb	$8, 18(%r9)
	movq	fn.0(%rip), %rdi
	orb	$64, 50(%rdi)
	movq	fn.0(%rip), %rbx
	orb	$2, 18(%rbx)
	movq	fn.0(%rip), %rdi
	call	make_decl_rtl
	movq	fn.0(%rip), %rdi
	call	assemble_external
	jmp	.L13619
.L26151:
	movq	%r12, %rdi
	movl	%r14d, %esi
	call	*%rax
	testl	%eax, %eax
	jne	.L13610
	movq	%r12, %rsi
	movl	%r14d, %edi
	call	copy_to_mode_reg
	movq	%rax, %r12
	jmp	.L13610
.L13606:
	movq	-3672(%rbp), %r9
	cmpw	$31, mode_bitsize(%r9,%r9)
	jmp	.L24716
.L26150:
	movq	mode_mask_array(,%rcx,8), %r12
	shrq	$1, %r12
	cmpq	%r12, 8(%rbx)
	jbe	.L13604
	jmp	.L13605
.L26149:
	movq	8(%rbx), %r14
	xorl	%r15d, %r15d
	movl	$17, %esi
.L13533:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L23536
.L13530:
	movslq	%ecx,%r11
	movzbq	mode_size(%r11), %rdx
	cmpq	%rsi, %rdx
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r11), %ecx
	testl	%ecx, %ecx
	jne	.L13530
.L23536:
	testl	%edi, %edi
	je	.L13523
	movslq	%edi,%r12
	movq	%r12, %rsi
	salq	$4, %rsi
	addq	optab_table+240(%rip), %rsi
	cmpl	$1317, 8(%rsi)
	je	.L13532
	call	get_mode_alignment
	movl	$128, %edi
	cmpl	%eax, %edi
	jb	.L13532
	movzbq	mode_size(%r12), %r9
	movq	%r14, %rax
	xorl	%edx, %edx
	divq	%r9
	addq	%rax, %r15
	movq	%rdx, %r14
.L13532:
	movzbq	mode_size(%r12), %rsi
	cmpq	$1, %rsi
	ja	.L13533
.L13523:
	testq	%r14, %r14
	jne	.L25529
	movl	optimize_size(%rip), %eax
	testl	%eax, %eax
	jne	.L13536
	movq	ix86_cost(%rip), %r10
	mov	40(%r10), %r12d
	cmpq	%r12, %r15
	jae	.L13520
.L13537:
	movq	8(%rbx), %r11
	movq	-7328(%rbp), %r15
	leaq	-272(%rbp), %r12
	testb	$2, target_flags+3(%rip)
	movq	$clear_by_pieces_1, -232(%rbp)
	movq	$0, -224(%rbp)
	setne	%dl
	xorl	%esi, %esi
	movq	%r15, -272(%rbp)
	movq	%r11, -248(%rbp)
	movq	8(%r15), %r8
	movq	$0, -240(%rbp)
	movl	$0, -7340(%rbp)
	movzbl	%dl, %ecx 
	movq	%r8, -264(%rbp)
	movzwl	(%r8), %edx
	leaq	5(,%rcx,4), %r15
	leaq	16(%r12), %rcx
	leal	-96(%rdx), %ebx
	cmpw	$1, %bx
	jbe	.L13541
	cmpw	$99, %dx
	je	.L13541
	cmpw	$98, %dx
	je	.L13541
.L13540:
	movl	%esi, (%rcx)
	movl	$0, 20(%r12)
	leaq	56(%r12), %rdx
	movzwl	(%r8), %eax
	xorl	%ecx, %ecx
	cmpw	$96, %ax
	je	.L13543
	cmpw	$98, %ax
	je	.L13543
.L13542:
	movl	%ecx, (%rdx)
	movl	56(%r12), %eax
	testl	%eax, %eax
	je	.L13544
	movq	24(%r12), %rsi
	movq	%rsi, 32(%r12)
.L13544:
	movl	16(%r12), %edi
	testl	%edi, %edi
	jne	.L13545
	movq	24(%r12), %r14
	movq	$0, -7336(%rbp)
	movl	$17, %esi
.L13558:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L23539
.L13555:
	movslq	%ecx,%r9
	movzbq	mode_size(%r9), %r10
	cmpq	%rsi, %r10
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r9), %ecx
	testl	%ecx, %ecx
	jne	.L13555
.L23539:
	testl	%edi, %edi
	je	.L13548
	movslq	%edi,%rbx
	movq	%rbx, %rcx
	salq	$4, %rcx
	addq	optab_table+240(%rip), %rcx
	cmpl	$1317, 8(%rcx)
	je	.L13557
	movq	%r8, -9592(%rbp)
	call	get_mode_alignment
	movl	$128, %r8d
	cmpl	%eax, %r8d
	movq	-9592(%rbp), %r8
	jb	.L13557
	movzbq	mode_size(%rbx), %rsi
	movq	%r14, %rax
	xorl	%edx, %edx
	divq	%rsi
	addq	%rax, -7336(%rbp)
	movq	%rdx, %r14
.L13557:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L13558
.L13548:
	testq	%r14, %r14
	jne	.L25529
	cmpq	$2, -7336(%rbp)
	jbe	.L13545
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L23541
.L13566:
	movslq	%ecx,%rbx
	movzbq	mode_size(%rbx), %rdx
	cmpq	%r15, %rdx
	cmovae	-7340(%rbp), %ecx
	movl	%ecx, -7340(%rbp)
	movzbl	mode_wider_mode(%rbx), %ecx
	testl	%ecx, %ecx
	jne	.L13566
.L23541:
	movl	16(%r12), %eax
	testl	%eax, %eax
	jne	.L13545
	movzwl	(%r8), %edx
	leal	-67(%rdx), %edi
	cmpw	$1, %di
	jbe	.L13570
	cmpw	$54, %dx
	je	.L13570
	cmpw	$55, %dx
	je	.L13570
	cmpw	$58, %dx
	je	.L13570
	cmpw	$134, %dx
	je	.L13570
	cmpw	$56, %dx
	je	.L13570
	cmpw	$140, %dx
	je	.L13570
.L13545:
	cmpq	$1, %r15
	jbe	.L13573
.L13594:
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L23544
.L13580:
	movslq	%ecx,%r9
	movzbq	mode_size(%r9), %r10
	cmpq	%r15, %r10
	cmovae	-7340(%rbp), %ecx
	movl	%ecx, -7340(%rbp)
	movzbl	mode_wider_mode(%r9), %ecx
	testl	%ecx, %ecx
	jne	.L13580
.L23544:
	movl	-7340(%rbp), %r15d
	testl	%r15d, %r15d
	je	.L13573
	movslq	-7340(%rbp),%r15
	movq	%r15, %rcx
	salq	$4, %rcx
	addq	optab_table+240(%rip), %rcx
	movl	8(%rcx), %ebx
	cmpl	$1317, %ebx
	je	.L13582
	movl	-7340(%rbp), %edi
	call	get_mode_alignment
	movl	$128, %r8d
	cmpl	%eax, %r8d
	jb	.L13582
	movzbq	mode_size(%r15), %rdx
	movslq	%ebx,%rsi
	leaq	(%rsi,%rsi,4), %r11
	cmpq	%rdx, 24(%r12)
	movq	insn_data+16(,%r11,8), %r14
	movq	%r14, -3656(%rbp)
	movq	%rdx, %r14
	jb	.L13582
	movl	56(%r12), %ecx
.L13592:
	testl	%ecx, %ecx
	je	.L13586
	subq	%rdx, 32(%r12)
.L13586:
	movl	16(%r12), %ebx
	testl	%ebx, %ebx
	je	.L13587
	movq	(%r12), %rdi
	movl	-7340(%rbp), %esi
	movl	$1, %r8d
	movq	8(%r12), %rdx
	movq	32(%r12), %rcx
	call	adjust_automodify_address_1
.L24715:
	movl	-7340(%rbp), %edx
	movq	%rax, %rbx
	movq	48(%r12), %rdi
	movq	32(%r12), %rsi
	call	*40(%r12)
	movq	%rbx, %rdi
	movq	%rax, %rsi
	xorl	%eax, %eax
	call	*-3656(%rbp)
	movq	%rax, %rdi
	call	emit_insn
	movl	56(%r12), %eax
	testl	%eax, %eax
	movl	%eax, %ecx
	jne	.L13591
	addq	%r14, 32(%r12)
.L13591:
	movq	24(%r12), %rdi
	movq	%r14, %rdx
	subq	%r14, %rdi
	cmpq	%r14, %rdi
	movq	%rdi, 24(%r12)
	jae	.L13592
.L13582:
	movzbq	mode_size(%r15), %r15
	cmpq	$1, %r15
	ja	.L13594
.L13573:
	cmpq	$0, 24(%r12)
	je	.L13487
	jmp	.L25451
.L13587:
	movq	(%r12), %rdi
	movl	-7340(%rbp), %esi
	movl	$1, %ecx
	movq	32(%r12), %rdx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L24715
.L13570:
	movq	%r8, %rdi
	call	copy_addr_to_reg
	movq	%rax, 8(%r12)
	jmp	.L13545
.L13543:
	movl	$1, %ecx
	jmp	.L13542
.L13541:
	movl	$1, %esi
	jmp	.L13540
.L13536:
	cmpq	$2, %r15
	ja	.L13520
	jmp	.L13537
.L13515:
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%rbx), %rdi
	movq	%rax, %r14
	call	protect_from_queue
	cmpq	8(%rbx), %r14
	movq	%rax, %r12
	je	.L26154
.L13517:
	movq	%rbx, %rdi
	call	copy_rtx
	movq	%rax, %rbx
	movq	%r14, 8(%rax)
	movq	%r12, 16(%rax)
	jmp	.L13510
.L26154:
	cmpq	16(%rbx), %rax
	jne	.L13517
	jmp	.L13510
.L26148:
	cmpb	$51, 2(%rbx)
	je	.L13508
	movq	8(%rbx), %r14
	cmpw	$71, (%r14)
	je	.L26155
.L13508:
	cmpl	$66, %eax
	jne	.L13511
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	cmpq	8(%rbx), %rax
	movq	%rax, %r12
	je	.L13510
	movq	%rbx, %rdi
	call	copy_rtx
	movq	%rax, %rbx
	movq	%r12, 8(%rax)
	jmp	.L13510
.L26155:
	movq	8(%r14), %rsi
	movq	%rbx, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%r14)
	movq	%rax, %r12
	je	.L13509
	movzbl	2(%rbx), %edi
	call	gen_reg_rtx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	gen_move_insn
	movq	16(%r14), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L13510
.L13509:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%r12, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L24714:
	movq	%rax, %rbx
	jmp	.L13510
.L13507:
	cmpq	$0, 16(%rbx)
	je	.L26156
	movq	24(%rbx), %rax
	testq	%rax, %rax
	jne	.L24714
	movq	8(%rbx), %rcx
	movzbl	2(%rcx), %edi
	call	gen_reg_rtx
	movq	8(%rbx), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%rbx)
	call	gen_move_insn
	movq	16(%rbx), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%rbx), %rbx
	jmp	.L13510
.L26156:
	movq	8(%rbx), %rdi
	call	copy_to_reg
	jmp	.L24714
.L13502:
	movq	-7416(%rbp), %rcx
	xorl	%esi, %esi
	movq	8(%rcx), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	-7416(%rbp), %r10
	movq	%rax, %r14
	movq	16(%r10), %rdi
	call	protect_from_queue
	movq	-7416(%rbp), %rdx
	movq	%rax, %r12
	cmpq	8(%rdx), %r14
	je	.L26157
.L13504:
	movq	-7416(%rbp), %rdi
	call	copy_rtx
	movq	%rax, -7328(%rbp)
	movq	%r14, 8(%rax)
	movq	-7328(%rbp), %rsi
	movq	%r12, 16(%rsi)
	jmp	.L13497
.L26157:
	cmpq	16(%rdx), %rax
	jne	.L13504
	jmp	.L13497
.L26147:
	jne	.L13498
	movq	8(%rdx), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	-7416(%rbp), %rcx
	movq	%rax, %r12
	cmpq	8(%rcx), %rax
	je	.L13497
	movq	%rcx, %rdi
	call	copy_rtx
	movq	%rax, -7328(%rbp)
	movq	%r12, 8(%rax)
	jmp	.L13497
.L13494:
	movq	-7416(%rbp), %rsi
	cmpq	$0, 16(%rsi)
	je	.L26158
	movq	-7416(%rbp), %r11
	movq	24(%r11), %r15
	testq	%r15, %r15
	movq	%r15, -7328(%rbp)
	jne	.L13497
	movq	-7416(%rbp), %rax
	movq	8(%rax), %r10
	movzbl	2(%r10), %edi
	call	gen_reg_rtx
	movq	-7416(%rbp), %r9
	movq	%rax, %rdi
	movq	%rax, 24(%r9)
	movq	-7416(%rbp), %r12
	movq	8(%r12), %rsi
	call	gen_move_insn
	movq	-7416(%rbp), %r14
	movq	%rax, %rdi
	movq	16(%r14), %rsi
	call	emit_insn_before
	movq	-7416(%rbp), %r8
	movq	24(%r8), %rdx
	movq	%rdx, -7328(%rbp)
	jmp	.L13497
.L26158:
	movq	8(%rsi), %rdi
	call	copy_to_reg
	movq	%rax, -7328(%rbp)
	jmp	.L13497
.L26146:
	movzbl	%al, %edx 
	movzbl	mode_size(%rdx), %edi
	cmpl	8(%rbx), %edi
	jne	.L13492
	movq	%rsi, %rdi
	movq	const_tiny_rtx(,%rdx,8), %rsi
	call	emit_move_insn
	jmp	.L13487
.L26145:
	movq	16(%rdx), %rax
	movl	$8, -7316(%rbp)
	testq	%rax, %rax
	je	.L13489
	movl	32(%rax), %eax
	jmp	.L24713
.L26144:
	movq	8(%rbx), %rsi
	movq	-7224(%rbp), %rdi
	negq	%rsi
	call	plus_constant_wide
	movl	$1, %r8d
	movl	$1, %ecx
	movq	-7256(%rbp), %r14
	movq	-7416(%rbp), %rdi
	movl	$51, %esi
	movq	%rax, %rbx
	movq	8(%r14), %rdx
	call	adjust_address_1
	movq	%rax, -7416(%rbp)
	jmp	.L13486
.L26143:
	movl	$49, %edi
	xorl	%esi, %esi
	movq	%r14, %rdx
	call	gen_rtx_fmt_e
	movq	%rax, %rdi
	call	emit_insn
	jmp	.L13472
.L26142:
	movl	$.LC11, %edi
	call	get_identifier
	movq	global_trees+216(%rip), %rdi
	movq	%rax, fn.1(%rip)
	call	build_pointer_type
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	build_function_type
	movq	fn.1(%rip), %rsi
	movl	$30, %edi
	movq	%rax, %rdx
	call	build_decl
	movl	$1, %esi
	movl	$fn.1, %edi
	movq	%rax, fn.1(%rip)
	call	ggc_add_tree_root
	movq	fn.1(%rip), %rsi
	orb	$1, 49(%rsi)
	xorl	%esi, %esi
	movq	fn.1(%rip), %rcx
	orb	$8, 18(%rcx)
	movq	fn.1(%rip), %r10
	orb	$64, 50(%r10)
	movq	fn.1(%rip), %rdi
	orb	$2, 18(%rdi)
	movq	fn.1(%rip), %rdi
	call	make_decl_rtl
	movq	fn.1(%rip), %rdi
	call	assemble_external
	jmp	.L13483
.L24490:
	call	emit_insn
	movl	$0, volatile_ok(%rip)
	jmp	.L13472
.L26141:
	movq	%rbx, %rdi
	movl	%r12d, %esi
	call	*%rax
	testl	%eax, %eax
	jne	.L13470
	movq	%rbx, %rsi
	movl	%r12d, %edi
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L13470
.L26140:
	movq	-7272(%rbp), %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L13460
	jmp	.L13468
.L13465:
	cmpw	$31, mode_bitsize(%r15,%r15)
	jmp	.L24712
.L26139:
	movq	mode_mask_array(,%r15,8), %r10
	shrq	$1, %r10
	cmpq	%r10, 8(%rsi)
	jbe	.L13463
	jmp	.L13464
.L26138:
	movq	8(%rcx), %r12
	xorl	%r14d, %r14d
	movl	$17, %esi
.L13354:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L23522
.L13351:
	movslq	%ecx,%rbx
	movzbq	mode_size(%rbx), %r11
	cmpq	%rsi, %r11
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%rbx), %ecx
	testl	%ecx, %ecx
	jne	.L13351
.L23522:
	testl	%edi, %edi
	je	.L13344
	movslq	%edi,%rbx
	movq	%rbx, %rcx
	salq	$4, %rcx
	addq	optab_table+240(%rip), %rcx
	cmpl	$1317, 8(%rcx)
	je	.L13353
	call	get_mode_alignment
	movl	$128, %edi
	cmpl	%eax, %edi
	jb	.L13353
	movzbq	mode_size(%rbx), %r8
	movq	%r12, %rax
	xorl	%edx, %edx
	divq	%r8
	addq	%rax, %r14
	movq	%rdx, %r12
.L13353:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L13354
.L13344:
	testq	%r12, %r12
	jne	.L25529
	movl	optimize_size(%rip), %eax
	testl	%eax, %eax
	jne	.L13357
	movq	ix86_cost(%rip), %rdx
	mov	40(%rdx), %r9d
	cmpq	%r9, %r14
	jae	.L13341
.L13358:
	movq	-7280(%rbp), %r8
	movq	-7272(%rbp), %rsi
	movq	-7264(%rbp), %rdi
	movq	-7264(%rbp), %r11
	testb	$2, target_flags+3(%rip)
	movq	8(%r8), %r12
	setne	%r14b
	movq	8(%rsi), %r8
	movq	$0, -856(%rbp)
	movl	$0, -7292(%rbp)
	movq	%r8, -880(%rbp)
	movzbl	%r14b, %ecx
	movq	8(%rdi), %rbx
	movq	%r11, -912(%rbp)
	leal	5(,%rcx,4), %r14d
	xorl	%ecx, %ecx
	movq	%rbx, -7288(%rbp)
	movq	-7288(%rbp), %r10
	movzwl	(%r10), %edx
	leal	-96(%rdx), %r15d
	cmpw	$1, %r15w
	jbe	.L13363
	cmpw	$99, %dx
	je	.L13363
	cmpw	$98, %dx
	je	.L13363
.L13362:
	movq	-7288(%rbp), %r9
	movl	%ecx, -896(%rbp)
	xorl	%edx, %edx
	movzwl	(%r9), %eax
	cmpw	$96, %ax
	je	.L13365
	cmpw	$98, %ax
	je	.L13365
.L13364:
	movl	%edx, -848(%rbp)
	movq	-7272(%rbp), %rax
	xorl	%ecx, %ecx
	movq	-7288(%rbp), %rdx
	movq	%rax, -888(%rbp)
	movq	%rdx, -904(%rbp)
	movzwl	(%r8), %edx
	leal	-96(%rdx), %r15d
	cmpw	$1, %r15w
	jbe	.L13368
	cmpw	$99, %dx
	je	.L13368
	cmpw	$98, %dx
	je	.L13368
.L13367:
	movl	-848(%rbp), %r10d
	movl	%ecx, -872(%rbp)
	movl	$0, -868(%rbp)
	movl	$0, -892(%rbp)
	testl	%r10d, %r10d
	je	.L13369
	movq	%r12, -856(%rbp)
.L13369:
	movl	-872(%rbp), %r11d
	movq	%r12, -864(%rbp)
	testl	%r11d, %r11d
	je	.L13371
	movl	-896(%rbp), %ebx
	testl	%ebx, %ebx
	jne	.L13370
.L13371:
	xorl	%r15d, %r15d
	movl	$17, %esi
.L13384:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L23525
.L13381:
	movslq	%ecx,%r9
	movzbq	mode_size(%r9), %rdx
	cmpq	%rsi, %rdx
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r9), %ecx
	testl	%ecx, %ecx
	jne	.L13381
.L23525:
	testl	%edi, %edi
	je	.L13374
	movslq	%edi,%rbx
	movq	%rbx, %rcx
	salq	$4, %rcx
	addq	optab_table+240(%rip), %rcx
	cmpl	$1317, 8(%rcx)
	je	.L13383
	movq	%r8, -9592(%rbp)
	call	get_mode_alignment
	movq	-9592(%rbp), %r8
	movl	$128, %edi
	cmpl	%eax, %edi
	jb	.L13383
	movzbq	mode_size(%rbx), %rsi
	movq	%r12, %rax
	xorl	%edx, %edx
	divq	%rsi
	addq	%rax, %r15
	movq	%rdx, %r12
.L13383:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L13384
.L13374:
	testq	%r12, %r12
	jne	.L25529
	cmpq	$2, %r15
	jbe	.L13370
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L23527
.L13392:
	movslq	%ecx,%r15
	movzbl	mode_size(%r15), %r11d
	cmpl	%r14d, %r11d
	cmovae	-7292(%rbp), %ecx
	movl	%ecx, -7292(%rbp)
	movzbl	mode_wider_mode(%r15), %ecx
	testl	%ecx, %ecx
	jne	.L13392
.L23527:
	movl	-872(%rbp), %eax
	testl	%eax, %eax
	jne	.L13398
	movzwl	(%r8), %edx
	leal	-67(%rdx), %ebx
	cmpw	$1, %bx
	jbe	.L13396
	cmpw	$54, %dx
	je	.L13396
	cmpw	$55, %dx
	je	.L13396
	cmpw	$58, %dx
	je	.L13396
	cmpw	$134, %dx
	je	.L13396
	cmpw	$56, %dx
	je	.L13396
	cmpw	$140, %dx
	je	.L13396
.L13398:
	movl	-896(%rbp), %eax
	testl	%eax, %eax
	jne	.L13370
	movq	-7288(%rbp), %r9
	movzwl	(%r9), %edx
	leal	-67(%rdx), %r8d
	cmpw	$1, %r8w
	jbe	.L13400
	cmpw	$54, %dx
	je	.L13400
	cmpw	$55, %dx
	je	.L13400
	cmpw	$58, %dx
	je	.L13400
	cmpw	$134, %dx
	je	.L13400
	cmpw	$56, %dx
	je	.L13400
	cmpw	$140, %dx
	je	.L13400
.L13370:
	cmpl	$1, %r14d
	jbe	.L13403
.L13454:
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L23530
.L13410:
	movslq	%ecx,%rdi
	movzbl	mode_size(%rdi), %edx
	cmpl	%r14d, %edx
	cmovae	-7292(%rbp), %ecx
	movl	%ecx, -7292(%rbp)
	movzbl	mode_wider_mode(%rdi), %ecx
	testl	%ecx, %ecx
	jne	.L13410
.L23530:
	movl	-7292(%rbp), %eax
	testl	%eax, %eax
	je	.L13403
	movslq	-7292(%rbp),%r15
	movq	%r15, %r14
	salq	$4, %r14
	addq	optab_table+240(%rip), %r14
	movl	8(%r14), %ebx
	cmpl	$1317, %ebx
	je	.L13412
	movl	-7292(%rbp), %edi
	call	get_mode_alignment
	movl	$128, %ecx
	cmpl	%eax, %ecx
	jb	.L13412
	movzbq	mode_size(%r15), %rdx
	movslq	%ebx,%rsi
	movq	$0, -7304(%rbp)
	leaq	(%rsi,%rsi,4), %r10
	cmpq	%rdx, -864(%rbp)
	movq	insn_data+16(,%r10,8), %r12
	movq	%rdx, -5992(%rbp)
	movq	%r12, -3624(%rbp)
	leaq	-912(%rbp), %r12
	jb	.L13412
	movl	-848(%rbp), %ecx
.L13452:
	testl	%ecx, %ecx
	je	.L13416
	subq	%rdx, 56(%r12)
.L13416:
	movq	(%r12), %rdi
	testq	%rdi, %rdi
	je	.L13417
	movl	16(%r12), %eax
	testl	%eax, %eax
	je	.L13418
	movl	-7292(%rbp), %esi
	movq	8(%r12), %rdx
	movl	$1, %r8d
	movq	56(%r12), %rcx
	call	adjust_automodify_address_1
.L24708:
	movq	%rax, -7304(%rbp)
.L13417:
	movl	40(%r12), %eax
	testl	%eax, %eax
	je	.L13420
	movq	24(%r12), %rdi
	movl	-7292(%rbp), %esi
	movl	$1, %r8d
	movq	32(%r12), %rdx
	movq	56(%r12), %rcx
	call	adjust_automodify_address_1
.L24709:
	cmpq	$0, (%r12)
	movq	%rax, %r14
	jne	.L26159
	movl	target_flags(%rip), %eax
	testl	$33554432, %eax
	movl	%eax, %esi
	je	.L13426
	movzbl	mode_size(%r15), %r11d
	leal	7(%r11), %edx
	andl	$-8, %edx
.L13427:
	movq	cfun(%rip), %r9
	andl	$33554432, %esi
	movq	16(%r9), %r8
	leaq	8(%r8), %rdi
	movl	8(%r8), %ecx
	je	.L13428
	movzbl	mode_size(%r15), %eax
	addl	$7, %eax
	andl	$-8, %eax
.L24710:
	leal	(%rax,%rcx), %r10d
	movl	%r10d, (%rdi)
	movq	%r15, %rdi
	salq	$4, %rdi
	addq	optab_table+384(%rip), %rdi
	movl	8(%rdi), %eax
	cmpl	$1317, %eax
	je	.L13430
	movslq	%eax,%rbx
	leaq	(%rbx,%rbx,4), %rcx
	movq	insn_data+24(,%rcx,8), %rdx
	movq	(%rdx), %rax
	testq	%rax, %rax
	je	.L13431
	movq	%r14, %rdi
	movl	-7292(%rbp), %esi
	call	*%rax
	testl	%eax, %eax
	je	.L26160
.L13431:
	leaq	(%rbx,%rbx,4), %rsi
	movq	%r14, %rdi
	xorl	%eax, %eax
	call	*insn_data+16(,%rsi,8)
.L24711:
	movq	%rax, %rdi
	call	emit_insn
.L13450:
	movl	64(%r12), %eax
	testl	%eax, %eax
	movl	%eax, %ecx
	jne	.L13451
	movq	-5992(%rbp), %r14
	addq	%r14, 56(%r12)
.L13451:
	movq	48(%r12), %rdi
	movq	-5992(%rbp), %rdx
	subq	-5992(%rbp), %rdi
	cmpq	%rdx, %rdi
	movq	%rdi, 48(%r12)
	jae	.L13452
.L13412:
	movzbl	mode_size(%r15), %r14d
	cmpl	$1, %r14d
	ja	.L13454
.L13403:
	cmpq	$0, -864(%rbp)
	je	.L13472
	jmp	.L25518
.L26160:
	movl	-7292(%rbp), %edi
	movq	%r14, %rsi
	call	force_reg
	movq	%rax, %r14
	jmp	.L13431
.L13430:
	movzbl	mode_size(%r15), %r11d
	cmpl	%edx, %r11d
	je	.L26161
	mov	%edx, %esi
	xorl	%edi, %edi
	negq	%rsi
	call	gen_rtx_CONST_INT
	movq	global_rtl+16(%rip), %rdx
	movl	$75, %edi
	testb	$2, target_flags+3(%rip)
	movq	%rax, %rcx
	setne	%r8b
	movzbl	%r8b, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_ee
	movq	global_rtl+16(%rip), %rdx
	movl	$100, %edi
	testb	$2, target_flags+3(%rip)
	movq	%rax, %rcx
	setne	%bl
	movzbl	%bl, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_ee
.L13438:
	movl	-7292(%rbp), %edi
	movq	%rax, %rsi
	call	gen_rtx_MEM
	xorl	%r9d, %r9d
	testq	%r9, %r9
	movq	%rax, %rbx
	je	.L13447
	movq	%rax, %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	call	set_mem_attributes
	movl	flag_optimize_sibling_calls(%rip), %eax
	testl	%eax, %eax
	jne	.L26162
.L13447:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	call	emit_move_insn
	jmp	.L13450
.L26162:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	call	set_mem_alias_set
	jmp	.L13447
.L26161:
	testb	$2, target_flags+3(%rip)
	movq	global_rtl+16(%rip), %rdx
	movl	$96, %edi
	setne	%al
	movzbl	%al, %esi
	addl	$4, %esi
	call	gen_rtx_fmt_e
	jmp	.L13438
.L13428:
	movzbl	mode_size(%r15), %eax
	incl	%eax
	andl	$-2, %eax
	jmp	.L24710
.L13426:
	movzbl	mode_size(%r15), %ebx
	leal	1(%rbx), %edx
	andl	$-2, %edx
	jmp	.L13427
.L26159:
	movq	%rax, %rsi
	movq	-7304(%rbp), %rdi
	xorl	%eax, %eax
	call	*-3624(%rbp)
	jmp	.L24711
.L13420:
	movq	24(%r12), %rdi
	movl	-7292(%rbp), %esi
	movl	$1, %ecx
	movq	56(%r12), %rdx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L24709
.L13418:
	movl	-7292(%rbp), %esi
	movq	56(%r12), %rdx
	movl	$1, %ecx
	movl	$1, %r8d
	call	adjust_address_1
	jmp	.L24708
.L13400:
	movq	-7288(%rbp), %rdi
	call	copy_addr_to_reg
	movq	%rax, -904(%rbp)
	jmp	.L13370
.L13396:
	movq	%r8, %rdi
	call	copy_addr_to_reg
	movq	%rax, -880(%rbp)
	jmp	.L13398
.L13368:
	movl	$1, %ecx
	jmp	.L13367
.L13365:
	movl	$1, %edx
	jmp	.L13364
.L13363:
	movl	$1, %ecx
	jmp	.L13362
.L13357:
	cmpq	$2, %r14
	ja	.L13341
	jmp	.L13358
.L13333:
	movq	-7256(%rbp), %rbx
	xorl	%esi, %esi
	movq	8(%rbx), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	-7256(%rbp), %rcx
	movq	%rax, %r12
	movq	16(%rcx), %rdi
	call	protect_from_queue
	movq	-7256(%rbp), %rcx
	movq	%rax, %rbx
	cmpq	8(%rcx), %r12
	je	.L26163
.L13335:
	movq	-7256(%rbp), %rdi
	call	copy_rtx
	movq	%rax, -7280(%rbp)
	movq	%r12, 8(%rax)
	movq	-7280(%rbp), %r14
	movq	%rbx, 16(%r14)
	jmp	.L13328
.L26163:
	cmpq	16(%rcx), %rax
	jne	.L13335
	jmp	.L13328
.L26137:
	cmpb	$51, 2(%rdx)
	je	.L13326
	movq	8(%rdx), %r12
	cmpw	$71, (%r12)
	je	.L26164
.L13326:
	cmpl	$66, %eax
	jne	.L13329
	movq	-7256(%rbp), %rax
	xorl	%esi, %esi
	movq	8(%rax), %rdi
	call	protect_from_queue
	movq	-7256(%rbp), %rsi
	movq	%rax, %rbx
	cmpq	8(%rsi), %rax
	je	.L13328
	movq	%rsi, %rdi
	call	copy_rtx
	movq	%rax, -7280(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L13328
.L26164:
	movq	8(%r12), %rsi
	movq	%rdx, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%r12)
	movq	%rax, %rbx
	je	.L13327
	movq	-7256(%rbp), %r10
	movzbl	2(%r10), %edi
	call	gen_reg_rtx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, -7280(%rbp)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L13328
.L13327:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L24707:
	movq	%rax, -7280(%rbp)
	jmp	.L13328
.L13325:
	movq	-7256(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.L26165
	movq	-7256(%rbp), %rsi
	movq	24(%rsi), %rdi
	testq	%rdi, %rdi
	movq	%rdi, -7280(%rbp)
	jne	.L13328
	movq	-7256(%rbp), %r9
	movq	8(%r9), %r8
	movzbl	2(%r8), %edi
	call	gen_reg_rtx
	movq	-7256(%rbp), %r12
	movq	%rax, %rdi
	movq	8(%r12), %rsi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %r11
	movq	%r11, -7280(%rbp)
	jmp	.L13328
.L26165:
	movq	8(%rax), %rdi
	call	copy_to_reg
	jmp	.L24707
.L13320:
	movq	-7408(%rbp), %r14
	xorl	%esi, %esi
	movq	8(%r14), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	-7408(%rbp), %rbx
	movq	%rax, %r12
	movq	16(%rbx), %rdi
	call	protect_from_queue
	movq	-7408(%rbp), %rcx
	movq	%rax, %rbx
	cmpq	8(%rcx), %r12
	je	.L26166
.L13322:
	movq	-7408(%rbp), %rdi
	call	copy_rtx
	movq	%rax, -7272(%rbp)
	movq	%r12, 8(%rax)
	movq	-7272(%rbp), %rdi
	movq	%rbx, 16(%rdi)
	jmp	.L13315
.L26166:
	cmpq	16(%rcx), %rax
	jne	.L13322
	jmp	.L13315
.L26136:
	cmpb	$51, 2(%rdx)
	je	.L13313
	movq	8(%rdx), %r12
	cmpw	$71, (%r12)
	je	.L26167
.L13313:
	cmpl	$66, %eax
	jne	.L13316
	movq	-7408(%rbp), %rcx
	xorl	%esi, %esi
	movq	8(%rcx), %rdi
	call	protect_from_queue
	movq	-7408(%rbp), %rsi
	movq	%rax, %rbx
	cmpq	8(%rsi), %rax
	je	.L13315
	movq	%rsi, %rdi
	call	copy_rtx
	movq	%rax, -7272(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L13315
.L26167:
	movq	8(%r12), %rsi
	movq	%rdx, %rdi
	call	replace_equiv_address_nv
	cmpq	$0, 16(%r12)
	movq	%rax, %rbx
	je	.L13314
	movq	-7408(%rbp), %rax
	movzbl	2(%rax), %edi
	call	gen_reg_rtx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, -7272(%rbp)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	jmp	.L13315
.L13314:
	movq	8(%rax), %rdi
	call	copy_to_reg
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	replace_equiv_address
.L24706:
	movq	%rax, -7272(%rbp)
	jmp	.L13315
.L13312:
	movq	-7408(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.L26168
	movq	-7408(%rbp), %r11
	movq	24(%r11), %rsi
	testq	%rsi, %rsi
	movq	%rsi, -7272(%rbp)
	jne	.L13315
	movq	-7408(%rbp), %rdx
	movq	8(%rdx), %r9
	movzbl	2(%r9), %edi
	call	gen_reg_rtx
	movq	-7408(%rbp), %r12
	movq	%rax, %rdi
	movq	8(%r12), %rsi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %r8
	movq	%r8, -7272(%rbp)
	jmp	.L13315
.L26168:
	movq	8(%rax), %rdi
	call	copy_to_reg
	jmp	.L24706
.L13307:
	movq	-7416(%rbp), %r14
	xorl	%esi, %esi
	movq	8(%r14), %rdi
	call	protect_from_queue
	xorl	%esi, %esi
	movq	16(%r14), %rdi
	movq	%rax, %r12
	call	protect_from_queue
	movq	-7416(%rbp), %rsi
	movq	%rax, %rbx
	cmpq	8(%rsi), %r12
	je	.L26169
.L13309:
	movq	-7416(%rbp), %rdi
	call	copy_rtx
	movq	%rax, -7264(%rbp)
	movq	%r12, 8(%rax)
	movq	-7264(%rbp), %rsi
	movq	%rbx, 16(%rsi)
	jmp	.L13302
.L26169:
	cmpq	16(%rsi), %rax
	jne	.L13309
	jmp	.L13302
.L26135:
	jne	.L13303
	movq	8(%rdx), %rdi
	xorl	%esi, %esi
	call	protect_from_queue
	movq	-7416(%rbp), %rcx
	movq	%rax, %rbx
	cmpq	8(%rcx), %rax
	je	.L13302
	movq	%rcx, %rdi
	call	copy_rtx
	movq	%rax, -7264(%rbp)
	movq	%rbx, 8(%rax)
	jmp	.L13302
.L13299:
	testq	%rsi, %rsi
	je	.L26170
	movq	-7416(%rbp), %r9
	movq	24(%r9), %r8
	testq	%r8, %r8
	movq	%r8, -7264(%rbp)
	jne	.L13302
	movq	-7416(%rbp), %r12
	movq	8(%r12), %r10
	movzbl	2(%r10), %edi
	call	gen_reg_rtx
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%r12)
	call	gen_move_insn
	movq	16(%r12), %rsi
	movq	%rax, %rdi
	call	emit_insn_before
	movq	24(%r12), %rdx
	movq	%rdx, -7264(%rbp)
	jmp	.L13302
.L26170:
	movq	-7416(%rbp), %r11
	movq	8(%r11), %rdi
	call	copy_to_reg
	movq	%rax, -7264(%rbp)
	jmp	.L13302
.L13292:
	testq	%rsi, %rsi
	movl	$8, %r15d
	je	.L13288
	movl	32(%rsi), %r15d
	jmp	.L13288
.L13291:
	cmpl	$7, %edx
	ja	.L13287
	jmp	.L13292
.L26134:
	movq	-7224(%rbp), %rax
	movslq	32(%r14),%rbx
	cmpq	%rbx, 8(%rax)
	jge	.L13087
	movq	-7416(%rbp), %r9
	movq	-7408(%rbp), %rdx
	movq	%r9, -7208(%rbp)
	movq	%rdx, -7216(%rbp)
	movl	$8, %edx
	movq	16(%r9), %rax
	testq	%rax, %rax
	movq	%rax, %rsi
	je	.L13091
	movl	32(%rax), %edx
.L13091:
	movq	-7408(%rbp), %r10
	movq	16(%r10), %rax
	testq	%rax, %rax
	movq	%rax, %rcx
	je	.L13092
	cmpl	32(%rax), %edx
	jb	.L13093
.L13088:
	testq	%rcx, %rcx
	movl	$8, %r15d
	je	.L13089
	movl	32(%rcx), %r15d
.L13089:
	movq	-7416(%rbp), %r12
	cmpb	$51, 2(%r12)
	jne	.L25547
	movq	-7408(%rbp), %rdi
	cmpb	$51, 2(%rdi)
	jne	.L25546
	movq	-7416(%rbp), %rdx
	movzwl	(%rdx), %eax
	cmpl	$71, %eax
	je	.L13100
	cmpl	$66, %eax
	je	.L26171
.L13104:
	cmpl	$75, %eax
	je	.L13108
	cmpl	$78, %eax
	je	.L13108
.L13103:
	movq	-7408(%rbp), %rdx
	movzwl	(%rdx), %eax
	cmpl	$71, %eax
	je	.L13113
	cmpl	$66, %eax
	je	.L26172
.L13117:
	cmpl	$75, %eax
	je	.L13121
	cmpl	$78, %eax
	je	.L13121
.L13116:
	movq	-7224(%rbp), %rdx
	movzwl	(%rdx), %eax
	cmpl	$71, %eax
	je	.L13126
	cmpl	$66, %eax
	je	.L26173
.L13130:
	cmpl	$75, %eax
	je	.L13134
	cmpl	$78, %eax
	je	.L13134
.L13129:
	movq	-7208(%rbp), %r8
	cmpw	$66, (%r8)
	jne	.L25545
	movq	-7216(%rbp), %rax
	cmpw	$66, (%rax)
	jne	.L25544
	cmpq	$0, -7224(%rbp)
	je	.L25543
	movq	-7224(%rbp), %rcx
	cmpw	$54, (%rcx)
	je	.L26174
.L13142:
	shrl	$3, %r15d
	xorl	%edi, %edi
	mov	%r15d, %esi
	call	gen_rtx_CONST_INT
	movl	class_narrowest_mode+4(%rip), %r12d
	movl	$1, volatile_ok(%rip)
	movq	%rax, -3592(%rbp)
	testl	%r12d, %r12d
	je	.L23519
.L13275:
	movslq	%r12d,%r15
	movl	movstr_optab(,%r15,4), %edx
	cmpl	$1317, %edx
	je	.L13261
	movq	-7224(%rbp), %rsi
	cmpw	$54, (%rsi)
	je	.L26175
.L13265:
	testb	$2, target_flags+3(%rip)
	je	.L13266
	cmpw	$63, mode_bitsize(%r15,%r15)
.L24705:
	jbe	.L13261
.L13264:
	movslq	%edx,%r9
	leaq	(%r9,%r9,4), %r8
	movq	%r9, -3600(%rbp)
	movq	insn_data+24(,%r8,8), %r14
	movq	(%r14), %rax
	testq	%rax, %rax
	je	.L13268
	movq	-7208(%rbp), %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L13261
.L13268:
	movq	24(%r14), %rax
	testq	%rax, %rax
	jne	.L26176
.L13269:
	movq	72(%r14), %rax
	testq	%rax, %rax
	je	.L13270
	xorl	%esi, %esi
	movq	-3592(%rbp), %rdi
	call	*%rax
	testl	%eax, %eax
	je	.L13261
.L13270:
	call	get_last_insn
	movl	$1, %edx
	movq	-7224(%rbp), %rsi
	movl	%r12d, %edi
	movq	%rax, -3608(%rbp)
	call	convert_to_mode
	movq	%rax, %rbx
	movq	48(%r14), %rax
	testq	%rax, %rax
	jne	.L26177
.L13271:
	movq	-3600(%rbp), %rdx
	movq	-7208(%rbp), %rdi
	xorl	%eax, %eax
	movq	-7216(%rbp), %rsi
	movq	-3592(%rbp), %rcx
	leaq	(%rdx,%rdx,4), %r12
	movq	%rbx, %rdx
	call	*insn_data+16(,%r12,8)
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L24492
	movq	-3608(%rbp), %rdi
	call	delete_insns_since
.L13261:
	movzbl	mode_wider_mode(%r15), %r12d
	testl	%r12d, %r12d
	jne	.L13275
.L23519:
	testb	$2, target_flags+3(%rip)
	movq	-7208(%rbp), %rcx
	movl	$0, volatile_ok(%rip)
	setne	%r14b
	movq	8(%rcx), %rsi
	movzbl	%r14b, %edi
	addl	$4, %edi
	call	copy_to_mode_reg
	testb	$2, target_flags+3(%rip)
	setne	%bl
	movq	%rax, %r14
	movq	-7216(%rbp), %rax
	movq	8(%rax), %rsi
	movzbl	%bl, %edi
	addl	$4, %edi
	call	copy_to_mode_reg
	movq	-7224(%rbp), %rsi
	movq	sizetype_tab(%rip), %r10
	movq	%rax, %rbx
	movzbl	61(%r10), %r15d
	shrb	$1, %r15b
	movzbl	%r15b, %edi
	call	copy_to_mode_reg
	cmpq	$0, fn.1(%rip)
	movq	%rax, %r15
	je	.L26178
.L13284:
	movq	global_trees+216(%rip), %rdi
	call	build_pointer_type
	movq	%r14, %rsi
	movq	%rax, %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	global_trees+216(%rip), %rdi
	movq	%rax, %r12
	call	build_pointer_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	%r15, %rsi
	movq	%rax, (%r12)
	movq	%rax, %rbx
	movq	sizetype_tab(%rip), %rdi
	call	make_tree
	xorl	%edi, %edi
	movq	%rax, %rsi
	call	build_tree_list
	movq	fn.1(%rip), %rdx
	movq	%rax, (%rbx)
	movq	(%r12), %rbx
	movq	8(%rdx), %rdi
	movq	(%rbx), %r10
	movq	$0, (%r10)
	call	build_pointer_type
	movq	fn.1(%rip), %rdx
	movl	$121, %edi
	movq	%rax, %rsi
	call	build1
	xorl	%r8d, %r8d
	movq	%r12, %rcx
	movq	fn.1(%rip), %r15
	movq	%rax, %rdx
	movl	$53, %edi
	xorl	%eax, %eax
	movq	8(%r15), %r9
	movq	8(%r9), %rsi
	call	build
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	orb	$1, 17(%rax)
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	expand_expr
	testb	$4, 3(%r14)
	je	.L13062
	movl	$49, %edi
	xorl	%esi, %esi
	movq	%r14, %rdx
	jmp	.L24728
.L26178:
	movl	$.LC11, %edi
	call	get_identifier
	movq	global_trees+216(%rip), %rdi
	movq	%rax, fn.1(%rip)
	call	build_pointer_type
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	build_function_type
	movq	fn.1(%rip), %rsi
	movl	$30, %edi
	movq	%rax, %rdx
	call	build_decl
	movl	$1, %esi
	movl	$fn.1, %edi
	movq	%rax, fn.1(%rip)
	call	ggc_add_tree_root
	movq	fn.1(%rip), %r8
	orb	$1, 49(%r8)
	movq	fn.1(%rip), %r11
	orb	$8, 18(%r11)
	movq	fn.1(%rip), %rsi
	orb	$64, 50(%rsi)
	xorl	%esi, %esi
	movq	fn.1(%rip), %rdi
	orb	$2, 18(%rdi)
	movq	fn.1(%rip), %rdi
	call	make_decl_rtl
	movq	fn.1(%rip), %rdi
	call	assemble_external
	jmp	.L13284
.L26177:
	movq	%rbx, %rdi
	movl	%r12d, %esi
	call	*%rax
	testl	%eax, %eax
	jne	.L13271
	movq	%rbx, %rsi
	movl	%r12d, %edi
	call	copy_to_mode_reg
	movq	%rax, %rbx
	jmp	.L13271
.L26176:
	movq	-7216(%rbp), %rdi
	movl	$51, %esi
	call	*%rax
	testl	%eax, %eax
	je	.L13261
	jmp	.L13269
.L13266:
	cmpw	$31, mode_bitsize(%r15,%r15)
	jmp	.L24705
.L26175:
	movq	mode_mask_array(,%r15,8), %r11
	shrq	$1, %r11
	cmpq	%r11, 8(%rsi)
	jbe	.L13264
	jmp	.L13265
.L26174:
	movq	8(%rcx), %r12
	xorl	%r14d, %r14d
	movl	$17, %esi
.L13155:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L23508
.L13152:
	movslq	%ecx,%r9
	movzbq	mode_size(%r9), %rdx
	cmpq	%rsi, %rdx
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r9), %ecx
	testl	%ecx, %ecx
	jne	.L13152
.L23508:
	testl	%edi, %edi
	je	.L13145
	movslq	%edi,%rbx
	movq	%rbx, %r10
	salq	$4, %r10
	addq	optab_table+240(%rip), %r10
	cmpl	$1317, 8(%r10)
	je	.L13154
	call	get_mode_alignment
	movl	$128, %edi
	cmpl	%eax, %edi
	jb	.L13154
	movzbq	mode_size(%rbx), %rsi
	movq	%r12, %rax
	xorl	%edx, %edx
	divq	%rsi
	addq	%rax, %r14
	movq	%rdx, %r12
.L13154:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L13155
.L13145:
	testq	%r12, %r12
	jne	.L25529
	movl	optimize_size(%rip), %eax
	testl	%eax, %eax
	jne	.L13158
	movq	ix86_cost(%rip), %r11
	mov	40(%r11), %ebx
	cmpq	%rbx, %r14
	jae	.L13142
.L13159:
	movq	-7224(%rbp), %r8
	movq	-7216(%rbp), %rcx
	movq	-7208(%rbp), %r10
	movq	-7208(%rbp), %r9
	testb	$2, target_flags+3(%rip)
	movq	8(%r8), %r12
	setne	%r14b
	movq	8(%rcx), %r8
	xorl	%ecx, %ecx
	movq	$0, -776(%rbp)
	movl	$0, -7236(%rbp)
	movq	%r8, -800(%rbp)
	movzbl	%r14b, %edi
	movq	8(%r10), %rdx
	movq	%r9, -832(%rbp)
	leal	5(,%rdi,4), %r14d
	movq	%rdx, -7232(%rbp)
	movq	-7232(%rbp), %rax
	movzwl	(%rax), %edx
	leal	-96(%rdx), %r15d
	cmpw	$1, %r15w
	jbe	.L13164
	cmpw	$99, %dx
	je	.L13164
	cmpw	$98, %dx
	je	.L13164
.L13163:
	movq	-7232(%rbp), %rsi
	movl	%ecx, -816(%rbp)
	xorl	%edx, %edx
	movzwl	(%rsi), %eax
	cmpw	$96, %ax
	je	.L13166
	cmpw	$98, %ax
	je	.L13166
.L13165:
	movq	-7232(%rbp), %r15
	movq	-7216(%rbp), %r11
	movl	%edx, -768(%rbp)
	xorl	%ecx, %ecx
	movq	%r15, -824(%rbp)
	movq	%r11, -808(%rbp)
	movzwl	(%r8), %edx
	leal	-96(%rdx), %ebx
	cmpw	$1, %bx
	jbe	.L13169
	cmpw	$99, %dx
	je	.L13169
	cmpw	$98, %dx
	je	.L13169
.L13168:
	movl	-768(%rbp), %eax
	movl	%ecx, -792(%rbp)
	movl	$0, -788(%rbp)
	movl	$0, -812(%rbp)
	testl	%eax, %eax
	je	.L13170
	movq	%r12, -776(%rbp)
.L13170:
	movl	-792(%rbp), %eax
	movq	%r12, -784(%rbp)
	testl	%eax, %eax
	je	.L13172
	movl	-816(%rbp), %eax
	testl	%eax, %eax
	jne	.L13171
.L13172:
	xorl	%r15d, %r15d
	movl	$17, %esi
.L13185:
	movl	class_narrowest_mode+4(%rip), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	.L23511
.L13182:
	movslq	%ecx,%r9
	movzbq	mode_size(%r9), %rdx
	cmpq	%rsi, %rdx
	cmovb	%ecx, %edi
	movzbl	mode_wider_mode(%r9), %ecx
	testl	%ecx, %ecx
	jne	.L13182
.L23511:
	testl	%edi, %edi
	je	.L13175
	movslq	%edi,%rbx
	movq	%rbx, %r10
	salq	$4, %r10
	addq	optab_table+240(%rip), %r10
	cmpl	$1317, 8(%r10)
	je	.L13184
	movq	%r8, -9592(%rbp)
	call	get_mode_alignment
	movq	-9592(%rbp), %r8
	movl	$128, %edi
	cmpl	%eax, %edi
	jb	.L13184
	movzbq	mode_size(%rbx), %rsi
	movq	%r12, %rax
	xorl	%edx, %edx
	divq	%rsi
	addq	%rax, %r15
	movq	%rdx, %r12
.L13184:
	movzbq	mode_size(%rbx), %rsi
	cmpq	$1, %rsi
	ja	.L13185
.L13175:
	testq	%r12, %r12
	jne	.L25529
	cmpq	$2, %r15
	jbe	.L13171
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L23513
.L13193:
	movslq	%ecx,%rbx
	movzbl	mode_size(%rbx), %r11d
	cmpl	%r14d, %r11d
	cmovae	-7236(%rbp), %ecx
	movl	%ecx, -7236(%rbp)
	movzbl	mode_wider_mode(%rbx), %ecx
	testl	%ecx, %ecx
	jne	.L13193
.L23513:
	movl	-792(%rbp), %eax
	testl	%eax, %eax
	jne	.L13199
	movzwl	(%r8), %edx
	leal	-67(%rdx), %r15d
	cmpw	$1, %r15w
	jbe	.L13197
	cmpw	$54, %dx
	je	.L13197
	cmpw	$55, %dx
	je	.L13197
	cmpw	$58, %dx
	je	.L13197
	cmpw	$134, %dx
	je	.L13197
	cmpw	$56, %dx
	je	.L13197
	cmpw	$140, %dx
	je	.L13197
.L13199:
	movl	-816(%rbp), %r8d
	testl	%r8d, %r8d
	jne	.L13171
	movq	-7232(%rbp), %r10
	movzwl	(%r10), %edx
	leal	-67(%rdx), %r9d
	cmpw	$1, %r9w
	jbe	.L13201
	cmpw	$54, %dx
	je	.L13201
	cmpw	$55, %dx
	je	.L13201
	cmpw	$58, %dx
	je	.L13201
	cmpw	$134, %dx
	je	.L13201
	cmpw	$56, %dx
	je	.L13201
	cmpw	$140, %dx
	je	.L13201
.L13171:
	cmpl	$1, %r14d
	jbe	.L13204
.L13255:
	movl	class_narrowest_mode+4(%rip), %ecx
	testl	%ecx, %ecx
	je	.L23516
.L13211:
	movslq	%ecx,%rdi
	movzbl	mode_size(%rdi), %edx
	cmpl	%r14d, %edx
	cmovae	-7236(%rbp), %ecx
	movl	%ecx, -7236(%rbp)
	movzbl	mode_wider_mode(%rdi), %ecx
	testl	%ecx, %ecx
	jne	.L13211
.L23516:
	movl	-7236(%rbp), %r14d
	testl	%r14d, %r14d
	je	.L13204
	movslq	-7236(%rbp),%r15
	movq	%r15, %r12
	salq	$4, %r12
	addq	optab_table+240(%rip), %r12
	movl	8(%r12), %ebx
	cmpl	$1317, %ebx
	je	.L13213
	movl	-7236(%rbp), %edi
	call	get_mode_alignment
	movl	$128, %ecx
	cmpl	%eax, %ecx
	jb	.L13213
	movzbq	mode_size(%r15), %rdx
	movslq	%ebx,%r11
	leaq	-832(%rbp), %r12
	leaq	(%r11,%r11,4), %rbx
	cmpq	%rdx, -784(%rbp)
	movq	$0, -7248(%rbp)
	movq	insn_data+16(,%rbx,8), %rsi
	movq	%rdx, -5984(%rbp)
	movq	%rsi, -3584(%rbp)
	jb	.L13213
	movl	-768(%rbp), %ecx
.L13253:
	testl	%ecx, %ecx
	je	.L13217
	subq	%rdx, 56(%r12)
.L13217:
	movq	(%r12), %rdi
	testq	%rdi, %rdi
	je	.L13218
	movl	16(%r12), %eax
	testl	%eax, %eax
	je	.L13219
	movl	-7236(%rbp), %esi
	movq	8(%r12), %rdx
	movl	$1, %r8d
	movq	56(%r12), %rcx
	call	adjust_automodify_address_1
.L24701:
	movq	%rax, -7248(%rbp)
.L13218:
	movl	40(%r12), %r8d
	testl	%r8d, %r8d
	je	.L13221
	movq	24(%r12), %rdi
	movl	-7236(%rbp), %esi
	movl	$1, %r8d
	movq	32(%r12), %rdx
	movq	56(%r12), %rcx
	call	adjust_automodify_address_1
.L24702:
	cmpq	$0, (%r12)
	movq	%rax, %r14
	jne	.L26179
	movl	target_flags(%rip), %eax
	testl	$33554432, %eax
	movl	%eax, %esi
	je	.L13227
	movzbl	mode_size(%r15), %r9d
	leal	7(%r9), %edx
	andl	$-8, %edx
.L13228:
	movq	cfun(%rip), %rdi
	andl	$33554432, %esi
	movq	16(%rdi), %rbx
	leaq	8(%rbx), %rdi
	movl	8(%rbx), %ecx
	je	.L13229
	movzbl	mode_size(%r15), %eax
	addl	$7, %eax
	andl	$-8, %eax
.L24703:
	leal	(%rax,%rcx), %esi
	movq	%r15, %rcx
	salq	$4, %rcx
	movl	%esi, (%rdi)
	addq	optab_table+384(%rip), %rcx
	movl	8(%rcx), %eax
	cmpl	$1317, %eax
	je	.L13231
	movslq	%eax,%rbx
	leaq	(%rbx,%rbx,4), %r11
	movq	insn_data+24(,%r11,8), %rdx
	movq	(%rdx), %rax
	testq	%rax, %rax
	je	.L13232
	movq	%r14, %rdi
	movl	-7236(%rbp), %esi
	call	*%rax
	testl	%eax, %eax
	je	.L26180
.L13232:
	leaq	(%rbx,%rbx,4), %r8
	movq	%r14, %rdi
	xorl	%eax, %eax
	call	*insn_data+16(,%r8,8)
.L24704:
	movq	%rax, %rdi
	call	emit_insn
.L13251:
	movl	64(%r12), %eax
	testl	%eax, %eax
	movl	%eax, %ecx
	jne	.L13252
	movq	-5984(%rbp), %r14
	addq	%r14, 56(%r12)
.L13252:
	movq	48(%r12), %rsi
	movq	-5984(%rbp), %rdx
	subq	-5984(%rbp), %rsi
	cmpq	%rdx, %rsi
	movq	%rsi, 48(%r12)
	jae	.L13253
.L13213:
	movzbl	mode_size(%r15), %r14d
	cmpl	$1, %r14d
	ja	.L13255
.L13204:
	cmpq	$0, -784(%rbp)
	jmp	.L25556
.L26180:
	movl	-7236(%rbp), %edi
	movq	%r14, %rsi
	call	force_reg
	movq	%rax, %r14
	jmp	.L13232
.L13231:
	cmpl	%edx, %r9d
	cqto