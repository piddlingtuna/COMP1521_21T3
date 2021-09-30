# Tutorial 3

![elmo](elmo.gif)


## Lab

```c
/// We use `union overlay' to obtain the raw bits of a `float'-type
/// value, by storing the `float' in the `f' field and then using the
/// `u' field to obtain the bits.
union overlay {
    float f;
    uint32_t u;
};

/// A struct suitable for storing the three components of a `float'.
typedef struct float_components {
    uint32_t sign;
    uint32_t exponent;
    uint32_t fraction;
} float_components_t;
```
