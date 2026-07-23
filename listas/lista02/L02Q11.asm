.text
main:
	addi $v0, $zero, 5
	syscall
	add $t0, $zero, $v0 #a
	
	addi $v0, $zero, 5
	syscall
	add $t1, $zero, $v0 #b
	
	addi $v0, $zero, 5
	syscall
	add $t2, $zero, $v0 #c

	slt $s1, $t0, $t1
	slt $s2, $t2, $t1
	
	and $s3, $s1, $s2 # a<b and b>c
	
	slt $s1, $t1, $t0
	slt $s2, $t1, $t2
	
	and $s4, $s1, $s2 # a>b and b<c

	addi $t7, $zero, 1

	beq $s3, $t7, positivo
	beq $s4, $t7, negativo	
	
	addi $v0, $zero, 11
	addi $a0, $zero, 'N'
	syscall
	j imp



positivo:
	addi $v0, $zero, 11
	addi $a0, $zero, 'P'
	syscall
	addi $a0, $zero, '+'
	syscall
	j imp
negativo:
	addi $v0, $zero, 11
	addi $a0, $zero, 'P'
	syscall
	addi $a0, $zero, '-'
	syscall
	
imp:
	addi $v0, $zero, 10
	syscall