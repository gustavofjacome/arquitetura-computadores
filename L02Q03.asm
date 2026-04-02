.text

main:
    
    addi $v0, $zero, 5
    syscall
    add  $t1, $v0, $zero

    
    addi $v0, $zero, 5
    syscall
    add  $t2, $v0, $zero

    
    slt  $t3, $t1, $t2      # t3 = 1 se t1 < t2

    beq  $t3, $zero, t1_maior

    add  $a0, $t2, $zero
    j imprime_maior

t1_maior:
    add  $a0, $t1, $zero

imprime_maior:
    addi $v0, $zero, 1
    syscall

    addi $v0, $zero, 11
    addi $a0, $zero, 10
    syscall

    sub  $t4, $t1, $t2

    slt  $t5, $t4, $zero
    beq  $t5, $zero, positivo

    sub  $t4, $zero, $t4

positivo:
    add  $a0, $t4, $zero

    addi $v0, $zero, 1
    syscall

    addi $v0, $zero, 10
    syscall