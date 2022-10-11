entry = main

build:
	@nasm -f elf64 -o write.o write.asm
	@nasm -f elf64 -o writeV2.o writeV2.asm
	@nasm -f elf64 -o input.o input.asm
	@ld -e $(entry) -o write write.o
	@ld -e $(entry) -o writeV2 writeV2.o
	@ld -e $(entry) -o input input.o