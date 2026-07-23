.text

main:
	addi $v0, $zero, 5
	syscall
	add $t0, $zero, $v0
	
	addi $v0, $zero, 5
	syscall
	add $t1, $zero, $v0
	
	addi $v0, $zero, 5
	syscall
	add $t2, $zero, $v0
	
	addi $s0, $zero, 3
	
	add $s1, $t0, $t1
	add $s1, $s1, $t2 #s1 armazena a soma
	
	div $s1, $s0
	mflo $t3 #parte inteira
	mfhi $t4 #parte fracionaria
	
	beq $t4, 2, somaUm
	
	add $a0, $zero, $t3
	j imp

somaUm:
	addi $a0, $t3, 1
	
imp:
	addi $v0, $zero, 1
	syscall
	addi $v0, $zero, 10
	syscall
	