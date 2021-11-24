// Print $HOME/.diary to stdout

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char *argv[]) {

    char *home_pathname = getenv("HOME");
    if (home_pathname == NULL) {
        // TODO error checking
        exit(1);
    }
    
    // strcat(home_pathname, "/.diary");
    printf("%s\n", home_pathname);
    
    char *basename = "/.diary";
    int diary_pathname_length = strlen(home_pathname) + strlen(basename) + 1;
    char diary_pathname[diary_pathname_length];
    snprintf(diary_pathname, diary_pathname_length, "%s%s", home_pathname, basename);
    
    printf("%s\n", diary_pathname);
    
    // open $HOME/.diary
    FILE *stream = fopen(diary_pathname, "r");
    
    // read byte by byte
    int byte;
    while ((byte = fgetc(stream)) != EOF) {
        putchar(byte);
        // fputc(byte, stdout);
    }
    
    // close $HOME/.diary
    fclose(stream);

    return 0;
}
