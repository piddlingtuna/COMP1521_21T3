# Flags and Masks

We use masks to select bits.

can we go over why a & 1 is the same as a % 2 == 1

a = 0b1001 == 9

1 = 0b0001 == mask
a & 1

0b1001
0b0001 & == 0b0001 === 1 it's odd
9 % 2 == 1
b = 0b0100

A flag is a mask that lets us select a particular bit

![mask](mask.png)


## Exercise

Consider a scenario where we have the following flags controlling access to a device.

```c
#define READING   0x01 == 0b00000001
#define WRITING   0x02 == 0b00000010
#define AS_BYTES  0x04 == 0b00000100
#define AS_BLOCKS 0x08 == 0b00001000
#define LOCKED    0x10 == 0b00010000
```

The flags are contained in an 8-bit register, defined as:

```c
unsigned char device;
```

Write C expressions to implement each of the following:


#define READING   0x01 == 0b00000001
#define WRITING   0x02 == 0b00000010
#define AS_BYTES  0x04 == 0b00000100
#define AS_BLOCKS 0x08 == 0b00001000
#define LOCKED    0x10 == 0b00010000
a. mark the device as locked for reading bytes

```c
device = READING | AS_BYTES | LOCKED;
```

0b00000001
0b00000100 |
0b00010000 |
0b00010101

b. mark the device as locked for writing blocks

```c
device = WRITING | AS_BLOCKS | LOCKED;
```

c. set the device as locked, leaving other flags unchanged

```c
device = device | LOCKED;
device |= LOCKED;
```
0b0000 0111
0b0001 0000 |
0b0001 0111


d. remove the lock on a device, leaving other flags unchanged

```c
device = device & ~LOCKED
```

 0b0001 0111
~0b0001 0000 &
 0b0000 0111


e. switch a device from reading to writing, leaving other flags unchanged

```c
// TODO
```

f. swap a device between reading and writing, leaving other flags unchanged

```c
// TODO
```
