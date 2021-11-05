# Tutorial 8

**Use the man pages.**

![using_the_terminal](using_the_terminal.png)


## What does an operating system do?

- Manages resources (CPU time, RAM, power).

- Provides useful services called system calls (files!).

- Bytes are stored in a SSD/USB/Hard drive... but every device is different.

- The OS abstracts all the physical devices used to store bytes into files.

- A lot easier...


## What is a file?

- program.c, work.docx, index.html

- Array of bytes.

- Stored on a hard drive.

You should know understand this meme.

![unix_files](unix_files.jpeg)


## What is a man page?

man lets you browse the Unix Programmer's Manual via the terminal.

write(2) means write is in the 2nd section of the manual.

fopen(3) means fopen is in the 3rd section of the manual.

printf(1) and printf(3) are both in the manual!

Use `man 1 printf` or `man 3 printf` to access the write man page.

If in doubt, use `man man`.

- 1 are General commands
- 2 are System calls
- 3 are C library functions
- 7 are Miscellanea
