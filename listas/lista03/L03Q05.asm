#Faça um programa que leia 10 valores e imprima a sua soma.

.text

	addi $s0, $zero, 0
	addi $s1, $zero, 10

loop:
	addi $v0, $zero, 5
	syscall
	add $t0, $t0, $v0

	addi $s0, $s0, 1
	
	blt $s0, $s1, loop
  	  
fim:
	addi $v0, $zero, 1
	add $a0, $zero, $t0
	syscall
	addi $v0, $zero, 10
	syscall