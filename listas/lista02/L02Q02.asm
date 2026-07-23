.text
main:
	addi $v0, $zero, 5
	syscall
	add $t1, $zero, $v0
	addi $t2, $zero, 2

	slti $t3, $t1, 0
	bnez $t3, positivo 
	
negativo:
	mul $a0, $t1, $t2
	j imp

positivo:
	mul $a0, $t1, $t1
	
imp:
	addi $v0, $zero, 1
	syscall
	addi $v0, $zero, 10
	syscall
	