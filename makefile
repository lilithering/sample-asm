entry = main
write:
	@nasm -f elf64 -o $@.o $@.asm
	@ld -e $(entry) -o $@ $@.o
	@./$@