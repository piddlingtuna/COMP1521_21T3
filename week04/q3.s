# Print the square of a number
    .text
main: # labels
# x,y in $t0, $t1
# x = $t0
# y = $t1

# printf("Enter a number: "); # write

# scanf("%d", x);
    
# y = x * x

# printf("%d", y);

# printf("%c", '\n'); '\n' == 10

# return 0; - not quite the same
    jr $ra

    .data
prompt: # labels
    .asciiz "Enter a number: "
