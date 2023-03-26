nasm -f elf -o print.S
gcc -I lib/kernel/ -c -o kernel/main.o kernel/main.c
ld -Ttext 0xc0001500 -e main -o kernel.bin kernel/main.o lib/kernel/print.o

dd if=kernel.bin of=/bochs/hd60M.img bs=512 count=200 seek=9 conv=notrunc