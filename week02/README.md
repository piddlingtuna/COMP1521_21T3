# Tutorial 1

![whale_hello_there](whale_hello_there.gif)

## Everything is bits

**When we use bitwise operations, we treat everything as an array of bits.**

An int is an array of bits of length 32.

It looks like: 0b 0010 0001 0000 0001

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
