#três notas (entre 0 e 100) e calcule a média ponderada
#com pesos 1, 2 e 3. Informe a média e se o aluno foi aprovado, escreva
#após a média a letra A. Caso o aluno seja reprovado, informe, após a média, a letra R.
#A média para aprovação é 60.

.text
main:
	addi $v0, $zero, 5
	syscall
	add $t0, $zero, $v0
	
	addi $v0, $zero, 5
	syscall
	add $t1, $zero, $v0
	
	addi $v0, $zero, 5
	syscall
	add $t2, $zero, $v0
	
	
	addi $s0, $zero, 1
	addi $s1, $zero, 2
	addi $s2, $zero, 3
	addi $s3, $zero, 6
	
	mul $t3, $t0, $s0
	mul $t4, $t1, $s1
	mul $t5, $t2, $s2
	
	add $t7, $t3, $t4
	add $t7, $t7, $t5
	
	div $t7, $s3
	
	mflo $s0 #media
	
	
	slti $s1, $s0, 60 # s1 = 1 se media < 60
	
	addi $v0, $zero, 1
	add $a0, $zero, $s0
	syscall
	
	addi $v0, $zero, 11
	add $a0, $zero, '\n'
	syscall
	
	beq $s1, 0, aprovado
	
reprovado:
	addi $a0, $zero, 'R'
	j imp
aprovado:
	addi $a0, $zero, 'A'
imp:
	addi $v0, $zero, 11
	syscall
	addi $v0, $zero, 10
	syscall
	
	