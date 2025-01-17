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

srcs:
  - ft_atoi: Converts a string to an integer.
  - ft_bzero: Sets a block of memory to zero.
  - ft_calloc: Allocates memory for an array and initializes it to zero.
  - ft_isalnum: Checks if a character is alphanumeric.
  - ft_isalpha: Checks if a character is alphabetic.
  - ft_isascii: Checks if a character is an ASCII character.
  - ft_isdigit: Checks if a character is a digit.
  - ft_isprint: Checks if a character is printable.
  - ft_itoa: Converts an integer to a string.
  - ft_memchr: Locates a byte in a block of memory.
  - ft_memcmp: Compares two blocks of memory.
  - ft_memcpy: Copies memory from one area to another.
  - ft_memmove: Moves memory from one area to another, handling overlap.
  - ft_memset: Fills a block of memory with a specific value.
  - ft_putchar_fd: Outputs a character to a file descriptor.
  - ft_putendl_fd: Outputs a string to a file descriptor, followed by a newline.
  - ft_putnbr_fd: Outputs an integer to a file descriptor.
  - ft_putstr_fd: Outputs a string to a file descriptor.
  - ft_split: Splits a string into an array of substrings based on a delimiter.
  - ft_strchr: Locates the first occurrence of a character in a string.
  - ft_strdup: Duplicates a string by allocating new memory.
  - ft_strjoin: Concatenates two strings into a new string.
  - ft_strlcat: Concatenates strings with size limitation.
  - ft_strlcpy: Copies strings with size limitation.
  - ft_strlen: Calculates the length of a string.
  - ft_strmapi: Applies a function to each character of a string, creating a new string.
  - ft_strncmp: Compares a specified number of characters between two strings.
  - ft_strnstr: Locates a substring within a string, with a length limit.
  - ft_strrchr: Locates the last occurrence of a character in a string.
  - ft_strtrim: Trims leading and trailing characters from a string.
  - ft_substr: Extracts a substring from a string.
  - ft_tolower: Converts an uppercase character to lowercase.
  - ft_toupper: Converts a lowercase character to uppercase.
