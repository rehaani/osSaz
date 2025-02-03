; Basic GUI Elements for OSSaz Operating System
section .text
    global _start

_start:
    ; Initialize GUI
    call init_gui

    ; Simulate displaying a window
    mov si, window_message
    call print_string

    ; Exit the application
    jmp $

init_gui:
    ; Set up GUI structures
    ; (Implementation goes here)
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

window_message db 'Displaying a window...', 0
