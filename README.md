# libft
A library coded in C.

## PRESENTATION
The libft project is a foundational library developed in C, designed to replicate and extend standard C library functions. It serves as a base for various applications, providing essential utilities for string manipulation, memory management, and linked list operations.

## USAGE
To utilize the libft library in your project:

Clone the Repository:
```bash
git clone https://github.com/jasonmgl/libft.git
```
Navigate to the Directory:
```bash
cd libft
```
Compile the Library: Use the provided Makefile to compile the library:
```bash
make
```
This will generate the libft.a static library file.

Include in Your Project:
Link the compiled libft.a with your project files during compilation.
Include the necessary headers from the include directory in your source files.

## DEPENDENCIES
Compiler: Requires a C compiler like gcc.
Make: Utilizes make for building the library.
Standard Libraries: Relies on standard C libraries for certain functionalities.

## DESCRIPTIONS
The libft library encompasses several components:

ft_printf: A custom implementation of the standard printf function, enabling formatted output.

get_next_line: Facilitates reading lines from a file descriptor, useful for file processing tasks.

lst: Implements linked list functionalities, allowing for dynamic data structures.

srcs: Houses the source code for various utility functions included in the library.
