.text

main:
    # ler início
    addi $v0, $zero, 5
    syscall
    add $t3, $zero, $v0   

    # ler fim
    addi $v0, $zero, 5
    syscall
    add $t4, $zero, $v0   

loop:
    # verifica se é par
    andi $t5, $t3, 1
    bne $t5, $zero, continua   

    # imprime número
    addi $v0, $zero, 1
    add  $a0, $t3, $zero
    syscall

    # imprime espaço
    addi $v0, $zero, 11
    addi $a0, $zero, ' '
    syscall

continua:
    addi $t3, $t3, 1
    ble  $t3, $t4, loop

fim:
    addi $v0, $zero, 10
    syscall