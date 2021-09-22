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
answer   = 0b 1100 0000 0000 0000 0000 0000 0000 0000
reverse  = 0b 1110 0110 1010 0010 1100 0100 1000 0000

mask2   = 0b 0000 0000 0000 0000 0000 0000 0000 0001 << 29

i = 0
mask = ... 0000 0001 << 0
mask2 = 1000 000 ...
mask2 = ... 0000 0001 << 31
i = 1 
... 0000 0001 << 1 == .... 0000 0010
mask2 = 0100 000 ...

i = 2
... 0000 0100
mask2 == 0010 000 ...
*/
// 1u == unsigned int usually u32int_t (but not always)
Word reverse_bits(Word w) {
    Word answer = 0;
    for (Word i = 0; i < 32; ++i) {
        Word mask = 1u << i;
        if (w & mask) {
            Word mask2 = 1u << (31 - i);
            answer = answer | mask2;
        }
    }
    return answer;
}
