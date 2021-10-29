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
        li $a0, 11
        li $a1, 13
        li $a2, 17
        li $a3, 19
        jal sum4

        move $a0, $v0           # printf("%d", z);
        li   $v0, 1
        syscall

        li   $a0, 10          # printf("%c", '\n');
        li   $v0, 11
        syscall

main__epilogue:
        lw   $ra, 0($sp)        # recover $ra from $stack
        addi $sp, $sp, 4        # move stack pointer back up to what it was when main called

        li   $v0, 0             # return 0 from function main
        jr   $ra                # return from function main


sum4:
        # Args:
        #   - $a0: a
        #   - $a1: b
        #   - $a2: c
        #   - $a3: d
        # Returns:
        #   - $v0: int
        #
        # Frame:        $ra, $s0, $s1, $s2,
        # Uses:         $ra, $s0, $s1, $s2, $a0-4, $v0
        # Clobbers:     $a0-4, $v0

sum4__prologue:
        addiu   $sp, $sp, -16
        sw      $ra, 0($sp)
        sw      $s0, 4($sp)
        sw      $s1, 8($sp)
        sw      $s2, 12($sp)

sum4__body:
        move $s0, $a2
        move $s1, $a3

        jal sum2
        move $s2, $v0   # int e = sum2(a, b);
        
        move $a0, $s0
        move $a1, $s1
        jal sum2        # f is in $v0
        
        add $v0, $v0, $s0
                        # int f = sum2(c, d);
        

sum4_epilogue:
        lw      $s2, 12($sp)
        lw      $s1, 8($sp)
        lw      $s0, 4($sp)
        lw      $ra, 0($sp)
        addiu   $sp, $sp, 16
        
        jr $ra

sum2:                           # sum2 doesn't call other functions
        # Args:
        #   - $a0: x
        #   - $a1: y
        # Returns:
        #   - $v0: int
        #
        # Frame:        $ra, [...]
        # Uses:         [...]
        # Clobbers:     [...]

sum2__prologue:
        addiu   $sp, $sp, -4
        sw      $ra, 0($sp)

sum2__body:
        add $v0, $a0, $a1
        li $t0, 1231
        li $a2, 124

sum2_epilogue:
        lw      $ra, 0($sp)
        addiu   $sp, $sp, 4
        
        jr $ra
