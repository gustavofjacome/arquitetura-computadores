.data

.include "CENARIO2-export.asm"

.text
.globl main

main:

    # =========================================
    # ENDEREÇOS
    # =========================================

    # Bitmap Display
    li $t0, 0x10010000

    # Ponteiro da imagem
    la $t1, cenario

    # =========================================
    # QUANTIDADE DE PIXELS
    # =========================================

    lw $t2, cenario_width
    lw $t3, cenario_height

    # total_pixels = width * height
    mul $t4, $t2, $t3

loop:

    # terminou?
    beqz $t4, fim

    # =========================================
    # LÊ PIXEL
    # =========================================

    lw $t5, 0($t1)

    # =========================================
    # TRANSPARÊNCIA
    # =========================================

    li $t6, 0xFFFFFFFF

    beq $t5, $t6, skip_draw

    # desenha pixel
    sw $t5, 0($t0)

skip_draw:

    # próximo pixel da imagem
    addiu $t1, $t1, 4

    # próximo pixel do bitmap
    addiu $t0, $t0, 4

    # decrementa contador
    addiu $t4, $t4, -1

    j loop

fim:

    # encerra programa
    li $v0, 10
    syscall
