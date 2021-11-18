// Simple example of accessing an environment variable

#include <stdio.h>
#include <stdlib.h>

int main(void) {
    // Export STATUS="TODO"
    char *value = getenv("STATUS");
    // Print value of environment variable STATUS
    printf("Environment variable 'STATUS' has value '%s'\n", value);

    return 0;
}
