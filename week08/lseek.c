// what actually hapens if yoy do
// lseek(fd, -100, SEEK_SET);

#include <stdio.h>
#include <unistd.h>
#include <assert.h>
#include <fcntl.h>
#include <ctype.h>

// If a file xyz contains 2500 bytes, and it is scanned using the following code:

// How many calls with be made to the read() function, and what is the value of nb after each call?

#define BUFFER_SIZE 1000

int main(void) {
    int fd;                 // open file descriptor
    char buf[BUFFER_SIZE] = {'\0'};  // input buffer
    
    fd = open ("asdf.txt", O_RDONLY); // 2500 bytes
    assert (fd >= 0);
    
    read (fd, buf, 3);
    printf("%s\n", buf);
    int return_value = lseek(fd, -100, SEEK_SET);
    read (fd, buf, 3);
    printf("%s\n", buf);
    printf("return value: %d\n", return_value);
    close (fd);
    // 1st call: returns: 1000, offset: 1000
    // 2nd call: returns: 1000, offset: 2000
    // 3rd call: returns: 500, offset: 2500
    // 4th call: returns: 0, offset: 2500
    
    
    return 0;
}

byte   12:  33 0x21 '!'
byte   13:  10 0x0a

while() {
    printf("byte   12:  33 0x21", ...)
    if (isprint(input)) {
        printf(" '%c'", input);
    }
    printf("\n");
}

isprint('!') == 1 / true
isprint('\n') == 0 / false