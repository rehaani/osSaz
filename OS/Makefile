# Makefile for OSSaz Operating System

# Define the assembler
AS = nasm

# Define the source files
BOOTLOADER = projects/OS/OSSaz/bootloader/boot.asm
KERNEL = projects/OS/OSSaz/kernel/kernel.asm
USER_APP = projects/OS/OSSaz/userland/user_app.asm

# Define the output files
BOOTLOADER_BIN = boot.bin
KERNEL_BIN = kernel.bin
USER_APP_BIN = user_app.bin

# Default target
all: $(BOOTLOADER_BIN) $(KERNEL_BIN) $(USER_APP_BIN)

# Compile the bootloader
$(BOOTLOADER_BIN): $(BOOTLOADER)
	$(AS) -f bin $(BOOTLOADER) -o $(BOOTLOADER_BIN)

# Compile the kernel
$(KERNEL_BIN): $(KERNEL)
	$(AS) -f bin $(KERNEL) -o $(KERNEL_BIN)

# Compile the user application
$(USER_APP_BIN): $(USER_APP)
	$(AS) -f bin $(USER_APP) -o $(USER_APP_BIN)

# Clean up generated files
clean:
	rm -f $(BOOTLOADER_BIN) $(KERNEL_BIN) $(USER_APP_BIN)
