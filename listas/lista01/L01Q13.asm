.text

main:
	addi $v0, $zero, 11
	
	add $a0, $zero 'H'
	syscall
	add $a0, $zero 'e'
	syscall
	add $a0, $zero 'l'
	syscall
	add $a0, $zero 'l'
	syscall
	add $a0, $zero 'o'
	syscall
	add $a0, $zero ' '
	syscall
	add $a0, $zero 'W'
	syscall
	add $a0, $zero 'o'
	syscall
	add $a0, $zero 'r'
	syscall
	add $a0, $zero 'l'
	syscall
	add $a0, $zero 'd'
	syscall
	
finish:
	add $v0, $zero 10
	syscall