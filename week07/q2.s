# Give MIPS directives to represent the following variables:

# Assume that we are placing the variables in memory, at an appropriately aligned address, and with a label which is the same as the C variable name.

.data

# char v3 = 'a';
v3:

# double v4;
v4:

# int v5[20];
v5:

# int v6[10][5];
v6:

# struct { int x; int y; } v7;
v7:

# struct { int x; int y; } v8[4];
v8:

# struct { int x; int y; } *v9[4];
v9:

# Assume pointers are 4 bytes.
# 32-bit computer (32 bits == 4 bytes) implies:
# - size of a register is 32 bits.
# - size of memory is 2^32 bytes ~ 4 gigabytes.
