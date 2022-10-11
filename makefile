entry = main
write:
	@nasm -f elf64 -o $@.o $@
	@ld -e $(entry) -o $@ $@.o
	@./$@