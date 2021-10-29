# Give MIPS directives to represent the following variables:

# Assume that we are placing the variables in memory, at an appropriately aligned address, and with a label which is the same as the C variable name.

        .data
#int v0;
v0:
       .space 4 
#int v1 = 42;
v1:
        .word 42
#char v2;
v2:

# char v3 = 'a';
v3:
        .byte 'a'
        .ascii "a" == 'a'

# double v4;
v4:
        .space 8

# int v5[20];
v5:
        .space 80               # sizeof(int) * len(array) == 4 * 20
# int v6[10][5];
v6:
        .space 200              # sizeof(int) * len(array) == 4 * 10 * 5

# struct { int x; int y; } v7;
v7:
        .space 8

# struct { int x; int y; } v8[4];
v8:
        .space 32

# struct { int x; int y; } *v9[4];
# array of struct pointers
v9:
        .space 4 * something

# Assume pointers are 4 bytes.
# 32-bit computer (32 bits == 4 bytes) implies:
# - size of a register is 32 bits.
# - size of memory is 2^32 bytes ~ 4 gigabytes.
