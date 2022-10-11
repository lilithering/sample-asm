section .data
global main
msg: db 'Sample String with new line ->', 10
len: equ $-msg

section .text
main:
    mov rax, SYS_WRITE
    mov rdi, STDOUT
    mov rsi, msg
    mov rdx, len
    int 0x80

    mov rax, SYS_EXIT
    mov rdi, EXIT_OK
    int 0x80