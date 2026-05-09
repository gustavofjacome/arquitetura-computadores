#Faça uma função para verificar se um número é positivo ou negativo. Sendo que o
#valor de retorno será 1 se positivo, -1 se negativo e 0 se for igual a 0.

main:
	addi $v0, $zero, 5
	syscall
	add $a0, $zero, $v0
	jal sinal
	
	add $a0, $zero, $v0
	addi $v0, $zero, 1
	syscall
	
	addi $v0, $zero, 10
	syscall
	
	
sinal:
	blt $a0, $zero, negativo #se a0 < 0 entao é negativo
	bgt $a0, $zero, positivo #se a0 > 0 entao é positivo
	
	addi $v0, $zero, 0 #caso contrario é zero
	jr $ra
	
negativo:
	addi $v0, $zero, -1
	jr $ra
	
positivo:
	addi $v0, $zero, 1
	jr $ra

	
	
 