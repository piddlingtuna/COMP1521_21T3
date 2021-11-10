/*
Write a C program, print_file_bits.c, which given as a command line arguments
the name of a file contain 32-bit hexadecimal numbers, one per line, prints the
low (least significant) bytes of each number as a signed decimal number
(-128..127).
*/

#include <stdio.h>
#include <stdint.h>

int main(int argc, char *argv[]) {
    if (argc != 2) {
        fprintf(stderr, "Usage: %s <file>\n", argv[0]);
        return 1;
    }


    FILE *stream = fopen(argv[1], "r");
    if (stream == NULL) {
        perror(argv[1]);
        return 1;
    }

    // TODO

    fclose(stream);

    return 0;
}
