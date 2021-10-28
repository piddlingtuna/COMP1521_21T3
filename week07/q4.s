# Num 4 numbers using function calls.
# Note the use of the stack to save $ra in main.

main:
        
main__prologue:
        addi $sp, $sp, -4       # move stack pointer down to make room
        sw   $ra, 0($sp)        # save $ra on $stack

main__body:
        
        li $a0, 11
        li $a1, 13
        li $a2, 17
        li $a3, 19
        jal sum4
        
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
        # Arguments:
        #   $a0: int a
        #   $a1: int b
        #   $a2: int c
        #   $a3: int d
        # Returns: int in $v0
        #
        # Frame:    $ra, $s0, $s1, $s2
        # Uses:     $ra, $s0, $s1, $s2, $a0, $a1, $v0
        # Clobbers: $a0, $a1, $v0

sum4__prologue:
        addi $sp, $sp, -16
        sw   $ra, 0($sp)
        sw   $s0, 4($sp)
        sw   $s1, 8($sp)
        sw   $s2, 12($sp)
        
sum__body:
        move $s0, $a2           # s0 == c
        move $s1, $a3           # s1 == d
        jal sum2
        move $s2, $v0           # s0 = sum2(a, b)
        
        move $a0, $s0
        move $a1, $s1
        jal sum2
                                # v0 == sum(c, d)
        
        add $v0, $v0, $s0       # v0 = v0 + s0
                                # v0 = sum2(a, b) + sum(c, d)

sum4__epilogue:
        lw   $ra, 0($sp)
        lw   $s0, 4($sp)
        lw   $s1, 8($sp)
        lw   $s2, 12($sp)
        addi $sp, $sp, 16
        
        jr $ra

sum2:                           # sum2 doesn't call other functions
        # Arguments:
        #   $a0: int x
        #   $a1: int y
        # Returns: int in $v0
        #
        # Frame:    $ra
        # Uses:     $ra, $v0, $a0, $a1, $a2
        # Clobbers: $v0, $a2

sum2_prologue:
        # nothing?

sum2__body:
        add $v0, $a0, $a1       # v0 = x + y;
        li $a2 324235
        
sum2_epilogue:

        jr $ra
