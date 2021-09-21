/**
 * This program uses a for loop to print each element in the array
 * Rewrite this program using a recursive function.
 */

#include <stdio.h>

void print_array(int nums[], int index) {
    if (index == 10) {
        return;
    }
    printf("%d\n", nums[index]);
    print_array(nums, index + 1);
}

int main(void) {
    int nums[] = {3, 1, 4, 1, 5, 9, 2, 6, 5, 3};
    
    print_array(nums, 0);

    return 0;
}