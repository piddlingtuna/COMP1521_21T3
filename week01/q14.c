/*
 * Write a main function that takes command line input that fills out the fields of the pet struct.
 * Remember that command line arguments are given to our main function as an array of strings,
 * which means we'll need something to convert strings to numbers.
 */

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#define MAX_NAME_LENGTH 256
#define MAX_BREED_LENGTH 64

struct pet {
    char name[MAX_NAME_LENGTH];
    char breed[MAX_BREED_LENGTH];
    int age;
    int weight;
};

int main(int argc, char *argv[]) {
    if (argc < 5) {
        // TODO
        
        return 1;
    } else {
        // TODO
    }

    return 0;
}
