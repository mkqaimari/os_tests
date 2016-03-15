ASM_DIR = src
C_DIR = src
HEADERS_DIR = include
BIN_DIR = bin

clean:
	rm -rf bin
	mkdir bin

compile:
	as $(ASM_DIR)/bootsector.s -o $(BIN_DIR)/a.out
	ld -static -T$(ASM_DIR)/bootsector.ld -nostdlib --nmagic -o $(BIN_DIR)/bootsector.elf $(BIN_DIR)/a.out

#objcopy -O binary bin/bootsector.elf bin/bootsector.bin
#dd if=/dev/zero of=bin/floppy.img bs=1024 count=1440
#dd if=bin/bootsector.bin of=bin/floppy.img bs=1 count=512 conv=notrunc


