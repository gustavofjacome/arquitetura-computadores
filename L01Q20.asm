.text
main:
    addi $v0, $zero, 5
    syscall
    add $t0, $zero, $v0

    addi $t1, $zero, 19
    div $t0, $t1
    mfhi $s0

    addi $t1, $zero, 100
    div $t0, $t1
    mflo $s1
    mfhi $s2

    addi $t1, $zero, 4
    div $s1, $t1
    mflo $s3
    mfhi $s4

    addi $t2, $s1, 8
    addi $t1, $zero, 25
    div $t2, $t1
    mflo $s5

    sub $t2, $s1, $s5
    addi $t2, $t2, 1
    addi $t1, $zero, 3
    div $t2, $t1
    mflo $s6

    addi $t1, $zero, 19
    mul $t2, $s0, $t1
    add $t2, $t2, $s1
    sub $t2, $t2, $s3
    sub $t2, $t2, $s6
    addi $t2, $t2, 15
    addi $t1, $zero, 30
    div $t2, $t1
    mfhi $s7

    addi $t1, $zero, 4
    div $s2, $t1
    mflo $t3
    mfhi $t4

    addi $t2, $zero, 32
    add $t2, $t2, $s4
    add $t2, $t2, $s4
    add $t2, $t2, $t3
    add $t2, $t2, $t3
    sub $t2, $t2, $s7
    sub $t2, $t2, $t4
    addi $t1, $zero, 7
    div $t2, $t1
    mfhi $t5

    addi $t1, $zero, 11
    mul $t2, $s7, $t1
    add $t2, $t2, $s0
    addi $t1, $zero, 22
    mul $t6, $t5, $t1
    add $t2, $t2, $t6
    addi $t1, $zero, 451
    div $t2, $t1
    mflo $t7

    add $t2, $s7, $t5
    addi $t1, $zero, 7
    mul $t6, $t7, $t1
    sub $t2, $t2, $t6
    addi $t2, $t2, 114

    addi $t1, $zero, 31
    div $t2, $t1
    mflo $t8
    mfhi $t9

    addi $t9, $t9, 1

    addi $v0, $zero, 1
    add $a0, $zero, $t9
    syscall

    addi $v0, $zero, 11
    addi $a0, $zero, '/'
    syscall

    addi $v0, $zero, 1
    add $a0, $zero, $t8
    syscall

    addi $v0, $zero, 11
    addi $a0, $zero, '/'
    syscall

    addi $v0, $zero, 1
    add $a0, $zero, $t0
    syscall

    addi $v0, $zero, 10
    syscall