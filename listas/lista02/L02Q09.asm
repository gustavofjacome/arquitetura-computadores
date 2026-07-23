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

    add  $s0, $zero, $t0
    add  $s1, $zero, $t1
    add  $s2, $zero, $t2

    add  $s3, $zero, $t0
    add  $s4, $zero, $t1
    add  $s5, $zero, $t2

    addi $t8, $zero, 2
    beq  $t1, $t8, fev_max
    addi $t8, $zero, 4
    beq  $t1, $t8, m30_max
    addi $t8, $zero, 6
    beq  $t1, $t8, m30_max
    addi $t8, $zero, 9
    beq  $t1, $t8, m30_max
    addi $t8, $zero, 11
    beq  $t1, $t8, m30_max

m31_max:
    addi $t7, $zero, 31
    beq  $zero, $zero, prox

m30_max:
    addi $t7, $zero, 30
    beq  $zero, $zero, prox

fev_max:
    addi $t7, $zero, 28

prox:
    addi $t9, $t0, 1
    slt  $t6, $t9, $t7
    bne  $t6, $zero, inc_dia

    beq  $t9, $t7, igual_limite

    addi $s0, $zero, 1
    addi $s1, $t1, 1
    addi $t8, $zero, 13
    beq  $s1, $t8, vira_ano
    beq  $zero, $zero, anterior

igual_limite:
    add  $s0, $zero, $t7
    beq  $zero, $zero, anterior

inc_dia:
    addi $s0, $t0, 1
    beq  $zero, $zero, anterior

vira_ano:
    addi $s1, $zero, 1
    addi $s2, $t2, 1

anterior:
    addi $t9, $t0, -1
    slt  $t6, $zero, $t9
    bne  $t6, $zero, dec_dia

    addi $s4, $t1, -1
    slt  $t6, $zero, $s4
    bne  $t6, $zero, define_ant

    addi $s4, $zero, 12
    addi $s5, $t2, -1

define_ant:
    addi $t8, $zero, 2
    beq  $s4, $t8, fev_ant
    addi $t8, $zero, 4
    beq  $s4, $t8, m30_ant
    addi $t8, $zero, 6
    beq  $s4, $t8, m30_ant
    addi $t8, $zero, 9
    beq  $s4, $t8, m30_ant
    addi $t8, $zero, 11
    beq  $s4, $t8, m30_ant

m31_ant:
    addi $s3, $zero, 31
    beq  $zero, $zero, printa

m30_ant:
    addi $s3, $zero, 30
    beq  $zero, $zero, printa

fev_ant:
    addi $s3, $zero, 28
    beq  $zero, $zero, printa

dec_dia:
    addi $s3, $t0, -1

printa:
    addi $v0, $zero, 1
    add  $a0, $zero, $s3
    syscall

    addi $v0, $zero, 11
    addi $a0, $zero, 32
    syscall

    addi $v0, $zero, 1
    add  $a0, $zero, $s4
    syscall

    addi $v0, $zero, 11
    addi $a0, $zero, 32
    syscall

    addi $v0, $zero, 1
    add  $a0, $zero, $s5
    syscall

    addi $v0, $zero, 11
    addi $a0, $zero, 10
    syscall

    addi $v0, $zero, 1
    add  $a0, $zero, $s0
    syscall

    addi $v0, $zero, 11
    addi $a0, $zero, 32
    syscall

    addi $v0, $zero, 1
    add  $a0, $zero, $s1
    syscall

    addi $v0, $zero, 11
    addi $a0, $zero, 32
    syscall

    addi $v0, $zero, 1
    add  $a0, $zero, $s2
    syscall

    addi $v0, $zero, 10
    syscall