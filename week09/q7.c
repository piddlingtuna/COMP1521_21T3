/*
Write a C program, fgrep.c, which is given 1+ command-line arguments which is a
string to search for.
If there is only 1 command-line argument it should read lines from stdin and
print them to stdout iff they contain the string specified as the first command
line argument.

If there are 2 or more command line arguments, it should treat arguments after
the first as fiilenames and print any lines they contain which contain the
string specified as the first command line arguments.

When printing lines your program should prefix them with a line number.

It should print suitable error messages if given an incorrect number of
arguments or if there is an error opening a file.
*/

#include <stdio.h>
#include <string.h>

#define MAX_LINE 65536

void search_stream(FILE *stream, char stream_name[], char search_for[]);

int main(int argc, char *argv[]) {

    if (argc < 2) {
        fprintf(stderr, "Usage: %s <prefix> <files>\n", argv[0]);
        return 1;
    } if (argc == 2) {
        search_stream(stdin, "<stdin>", argv[1]);
    } else {

        for(int argument = 2; argument < argc; argument = argument + 1) {
            FILE *in = fopen(argv[argument], "r");
            if (in == NULL) {
                fprintf(stderr, "%s: ", argv[0]);
                perror(argv[argument]);
                return 1;
            }

            search_stream(in, argv[argument], argv[1]);
        }

    }

    return 0;
}

void search_stream(FILE *stream, char stream_name[], char search_for[]) {
    // TODO
}
