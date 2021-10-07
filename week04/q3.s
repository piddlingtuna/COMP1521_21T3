# Print the square of a number
    .text
main: # labels
# x,y in $t0, $t1
# x = $t0
# y = $t1

                # printf("Enter a number: ");
li $v0 4        # load intermediate
la $a0 prompt   # load address
syscall

                # scanf("%d", x);
li $v0 5
syscall
move $t0 $v0    # $t0 = $v0
mul $t1 $t0 $t0 # y = x * x

                # printf("%d", y);
li $v0 1
move $a0 $t1    # $a0 = $t1
syscall

                # printf("%c", '\n'); '\n' == 10
li $v0 11
li $a0 10       # li $a0 '\n'
syscall

# return 0; - not quite the same
    jr $ra

    .data
prompt: # labels
    .asciiz "Enter a number: "
