#Faça um programa que implementa um laço com um teste no início que conte de 0 a
#10 imprimindo esses números, um em cada linha da saída.


	addi $t1, $zero, 0
	addi $t2, $zero, 10
	
laco:	
	addi $v0, $zero, 1
	add $a0, $zero, $t1
	syscall

	addi $v0, $zero, 11
	add $a0, $zero, ' '
	syscall	
	
	
	addi $t1, $t1, 1	
	ble $t1, $t2, laco
	
fim:
	addi $v0, $zero, 10
	syscall