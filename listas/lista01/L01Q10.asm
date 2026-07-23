#Faça um programa que leia um inteiro entre 100 e 999 e o imprima de trás para frente.

.text

input:
	addi $v0, $zero, 5
	syscall
	
calc:
	addi $s0, $zero, 10 
	
	div $v0, $s0
	mfhi $s1
	
	mflo $v0
	
	div $v0, $s0
	
	mfhi $s2
	mflo $s3
	
output:
	addi $v0, $zero, 1
	 
	add $a0, $zero, $s1
	syscall
	
	add $a0, $zero, $s2
	syscall
	
	add $a0, $zero, $s3
	syscall
	
finish:
	addi $v0, $zero, 10