/**
 * This program uses a for loop to print each element in the array
 * Rewrite this program using a recursive function.
 */

#include <stdio.h>

int main(void) {
    int nums[] = {3, 1, 4, 1, 5, 9, 2, 6, 5, 3};
    
    // Question: what is a for loop?
    // P.S. Python's 'for' loops should be called 'for each' loops.
    for (int i = 0; i < 10; i++) {
        printf("%d\n", nums[i]);
    }

    return 0;
}
