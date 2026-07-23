.text
main:
    addi $v0, $zero, 5
    syscall
    add $t0, $zero, $v0   # ano

    addi $t1, $zero, 100
    div $t0, $t1
    mfhi $s0              

    addi $t2, $zero, 4
    addi $t3, $zero, 400

    div $s0, $t2
    mfhi $s1              

    div $t0, $t3
    mfhi $s2              

    
    beq $s2, $zero, sim

    bne $s1, $zero, nao

    beq $s0, $zero, nao

sim:
    addi $v0, $zero, 11
    addi $a0, $zero, 'S'   
    syscall
    j fim

nao:
    addi $v0, $zero, 11
    addi $a0, $zero, 'N'  
    syscall

fim:
    addi $v0, $zero, 10
    syscall