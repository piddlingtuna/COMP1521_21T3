# i in register $t0

main:
        li $t0 0                        # int i = 0;
main_do:
        addi $t0 $t0 1                  # i = i + 1;
        
	li	$v0, 1			# syscall 1: print_int
	move	$a0, $t0
	syscall				# printf("%d", i);

	li	$v0, 11			# syscall 11: print_character
	li	$a0, 10                 # 10 == '\n'
	syscall				# printf("\n");    

        ble $t0, 10, main_do

main_end:
	jr $ra				# return 0;
