.text

input:
	addi $v0, $zero, 5
	syscall
	add $t1, $zero, $v0
	
	addi $v0, $zero, 5
	syscall
	add $t2, $zero, $v0
	
	addi $v0, $zero, 5
	syscall
	add $t3, $zero, $v0
	
calc:
	# pesos
	addi $s5, $zero, 3 
	addi $s6, $zero, 9
	addi $s7, $zero, 15
	
	add $s4, $s5, $s6
	add $s4, $s4, $s7
	
	# 3A
	sll $t4, $t1, 1
	add $t1, $t4, $t1
	
	# 9B
	sll $t5, $t2, 3
	add $t2, $t5, $t2
	
	# 15C
	sll $t6, $t3, 4
	sub $t3, $t6, $t3
	
	# soma
	add $s0, $t1, $t2
	add $s0, $s0, $t3
	
	# divisão
	div $s0, $s4
	mflo $a0
	
output:
	addi $v0, $zero, 1
	syscall

finish:
	addi $v0, $zero, 10
	syscall