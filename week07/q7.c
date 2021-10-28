// For each of the following struct definitions, what are the likely offset values for each field, and the total size of the struct.

// Both the offsets and sizes should be in units of number of bytes.

// a
struct _coord {
    double x;
    double y;
};
// sizeof (struct _coord) == TODO bytes
// offset of _coord.x == TODO bytes
// offset of _coord.y == TODO bytes

// b
struct _node {
    int value;
    struct _node *next; // sizeof (pointer is 8 bytes)
};

// sizeof (struct _node) == TODO bytes
// offset of _coord.value == TODO bytes
// offset of _coord.next == TODO bytes

// c
struct _enrolment {
    int stu_id;         // e.g. 5012345
    char course[9];     // e.g. "COMP1521"
    char term[5];       // e.g. "17s2"
    char grade[3];      // e.g. "HD"
    double mark;        // e.g. 87.3
};

// sizeof (struct _enrolment) == TODO bytes
// offset of _enrolment.std_id == TODO bytes
// offset of _enrolment.course == TODO bytes
// offset of _enrolment.term == TODO bytes
// offset of _enrolment.grade == TODO bytes
// offset of _enrolment.mark == TODO bytes
// sizeof of _enrolment.mark == TODO bytes

// PADDING
// Memory must be stored at an address divisible by its size.
// int must be at an address divisible by 4 since its size is 4.
// double must be at an address divisible by 8 since its size is 8.

// d
struct _queue {
    int nitems;     // # items currently in queue
    int head;       // index of oldest item added
    int tail;       // index of most recent item added
    int maxitems;   // size of array
    void *items;    // malloc'd array of Items
    // sizeof (pointer is 8 bytes)
};

// sizeof (struct _queue) == TODO bytes
// offset of _queue.nitems == TODO bytes
// offset of _queue.head == TODO bytes
// offset of _queue.tail == TODO bytes
// offset of _queue.maxitems == TODO bytes
// offset of _queue.items == TODO bytes
