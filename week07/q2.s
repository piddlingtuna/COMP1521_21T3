# Give MIPS directives to represent the following variables:

# Assume that we are placing the variables in memory, at an appropriately aligned address, and with a label which is the same as the C variable name.

.data

# char v3 = 'a';
v3:
    .ascii 'a'
    .byte 'a'

# double v4;
v4:
    .space 8

# int v5[20];
v5:

# int v6[10][5];
v6:
    .space 4 * 10 * 5 # sizeof(int) * size of array

# struct { int x; int y; } v7;
v7:
    .space 8

# struct { int x; int y; } v8[4];
v8:
    .space 8 * 4
    # sizeof(struct) * lenghth of array
# struct { int x; int y; } *v9[4];
# array of pointers to structs
v9:
    .space 4 * 4
    # sizeof (pointer) * length of array

# Assume pointers are 4 bytes.
# 32-bit computer (32 bits == 4 bytes) implies:
# - size of a register is 32 bits.
# - size of memory is 2^32 bytes ~ 4 gigabytes.
