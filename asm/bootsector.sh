#!/bin/sh

rm -rf bin
mkdir bin

as bootsector.s -o bin/a.out
ld -static -Tbootsector.ld -nostdlib --nmagic -o bin/bootsector.elf bin/a.out
objcopy -O binary bin/bootsector.elf bin/bootsector.bin

dd if=/dev/zero of=bin/floppy.img bs=1024 count=1440
dd if=bin/bootsector.bin of=bin/floppy.img bs=1 count=512 conv=notrunc

