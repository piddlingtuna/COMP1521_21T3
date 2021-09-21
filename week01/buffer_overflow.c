/**
 * This program demonstrates a buffer overflow.
 * C does not check the bounds of buffers (i.e. arrays) so will continue to write memory passed the bounds.
 * This lets you overwrite the value of check.
 * Must use `gcc` and `-fno-stack-protector` option.
 */

#include <stdio.h>
#include <string.h>

int main(void) {
    char check = 'a';
    char buffer[5];

    printf("%p\n", buffer);
    printf("%p\n", &check);
    printf("Enter a string: \n");
    scanf("%s", buffer);

    if (check == 'b') {
        printf("Hacked!!!\n");
    }

    return 0;
}
