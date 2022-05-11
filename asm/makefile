all: build run

build: 
	nasm -f elf hello_asm.asm
	gcc -o hello_asm hello_asm.o -m32
run: build
	./hello_asm