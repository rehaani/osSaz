# OSSaz Operating System


OSSaz is a simple operating system project that demonstrates fundamental OS concepts, including bootloading, kernel functionality, and user applications. It features a file explorer, text editor, calculator, and settings application, along with basic drivers and multitasking support.


## Overview
OSSaz is a simple operating system project that demonstrates basic OS concepts such as bootloading, kernel functionality, and user applications.

## Features
- **File Explorer**: Navigate and manage files.
- **Text Editor**: Create and edit text files.
- **Calculator**: Perform arithmetic operations.
- **Settings Application**: Configure system preferences.
- **Drivers**: Basic drivers for hardware interaction.
- **Multitasking Support**: Run multiple applications simultaneously.
- **Basic GUI Elements**: Simple graphical user interface.

## Building and Running the OS
To build the OSSaz operating system, use the provided Makefile:
```
make
```
After building, run the OS using QEMU:
```
qemu-system-x86_64 -kernel projects/OS/OSSaz/kernel/kernel_enhanced.bin
```

## Future Enhancements
- Implement additional applications and features based on user feedback.
- Improve the graphical user interface for a better user experience.

## License
This project is licensed under the MIT License.
