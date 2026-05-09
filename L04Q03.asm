#Faça uma função chamada DesenhaLinha. Ele deve desenhar uma linha na tela usando
#vários símbolos de igual (Ex: ========). A função recebe por parâmetro quantos
#sinais de igual serão mostrados.
.text
main:
    addi $v0, $zero, 5   # lê inteiro
    syscall
    add $a0, $zero, $v0  # passa como parâmetro

    jal DesenhaLinha     # chama a função

    addi $v0, $zero, 10  # exit
    syscall


DesenhaLinha:
    addi $t0, $zero, 0   # contador = 0
    add  $t1, $zero, $a0 # salva quantidade (não mexe mais em $a0 original)

for:
    beq $t0, $t1, fim    # se contador == quantidade, sai

    addi $v0, $zero, 11  # syscall: print char
    addi $a0, $zero, '=' # caractere '='
    syscall

    addi $t0, $t0, 1     # contador++
    j for

fim:
    jr $ra               # volta pra main
	
	
