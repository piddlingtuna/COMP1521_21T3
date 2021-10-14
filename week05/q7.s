# read 10 numbers into an array
# print 10 numbers from an array

# i in register $t0
# numbers in register $t1

main:

        la $a0 scan                     # load print into $a0
        li $v0 4                        # syscall 4: print_string
        syscall                         # printf("Scan:\n");

        li  $t0 0 # i = 0

scan_loop:
	bge $t0 10 scan_end             # if (i >= 10) goto scan_end
	
	# TODO

        addi $t0 $t0 1                  # i++;
        j scan_loop

scan_end:

	la $a0 print                    # load print into $a0
        li $v0 4                        # syscall 4: print_string
        syscall                         # printf("Print:\n");

        li  $t0 0 # i = 0

print_loop:
        bge $t0 10 print_end            # if (i >= 10) goto print_end

        # TODO

        addi $t0 $t0 1                  # i++;
        j print_loop

print_end:
        jr   $ra                        # return

        .data
numbers:
        .word 0 0 0 0 0 0 0 0 0 0       # int numbers[10] = {0};
scan:
        .asciiz "Scan:\n"
print:
        .asciiz "Print:\n"
