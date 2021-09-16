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
    
    if(argc < 5) {
        printf("%s needs 4 arguments to populate a pet.\n", argv[0]);
        return 1;
    } else {    
        struct pet my_pet;

        strcpy(my_pet.name, argv[1]);
        strcpy(my_pet.breed, argv[2]);
        my_pet.age = strtol(argv[3], NULL, 10);
        my_pet.weight = strtol(argv[4], NULL, 10);
    }
    return 0;
}