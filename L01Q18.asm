.text
input:
	addi $v0, $zero, 5
	syscall
	add  $s1, $zero, $v0
	
	addi $v0, $zero, 5
	syscall
	add  $s2, $zero, $v0
	
calc:   # menor = R*a + (1-R)*b
	slt  $t1, $s1, $s2
	
	mul  $t2, $t1, $s1
	
	addi $t3, $zero, 1
	sub  $t4, $t3, $t1
	
	mul  $t5, $t4, $s2
	
	add  $s5, $t2, $t5
	
	
output:
	addi $v0, $zero, 1
	add  $a0, $zero, $s5
	syscall
	
	addi $v0, $zero, 10
	syscall