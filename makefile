entry = main

build:
	@nasm -f elf64 -o write.o write.asm
	@nasm -f elf64 -o input.o input.asm
	@ld -e $(entry) -o write write.o
	@ld -e $(entry) -o input input.o