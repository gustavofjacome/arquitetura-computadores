.text
#centena = N/100
#dezena = (N%100)/10
#unidade = N%10



input: 
	addi $v0, $zero, 5
	syscall
	add $t0, $zero , $v0 
	
calc:
	#definir constantes
	add $t7, $zero, 10
	add $t8, $zero, 100
	
	div $t0, $t8
	mflo $t1 #N/100
	mfhi $t2 #(N%100)
	
	div $t2, $t7
	mflo $t3 #(N%100)/10
	
	div $t0, $t7
	mfhi $t4 #N%10
	
	#imprimir na ordem: t1, t3, t4 

output:
	addi $v0, $zero, 1
	add $a0, $zero, $t1
	syscall
	
	add $a0, $zero, $t3
	syscall
	
	add $a0, $zero, $t4
	syscall
	
finish:
	addi $v0, $zero, 10
	syscall
	
	
#hard
	
	