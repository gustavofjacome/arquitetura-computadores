.text 
main:
    addi $v0, $zero, 5
    syscall
    add $t0, $zero, $v0   # idade

    addi $v0, $zero, 5
    syscall
    add $t1, $zero, $v0   # tempo

    addi $s0, $zero, 65
    addi $s1, $zero, 40
    addi $s2, $zero, 60
    addi $s3, $zero, 35

    slt $t2, $t0, $s0
    addi $t8, $zero, 1
    sub $t2, $t8, $t2 #inverter 0 e 1

    slt $t3, $t1, $s1
    sub $t3, $t8, $t3

    slt $t4, $t0, $s2
    sub $t4, $t8, $t4

    slt $t5, $s3, $t1

    and $t6, $t4, $t5

    or $t7, $t2, $t3
    or $t7, $t7, $t6

    beq $t7, $zero, nao

sim:
    addi $a0, $zero, 'S' 
    addi $v0, $zero, 11
    syscall
    j fim

nao:
    addi $a0, $zero, 'N'
    addi $v0, $zero, 11
    syscall

fim:
    addi $v0, $zero, 10
    syscall