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
} u1; //sizeof == max(4, 4) == 4

union {
    unsigned short a;
    char b;
} u2; // sizeof == max(2, 1) == 2

union {
    int a;
    char b[12];
} u3; // sizeof  == max(4, 12) == 12

union {
    double a;
    char b[14];
} u4; //sizeof == 16
/*
max(8, 14) == 16
Size must be divisible by size of every type due to padding.
So sizeof must be divisible by sizeof(double) == 8 and sizeof(char) == 1.
Therefore, sizeof == 16 (2 bytes of padding).
*/

union {
    unsigned int a;
    int b;
    struct { int x; int y; } c;
} u5; // sizeof  == max(4, 4, 8) == 8
