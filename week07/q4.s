# Sum 4 numbers using function calls.
# Note the use of the stack to save $ra in main.

        .text
main:
        # Args:
        #   - $a0: TODO
        # Returns:
        #   - $v0: TODO
        #
        # Frame:        $ra, [...]
        # Uses:         [...]
        # Clobbers:     [...]

main__prologue:
        addi $sp, $sp, -4       # move stack pointer down to make room
        sw   $ra, 0($sp)        # save $ra on $stack

main__body:
        # sum4(11, 13, 17, 19)

        move $a0, $v0           # printf("%d", z);
        li   $v0, 1
        syscall

        li   $a0, '\n'          # printf("%c", '\n');
        li   $v0, 11
        syscall

main__epilogue:
        lw   $ra, 0($sp)        # recover $ra from $stack
        addi $sp, $sp, 4        # move stack pointer back up to what it was when main called

        li   $v0, 0             # return 0 from function main
        jr   $ra                # return from function main


sum4:
        # Args:
        #   - $a0: TODO
        # Returns:
        #   - $v0: TODO
        #
        # Frame:        $ra, [...]
        # Uses:         [...]
        # Clobbers:     [...]

sum4__prologue:
        # TODO

sum4__body:
        # TODO

sum4_epilogue:
        #TODO


sum2:                           # sum2 doesn't call other functions
        # Args:
        #   - $a0: TODO
        # Returns:
        #   - $v0: TODO
        #
        # Frame:        $ra, [...]
        # Uses:         [...]
        # Clobbers:     [...]

sum2__prologue:
        # TODO

sum2__body:
        # TODO

sum2_epilogue:
        #TODO
