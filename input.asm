%include 'defines.inc'

section .data
global main
    MSG: db 'Selecione uma letra/número', 10
    LEN: equ $-MSG

section .bss
    %define BUFFER_INPUT 1
    input: resb BUFFER_INPUT

section .text
main:
    mov eax, SYS_WRITE
    mov ebx, STDOUT
    mov ecx, MSG
    mov edx, LEN
    int 0x80

    mov eax, SYS_READ
    mov ebx, STDIN
    mov ecx, input
    mov edx, BUFFER_INPUT
    int 0x80

    mov eax, SYS_EXIT
    mov ebx, EXIT_OK
    int 0x80