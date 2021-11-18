# Assignment 2

https://cgi.cse.unsw.edu.au/~cs1521/21T3/assignments/ass2/index.html

## Initial code

## How is the assignment going?
0 123 456 789
- rw- rw- r--
- rwx rwx rwx

file type, owner, group, everyone else
- == regular file
d == directory

5
'h', 'e', 'l', 'l', 'o', '\0'

3000

fscanf(stream, "%d");

int first  = fgetc(stream); // 0b1010 0001
int second = fgetc(stream); // 0b1111 1000

second       0b0000 0000 1111 1000
first        0b0000 0000 1010 0001
second << 8  0b1111 1000 0000 0000
int length = 0b1111 1000 1010 0001

# content length

1st -> 6th
2nd -> 5th

uint64_t byte = fgetc(stream);
byte = byte << 40;

content_length = 13;

int fseek(stream, content_length + 1, SEEK_CUR);

FILE* file = fopen(pathname, "");

int byte = fgetc(file);

fclose(file);


## Format

https://cgi.cse.unsw.edu.au/~cs1521/21T3/assignments/ass2/index.html#egg-format

```
$ echo hello Andrew >hi.txt
$ echo Good bye Andrew >bye.txt
$ 1521 chicken -c a.egg hi.txt bye.txt
Adding: hi.txt
Adding: bye.txt
$ print_bytes a.egg
byte    0:  99 0x63 'c'
byte    1:  56 0x38 '8'
byte    2:  45 0x2d '-'
byte    3: 114 0x72 'r'
byte    4: 119 0x77 'w'
byte    5:  45 0x2d '-'
byte    6: 114 0x72 'r'
byte    7:  45 0x2d '-'
byte    8:  45 0x2d '-'
byte    9: 114 0x72 'r'
byte   10:  45 0x2d '-'
byte   11:  45 0x2d '-'
byte   12:   6 0x06
byte   13:   0 0x00
byte   14: 104 0x68 'h'
byte   15: 105 0x69 'i'
byte   16:  46 0x2e '.'
byte   17: 116 0x74 't'
byte   18: 120 0x78 'x'
byte   19: 116 0x74 't'
byte   20:  13 0x0d
byte   21:   0 0x00
byte   22:   0 0x00
byte   23:   0 0x00
byte   24:   0 0x00
byte   25:   0 0x00
byte   26: 104 0x68 'h'
byte   27: 101 0x65 'e'
byte   28: 108 0x6c 'l'
byte   29: 108 0x6c 'l'
byte   30: 111 0x6f 'o'
byte   31:  32 0x20 ' '
byte   32:  65 0x41 'A'
byte   33: 110 0x6e 'n'
byte   34: 100 0x64 'd'
byte   35: 114 0x72 'r'
byte   36: 101 0x65 'e'
byte   37: 119 0x77 'w'
byte   38:  10 0x0a
byte   39: 161 0xa1
byte   40:  99 0x63 'c'
byte   41:  56 0x38 '8'
byte   42:  45 0x2d '-'
byte   43: 114 0x72 'r'
byte   44: 119 0x77 'w'
byte   45:  45 0x2d '-'
byte   46: 114 0x72 'r'
byte   47:  45 0x2d '-'
byte   48:  45 0x2d '-'
byte   49: 114 0x72 'r'
byte   50:  45 0x2d '-'
byte   51:  45 0x2d '-'
byte   52:   7 0x07
byte   53:   0 0x00
byte   54:  98 0x62 'b'
byte   55: 121 0x79 'y'
byte   56: 101 0x65 'e'
byte   57:  46 0x2e '.'
byte   58: 116 0x74 't'
byte   59: 120 0x78 'x'
byte   60: 116 0x74 't'
byte   61:  16 0x10
byte   62:   0 0x00
byte   63:   0 0x00
byte   64:   0 0x00
byte   65:   0 0x00
byte   66:   0 0x00
byte   67:  71 0x47 'G'
byte   68: 111 0x6f 'o'
byte   69: 111 0x6f 'o'
byte   70: 100 0x64 'd'
byte   71:  32 0x20 ' '
byte   72:  98 0x62 'b'
byte   73: 121 0x79 'y'
byte   74: 101 0x65 'e'
byte   75:  32 0x20 ' '
byte   76:  65 0x41 'A'
byte   77: 110 0x6e 'n'
byte   78: 100 0x64 'd'
byte   79: 114 0x72 'r'
byte   80: 101 0x65 'e'
byte   81: 119 0x77 'w'
byte   82:  10 0x0a
byte   83: 221 0xdd
```
