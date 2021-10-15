# row in $t0, col in $t1
main:
        li   $t0, 0                     # for (int row = 0; row < 6; row++) {

loop_row:
        bge  $t0, 6, end_row
        li   $t1, 0                     # for (int col = 0; col < 12; col++) {

loop_col:
        bge  $t1, 12, end_col
        mul $t2, $t0, 12                # t2 = row * 12
        add $t2, $t2, $t1               # t2 = row * 12 + col
        # 
                                        # printf("%c", flag[row][col])
                                        # convert [row][col] to byte offset

        li $v0, 11
        # flag($t2)
        lb $a0, flag($t2)               # a0 = flag[t2]
        syscall

        addi $t1, $t1, 1                # col++
        j    loop_col

end_col:
        li   $a0, 10                  # printf("%c", '\n')
        li   $v0, 11
        syscall
        addi $t0, $t0, 1                # row++
        j    loop_row

end_row:

        li  $v0, 0                      # return 0
        jr  $ra

        .data
flag:
        .byte '#' '#' '#' '#' '#' '.' '.' '#' '#' '#' '#' '#'
        .byte '#' '#' '#' '#' '#' '.' '.' '#' '#' '#' '#' '#'
        .byte '.' '.' '.' '.' '.' '.' '.' '.' '.' '.' '.' '.'
        .byte '.' '.' '.' '.' '.' '.' '.' '.' '.' '.' '.' '.'
        .byte '#' '#' '#' '#' '#' '.' '.' '#' '#' '#' '#' '#'
        .byte '#' '#' '#' '#' '#' '.' '.' '#' '#' '#' '#' '#'
