# Print the square of a number

    .text
main:
# x,y in $t0, $t1


                # printf("Enter a number: ");
li $v0, 4
la $a0, prompt   # load address
syscall

                # scanf("%d", x);
li $v0, 5
syscall
move $t0, $v0

# if (x <= 46340) goto square;
li $t2, 46340
ble $t0, $t2, square      # if (x <= 46340) goto square;
li $v0, 4
la $a0, too_big
syscall                 # printf("square too big for 32 bits\n");
j end                   # goto end;

square:
mul $t1, $t0, $t0 # y = x * x
                # printf("%d", y);
li $v0, 1
move $a0, $t1    # $a0 = $t1
syscall

                # printf("%c", '\n'); '\n' == 10
li $v0, 11
li $a0, 10       # li $a0 '\n'
syscall

end:
# return 0; - not quite the same
    jr $ra

    .data
prompt:
    .asciiz "Enter a number: "
too_big:
    .asciiz "square too big for 32 bits\n"
