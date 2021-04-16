section .text:
; system call
; #define __NR_write 4
    mov eax, 0x4 ; write sys call comes from the number above from unistd32.h
    mov ecx, 1 ; use stdout as the file descriptor
    mov ecx, message ; use the message as the buffer


section .data:
; db = define bytes
    message: db "Hello World!", 0xA ; 0xA = newline character
    message_length equ $-message ; length of message

