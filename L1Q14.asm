.text

input:
	addi $v0, $zero, 5
	syscall
	
calc:
	addi $s0, $zero, 2
	
	div $v0, $s0
	
	mfhi $a0
	
output:
	addi $v0, $zero, 1
	syscall
	
finish:
	addi $v0, $zero, 10
	syscall