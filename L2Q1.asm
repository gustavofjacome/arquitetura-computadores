.text
main:
	addi $v0, $zero, 5
	syscall
	add $s1, $v0, $zero
	
	addi $v0, $zero, 5
	syscall
	add $s2, $v0, $zero
	
	slt $t1, $s1, $s2 #s1 < s2 entao t1 = 1
	
	beq $t1, 1, maior
	
senao:
	add $a0, $s1, $zero	
	j imp
maior:
	add $a0, $s2, $zero
	
imp:
	addi $v0, $zero, 1
	syscall
	addi $v0, $zero, 10
	syscall
	
