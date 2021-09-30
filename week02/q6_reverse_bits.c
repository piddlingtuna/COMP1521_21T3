#include <stdio.h>
#include <stdint.h>

typedef uint32_t Word; // 32 bits

Word reverse_bits(Word w);

int main(void) {

    Word example1 = 0x01234567;
    printf("Example 1\n");
    printf("w == 0x%x\n", example1);
    printf("reverse_bits(w) == 0x%x\n", reverse_bits(example1));

    Word example2 = 0xE6A2C480;
    printf("Example 2\n");
    printf("w == 0x%x\n", example2);
    printf("reverse_bits(w) == 0x%x\n", reverse_bits(example2));

    return 0;
}

/*
original = 0b 0000 0001 0010 0011 0100 0101 0110 0111
reverse  = 0b 1110 0110 1010 0010 1100 0100 1000 0000

checkmask = 0b 1000 0000 0000 0000 0000 0000 0000 0000
  setmask = 0b 0100 0000 0000 0000 0000 0000 0000 0001
  reverse = 0b 0000 0000 0000 0000 0000 0000 0000 0000
*/

#define BITS 32

Word reverse_bits(Word original) {
    Word reverse = 0;
    for (int i = 0; i < BITS; ++i) {
        Word checkmask = 1u << i;
        Word setmask = 1u << (BITS - 1 - i);
        if (original & checkmask) {
            // i += 5;
            // reverse = reverse | setmask;
            reverse |= setmask;
        }
    }
    return reverse;
}
