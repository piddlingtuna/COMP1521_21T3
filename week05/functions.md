# Functions

```
int main (void) {
    li $s0, 1
    li $t0, 1
    li $a0, 1
    add(1, 2);
    $s0 == 1
    $t0 might not 1
    $a0 might not 1
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
        
# store a0 into s0
move $s0, $a0   # s0 = a0;
move $s1, $a1   # a1 = s1;
                         row - 1
addi $a0, $s0, -1 # a0 = $s0 -1;


jal clear_surroundings


# store a1 into s1

something__epilogue:
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
