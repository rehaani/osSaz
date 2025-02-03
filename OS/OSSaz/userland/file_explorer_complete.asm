; Complete File Explorer Application for OSSaz Operating System
section .text
    global _start

_start:
    ; Print a welcome message
    mov si, welcome_message
    call print_string

    ; Simulate file navigation
    mov si, navigation_message
    call print_string

    ; Simulate file management actions
    mov si, file_management_message
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

welcome_message db 'Welcome to the Complete File Explorer!', 0
navigation_message db 'Navigating through files...', 0
file_management_message db 'Creating, deleting, and renaming files...', 0
