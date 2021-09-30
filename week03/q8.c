/*
How large (#bytes) is each of the following C unions? 

You may assume:
sizeof(char) == 1
sizeof(short) == 2
sizeof(int) == 4
*/

union {
    int a;
    int b;
} u1; //sizeof == 4

union {
    unsigned short a;
    char b;
} u2; // sizeof == 2

union {
    int a;
    char b[12];
} u3; // sizeof == 12

union {
    double a;
    char b[14];
} u4; //sizeof == 14 -> 16
// PADDING - size must be divisible by size of every type.

union {
    unsigned int a;
    int b;
    struct { int x; int y; } c;
} u5; // sizeof == 8
