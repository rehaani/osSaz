; Enhanced Bootloader for OSSaz Operating System
section .text
    global _start

_start:
    ; Set up the stack
    xor ax, ax
    mov ds, ax
    mov es, ax
    mov ss, ax
    mov sp, 0x7c00

    ; Load the enhanced kernel from disk to memory
    mov si, kernel_load_address
    mov bx, 0x1000
    mov cx, 0x2000 ; Load 8KB of kernel
    call load_kernel

    ; Check for errors after loading the kernel
    cmp ax, 0
    je kernel_load_error

    ; Jump to the kernel
    jmp 0x1000

kernel_load_error:
    ; Handle kernel load error (e.g., print error message)
    mov si, error_message
    call print_string
    jmp $

load_kernel:
    ; Load kernel from disk to memory
    ; (Implementation of loading kernel goes here)
    ret

print_string:
    ; Print a string pointed to by SI
    mov ah, 0x0E
.next_char:
    lodsb
    cmp al, 0
    je .done
    int 0x10
    jmp .next_char
.done:
    ret

error_message db 'Kernel load error!', 0
kernel_load_address db 'kernel_enhanced.bin', 0
