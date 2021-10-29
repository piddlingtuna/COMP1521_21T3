# Recursive maximum of array function.

        .text
max:
        # Args:
        #   - $a0: int[], `array`
        #   - $a1: int, `length`
        # Returns:
        #   - $v0: int
        #
        # Frame:        $ra, $s0
        # Uses:         $ra, $s0, $t0, $a0, $a1, $v0
        # Clobbers:     $t0, $a0, $a1, $v0
        #
        # Locals:
        #   - `first_element' is in $s0
        #   - `max_so_far' is in $t0

max__prologue:
        addi    $sp $sp -8         # create stack frame
        sw      $ra 4($sp)         # save return address
        sw      $s0 0($sp)         # save $s0

max__body:
        lw      $s0, 0($a0)          # int first_element = array[0];
        bne     $a1, 1, max__else

max__if:
        move $v0, $s0                          # v0 == first_element
        b max__epilogue
max__else:
        addi $a0, $a0, 4
        addi $a1, $a1, -1
        jal max                 # returns max_so_far in $v0
        move $t0, $v0           # int max_so_far = max(&array[1], length - 1);
                                # if (first_element > max_so_far)
                                # if ($s0 > $t0)
        ble $s0, $t0, max__epilogue
        move $v0, $s0
        
        # TODO

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
        .word 1, 2, 3, 4, 5, 6, 4, 3, 2, 1
