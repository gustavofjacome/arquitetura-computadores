.text

input1:
	addi $v0, $zero, 5
	syscall
	add $t0, $zero, $v0
	
input2:
	addi $v0, $zero, 5
	syscall
	add $t1, $zero, $v0
	
input3:
	addi $v0, $zero, 5
	syscall
	add $t2, $zero, $v0
	
constante:
	addi $t7, $zero, 3600
	addi $t6, $zero, 60

calc:
	mul $t3, $t0, $t7 #horas -> segundos
	mul $t4, $t1, $t6 #min -> segundos
	
	add $t5, $t3, $t4
	add $a0, $t5, $t2
	
output:
	addi $v0, $zero, 1
	syscall 
	
finish:
	addi $v0, $zero, 10
	syscall
	