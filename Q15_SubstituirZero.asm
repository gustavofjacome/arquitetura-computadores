#Faça um programa que leia um número inteiro entre 0 e 9999 e imprima esse número com 4 caracteres, substituindo o algarismo 0 por espaço.
#Set Less Than Immediate Unsigned

.text

input:
	addi $v0, $zero, 5
	syscall
	add $t0, $zero, $v0

calc:
	addi $t1, $zero, 10
	
	div $t0, $t1
	mfhi $s4
	mflo $t0
	
	div $t0, $t1
	mfhi $s3
	mflo $t0
	
	div $t0, $t1
	mfhi $s2
	mflo $s1
	
	sltiu $t2, $s4, 1
	sltiu $t3, $s3, 1
	sltiu $t4, $s2, 1
	sltiu $t5, $s1, 1
	
	addi $s4, $s4, 48
	addi $s3, $s3, 48
	addi $s2, $s2, 48
	addi $s1, $s1, 48
	
	sll $t2, $t2, 4
	sll $t3, $t3, 4
	sll $t4, $t4, 4
	sll $t5, $t5, 4
	
	sub $s4, $s4, $t2
	sub $s3, $s3, $t3
	sub $s2, $s2, $t4
	sub $s1, $s1, $t5

output:
	addi $v0, $zero, 11
	add $a0, $zero, $s1
	syscall
	addi $v0, $zero, 11
	add $a0, $zero, $s2
	syscall
	addi $v0, $zero, 11
	add $a0, $zero, $s3
	syscall
	addi $v0, $zero, 11
	add $a0, $zero, $s4
	syscall
	
	