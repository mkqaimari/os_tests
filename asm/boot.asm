;
; The boot sector
;

loop:

	jmp	loop

	times	510 - ($ - $$)	db	0
	
	dw	0xAA55	;The boot sector's magic number.

