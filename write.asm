section .data
global main
msg: db 'Sample String with new line ->', 10
len: equ $-msg

section .text
main:
    mov eax, 4 ; syscall: 4 - sys_write
    mov ebx, 1 ; a1: 1 - stdout
    mov ecx, msg ; a2: pointer
    mov edx, len ; a3: size
    int 0x80 ; syscall

    mov eax, 1 ; syscall: 1 - sys_exit
    mov ebx, 0 ; a1: 0 (exit code: ok)
    int 0x80 ; syscall