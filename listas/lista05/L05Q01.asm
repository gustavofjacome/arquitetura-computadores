.data
A: .word 1, 0, 5, -2, -5, 7

.text

main:

    # endereço base do vetor A
    lui  $t0, 0x1001

    # ---------- A[0] ----------
    lw   $a0, 0($t0)

    addi $v0, $zero, 1
    syscall

    # ---------- A[1] ----------
    lw   $a0, 4($t0)

    addi $v0, $zero, 1
    syscall

    # ---------- A[2] ----------
    lw   $a0, 8($t0)

    addi $v0, $zero, 1
    syscall

    # ---------- A[3] ----------
    lw   $a0, 12($t0)

    addi $v0, $zero, 1
    syscall

    # ---------- A[4] ----------
    lw   $a0, 16($t0)

    addi $v0, $zero, 1
    syscall

    # ---------- A[5] ----------
    lw   $a0, 20($t0)

    addi $v0, $zero, 1
    syscall

    # encerrar programa
    addi $v0, $zero, 10
    syscall