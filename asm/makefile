all: build run

build: 
	nasm -f elf hello_asm.asm -gdwarf
	gcc -o hello_asm.out hello_asm.o -m32
run: build
	./hello_asm.out