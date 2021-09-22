# Bitwise Operations

This are MEGA fast 🏃🏃🏃!!!
- Individually manipulate bits
- Faster than +, -, *, /, %


## AND

& 1 0
1 1 0
0 0 0

if (both 1) {
    return 1;
} else {
    return 0;
}


## OR

This is different to OR in English...

| 1 0
1 1 1
0 1 0

if (both 0) {
    return 0;
} else {
    return 1;
}


## NOT

~ 1
1 0
0 1


## You should now understand this!

![logic_gates](logic_gates.png)


# XOR

Exclusive

^ 1 0
1 0 1
0 1 0

if (both the same) {
    return 0;
} else {
    return 1;
}

Fun fact: the inverse of XOR is... XOR!!!


# Left Shift

0b0001 << 1 == 0b0010

1 << 1 == 2

0b0011 << 2 == 0b1100

3 << 2 == 3 * 2 * 2 == 12
       == 3 * (2 ** 2)

Below has overflow errors

0b1011 << 2 == 0b1100

0b1011 << 4 == 0b0000

**Make sure you use unsigned types.**

What mathemtical operation is this equivalent to?


## You should now understand this!

![left_shift](left_shift.png)


# Exercise

```c
#include <stdint.h>

uint16_t a = 0x5;
uint16_t b = 0xA;
uint16_t c = 0x1;
```

Converting to binary:

0x5 == 0b0101
0xA == 0b1010
0x1 == 0b0001

What are the values of the following expressions:

0x5 | 0xA == 0xF

a. a | b (bitwise OR) == 0xF

0b0101
0b1010 |
0b1111

b. a & b (bitwise AND) == 0x0

0b0101
0b1010 &
0b0000

c. a ^ b (bitwise XOR) == 0xF

0b0101
0b1010 ^
0b1111

d. a & ~b (bitwise AND, bitwise NOT) == 0x5

0b0101
0b0101 &
0b0101

e. c << 6 (left shift)


f. a >> 4 (right shift)
0x55
0b0101 0101 >> 4 ==
0b0000 0101 == 0x05

g. a & (b << 1)
0b0101 &
0b1010
0b0000

i. b | c


h. a & ~c
