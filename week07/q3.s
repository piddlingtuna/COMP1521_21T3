# Recursive maximum of array function.

        .text
max:
        # Args:
        #   - $a0: TODO
        # Returns:
        #   - $v0: TODO
        #
        # Frame:        $ra, [...]
        # Uses:         [...]
        # Clobbers:     [...]
        #
        # Locals:
        #   - `array` is in $a0
        #   - `length' is in $a1
        #   - `first_element' is in $s0
        #   - `max_so_far' is in $t0

max__prologue:
        addi $sp $sp -8         # create stack frame
        sw   $ra 4($sp)         # save return address
        sw   $s0 0($sp)         # save $s0

max__body:
        # TODO

max__epilogue:
        lw   $s0 0($sp)         # restore $s0
        lw   $ra 4($sp)         # restore $ra
        addi $sp $sp 8          # restore sp


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
