.code16		#real model directive for gas (GNU assembler)

.global _entrypoint

.text

_entrypoint:

cli		

movw	%cs, %ax

movw	%ax, %ds
movw	%ax, %es
movw	%ax, %ss
movw	$0x7C00, %sp
movw	%sp, %ss

sti

print_char:

movb $0x00, %bh   	# Page number
movb $0x07, %bl   	# Text attribute (white)
movb $0x23, %al      	# Print an 'A'
movb $0x0e, %ah     	# Print char function of 10h
int $0x10        	# Execute 10h

#jmp print_char

ret
