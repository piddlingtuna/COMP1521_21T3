# Functions

```
int main (void) {
    li $s0, 1
    li $t0, 1
    add(1, 2);
    $s0 == 1
    $t0 might not 1
}
```

## Easy way
```
something__prologue:
        addiu   $sp, $sp, -4
        sw      $ra, 0($sp)
        addiu   $sp, $sp, -4
        sw      $s0, 0($sp)
        addiu   $sp, $sp, -4
        sw      $s1, 0($sp)
        addiu   $sp, $sp, -4
        sw      $s2, 0($sp)

something__epilogue:
        lw      $s2, 0($sp)
        addiu   $sp, $sp, 4
        lw      $s1, 0($sp)
        addiu   $sp, $sp, 4
        lw      $s0, 0($sp)
        addiu   $sp, $sp, 4
        lw      $ra, 0($sp)
        addiu   $sp, $sp, 4
```


# Shorter way

```
something__prologue:
        addiu   $sp, $sp, -12
        sw      $ra, 0($sp)
        sw      $s0, 4($sp)
        sw      $s1, 8($sp)

something__epilogue:
        lw      $s1, 8($sp)
        lw      $s0, 4($sp)
        lw      $ra, 0($sp)
        addiu   $sp, $sp, 12
```
