#  Give MIPS directives to represent the following variables:

# .space n == allocate n bytes
# .byte 'A' == allocate 1 byte and store 'A'
# .word 1 == allocate 4 bytes and store 1

        .text

# a.    int u;
u:
        .space 4

# b.    int v = 42;
v:
        .word 42

# c.    char w;
c:
        .space 1

# d.    char x = 'a';
d:
        #.ascii 'a'
        .byte 'a'


# e.    double y;
e:
        .space 8

# f.    int z[20];
f:
        .space 80

g:
        .word 42, 32, 12, 2
