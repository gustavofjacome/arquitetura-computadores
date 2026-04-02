.text

input:
	addi $v0, $zero, 12
	syscall
	
calc:
	addi $s0, $zero, 32 #32 é a diferença do 'a' para 'A' na tabela ascii
	sub $a0, $v0, $s0
	
output:
	addi $v0, $zero, 11
	syscall

finish:
	addi $v0, $zero, 10
	syscall
	