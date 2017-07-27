section .text
  global main
  ; Defines an area in memory that stores the instructions
main:
  mov edx, len
  mov ecx, msg
  mov ebx, 1
  mov eax, 4
  int 0x80
  mov eax, 1
  int 0x80

  msg db 'Hello, world!', 0xa
  ; Program instructions

section .data
  len equ $ - msg
  ; Declare variables to be used right from the start of the program

section .bss
  ; Declare variables to be used later in the program
