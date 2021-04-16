global _start

section .text:
; system call
; #define __NR_write 4
_start
    mov eax, 0x4 ; write sys call comes from the number above from unistd32.h
    mov ebx, 1 ; use stdout as the file descriptor
    mov ecx, message ; use the message as the buffer
    mov edx, message_length ; supply the message length
    int 0x80 ; int = interrupt, 0x80 = identifier for running a sys call
    ; now gracefully exit
    mov eax, 0x1
    mov ebx, 0
    int 0x80

section .data:
; db = define bytes
    message: db "Hello World!", 0xA ; 0xA = newline character
    message_length equ $-message ; length of message

; to execute
; nasm -f elf32 -o hello_world_intel
; ld -m elf_i386 -o hello_world_intel hello_world_intel.o
; ./hello_world_intel