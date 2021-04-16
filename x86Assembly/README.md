# x86 Assembly
## Resources
- Hello World https://www.youtube.com/watch?v=HgEGAaYdABA
- Registers https://wiki.skullsecurity.org/Registers#eax
- How to compile and run assembly in ubuntu https://askubuntu.com/questions/1064619/how-can-i-compile-run-assembly-in-ubuntu-18-04
- an intro to x86 https://www.youtube.com/watch?v=wLXIWKUWpSs
## Installation
sudo apt install nasm  
## Run/Compile a file (I've used nasm)

`as31`: Intel 8031/8051 assembler
This is a fast, simple, easy to use Intel 8031/8051 assembler.

`nasm`: General-purpose x86 assembler
Netwide Assembler. NASM will currently output flat-form binary files, a.out, COFF and ELF Unix object files, and Microsoft 16-bit DOS and Win32 object files.

## elf 64
`nasm -f elf64 hello_world.asm` # assemble the program  
`ld -s -o hello_world hello_world.o` # link the object file nasm produced into an executable file  
`./hello_world` # hello is an executable file

## elf 32
nasm -f elf32 -o hello_world_intel
ld -m elf_i386 -o hello_world_intel hello_world_intel.o
./hello_world_intel


I don't think I understand the difference between elf32 and elf 64 but I assume that they are different ways of writing assembly language and require different compilers.

I think it's probably the 32 vs 64 bit versions of x86 assembly?

## How to write hello world
```
section     .text
global      _start 
_start: 
    mov     edx,len   
    mov     ecx,msg   
    mov     ebx,1   
    mov     eax,4   
    int     0x80   
    mov     eax,1  
    int     0x80   
section     .data
msg     db  'Hello world from x86',0xa  
len     equ $ - msg   
```

## see x82 executable 
sudo apt install mlocate
`locate unistd32.h`

## What is the basic syntax?
### A Register
A register is like a variable, except that there are a fixed number of registers. Each register is a special spot in the CPU where a single value is stored. 

General Purpose Registers

- eax
    - eax is a 32-bit general-purpose register with two common uses: to store the return value of a function and as a special register for certain calculations.
- ebx
    - ebx is a non-volatile general-purpose register. It has no specific uses, but is often set to a commonly used value (such as 0) throughout a function to speed up calculations
- ecx
    - ecx is a volatile general-purpose register that is occasionally used as a function parameter or as a loop counter. 
- edx
    - edx is a volatile general-purpose register that is occasionally used as a function parameter. Like ecx, edx is used for "__fastcall" functions. 
- esi
    - esi is a non-volatile general-purpose register that is often used as a pointer. Specifically, for "rep-" class instructions
- edi
    - edi is a non-volatile general-purpose register that is often used as a pointer. It is similar to esi, except that it is generally used as a destination for data
- ebp
    - ebp is a non-volatile general-purpose register that has two distinct uses depending on compile settings: it is either the frame pointer or a general purpose register. 
- esp
    - esp is a special register that stores a pointer to the top of the stack (the top is actually at a lower virtual address than the bottom as the stack grows downwards in memory towards the heap).

Special purpose Registers

- eip
    - eip, or the instruction pointer, is a special-purpose register which stores a pointer to the address of the instruction that is currently executing.
- flags
    - In the flags register, each bit has a specific meaning and they are used to store meta-information about the results of previous operations. For example, whether the last calculation overflowed the register or whether the operands were equal.

## Where did this originate?
## Why would I use this?
## Who are some key figures in the community