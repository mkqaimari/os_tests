.code16		#real model directive for gas (GNU assembler)

.global _entrypoint

.text

_entrypoint:

#setting the video mode

cli		

movw	%cs, %ax

movw	%ax, %ds
movw	%ax, %es
movw	%ax, %ss
movw	$0x7C00, %sp
movw	%sp, %ss

sti

ret	

movb	$0x02, %al	#setting the graphical mode to 80x25 (text)
movb	$0x00, %ah	#code of function changing graphical mode

int	$0x10		#calling the interrupt


