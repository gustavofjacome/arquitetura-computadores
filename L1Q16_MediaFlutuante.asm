.text

input:
	addi $v0, $zero, 5
	syscall
	add $t1, $zero, $v0
	
	addi $v0, $zero, 5
	syscall
	add $t2, $zero, $v0
	
calc:
	add $t3, $t1, $t2
	addi $t4, $zero, 2
	
	div $t3, $t4
	mflo $s0
	mfhi $t3
	
	addi $t5, $zero, 5
	mult $t3, $t5 #decimal = resto *5
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