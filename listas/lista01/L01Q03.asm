#ler dois números inteiros e imprimir a multiplicação desses dois números.

.text

input1:
	addi $v0, $zero, 5
	syscall
	add $t0, $zero, $v0
	
input2:
	addi $v0, $zero, 5
	syscall
	add $t1, $zero, $v0
	
calc:
	mul $a0, $t0, $t1

 output:
 	addi $v0, $zero, 1
 	syscall
 
 finish:
 	addi $v0, $zero, 10
 	syscall 	
	