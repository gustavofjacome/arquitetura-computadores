.text

main:
    addi $t0, $zero, 10
    addi $t1, $zero, 0
    addi $t2, $zero, 0   

laco:
    addi $t2, $t2, 3

    addi $v0, $zero, 1
    add  $a0, $t2, $zero
    syscall

    addi $v0, $zero, 11
    addi $a0, $zero, ' '
    syscall

    addi $t1, $t1, 1
    blt $t1, $t0, laco

fim:
    addi $v0, $zero, 10
    syscall