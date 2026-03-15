#Faça um programa que leia um número entre 0 e 9999 e imprima cada algarismo em uma linha diferente.

.text

input:
	addi $v0, $zero, 5
	syscall
calc:
	addi $t0, $zero, 10 #guardei o 10 em um reg para usar futuramente
	div $v0, $t0 
	mfhi $t1 #guardarei os resultados nos reg t1,t2,t3,t4     1  
	
	mflo $t8
	div $t8, $t0
	mfhi $t2 #2
	
	mflo $t7
	div $t7, $t0
	mfhi $t3 #3
	mflo $t4 #4
	
output:
	addi $v0, $zero, 1
	add $a0, $zero, $t1
	syscall
	
	addi $v0, $zero, 11#11 = imprime caractere
	addi $a0, $zero, 10#10 = \n na tabela ascii
	syscall
	
	addi $v0, $zero, 1
	add $a0, $zero, $t2
	syscall
	
	addi $v0, $zero, 11#11 = imprime caractere
	addi $a0, $zero, 10#10 = \n na tabela ascii
	syscall
	
	addi $v0, $zero, 1
	add $a0, $zero, $t3
	syscall
	
	addi $v0, $zero, 11 #11 = imprime caractere
	addi $a0, $zero, 10 #10 = \n na tabela ascii
	syscall
	
	addi $v0, $zero, 1
	add $a0, $zero, $t4
	syscall
	
finish:
	addi $v0, $zero, 10
	syscall
	