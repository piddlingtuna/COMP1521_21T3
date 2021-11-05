/*
Write a C program, which is given one command-line argument, the name of a file,
and which reads a line from stdin, and writes it to the specified file; if the
file exists, it should be overwritten.
*/

#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]) {
    if (argc != 2) {
        fprintf(stderr,  "Usage: %s <filename>\n", argv[0]);
        return 1;
    }

    // fopen returns a file pointer used to access file
    FILE *stream = NULL; // TODO
    if (stream == NULL) {
        // couldn't open the file, print an error message
        // to standard error
        fprintf(stderr, "%s: ", argv[0]);
        perror(argv[1]);
        return 1;
    }


    // TODO

    // close the file, as the program is about to exit
    // this isn't necessary but is good practice
    fclose(stream);
    return 0;
}
