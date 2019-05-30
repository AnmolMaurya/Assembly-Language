; This is simple hello world code
; Author: luftatako(Anmol Maurya)
global _start
section .text
_start:
xor ecx, ecx ; Clearing ECX
xor ebx, ebx ; Clearing EBX
mul ecx      ; Clearing EAX, EDX
; Write subroutine
mov eax, 0x4 ; Moving Write syscall number into EAX
mov ebx, 0x1 ; Moving file descriptor into EBX
mov ecx, $msg ; Moving actual buffer into ECX
mov edx, $len ; Moving the count into EDX
int 0x80 ; Interrupt 80
; Graceful Exit
mov eax, 0x1 ; Moving Exit sysscall number into EAX
mov ebx, 0x0 ; Moving status number = 0 in EBX
int 0x80 ; Interrupt 80
section .data
msg: db "Hello World!",0x0A
len: equ $-msg
