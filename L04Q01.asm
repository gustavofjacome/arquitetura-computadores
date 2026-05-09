#Crie uma função que recebe como parâmetro um número inteiro e devolve o seu dobro.

main:
    addi $v0, $zero, 5
    syscall              # lê inteiro -> $v0

    add $a0, $zero, $v0 # passa argumento

    jal dobro            # chama função

    add $a0, $zero, $v0 # resultado -> $a0 pra imprimir
    addi $v0, $zero, 1
    syscall              # imprime

    addi $v0, $zero, 10
    syscall


dobro:
    addi $t0, $zero, 2 #sujou o t0
    mul $v0, $a0, $t0   # retorna em $v0
    jr $ra