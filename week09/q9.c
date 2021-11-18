/*
Write a C program which is given 1+ command-line arguments which are the
pathname of single file C programs.
It should compile each program with dcc.

It also should print the compile command to stdout.

```
$ dcc compile.c -o compile
$ ./compile file_sizes.c file_modes.c
/usr/local/bin/dcc file_modes.c -o file_modes
/usr/local/bin/dcc file_sizes.c -o file_sizes
```

Make sure you handle errors, for example, you should stop if any compile fails.
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <spawn.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/wait.h>

#define C_COMPILER "/usr/local/bin/dcc"

void process_file(char *c_file);
void compile(char *c_file, char *binary);
char *get_binary_name(char *c_file);

int main(int argc, char *argv[]) {
    for (int arg = 1; arg < argc; arg++) {
        process_file(argv[arg]);
    }
    return 0;
}

// compile a C file
void process_file(char *c_file) {
    char *binary = get_binary_name(c_file);
    compile(c_file, binary);
    free(binary);
}

// compile a C file
void compile(char *c_file, char *binary) {
    pid_t pid;
    extern char **environ;
    char *argv[] = {C_COMPILER, c_file, "-o", binary, NULL};
    
    // print compile command
    for (char **p = argv; *p; p++) {
        printf("%s ", *p);
    }
    printf("\n");
    
    if (posix_spawn(&pid, C_COMPILER, NULL, NULL, argv, environ) == -1) {
        perror(c_file);
        exit(1);
    }
    
    int exit_status;
    if (waitpid(pid, &exit_status, 0) == -1) {
        perror(c_file);
        exit(1);
    }
    
    pid_t f = fork();
    if (f == 0) {
        // in the child
        execv(C_COMPILER, char *const *__argv);
    } else {
        // in the parent
    }
    // here
    
    if (exit_status != 0) {
        // something went wrong
        fprintf(stderr, "compile failed\n");
    }
    
    // error checking
}

// give a string ending in .c
// return malloc-ed copy of string without .c
char *get_binary_name(char *c_file) {
    char *binary = strdup(c_file);
    if (binary == NULL) {
        perror("");
        exit(1);
    }

    // remove .c suffix
    char *last_dot = strrchr(binary, '.');
    if (last_dot == NULL || last_dot[1] != 'c' || last_dot[2] != '\0') {
        fprintf(stderr, "'%s' does not end in  .c\n", c_file);
        exit(1);
    }
    *last_dot = '\0';
    return binary;
}
