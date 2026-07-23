.text

input:
	addi $v0, $zero, 5
	syscall

calc:
	#definir constantes 
	addi $s6, $zero, 60
	addi $s7, $zero, 3600

	div $v0, $s7
	mflo $s0 #s0 armazena horas
	
	mfhi $t0
	div $t0, $s6
	mflo $s1 #s1 armazena minutos
	mfhi $s2 #s2 armazena segundos
	
output:
	addi $v0, $zero, 1
	add $a0, $zero, $s0
	syscall
	
	addi $v0, $zero, 11
	add $a0, $zero, 58 #codigo do caractere : em ascii
	syscall
	
	addi $v0, $zero, 1
	add $a0, $zero, $s1
	syscall
	
	addi $v0, $zero, 11
	add $a0, $zero, 58 #codigo do caractere : em ascii
	syscall
	
	addi $v0, $zero, 1
	add $a0, $zero, $s2
	syscall
	
finish:
	addi $v0, $zero, 10
	syscall