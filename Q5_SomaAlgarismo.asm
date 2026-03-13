.text

input:	
	addi $v0, $zero, 5
	syscall
	
calc:
	addi $t7, $zero, 10
	
	div $v0, $t7
	mfhi $t0
	mflo $t1
	
	div $t1, $t7
	mfhi $t2
	mflo $t3
	
	div $t3, $t7
	mfhi $t4
	mflo $t5
	
	add $a0, $t0, $t2
	add $a0, $a0, $t4
	
output:
	addi $v0, $zero, 1
	syscall
	
finish:
	addi $v0, $zero, 10
	syscall