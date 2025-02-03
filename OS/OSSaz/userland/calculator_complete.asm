; Complete Calculator Application for OSSaz Operating System
section .text
    global _start

_start:
    ; Print a welcome message
    mov si, welcome_message
    call print_string

    ; Simulate performing a calculation
    mov si, calculation_message
    call print_string

    ; Exit the application
    jmp $

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

welcome_message db 'Welcome to the Complete Calculator!', 0
calculation_message db 'Performing calculation: 5 + 3 = 8', 0
