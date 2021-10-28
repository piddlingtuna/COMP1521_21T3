# Recursive maximum of array function.

# Register usage:
#   - `array' is in $a0
#   - `length' is in $a1
#   - `first_element' is in $s0
#   - `max_so_far' is in $t0

        .text
max:

max__prologue:
        addi $sp $sp -8         # create stack frame
        sw   $ra 4($sp)         # save return address
        sw   $s0 0($sp)         # save $s0

max__body:
        # int first_element = a[0];
        lw $s0, ($a0)
        beq $a1, 1, max__base
        b max__recursive
        
max__base:
        move $v0, $s0           # return value in $v0
        b max__epilogue

max__recursive:
        addi $a0, $a0, 4        # &array[1]
        addi $a1, $a1, -1       # length - 1
        jal max                 # max(&a[1], length - 1)
        move $t0, $v0           # max_so_far = max(..., ...)
        bgt $s0, $t0, max__if
        b max__else
max__if:
        move $v0, $s0           # $v0 = first_element

max__else:
                                # $v0 = max_so_far

max__epilogue:
        lw   $s0 0($sp)         # restore $s0
        lw   $ra 4($sp)         # restore $ra
        addi $sp $sp 8          # restore sp

        jr $ra

# Some test code which calls max
main:

main__prologue:
        addi $sp $sp -4                 # save sp
        sw   $ra 0($sp)                 # save $ra

main__body:
        la   $a0 array
        li   $a1 10
        jal   max               # max(array, 10);

        move  $a0 $v0           # printf("%d");
        li    $v0 1
        syscall

        li   $a0 10             # printf("%c" '\n');
        li   $v0 11
        syscall

main__epilogue:
        lw   $ra 0($sp)         # restore $ra
        addi $sp $sp 4          # restore sp

        li  $v0 0               # return 0;
        jr  $ra


        .data
array:
        .word 1 2 3 4 5 6 4 3 2 1
