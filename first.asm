;initialized data here
section  .data

msg        db   "Hello World!",      0xa
msglen     equ    $-msg       ; string length in bytes
STDOUT     equ    1           ; standard output device
SYS_write  equ    1           ; write message
SYS_exit   equ    60          ; exit program
EXIT_OK    equ    0           ; return value


; code goes here

section .text


global _start


mov   rsi, msg
mov   rdx, msglen

mov   rdi, STDOUT
mov   rax, SYS_write
syscall

mov rax, SYS_exit
mov rax, EXIT_OK
syscall
