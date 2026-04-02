.text 
#Faça um programa que leia dois números inteiros e calcule a média aritmética simples, 
#apresentando o resultado com um algarismo na casa fracionária.
input:
	addi $v0, $zero, 5
	syscall
	add $t1, $zero, $v0
	
	addi $v0, $zero, 5
	syscall
	add $t2, $zero, $v0
	
calc:
	addi $t4, $zero, 2
	add $t3, $t1, $t2
	
	div $t3, $t4
	mflo $s0
	mfhi $t3
	
	div $t3, $t4
	mflo $s1

output:
	addi $v0, $zero, 1
	add $a0, $zero, $s0
	syscall
	
	addi $v0, $zero, 11
	addi $a0, $zero, ','
	syscall
	
	addi $v0, $zero, 1
	add $a0, $zero, $s1
	syscall
	
finish:
	addi $v0, $zero, 10
	syscall
	 
	