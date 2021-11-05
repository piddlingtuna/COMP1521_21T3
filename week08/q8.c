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
