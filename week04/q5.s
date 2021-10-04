    .text
# x in register $t0

main:
# x = 24

loop:
# if (x >= 42) goto end;
    
# printf("%d", x);

# printf("%c", '\n'); '\n' == 10
    
# x += 3
    
# goto loop
    j loop

end:
# return 0; - not quite the same
    jr $ra
