/*
Write a C program, which is given one command-line argument, the
name of a file, and which prints the first line of that file to stdout.
If given an incorrect number of arguments, or if there was an error opening the
file, it should print a suitable error message.
*/

#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]) {
    if (argc != 2) {
        fprintf(stderr,  "Usage: %s <filename>\n", argv[0]);
        return 1;
    }
    
    // stdin
    // stderr vs stdout
    
    FILE *stream = fopen(argv[1], "r");
    if (stream == NULL) {
        // couldn't open the file, print an error message
        // to standard error
        perror(argv[1]);
        return 1;
    }
    fprintf(stream, "Hello world\n");
    
    // putchar vs fputc
    // read characters until I reach '\n' or an EOF
    int input = fgetc(stream);
    while (input != '\n' && input != EOF) {
        // putchar(input);
        fputc(input, stdout); // fprintf(stream, "%c", input)
        input = fgetc(stream);
    }
    fputc('\n', stdout);
    
    fclose(stream);

    return 0;
}
