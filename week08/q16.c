#include <unistd.h>
#include <assert.h>
#include <fcntl.h>
#include <ctype.h>

// If a file xyz contains 2500 bytes, and it is scanned using the following code:

// How many calls with be made to the read() function, and what is the value of nb after each call?

#define BUFFER_SIZE 1000

int main(void) {
    int fd;                 // open file descriptor
    int nb;                 // # bytes read
    int ns = 0;             // # spaces
    char buf[BUFFER_SIZE];  // input buffer
    
    fd = open ("xyz", O_RDONLY); // 2500 bytes
    assert (fd >= 0);
    while ((nb = read (fd, buf, BUFFER_SIZE)) > 0) { // 1000 bytes
        for (int i = 0; i < nb; i++) {
            if (isspace (buf[i])) {
                ns++;
            }
        }
    }
    close (fd);
    // 1st call: returns: 1000, offset: 1000
    // 2nd call: returns: 1000, offset: 2000
    // 3rd call: returns: 500, offset: 2500
    // 4th call: returns: 0, offset: 2500
    
    
    return 0;
}
