.text

main:
    addi $v0, $zero, 5
    syscall
    add  $t0, $zero, $v0

    addi $v0, $zero, 5
    syscall
    add  $t1, $zero, $v0

    addi $v0, $zero, 5
    syscall
    add  $t2, $zero, $v0

    addi $t3, $zero, 13
    addi $t4, $zero, 1

    slt  $t5, $t1, $t3
    slt  $t6, $zero, $t1
    and  $s0, $t5, $t6
    beq  $s0, $zero, naoValido

    addi $t8, $zero, 2
    beq  $t1, $t8, fevereiro

    addi $t8, $zero, 4
    beq  $t1, $t8, mes30
    addi $t8, $zero, 6
    beq  $t1, $t8, mes30
    addi $t8, $zero, 9
    beq  $t1, $t8, mes30
    addi $t8, $zero, 11
    beq  $t1, $t8, mes30

mes31:
    addi $t7, $zero, 32
    slt  $t5, $t0, $t7
    slt  $t6, $zero, $t0
    and  $s1, $t5, $t6
    beq  $s1, $zero, naoValido
    beq  $zero, $zero, ehValido

mes30:
    addi $t7, $zero, 31
    slt  $t5, $t0, $t7
    slt  $t6, $zero, $t0
    and  $s1, $t5, $t6
    beq  $s1, $zero, naoValido
    beq  $zero, $zero, ehValido

fevereiro:
    addi $t7, $zero, 29
    slt  $t5, $t0, $t7
    slt  $t6, $zero, $t0
    and  $s1, $t5, $t6
    beq  $s1, $zero, naoValido

ehValido:
    addi $v0, $zero, 1
    addi $a0, $zero, 1
    syscall
    beq  $zero, $zero, fim

naoValido:
    addi $v0, $zero, 1
    addi $a0, $zero, 0
    syscall

fim:
    addi $v0, $zero, 10
    syscall