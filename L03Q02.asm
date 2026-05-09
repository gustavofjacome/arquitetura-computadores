.text

main:
    # ler referência
    addi $v0, $zero, 5
    syscall
    add $t3, $zero, $v0   # referência

    # ler quantidade
    addi $v0, $zero, 5
    syscall
    add $t4, $zero, $v0   # quantidade

    addi $t1, $zero, 0    # contador
    addi $t2, $zero, 0    # acumulador (múltiplos)

laco:
    add $t2, $t2, $t3     # soma referência (gera múltiplos)

    addi $v0, $zero, 1
    add  $a0, $t2, $zero
    syscall

    addi $v0, $zero, 11
    addi $a0, $zero, ' '
    syscall

    addi $t1, $t1, 1
    blt $t1, $t4, laco

fim:
    addi $v0, $zero, 10
    syscall