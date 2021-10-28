# Num 4 numbers using function calls.
# Note the use of the stack to save $ra in main.

main:
        
        addi $sp, $sp, -4       # move stack pointer down to make room
        sw   $ra, 0($sp)        # save $ra on $stack

main__prologue:
        li   $a0, 11            # sum4(11, 13, 17, 19)
        li   $a1, 13
        li   $a2, 17
        li   $a3, 19
        jal  sum4

main__body:
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
        # TODO


sum2:                           # sum2 doesn't call other functions
        # TODO
