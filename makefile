all: code.o
	gcc -m64 -no-pie code.o -o test
code.o: code.asm
	nasm -f elf64 -g -o code.o code.asm

