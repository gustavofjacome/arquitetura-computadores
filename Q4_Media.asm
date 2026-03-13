.text

input1: 
	addi $v0, $zero, 5
	syscall
	add $t0, $zero, $v0
	
input2:
	addi $v0, $zero, 5
	syscall
	add $t1, $zero, $v0
	
calcMedia:
	add $t2, $t0, $t1
	addi $t3, $zero, 2
	div $t2, $t3
	mflo $a0

output:
	addi $v0, $zero, 1
	syscall
	
finish:
	addi $v0, $zero, 10