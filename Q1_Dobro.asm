#ler x e retornar x*2

.text

input:	
	addi $v0, $zero, 5 #@v0 = $zero + 5
	syscall
	add $t0, $zero, $v0 #mover valor de $v0 para o reg t0
	
calc:	
	addi $t1, $zero, 2 # armazenei o valor 2 no reg t1 para multiplicar	
	mul $t2, $t0, $t1 #t3 armazena o valor de t0*t1
	
output:
	addi $v0, $zero, 1 #como v0 = 1 printa inteiro
	add $a0, $zero, $t2 #a0 recebe o valor de t2 para imprimir
	syscall
	
finish:
	addi $v0, $zero, 10
	syscall