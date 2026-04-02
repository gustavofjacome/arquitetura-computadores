.text

input:
	addi $v0, $zero, 5
	syscall
	
calc:
	addi $t0, $zero, 2
	div $v0, $t0
	mfhi $t1
	
	sub $a0, $zero, $t1
	
output:
	addi $v0, $zero, 1
	syscall
	
finish:
	addi $v0, $zero, 10
	syscall