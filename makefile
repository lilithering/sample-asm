entry = main
build:
	@nasm -f elf64 -o write.o write.asm
	@ld -e $(entry) -o write write.o