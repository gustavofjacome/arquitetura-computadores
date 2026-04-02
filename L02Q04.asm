#leia dois números e escreva a relação de grandeza entre eles.
#Ex. 345 e 23 gera a saída 345>23. 
.text
main:
	addi $v0, $zero, 5
	syscall
	add $t1, $zero, $v0
	addi $v0, $zero, 5
	syscall
	add $t2, $zero, $v0
	
	slt $t3, $t1, $t2
	slt $t4, $t2, $t1
	not $t4, $t4
	
	and $t5, $t3, $t4
	
	addi $v0, $zero, 1
	add $a0, $zero, $t1
	syscall
	
	addi $v0, $zero, 11
	beq $t5, $zero, t1_maior
	
	
	
t2_maior:
	add $a0, $zero, '<'
	syscall
	j imp
t1_maior:
	add $a0, $zero, '>'
	syscall
	
imp:
	addi $v0, $zero, 1
	add $a0, $zero, $t2
	syscall
	
	addi $v0, $zero,, 10
	syscall
	
	 