# Tutorial 1

![whale_hello_there](whale_hello_there.gif)

I am not the vtutor.

![vtutor](vtutor.jpg)


## Everything is bits

**When we use bitwise operations, we treat everything as an array of bits.**

An int is an array of bits of length 32.

A short looks like: 0b 0010 0001 0000 0001

A double is an array of bits of length 64.


## How long should a string be?

In C, strings are null terminated.

They always end in '\0'.

If you want an 8 character long string, allocate 9 bytes.

Note that `strlen` returns the length excluding '\0'.

```c

char *string = malloc((8 + 1) * sizeof char);
...
string[8] = '\0';

```


## You should now understand this!

![null_terminator](null_terminator.jpg)


## What is a bcd?

A BCD is a hexadecimal digit except we never use 0xA, 0xB, 0xC, 0xD, 0xE or 0xF.

It ranges from 0x0 to 0x9.


### Unpacked BCD

8 bits per BCD (4 bits are wasted)

        0x0102 == 0b 0000 0001 0000 0010
                     |-------| |-------|
                         1         2

        0x0402 == 0b 0000 0100 0000 0010
                     |-------| |-------|
                         4         2

byte: 0 -> 255
BCD: 0 -> 9

bcd & 0xFF
bcd & 0b1111 1111

258  == 0x0102 == 0b 0000 0001 0000 0010 -> 12

1026 == 0x0402 == 0b 0000 0100 0000 0010 -> 42


### Packed BCD

4 bits per BCD (0 bits are wasted)

        0x12 == 0b 0001 0010
                   |--| |--|
                    1    2

        0x42 == 0b 0100 0010
                   |--| |--|
                    4    2

18 == 0x12 == 0b 0001 0010 -> 12

66 == 0x42 == 0b 0100 0010 -> 42
0010 -> 0 -> 15 (f)
just decide to go 0 -> 9
2 = 0x12 & 0xF
0b 0001 0010 &
0b 0000 1111 ==
int firstdigit = 0b 0000 0010
1 = 0x12 & 0xF0

0b 0001 0010 &
0b 1111 0000 ==