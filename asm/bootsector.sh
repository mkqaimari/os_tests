#!/bin/sh

as bootsector.s
ld -static -Tbootsector.ld -nostdlib --nmagic -o bootsector.elf a.out
objcopy -O binary bootsector.elf bootsector.bin
