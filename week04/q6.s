    .text
# x in register $t0

main:
    li $t0, 24      # x = 24

loop:
# if (x >= 42) goto end;
    bge $t0 42 end

    li $v0, 1
    move $a0, $t0    # $a0 = $t0
    syscall
    
                    # printf("%c", '\n'); '\n' == 10
    li $v0, 11
    li $a0, 10      # li $a0 '\n'
    syscall

# x += 3
    addi $t0 $t0 3       # x = x + 3
    j loop              # goto loop

end:
# return 0; - not quite the same
    jr $ra
